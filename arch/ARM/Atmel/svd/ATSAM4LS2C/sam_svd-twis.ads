--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAM4LS2C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TWIS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TWIS_CR_ADR_Field is HAL.UInt10;

   --  Control Register
   type TWIS_CR_Register is record
      --  Slave Enable
      SEN            : Boolean := False;
      --  SMBus Mode Enable
      SMEN           : Boolean := False;
      --  Slave Address Match
      SMATCH         : Boolean := False;
      --  General Call Address Match
      GCMATCH        : Boolean := False;
      --  Clock Stretch Enable
      STREN          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Software Reset
      SWRST          : Boolean := False;
      --  SMBus Alert
      SMBALERT       : Boolean := False;
      --  SMBus Default Address
      SMDA           : Boolean := False;
      --  SMBus Host Header
      SMHH           : Boolean := False;
      --  Packet Error Checking Enable
      PECEN          : Boolean := False;
      --  Slave Receiver Data Phase ACK Value
      ACK            : Boolean := False;
      --  NBYTES Count Up
      CUP            : Boolean := False;
      --  Stretch Clock on Address Match
      SOAM           : Boolean := False;
      --  Stretch Clock on Data Byte Reception
      SODR           : Boolean := False;
      --  Slave Address
      ADR            : TWIS_CR_ADR_Field := 16#0#;
      --  Ten Bit Address Match
      TENBIT         : Boolean := False;
      --  Bridge Control Enable
      BRIDGE         : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_CR_Register use record
      SEN            at 0 range 0 .. 0;
      SMEN           at 0 range 1 .. 1;
      SMATCH         at 0 range 2 .. 2;
      GCMATCH        at 0 range 3 .. 3;
      STREN          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SWRST          at 0 range 7 .. 7;
      SMBALERT       at 0 range 8 .. 8;
      SMDA           at 0 range 9 .. 9;
      SMHH           at 0 range 10 .. 10;
      PECEN          at 0 range 11 .. 11;
      ACK            at 0 range 12 .. 12;
      CUP            at 0 range 13 .. 13;
      SOAM           at 0 range 14 .. 14;
      SODR           at 0 range 15 .. 15;
      ADR            at 0 range 16 .. 25;
      TENBIT         at 0 range 26 .. 26;
      BRIDGE         at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TWIS_NBYTES_NBYTES_Field is HAL.UInt8;

   --  NBYTES Register
   type TWIS_NBYTES_Register is record
      --  Number of Bytes to Transfer
      NBYTES        : TWIS_NBYTES_NBYTES_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_NBYTES_Register use record
      NBYTES        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWIS_TR_TLOWS_Field is HAL.UInt8;
   subtype TWIS_TR_TTOUT_Field is HAL.UInt8;
   subtype TWIS_TR_SUDAT_Field is HAL.UInt8;
   subtype TWIS_TR_EXP_Field is HAL.UInt4;

   --  Timing Register
   type TWIS_TR_Register is record
      --  SMBus Tlow:sext Cycles
      TLOWS          : TWIS_TR_TLOWS_Field := 16#0#;
      --  SMBus Ttimeout Cycles
      TTOUT          : TWIS_TR_TTOUT_Field := 16#0#;
      --  Data Setup Cycles
      SUDAT          : TWIS_TR_SUDAT_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Clock Prescaler
      EXP            : TWIS_TR_EXP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_TR_Register use record
      TLOWS          at 0 range 0 .. 7;
      TTOUT          at 0 range 8 .. 15;
      SUDAT          at 0 range 16 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      EXP            at 0 range 28 .. 31;
   end record;

   subtype TWIS_RHR_RXDATA_Field is HAL.UInt8;

   --  Receive Holding Register
   type TWIS_RHR_Register is record
      --  Read-only. Received Data Byte
      RXDATA        : TWIS_RHR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_RHR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWIS_THR_TXDATA_Field is HAL.UInt8;

   --  Transmit Holding Register
   type TWIS_THR_Register is record
      --  Write-only. Data Byte to Transmit
      TXDATA        : TWIS_THR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_THR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TWIS_PECR_PEC_Field is HAL.UInt8;

   --  Packet Error Check Register
   type TWIS_PECR_Register is record
      --  Read-only. Calculated PEC Value
      PEC           : TWIS_PECR_PEC_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Status Register
   type TWIS_SR_Register is record
      --  Read-only. RX Buffer Ready
      RXRDY          : Boolean;
      --  Read-only. TX Buffer Ready
      TXRDY          : Boolean;
      --  Read-only. Slave Enabled
      SEN            : Boolean;
      --  Read-only. Transmission Complete
      TCOMP          : Boolean;
      --  unspecified
      Reserved_4_4   : HAL.Bit;
      --  Read-only. Transmitter Mode
      TRA            : Boolean;
      --  Read-only. Underrun
      URUN           : Boolean;
      --  Read-only. Overrun
      ORUN           : Boolean;
      --  Read-only. NAK Received
      NAK            : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. SMBus Timeout
      SMBTOUT        : Boolean;
      --  Read-only. SMBus PEC Error
      SMBPECERR      : Boolean;
      --  Read-only. Bus Error
      BUSERR         : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Slave Address Match
      SAM            : Boolean;
      --  Read-only. General Call Match
      GCM            : Boolean;
      --  Read-only. SMBus Alert Response Address Match
      SMBALERTM      : Boolean;
      --  Read-only. SMBus Host Header Address Match
      SMBHHM         : Boolean;
      --  Read-only. SMBus Default Address Match
      SMBDAM         : Boolean;
      --  Read-only. Stop Received
      STO            : Boolean;
      --  Read-only. Repeated Start Received
      REP            : Boolean;
      --  Read-only. Byte Transfer Finished
      BTF            : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      SEN            at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      TRA            at 0 range 5 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt Enable Register
   type TWIS_IER_Register is record
      --  Write-only. RX Buffer Ready
      RXRDY          : Boolean := False;
      --  Write-only. TX Buffer Ready
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Transmission Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. Underrun
      URUN           : Boolean := False;
      --  Write-only. Overrun
      ORUN           : Boolean := False;
      --  Write-only. NAK Received
      NAK            : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. SMBus Timeout
      SMBTOUT        : Boolean := False;
      --  Write-only. SMBus PEC Error
      SMBPECERR      : Boolean := False;
      --  Write-only. Bus Error
      BUSERR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Slave Address Match
      SAM            : Boolean := False;
      --  Write-only. General Call Match
      GCM            : Boolean := False;
      --  Write-only. SMBus Alert Response Address Match
      SMBALERTM      : Boolean := False;
      --  Write-only. SMBus Host Header Address Match
      SMBHHM         : Boolean := False;
      --  Write-only. SMBus Default Address Match
      SMBDAM         : Boolean := False;
      --  Write-only. Stop Received
      STO            : Boolean := False;
      --  Write-only. Repeated Start Received
      REP            : Boolean := False;
      --  Write-only. Byte Transfer Finished
      BTF            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt Disable Register
   type TWIS_IDR_Register is record
      --  Write-only. RX Buffer Ready
      RXRDY          : Boolean := False;
      --  Write-only. TX Buffer Ready
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Write-only. Transmission Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. Underrun
      URUN           : Boolean := False;
      --  Write-only. Overrun
      ORUN           : Boolean := False;
      --  Write-only. NAK Received
      NAK            : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. SMBus Timeout
      SMBTOUT        : Boolean := False;
      --  Write-only. SMBus PEC Error
      SMBPECERR      : Boolean := False;
      --  Write-only. Bus Error
      BUSERR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Slave Address Match
      SAM            : Boolean := False;
      --  Write-only. General Call Match
      GCM            : Boolean := False;
      --  Write-only. SMBus Alert Response Address Match
      SMBALERTM      : Boolean := False;
      --  Write-only. SMBus Host Header Address Match
      SMBHHM         : Boolean := False;
      --  Write-only. SMBus Default Address Match
      SMBDAM         : Boolean := False;
      --  Write-only. Stop Received
      STO            : Boolean := False;
      --  Write-only. Repeated Start Received
      REP            : Boolean := False;
      --  Write-only. Byte Transfer Finished
      BTF            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt Mask Register
   type TWIS_IMR_Register is record
      --  Read-only. RX Buffer Ready
      RXRDY          : Boolean;
      --  Read-only. TX Buffer Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : HAL.Bit;
      --  Read-only. Transmission Complete
      TCOMP          : Boolean;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. Underrun
      URUN           : Boolean;
      --  Read-only. Overrun
      ORUN           : Boolean;
      --  Read-only. NAK Received
      NAK            : Boolean;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. SMBus Timeout
      SMBTOUT        : Boolean;
      --  Read-only. SMBus PEC Error
      SMBPECERR      : Boolean;
      --  Read-only. Bus Error
      BUSERR         : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Slave Address Match
      SAM            : Boolean;
      --  Read-only. General Call Match
      GCM            : Boolean;
      --  Read-only. SMBus Alert Response Address Match
      SMBALERTM      : Boolean;
      --  Read-only. SMBus Host Header Address Match
      SMBHHM         : Boolean;
      --  Read-only. SMBus Default Address Match
      SMBDAM         : Boolean;
      --  Read-only. Stop Received
      STO            : Boolean;
      --  Read-only. Repeated Start Received
      REP            : Boolean;
      --  Read-only. Byte Transfer Finished
      BTF            : Boolean;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Status Clear Register
   type TWIS_SCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Write-only. Transmission Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_4_5   : HAL.UInt2 := 16#0#;
      --  Write-only. Underrun
      URUN           : Boolean := False;
      --  Write-only. Overrun
      ORUN           : Boolean := False;
      --  Write-only. NAK Received
      NAK            : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. SMBus Timeout
      SMBTOUT        : Boolean := False;
      --  Write-only. SMBus PEC Error
      SMBPECERR      : Boolean := False;
      --  Write-only. Bus Error
      BUSERR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Write-only. Slave Address Match
      SAM            : Boolean := False;
      --  Write-only. General Call Match
      GCM            : Boolean := False;
      --  Write-only. SMBus Alert Response Address Match
      SMBALERTM      : Boolean := False;
      --  Write-only. SMBus Host Header Address Match
      SMBHHM         : Boolean := False;
      --  Write-only. SMBus Default Address Match
      SMBDAM         : Boolean := False;
      --  Write-only. Stop Received
      STO            : Boolean := False;
      --  Write-only. Repeated Start Received
      REP            : Boolean := False;
      --  Write-only. Byte Transfer Finished
      BTF            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_SCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      TCOMP          at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      URUN           at 0 range 6 .. 6;
      ORUN           at 0 range 7 .. 7;
      NAK            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      SMBTOUT        at 0 range 12 .. 12;
      SMBPECERR      at 0 range 13 .. 13;
      BUSERR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SAM            at 0 range 16 .. 16;
      GCM            at 0 range 17 .. 17;
      SMBALERTM      at 0 range 18 .. 18;
      SMBHHM         at 0 range 19 .. 19;
      SMBDAM         at 0 range 20 .. 20;
      STO            at 0 range 21 .. 21;
      REP            at 0 range 22 .. 22;
      BTF            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Parameter Register
   type TWIS_PR_Register is record
      --  Read-only. HS-mode
      HS            : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_PR_Register use record
      HS            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TWIS_VR_VERSION_Field is HAL.UInt12;
   subtype TWIS_VR_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type TWIS_VR_Register is record
      --  Read-only. Version Number
      VERSION        : TWIS_VR_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : TWIS_VR_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_VR_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype TWIS_HSTR_HDDAT_Field is HAL.UInt8;

   --  HS-mode Timing Register
   type TWIS_HSTR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Data Hold Cycles
      HDDAT          : TWIS_HSTR_HDDAT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_HSTR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      HDDAT          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TWIS_SRR_DADRIVEL_Field is HAL.UInt3;
   subtype TWIS_SRR_DASLEW_Field is HAL.UInt2;
   subtype TWIS_SRR_FILTER_Field is HAL.UInt2;

   --  Slew Rate Register
   type TWIS_SRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : TWIS_SRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : TWIS_SRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_27 : HAL.UInt18 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : TWIS_SRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_SRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_27 at 0 range 10 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TWIS_HSSRR_DADRIVEL_Field is HAL.UInt3;
   subtype TWIS_HSSRR_DASLEW_Field is HAL.UInt2;
   subtype TWIS_HSSRR_FILTER_Field is HAL.UInt2;

   --  HS-mode Slew Rate Register
   type TWIS_HSSRR_Register is record
      --  Data Drive Strength LOW
      DADRIVEL       : TWIS_HSSRR_DADRIVEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Data Slew Limit
      DASLEW         : TWIS_HSSRR_DASLEW_Field := 16#0#;
      --  unspecified
      Reserved_10_27 : HAL.UInt18 := 16#0#;
      --  Input Spike Filter Control
      FILTER         : TWIS_HSSRR_FILTER_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TWIS_HSSRR_Register use record
      DADRIVEL       at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DASLEW         at 0 range 8 .. 9;
      Reserved_10_27 at 0 range 10 .. 27;
      FILTER         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-wire Slave Interface 0
   type TWIS_Peripheral is record
      --  Control Register
      CR     : aliased TWIS_CR_Register;
      --  NBYTES Register
      NBYTES : aliased TWIS_NBYTES_Register;
      --  Timing Register
      TR     : aliased TWIS_TR_Register;
      --  Receive Holding Register
      RHR    : aliased TWIS_RHR_Register;
      --  Transmit Holding Register
      THR    : aliased TWIS_THR_Register;
      --  Packet Error Check Register
      PECR   : aliased TWIS_PECR_Register;
      --  Status Register
      SR     : aliased TWIS_SR_Register;
      --  Interrupt Enable Register
      IER    : aliased TWIS_IER_Register;
      --  Interrupt Disable Register
      IDR    : aliased TWIS_IDR_Register;
      --  Interrupt Mask Register
      IMR    : aliased TWIS_IMR_Register;
      --  Status Clear Register
      SCR    : aliased TWIS_SCR_Register;
      --  Parameter Register
      PR     : aliased TWIS_PR_Register;
      --  Version Register
      VR     : aliased TWIS_VR_Register;
      --  HS-mode Timing Register
      HSTR   : aliased TWIS_HSTR_Register;
      --  Slew Rate Register
      SRR    : aliased TWIS_SRR_Register;
      --  HS-mode Slew Rate Register
      HSSRR  : aliased TWIS_HSSRR_Register;
   end record
     with Volatile;

   for TWIS_Peripheral use record
      CR     at 16#0# range 0 .. 31;
      NBYTES at 16#4# range 0 .. 31;
      TR     at 16#8# range 0 .. 31;
      RHR    at 16#C# range 0 .. 31;
      THR    at 16#10# range 0 .. 31;
      PECR   at 16#14# range 0 .. 31;
      SR     at 16#18# range 0 .. 31;
      IER    at 16#1C# range 0 .. 31;
      IDR    at 16#20# range 0 .. 31;
      IMR    at 16#24# range 0 .. 31;
      SCR    at 16#28# range 0 .. 31;
      PR     at 16#2C# range 0 .. 31;
      VR     at 16#30# range 0 .. 31;
      HSTR   at 16#34# range 0 .. 31;
      SRR    at 16#38# range 0 .. 31;
      HSSRR  at 16#3C# range 0 .. 31;
   end record;

   --  Two-wire Slave Interface 0
   TWIS0_Periph : aliased TWIS_Peripheral
     with Import, Address => System'To_Address (16#40018400#);

   --  Two-wire Slave Interface 1
   TWIS1_Periph : aliased TWIS_Peripheral
     with Import, Address => System'To_Address (16#4001C400#);

end SAM_SVD.TWIS;
