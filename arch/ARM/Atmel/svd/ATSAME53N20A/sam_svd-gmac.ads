--  Copyright (c) 2017 Microchip Technology Inc.
--
--  SPDX-License-Identifier: Apache-2.0
--
--  Licensed under the Apache License, Version 2.0 (the "License"); you may
--  not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an AS IS BASIS, WITHOUT
--  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.  

--  This spec has been automatically generated from ATSAME53N20A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.GMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Network Control Register
   type GMAC_NCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Loop Back Local
      LBL            : Boolean := False;
      --  Receive Enable
      RXEN           : Boolean := False;
      --  Transmit Enable
      TXEN           : Boolean := False;
      --  Management Port Enable
      MPE            : Boolean := False;
      --  Clear Statistics Registers
      CLRSTAT        : Boolean := False;
      --  Increment Statistics Registers
      INCSTAT        : Boolean := False;
      --  Write Enable for Statistics Registers
      WESTAT         : Boolean := False;
      --  Back pressure
      BP             : Boolean := False;
      --  Start Transmission
      TSTART         : Boolean := False;
      --  Transmit Halt
      THALT          : Boolean := False;
      --  Transmit Pause Frame
      TXPF           : Boolean := False;
      --  Transmit Zero Quantum Pause Frame
      TXZQPF         : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Store Receive Time Stamp to Memory
      SRTSM          : Boolean := False;
      --  Enable PFC Priority-based Pause Reception
      ENPBPR         : Boolean := False;
      --  Transmit PFC Priority-based Pause Frame
      TXPBPF         : Boolean := False;
      --  Flush Next Packet
      FNP            : Boolean := False;
      --  Low Power Idle Enable
      LPI            : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_NCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LBL            at 0 range 1 .. 1;
      RXEN           at 0 range 2 .. 2;
      TXEN           at 0 range 3 .. 3;
      MPE            at 0 range 4 .. 4;
      CLRSTAT        at 0 range 5 .. 5;
      INCSTAT        at 0 range 6 .. 6;
      WESTAT         at 0 range 7 .. 7;
      BP             at 0 range 8 .. 8;
      TSTART         at 0 range 9 .. 9;
      THALT          at 0 range 10 .. 10;
      TXPF           at 0 range 11 .. 11;
      TXZQPF         at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SRTSM          at 0 range 15 .. 15;
      ENPBPR         at 0 range 16 .. 16;
      TXPBPF         at 0 range 17 .. 17;
      FNP            at 0 range 18 .. 18;
      LPI            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GMAC_NCFGR_RXBUFO_Field is HAL.UInt2;
   subtype GMAC_NCFGR_CLK_Field is HAL.UInt3;
   subtype GMAC_NCFGR_DBW_Field is HAL.UInt2;

   --  Network Configuration Register
   type GMAC_NCFGR_Register is record
      --  Speed
      SPD            : Boolean := False;
      --  Full Duplex
      FD             : Boolean := False;
      --  Discard Non-VLAN FRAMES
      DNVLAN         : Boolean := False;
      --  Jumbo Frame Size
      JFRAME         : Boolean := False;
      --  Copy All Frames
      CAF            : Boolean := False;
      --  No Broadcast
      NBC            : Boolean := False;
      --  Multicast Hash Enable
      MTIHEN         : Boolean := False;
      --  Unicast Hash Enable
      UNIHEN         : Boolean := False;
      --  1536 Maximum Frame Size
      MAXFS          : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Retry Test
      RTY            : Boolean := False;
      --  Pause Enable
      PEN            : Boolean := False;
      --  Receive Buffer Offset
      RXBUFO         : GMAC_NCFGR_RXBUFO_Field := 16#0#;
      --  Length Field Error Frame Discard
      LFERD          : Boolean := False;
      --  Remove FCS
      RFCS           : Boolean := False;
      --  MDC CLock Division
      CLK            : GMAC_NCFGR_CLK_Field := 16#2#;
      --  Data Bus Width
      DBW            : GMAC_NCFGR_DBW_Field := 16#0#;
      --  Disable Copy of Pause Frames
      DCPF           : Boolean := False;
      --  Receive Checksum Offload Enable
      RXCOEN         : Boolean := False;
      --  Enable Frames Received in Half Duplex
      EFRHD          : Boolean := False;
      --  Ignore RX FCS
      IRXFCS         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  IP Stretch Enable
      IPGSEN         : Boolean := False;
      --  Receive Bad Preamble
      RXBP           : Boolean := False;
      --  Ignore IPG GRXER
      IRXER          : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_NCFGR_Register use record
      SPD            at 0 range 0 .. 0;
      FD             at 0 range 1 .. 1;
      DNVLAN         at 0 range 2 .. 2;
      JFRAME         at 0 range 3 .. 3;
      CAF            at 0 range 4 .. 4;
      NBC            at 0 range 5 .. 5;
      MTIHEN         at 0 range 6 .. 6;
      UNIHEN         at 0 range 7 .. 7;
      MAXFS          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      RTY            at 0 range 12 .. 12;
      PEN            at 0 range 13 .. 13;
      RXBUFO         at 0 range 14 .. 15;
      LFERD          at 0 range 16 .. 16;
      RFCS           at 0 range 17 .. 17;
      CLK            at 0 range 18 .. 20;
      DBW            at 0 range 21 .. 22;
      DCPF           at 0 range 23 .. 23;
      RXCOEN         at 0 range 24 .. 24;
      EFRHD          at 0 range 25 .. 25;
      IRXFCS         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      IPGSEN         at 0 range 28 .. 28;
      RXBP           at 0 range 29 .. 29;
      IRXER          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Network Status Register
   type GMAC_NSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. MDIO Input Status
      MDIO          : Boolean;
      --  Read-only. PHY Management Logic Idle
      IDLE          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_NSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      MDIO          at 0 range 1 .. 1;
      IDLE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  User Register
   type GMAC_UR_Register is record
      --  MII Mode
      MII           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_UR_Register use record
      MII           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype GMAC_DCFGR_FBLDO_Field is HAL.UInt5;
   subtype GMAC_DCFGR_RXBMS_Field is HAL.UInt2;
   subtype GMAC_DCFGR_DRBS_Field is HAL.UInt8;

   --  DMA Configuration Register
   type GMAC_DCFGR_Register is record
      --  Fixed Burst Length for DMA Data Operations:
      FBLDO          : GMAC_DCFGR_FBLDO_Field := 16#4#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Endian Swap Mode Enable for Management Descriptor Accesses
      ESMA           : Boolean := False;
      --  Endian Swap Mode Enable for Packet Data Accesses
      ESPA           : Boolean := False;
      --  Receiver Packet Buffer Memory Size Select
      RXBMS          : GMAC_DCFGR_RXBMS_Field := 16#3#;
      --  Transmitter Packet Buffer Memory Size Select
      TXPBMS         : Boolean := True;
      --  Transmitter Checksum Generation Offload Enable
      TXCOEN         : Boolean := False;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  DMA Receive Buffer Size
      DRBS           : GMAC_DCFGR_DRBS_Field := 16#2#;
      --  DMA Discard Receive Packets
      DDRP           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_DCFGR_Register use record
      FBLDO          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      ESMA           at 0 range 6 .. 6;
      ESPA           at 0 range 7 .. 7;
      RXBMS          at 0 range 8 .. 9;
      TXPBMS         at 0 range 10 .. 10;
      TXCOEN         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DRBS           at 0 range 16 .. 23;
      DDRP           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Transmit Status Register
   type GMAC_TSR_Register is record
      --  Used Bit Read
      UBR           : Boolean := False;
      --  Collision Occurred
      COL           : Boolean := False;
      --  Retry Limit Exceeded
      RLE           : Boolean := False;
      --  Transmit Go
      TXGO          : Boolean := False;
      --  Transmit Frame Corruption Due to AHB Error
      TFC           : Boolean := False;
      --  Transmit Complete
      TXCOMP        : Boolean := False;
      --  Transmit Underrun
      UND           : Boolean := False;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  HRESP Not OK
      HRESP         : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TSR_Register use record
      UBR           at 0 range 0 .. 0;
      COL           at 0 range 1 .. 1;
      RLE           at 0 range 2 .. 2;
      TXGO          at 0 range 3 .. 3;
      TFC           at 0 range 4 .. 4;
      TXCOMP        at 0 range 5 .. 5;
      UND           at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      HRESP         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype GMAC_RBQB_ADDR_Field is HAL.UInt30;

   --  Receive Buffer Queue Base Address
   type GMAC_RBQB_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Receive Buffer Queue Base Address
      ADDR         : GMAC_RBQB_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RBQB_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   subtype GMAC_TBQB_ADDR_Field is HAL.UInt30;

   --  Transmit Buffer Queue Base Address
   type GMAC_TBQB_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Transmit Buffer Queue Base Address
      ADDR         : GMAC_TBQB_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TBQB_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ADDR         at 0 range 2 .. 31;
   end record;

   --  Receive Status Register
   type GMAC_RSR_Register is record
      --  Buffer Not Available
      BNA           : Boolean := False;
      --  Frame Received
      REC           : Boolean := False;
      --  Receive Overrun
      RXOVR         : Boolean := False;
      --  HRESP Not OK
      HNO           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RSR_Register use record
      BNA           at 0 range 0 .. 0;
      REC           at 0 range 1 .. 1;
      RXOVR         at 0 range 2 .. 2;
      HNO           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Interrupt Status Register
   type GMAC_ISR_Register is record
      --  Management Frame Sent
      MFS            : Boolean := False;
      --  Receive Complete
      RCOMP          : Boolean := False;
      --  RX Used Bit Read
      RXUBR          : Boolean := False;
      --  TX Used Bit Read
      TXUBR          : Boolean := False;
      --  Transmit Underrun
      TUR            : Boolean := False;
      --  Retry Limit Exceeded
      RLEX           : Boolean := False;
      --  Transmit Frame Corruption Due to AHB Error
      TFC            : Boolean := False;
      --  Transmit Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Receive Overrun
      ROVR           : Boolean := False;
      --  HRESP Not OK
      HRESP          : Boolean := False;
      --  Pause Frame with Non-zero Pause Quantum Received
      PFNZ           : Boolean := False;
      --  Pause Time Zero
      PTZ            : Boolean := False;
      --  Pause Frame Transmitted
      PFTR           : Boolean := False;
      --  unspecified
      Reserved_15_17 : HAL.UInt3 := 16#0#;
      --  PTP Delay Request Frame Received
      DRQFR          : Boolean := False;
      --  PTP Sync Frame Received
      SFR            : Boolean := False;
      --  PTP Delay Request Frame Transmitted
      DRQFT          : Boolean := False;
      --  PTP Sync Frame Transmitted
      SFT            : Boolean := False;
      --  PDelay Request Frame Received
      PDRQFR         : Boolean := False;
      --  PDelay Response Frame Received
      PDRSFR         : Boolean := False;
      --  PDelay Request Frame Transmitted
      PDRQFT         : Boolean := False;
      --  PDelay Response Frame Transmitted
      PDRSFT         : Boolean := False;
      --  TSU Seconds Register Increment
      SRI            : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Wake On LAN
      WOL            : Boolean := False;
      --  Tsu timer comparison
      TSUCMP         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_ISR_Register use record
      MFS            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUR            at 0 range 4 .. 4;
      RLEX           at 0 range 5 .. 5;
      TFC            at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFNZ           at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      PFTR           at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      DRQFR          at 0 range 18 .. 18;
      SFR            at 0 range 19 .. 19;
      DRQFT          at 0 range 20 .. 20;
      SFT            at 0 range 21 .. 21;
      PDRQFR         at 0 range 22 .. 22;
      PDRSFR         at 0 range 23 .. 23;
      PDRQFT         at 0 range 24 .. 24;
      PDRSFT         at 0 range 25 .. 25;
      SRI            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WOL            at 0 range 28 .. 28;
      TSUCMP         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Enable Register
   type GMAC_IER_Register is record
      --  Write-only. Management Frame Sent
      MFS            : Boolean := False;
      --  Write-only. Receive Complete
      RCOMP          : Boolean := False;
      --  Write-only. RX Used Bit Read
      RXUBR          : Boolean := False;
      --  Write-only. TX Used Bit Read
      TXUBR          : Boolean := False;
      --  Write-only. Transmit Underrun
      TUR            : Boolean := False;
      --  Write-only. Retry Limit Exceeded or Late Collision
      RLEX           : Boolean := False;
      --  Write-only. Transmit Frame Corruption Due to AHB Error
      TFC            : Boolean := False;
      --  Write-only. Transmit Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      ROVR           : Boolean := False;
      --  Write-only. HRESP Not OK
      HRESP          : Boolean := False;
      --  Write-only. Pause Frame with Non-zero Pause Quantum Received
      PFNZ           : Boolean := False;
      --  Write-only. Pause Time Zero
      PTZ            : Boolean := False;
      --  Write-only. Pause Frame Transmitted
      PFTR           : Boolean := False;
      --  Write-only. External Interrupt
      EXINT          : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. PTP Delay Request Frame Received
      DRQFR          : Boolean := False;
      --  Write-only. PTP Sync Frame Received
      SFR            : Boolean := False;
      --  Write-only. PTP Delay Request Frame Transmitted
      DRQFT          : Boolean := False;
      --  Write-only. PTP Sync Frame Transmitted
      SFT            : Boolean := False;
      --  Write-only. PDelay Request Frame Received
      PDRQFR         : Boolean := False;
      --  Write-only. PDelay Response Frame Received
      PDRSFR         : Boolean := False;
      --  Write-only. PDelay Request Frame Transmitted
      PDRQFT         : Boolean := False;
      --  Write-only. PDelay Response Frame Transmitted
      PDRSFT         : Boolean := False;
      --  Write-only. TSU Seconds Register Increment
      SRI            : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write-only. Wake On LAN
      WOL            : Boolean := False;
      --  Write-only. Tsu timer comparison
      TSUCMP         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_IER_Register use record
      MFS            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUR            at 0 range 4 .. 4;
      RLEX           at 0 range 5 .. 5;
      TFC            at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFNZ           at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      PFTR           at 0 range 14 .. 14;
      EXINT          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      DRQFR          at 0 range 18 .. 18;
      SFR            at 0 range 19 .. 19;
      DRQFT          at 0 range 20 .. 20;
      SFT            at 0 range 21 .. 21;
      PDRQFR         at 0 range 22 .. 22;
      PDRSFR         at 0 range 23 .. 23;
      PDRQFT         at 0 range 24 .. 24;
      PDRSFT         at 0 range 25 .. 25;
      SRI            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WOL            at 0 range 28 .. 28;
      TSUCMP         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Disable Register
   type GMAC_IDR_Register is record
      --  Write-only. Management Frame Sent
      MFS            : Boolean := False;
      --  Write-only. Receive Complete
      RCOMP          : Boolean := False;
      --  Write-only. RX Used Bit Read
      RXUBR          : Boolean := False;
      --  Write-only. TX Used Bit Read
      TXUBR          : Boolean := False;
      --  Write-only. Transmit Underrun
      TUR            : Boolean := False;
      --  Write-only. Retry Limit Exceeded or Late Collision
      RLEX           : Boolean := False;
      --  Write-only. Transmit Frame Corruption Due to AHB Error
      TFC            : Boolean := False;
      --  Write-only. Transmit Complete
      TCOMP          : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Write-only. Receive Overrun
      ROVR           : Boolean := False;
      --  Write-only. HRESP Not OK
      HRESP          : Boolean := False;
      --  Write-only. Pause Frame with Non-zero Pause Quantum Received
      PFNZ           : Boolean := False;
      --  Write-only. Pause Time Zero
      PTZ            : Boolean := False;
      --  Write-only. Pause Frame Transmitted
      PFTR           : Boolean := False;
      --  Write-only. External Interrupt
      EXINT          : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Write-only. PTP Delay Request Frame Received
      DRQFR          : Boolean := False;
      --  Write-only. PTP Sync Frame Received
      SFR            : Boolean := False;
      --  Write-only. PTP Delay Request Frame Transmitted
      DRQFT          : Boolean := False;
      --  Write-only. PTP Sync Frame Transmitted
      SFT            : Boolean := False;
      --  Write-only. PDelay Request Frame Received
      PDRQFR         : Boolean := False;
      --  Write-only. PDelay Response Frame Received
      PDRSFR         : Boolean := False;
      --  Write-only. PDelay Request Frame Transmitted
      PDRQFT         : Boolean := False;
      --  Write-only. PDelay Response Frame Transmitted
      PDRSFT         : Boolean := False;
      --  Write-only. TSU Seconds Register Increment
      SRI            : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Write-only. Wake On LAN
      WOL            : Boolean := False;
      --  Write-only. Tsu timer comparison
      TSUCMP         : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_IDR_Register use record
      MFS            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUR            at 0 range 4 .. 4;
      RLEX           at 0 range 5 .. 5;
      TFC            at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFNZ           at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      PFTR           at 0 range 14 .. 14;
      EXINT          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      DRQFR          at 0 range 18 .. 18;
      SFR            at 0 range 19 .. 19;
      DRQFT          at 0 range 20 .. 20;
      SFT            at 0 range 21 .. 21;
      PDRQFR         at 0 range 22 .. 22;
      PDRSFR         at 0 range 23 .. 23;
      PDRQFT         at 0 range 24 .. 24;
      PDRSFT         at 0 range 25 .. 25;
      SRI            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WOL            at 0 range 28 .. 28;
      TSUCMP         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Interrupt Mask Register
   type GMAC_IMR_Register is record
      --  Read-only. Management Frame Sent
      MFS            : Boolean;
      --  Read-only. Receive Complete
      RCOMP          : Boolean;
      --  Read-only. RX Used Bit Read
      RXUBR          : Boolean;
      --  Read-only. TX Used Bit Read
      TXUBR          : Boolean;
      --  Read-only. Transmit Underrun
      TUR            : Boolean;
      --  Read-only. Retry Limit Exceeded
      RLEX           : Boolean;
      --  Read-only. Transmit Frame Corruption Due to AHB Error
      TFC            : Boolean;
      --  Read-only. Transmit Complete
      TCOMP          : Boolean;
      --  unspecified
      Reserved_8_9   : HAL.UInt2;
      --  Read-only. Receive Overrun
      ROVR           : Boolean;
      --  Read-only. HRESP Not OK
      HRESP          : Boolean;
      --  Read-only. Pause Frame with Non-zero Pause Quantum Received
      PFNZ           : Boolean;
      --  Read-only. Pause Time Zero
      PTZ            : Boolean;
      --  Read-only. Pause Frame Transmitted
      PFTR           : Boolean;
      --  Read-only. External Interrupt
      EXINT          : Boolean;
      --  unspecified
      Reserved_16_17 : HAL.UInt2;
      --  Read-only. PTP Delay Request Frame Received
      DRQFR          : Boolean;
      --  Read-only. PTP Sync Frame Received
      SFR            : Boolean;
      --  Read-only. PTP Delay Request Frame Transmitted
      DRQFT          : Boolean;
      --  Read-only. PTP Sync Frame Transmitted
      SFT            : Boolean;
      --  Read-only. PDelay Request Frame Received
      PDRQFR         : Boolean;
      --  Read-only. PDelay Response Frame Received
      PDRSFR         : Boolean;
      --  Read-only. PDelay Request Frame Transmitted
      PDRQFT         : Boolean;
      --  Read-only. PDelay Response Frame Transmitted
      PDRSFT         : Boolean;
      --  Read-only. TSU Seconds Register Increment
      SRI            : Boolean;
      --  unspecified
      Reserved_27_27 : HAL.Bit;
      --  Read-only. Wake On Lan
      WOL            : Boolean;
      --  Read-only. Tsu timer comparison
      TSUCMP         : Boolean;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_IMR_Register use record
      MFS            at 0 range 0 .. 0;
      RCOMP          at 0 range 1 .. 1;
      RXUBR          at 0 range 2 .. 2;
      TXUBR          at 0 range 3 .. 3;
      TUR            at 0 range 4 .. 4;
      RLEX           at 0 range 5 .. 5;
      TFC            at 0 range 6 .. 6;
      TCOMP          at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ROVR           at 0 range 10 .. 10;
      HRESP          at 0 range 11 .. 11;
      PFNZ           at 0 range 12 .. 12;
      PTZ            at 0 range 13 .. 13;
      PFTR           at 0 range 14 .. 14;
      EXINT          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      DRQFR          at 0 range 18 .. 18;
      SFR            at 0 range 19 .. 19;
      DRQFT          at 0 range 20 .. 20;
      SFT            at 0 range 21 .. 21;
      PDRQFR         at 0 range 22 .. 22;
      PDRSFR         at 0 range 23 .. 23;
      PDRQFT         at 0 range 24 .. 24;
      PDRSFT         at 0 range 25 .. 25;
      SRI            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      WOL            at 0 range 28 .. 28;
      TSUCMP         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_MAN_DATA_Field is HAL.UInt16;
   subtype GMAC_MAN_WTN_Field is HAL.UInt2;
   subtype GMAC_MAN_REGA_Field is HAL.UInt5;
   subtype GMAC_MAN_PHYA_Field is HAL.UInt5;
   subtype GMAC_MAN_OP_Field is HAL.UInt2;

   --  PHY Maintenance Register
   type GMAC_MAN_Register is record
      --  PHY Data
      DATA  : GMAC_MAN_DATA_Field := 16#0#;
      --  Write Ten
      WTN   : GMAC_MAN_WTN_Field := 16#0#;
      --  Register Address
      REGA  : GMAC_MAN_REGA_Field := 16#0#;
      --  PHY Address
      PHYA  : GMAC_MAN_PHYA_Field := 16#0#;
      --  Operation
      OP    : GMAC_MAN_OP_Field := 16#0#;
      --  Clause 22 Operation
      CLTTO : Boolean := False;
      --  Write ZERO
      WZO   : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_MAN_Register use record
      DATA  at 0 range 0 .. 15;
      WTN   at 0 range 16 .. 17;
      REGA  at 0 range 18 .. 22;
      PHYA  at 0 range 23 .. 27;
      OP    at 0 range 28 .. 29;
      CLTTO at 0 range 30 .. 30;
      WZO   at 0 range 31 .. 31;
   end record;

   subtype GMAC_RPQ_RPQ_Field is HAL.UInt16;

   --  Received Pause Quantum Register
   type GMAC_RPQ_Register is record
      --  Read-only. Received Pause Quantum
      RPQ            : GMAC_RPQ_RPQ_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RPQ_Register use record
      RPQ            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TPQ_TPQ_Field is HAL.UInt16;

   --  Transmit Pause Quantum Register
   type GMAC_TPQ_Register is record
      --  Transmit Pause Quantum
      TPQ            : GMAC_TPQ_TPQ_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TPQ_Register use record
      TPQ            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TPSF_TPB1ADR_Field is HAL.UInt10;

   --  TX partial store and forward Register
   type GMAC_TPSF_Register is record
      --  TX packet buffer address
      TPB1ADR        : GMAC_TPSF_TPB1ADR_Field := 16#3FF#;
      --  unspecified
      Reserved_10_30 : HAL.UInt21 := 16#0#;
      --  Enable TX partial store and forward operation
      ENTXP          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TPSF_Register use record
      TPB1ADR        at 0 range 0 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      ENTXP          at 0 range 31 .. 31;
   end record;

   subtype GMAC_RPSF_RPB1ADR_Field is HAL.UInt10;

   --  RX partial store and forward Register
   type GMAC_RPSF_Register is record
      --  RX packet buffer address
      RPB1ADR        : GMAC_RPSF_RPB1ADR_Field := 16#3FF#;
      --  unspecified
      Reserved_10_30 : HAL.UInt21 := 16#0#;
      --  Enable RX partial store and forward operation
      ENRXP          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RPSF_Register use record
      RPB1ADR        at 0 range 0 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      ENRXP          at 0 range 31 .. 31;
   end record;

   subtype GMAC_RJFML_FML_Field is HAL.UInt14;

   --  RX Jumbo Frame Max Length Register
   type GMAC_RJFML_Register is record
      --  Frame Max Length
      FML            : GMAC_RJFML_FML_Field := 16#3FFF#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RJFML_Register use record
      FML            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SAT_ADDR_Field is HAL.UInt16;

   --  Specific Address Top [47:32] Register
   type SAT_Register is record
      --  Specific Address 1
      ADDR           : SAT_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAT_Register use record
      ADDR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TIDM_TID_Field is HAL.UInt16;

   --  Type ID Match Register
   type GMAC_TIDM_Register is record
      --  Type ID Match 1
      TID            : GMAC_TIDM_TID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TIDM_Register use record
      TID            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Type ID Match Register
   type GMAC_TIDM_Registers is array (0 .. 3) of GMAC_TIDM_Register
     with Volatile;

   subtype GMAC_WOL_IP_Field is HAL.UInt16;

   --  Wake on LAN
   type GMAC_WOL_Register is record
      --  IP address
      IP             : GMAC_WOL_IP_Field := 16#0#;
      --  Event enable
      MAG            : Boolean := False;
      --  LAN ARP req
      ARP            : Boolean := False;
      --  WOL specific address reg 1
      SA1            : Boolean := False;
      --  WOL LAN multicast
      MTI            : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_WOL_Register use record
      IP             at 0 range 0 .. 15;
      MAG            at 0 range 16 .. 16;
      ARP            at 0 range 17 .. 17;
      SA1            at 0 range 18 .. 18;
      MTI            at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GMAC_IPGS_FL_Field is HAL.UInt16;

   --  IPG Stretch Register
   type GMAC_IPGS_Register is record
      --  Frame Length
      FL             : GMAC_IPGS_FL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_IPGS_Register use record
      FL             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_SVLAN_VLAN_TYPE_Field is HAL.UInt16;

   --  Stacked VLAN Register
   type GMAC_SVLAN_Register is record
      --  User Defined VLAN_TYPE Field
      VLAN_TYPE      : GMAC_SVLAN_VLAN_TYPE_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : HAL.UInt15 := 16#0#;
      --  Enable Stacked VLAN Processing Mode
      ESVLAN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_SVLAN_Register use record
      VLAN_TYPE      at 0 range 0 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      ESVLAN         at 0 range 31 .. 31;
   end record;

   subtype GMAC_TPFCP_PEV_Field is HAL.UInt8;
   subtype GMAC_TPFCP_PQ_Field is HAL.UInt8;

   --  Transmit PFC Pause Register
   type GMAC_TPFCP_Register is record
      --  Priority Enable Vector
      PEV            : GMAC_TPFCP_PEV_Field := 16#0#;
      --  Pause Quantum
      PQ             : GMAC_TPFCP_PQ_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TPFCP_Register use record
      PEV            at 0 range 0 .. 7;
      PQ             at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_SAMT1_ADDR_Field is HAL.UInt16;

   --  Specific Address 1 Mask Top [47:32] Register
   type GMAC_SAMT1_Register is record
      --  Specific Address 1 Mask
      ADDR           : GMAC_SAMT1_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_SAMT1_Register use record
      ADDR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_NSC_NANOSEC_Field is HAL.UInt21;

   --  Tsu timer comparison nanoseconds Register
   type GMAC_NSC_Register is record
      --  1588 Timer Nanosecond comparison value
      NANOSEC        : GMAC_NSC_NANOSEC_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_NSC_Register use record
      NANOSEC        at 0 range 0 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype GMAC_SCH_SEC_Field is HAL.UInt16;

   --  Tsu timer second comparison Register
   type GMAC_SCH_Register is record
      --  1588 Timer Second comparison value
      SEC            : GMAC_SCH_SEC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_SCH_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_EFTSH_RUD_Field is HAL.UInt16;

   --  PTP Event Frame Transmitted Seconds High Register
   type GMAC_EFTSH_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_EFTSH_RUD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_EFTSH_Register use record
      RUD            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_EFRSH_RUD_Field is HAL.UInt16;

   --  PTP Event Frame Received Seconds High Register
   type GMAC_EFRSH_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_EFRSH_RUD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_EFRSH_Register use record
      RUD            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_PEFTSH_RUD_Field is HAL.UInt16;

   --  PTP Peer Event Frame Transmitted Seconds High Register
   type GMAC_PEFTSH_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_PEFTSH_RUD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_PEFTSH_Register use record
      RUD            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_PEFRSH_RUD_Field is HAL.UInt16;

   --  PTP Peer Event Frame Received Seconds High Register
   type GMAC_PEFRSH_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_PEFRSH_RUD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_PEFRSH_Register use record
      RUD            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_OTHI_TXO_Field is HAL.UInt16;

   --  Octets Transmitted [47:32] Register
   type GMAC_OTHI_Register is record
      --  Read-only. Transmitted Octets
      TXO            : GMAC_OTHI_TXO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_OTHI_Register use record
      TXO            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_PFT_PFTX_Field is HAL.UInt16;

   --  Pause Frames Transmitted Register
   type GMAC_PFT_Register is record
      --  Read-only. Pause Frames Transmitted Register
      PFTX           : GMAC_PFT_PFTX_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_PFT_Register use record
      PFTX           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TUR_TXUNR_Field is HAL.UInt10;

   --  Transmit Underruns Register
   type GMAC_TUR_Register is record
      --  Read-only. Transmit Underruns
      TXUNR          : GMAC_TUR_TXUNR_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TUR_Register use record
      TXUNR          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_SCF_SCOL_Field is HAL.UInt18;

   --  Single Collision Frames Register
   type GMAC_SCF_Register is record
      --  Read-only. Single Collision
      SCOL           : GMAC_SCF_SCOL_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_SCF_Register use record
      SCOL           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype GMAC_MCF_MCOL_Field is HAL.UInt18;

   --  Multiple Collision Frames Register
   type GMAC_MCF_Register is record
      --  Read-only. Multiple Collision
      MCOL           : GMAC_MCF_MCOL_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_MCF_Register use record
      MCOL           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype GMAC_EC_XCOL_Field is HAL.UInt10;

   --  Excessive Collisions Register
   type GMAC_EC_Register is record
      --  Read-only. Excessive Collisions
      XCOL           : GMAC_EC_XCOL_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_EC_Register use record
      XCOL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_LC_LCOL_Field is HAL.UInt10;

   --  Late Collisions Register
   type GMAC_LC_Register is record
      --  Read-only. Late Collisions
      LCOL           : GMAC_LC_LCOL_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_LC_Register use record
      LCOL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_DTF_DEFT_Field is HAL.UInt18;

   --  Deferred Transmission Frames Register
   type GMAC_DTF_Register is record
      --  Read-only. Deferred Transmission
      DEFT           : GMAC_DTF_DEFT_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_DTF_Register use record
      DEFT           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype GMAC_CSE_CSR_Field is HAL.UInt10;

   --  Carrier Sense Errors Register
   type GMAC_CSE_Register is record
      --  Read-only. Carrier Sense Error
      CSR            : GMAC_CSE_CSR_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_CSE_Register use record
      CSR            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_ORHI_RXO_Field is HAL.UInt16;

   --  Octets Received [47:32] Received
   type GMAC_ORHI_Register is record
      --  Read-only. Received Octets
      RXO            : GMAC_ORHI_RXO_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_ORHI_Register use record
      RXO            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_PFR_PFRX_Field is HAL.UInt16;

   --  Pause Frames Received Register
   type GMAC_PFR_Register is record
      --  Read-only. Pause Frames Received Register
      PFRX           : GMAC_PFR_PFRX_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_PFR_Register use record
      PFRX           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_UFR_UFRX_Field is HAL.UInt10;

   --  Undersize Frames Received Register
   type GMAC_UFR_Register is record
      --  Read-only. Undersize Frames Received
      UFRX           : GMAC_UFR_UFRX_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_UFR_Register use record
      UFRX           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_OFR_OFRX_Field is HAL.UInt10;

   --  Oversize Frames Received Register
   type GMAC_OFR_Register is record
      --  Read-only. Oversized Frames Received
      OFRX           : GMAC_OFR_OFRX_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_OFR_Register use record
      OFRX           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_JR_JRX_Field is HAL.UInt10;

   --  Jabbers Received Register
   type GMAC_JR_Register is record
      --  Read-only. Jabbers Received
      JRX            : GMAC_JR_JRX_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_JR_Register use record
      JRX            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_FCSE_FCKR_Field is HAL.UInt10;

   --  Frame Check Sequence Errors Register
   type GMAC_FCSE_Register is record
      --  Read-only. Frame Check Sequence Errors
      FCKR           : GMAC_FCSE_FCKR_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_FCSE_Register use record
      FCKR           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_LFFE_LFER_Field is HAL.UInt10;

   --  Length Field Frame Errors Register
   type GMAC_LFFE_Register is record
      --  Read-only. Length Field Frame Errors
      LFER           : GMAC_LFFE_LFER_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_LFFE_Register use record
      LFER           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_RSE_RXSE_Field is HAL.UInt10;

   --  Receive Symbol Errors Register
   type GMAC_RSE_Register is record
      --  Read-only. Receive Symbol Errors
      RXSE           : GMAC_RSE_RXSE_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RSE_Register use record
      RXSE           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_AE_AER_Field is HAL.UInt10;

   --  Alignment Errors Register
   type GMAC_AE_Register is record
      --  Read-only. Alignment Errors
      AER            : GMAC_AE_AER_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_AE_Register use record
      AER            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_RRE_RXRER_Field is HAL.UInt18;

   --  Receive Resource Errors Register
   type GMAC_RRE_Register is record
      --  Read-only. Receive Resource Errors
      RXRER          : GMAC_RRE_RXRER_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RRE_Register use record
      RXRER          at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype GMAC_ROE_RXOVR_Field is HAL.UInt10;

   --  Receive Overrun Register
   type GMAC_ROE_Register is record
      --  Read-only. Receive Overruns
      RXOVR          : GMAC_ROE_RXOVR_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_ROE_Register use record
      RXOVR          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GMAC_IHCE_HCKER_Field is HAL.UInt8;

   --  IP Header Checksum Errors Register
   type GMAC_IHCE_Register is record
      --  Read-only. IP Header Checksum Errors
      HCKER         : GMAC_IHCE_HCKER_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_IHCE_Register use record
      HCKER         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype GMAC_TCE_TCKER_Field is HAL.UInt8;

   --  TCP Checksum Errors Register
   type GMAC_TCE_Register is record
      --  Read-only. TCP Checksum Errors
      TCKER         : GMAC_TCE_TCKER_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TCE_Register use record
      TCKER         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype GMAC_UCE_UCKER_Field is HAL.UInt8;

   --  UDP Checksum Errors Register
   type GMAC_UCE_Register is record
      --  Read-only. UDP Checksum Errors
      UCKER         : GMAC_UCE_UCKER_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_UCE_Register use record
      UCKER         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype GMAC_TISUBN_LSBTIR_Field is HAL.UInt16;

   --  1588 Timer Increment [15:0] Sub-Nanoseconds Register
   type GMAC_TISUBN_Register is record
      --  Lower Significant Bits of Timer Increment
      LSBTIR         : GMAC_TISUBN_LSBTIR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TISUBN_Register use record
      LSBTIR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TSH_TCS_Field is HAL.UInt16;

   --  1588 Timer Seconds High [15:0] Register
   type GMAC_TSH_Register is record
      --  Timer Count in Seconds
      TCS            : GMAC_TSH_TCS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TSH_Register use record
      TCS            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TSSN_VTN_Field is HAL.UInt30;

   --  1588 Timer Sync Strobe Nanoseconds Register
   type GMAC_TSSN_Register is record
      --  Value Timer Nanoseconds Register Capture
      VTN            : GMAC_TSSN_VTN_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TSSN_Register use record
      VTN            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_TN_TNS_Field is HAL.UInt30;

   --  1588 Timer Nanoseconds Register
   type GMAC_TN_Register is record
      --  Timer Count in Nanoseconds
      TNS            : GMAC_TN_TNS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TN_Register use record
      TNS            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_TA_ITDT_Field is HAL.UInt30;

   --  1588 Timer Adjust Register
   type GMAC_TA_Register is record
      --  Write-only. Increment/Decrement
      ITDT           : GMAC_TA_ITDT_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Write-only. Adjust 1588 Timer
      ADJ            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TA_Register use record
      ITDT           at 0 range 0 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      ADJ            at 0 range 31 .. 31;
   end record;

   subtype GMAC_TI_CNS_Field is HAL.UInt8;
   subtype GMAC_TI_ACNS_Field is HAL.UInt8;
   subtype GMAC_TI_NIT_Field is HAL.UInt8;

   --  1588 Timer Increment Register
   type GMAC_TI_Register is record
      --  Count Nanoseconds
      CNS            : GMAC_TI_CNS_Field := 16#0#;
      --  Alternative Count Nanoseconds
      ACNS           : GMAC_TI_ACNS_Field := 16#0#;
      --  Number of Increments
      NIT            : GMAC_TI_NIT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TI_Register use record
      CNS            at 0 range 0 .. 7;
      ACNS           at 0 range 8 .. 15;
      NIT            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GMAC_EFTN_RUD_Field is HAL.UInt30;

   --  PTP Event Frame Transmitted Nanoseconds
   type GMAC_EFTN_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_EFTN_RUD_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_EFTN_Register use record
      RUD            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_EFRN_RUD_Field is HAL.UInt30;

   --  PTP Event Frame Received Nanoseconds
   type GMAC_EFRN_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_EFRN_RUD_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_EFRN_Register use record
      RUD            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_PEFTN_RUD_Field is HAL.UInt30;

   --  PTP Peer Event Frame Transmitted Nanoseconds
   type GMAC_PEFTN_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_PEFTN_RUD_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_PEFTN_Register use record
      RUD            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_PEFRN_RUD_Field is HAL.UInt30;

   --  PTP Peer Event Frame Received Nanoseconds
   type GMAC_PEFRN_Register is record
      --  Read-only. Register Update
      RUD            : GMAC_PEFRN_RUD_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_PEFRN_Register use record
      RUD            at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype GMAC_RLPITR_RLPITR_Field is HAL.UInt16;

   --  Receive LPI transition Register
   type GMAC_RLPITR_Register is record
      --  Read-only. Count number of times transition from rx normal idle to
      --  low power idle
      RLPITR         : GMAC_RLPITR_RLPITR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RLPITR_Register use record
      RLPITR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_RLPITI_RLPITI_Field is HAL.UInt24;

   --  Receive LPI Time Register
   type GMAC_RLPITI_Register is record
      --  Read-only. Increment once over 16 ahb clock when LPI indication bit
      --  20 is set in rx mode
      RLPITI         : GMAC_RLPITI_RLPITI_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_RLPITI_Register use record
      RLPITI         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GMAC_TLPITR_TLPITR_Field is HAL.UInt16;

   --  Receive LPI transition Register
   type GMAC_TLPITR_Register is record
      --  Read-only. Count number of times enable LPI tx bit 20 goes from low
      --  to high
      TLPITR         : GMAC_TLPITR_TLPITR_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TLPITR_Register use record
      TLPITR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GMAC_TLPITI_TLPITI_Field is HAL.UInt24;

   --  Receive LPI Time Register
   type GMAC_TLPITI_Register is record
      --  Read-only. Increment once over 16 ahb clock when LPI indication bit
      --  20 is set in tx mode
      TLPITI         : GMAC_TLPITI_TLPITI_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GMAC_TLPITI_Register use record
      TLPITI         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Ethernet MAC
   type GMAC_Peripheral is record
      --  Network Control Register
      NCR       : aliased GMAC_NCR_Register;
      --  Network Configuration Register
      NCFGR     : aliased GMAC_NCFGR_Register;
      --  Network Status Register
      NSR       : aliased GMAC_NSR_Register;
      --  User Register
      UR        : aliased GMAC_UR_Register;
      --  DMA Configuration Register
      DCFGR     : aliased GMAC_DCFGR_Register;
      --  Transmit Status Register
      TSR       : aliased GMAC_TSR_Register;
      --  Receive Buffer Queue Base Address
      RBQB      : aliased GMAC_RBQB_Register;
      --  Transmit Buffer Queue Base Address
      TBQB      : aliased GMAC_TBQB_Register;
      --  Receive Status Register
      RSR       : aliased GMAC_RSR_Register;
      --  Interrupt Status Register
      ISR       : aliased GMAC_ISR_Register;
      --  Interrupt Enable Register
      IER       : aliased GMAC_IER_Register;
      --  Interrupt Disable Register
      IDR       : aliased GMAC_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased GMAC_IMR_Register;
      --  PHY Maintenance Register
      MAN       : aliased GMAC_MAN_Register;
      --  Received Pause Quantum Register
      RPQ       : aliased GMAC_RPQ_Register;
      --  Transmit Pause Quantum Register
      TPQ       : aliased GMAC_TPQ_Register;
      --  TX partial store and forward Register
      TPSF      : aliased GMAC_TPSF_Register;
      --  RX partial store and forward Register
      RPSF      : aliased GMAC_RPSF_Register;
      --  RX Jumbo Frame Max Length Register
      RJFML     : aliased GMAC_RJFML_Register;
      --  Hash Register Bottom [31:0]
      HRB       : aliased HAL.UInt32;
      --  Hash Register Top [63:32]
      HRT       : aliased HAL.UInt32;
      --  Specific Address Bottom [31:0] Register
      SAB0      : aliased HAL.UInt32;
      --  Specific Address Top [47:32] Register
      SAT0      : aliased SAT_Register;
      --  Specific Address Bottom [31:0] Register
      SAB1      : aliased HAL.UInt32;
      --  Specific Address Top [47:32] Register
      SAT1      : aliased SAT_Register;
      --  Specific Address Bottom [31:0] Register
      SAB2      : aliased HAL.UInt32;
      --  Specific Address Top [47:32] Register
      SAT2      : aliased SAT_Register;
      --  Specific Address Bottom [31:0] Register
      SAB3      : aliased HAL.UInt32;
      --  Specific Address Top [47:32] Register
      SAT3      : aliased SAT_Register;
      --  Type ID Match Register
      TIDM      : aliased GMAC_TIDM_Registers;
      --  Wake on LAN
      WOL       : aliased GMAC_WOL_Register;
      --  IPG Stretch Register
      IPGS      : aliased GMAC_IPGS_Register;
      --  Stacked VLAN Register
      SVLAN     : aliased GMAC_SVLAN_Register;
      --  Transmit PFC Pause Register
      TPFCP     : aliased GMAC_TPFCP_Register;
      --  Specific Address 1 Mask Bottom [31:0] Register
      SAMB1     : aliased HAL.UInt32;
      --  Specific Address 1 Mask Top [47:32] Register
      SAMT1     : aliased GMAC_SAMT1_Register;
      --  Tsu timer comparison nanoseconds Register
      NSC       : aliased GMAC_NSC_Register;
      --  Tsu timer second comparison Register
      SCL       : aliased HAL.UInt32;
      --  Tsu timer second comparison Register
      SCH       : aliased GMAC_SCH_Register;
      --  PTP Event Frame Transmitted Seconds High Register
      EFTSH     : aliased GMAC_EFTSH_Register;
      --  PTP Event Frame Received Seconds High Register
      EFRSH     : aliased GMAC_EFRSH_Register;
      --  PTP Peer Event Frame Transmitted Seconds High Register
      PEFTSH    : aliased GMAC_PEFTSH_Register;
      --  PTP Peer Event Frame Received Seconds High Register
      PEFRSH    : aliased GMAC_PEFRSH_Register;
      --  Octets Transmitted [31:0] Register
      OTLO      : aliased HAL.UInt32;
      --  Octets Transmitted [47:32] Register
      OTHI      : aliased GMAC_OTHI_Register;
      --  Frames Transmitted Register
      FT        : aliased HAL.UInt32;
      --  Broadcast Frames Transmitted Register
      BCFT      : aliased HAL.UInt32;
      --  Multicast Frames Transmitted Register
      MFT       : aliased HAL.UInt32;
      --  Pause Frames Transmitted Register
      PFT       : aliased GMAC_PFT_Register;
      --  64 Byte Frames Transmitted Register
      BFT64     : aliased HAL.UInt32;
      --  65 to 127 Byte Frames Transmitted Register
      TBFT127   : aliased HAL.UInt32;
      --  128 to 255 Byte Frames Transmitted Register
      TBFT255   : aliased HAL.UInt32;
      --  256 to 511 Byte Frames Transmitted Register
      TBFT511   : aliased HAL.UInt32;
      --  512 to 1023 Byte Frames Transmitted Register
      TBFT1023  : aliased HAL.UInt32;
      --  1024 to 1518 Byte Frames Transmitted Register
      TBFT1518  : aliased HAL.UInt32;
      --  Greater Than 1518 Byte Frames Transmitted Register
      GTBFT1518 : aliased HAL.UInt32;
      --  Transmit Underruns Register
      TUR       : aliased GMAC_TUR_Register;
      --  Single Collision Frames Register
      SCF       : aliased GMAC_SCF_Register;
      --  Multiple Collision Frames Register
      MCF       : aliased GMAC_MCF_Register;
      --  Excessive Collisions Register
      EC        : aliased GMAC_EC_Register;
      --  Late Collisions Register
      LC        : aliased GMAC_LC_Register;
      --  Deferred Transmission Frames Register
      DTF       : aliased GMAC_DTF_Register;
      --  Carrier Sense Errors Register
      CSE       : aliased GMAC_CSE_Register;
      --  Octets Received [31:0] Received
      ORLO      : aliased HAL.UInt32;
      --  Octets Received [47:32] Received
      ORHI      : aliased GMAC_ORHI_Register;
      --  Frames Received Register
      FR        : aliased HAL.UInt32;
      --  Broadcast Frames Received Register
      BCFR      : aliased HAL.UInt32;
      --  Multicast Frames Received Register
      MFR       : aliased HAL.UInt32;
      --  Pause Frames Received Register
      PFR       : aliased GMAC_PFR_Register;
      --  64 Byte Frames Received Register
      BFR64     : aliased HAL.UInt32;
      --  65 to 127 Byte Frames Received Register
      TBFR127   : aliased HAL.UInt32;
      --  128 to 255 Byte Frames Received Register
      TBFR255   : aliased HAL.UInt32;
      --  256 to 511Byte Frames Received Register
      TBFR511   : aliased HAL.UInt32;
      --  512 to 1023 Byte Frames Received Register
      TBFR1023  : aliased HAL.UInt32;
      --  1024 to 1518 Byte Frames Received Register
      TBFR1518  : aliased HAL.UInt32;
      --  1519 to Maximum Byte Frames Received Register
      TMXBFR    : aliased HAL.UInt32;
      --  Undersize Frames Received Register
      UFR       : aliased GMAC_UFR_Register;
      --  Oversize Frames Received Register
      OFR       : aliased GMAC_OFR_Register;
      --  Jabbers Received Register
      JR        : aliased GMAC_JR_Register;
      --  Frame Check Sequence Errors Register
      FCSE      : aliased GMAC_FCSE_Register;
      --  Length Field Frame Errors Register
      LFFE      : aliased GMAC_LFFE_Register;
      --  Receive Symbol Errors Register
      RSE       : aliased GMAC_RSE_Register;
      --  Alignment Errors Register
      AE        : aliased GMAC_AE_Register;
      --  Receive Resource Errors Register
      RRE       : aliased GMAC_RRE_Register;
      --  Receive Overrun Register
      ROE       : aliased GMAC_ROE_Register;
      --  IP Header Checksum Errors Register
      IHCE      : aliased GMAC_IHCE_Register;
      --  TCP Checksum Errors Register
      TCE       : aliased GMAC_TCE_Register;
      --  UDP Checksum Errors Register
      UCE       : aliased GMAC_UCE_Register;
      --  1588 Timer Increment [15:0] Sub-Nanoseconds Register
      TISUBN    : aliased GMAC_TISUBN_Register;
      --  1588 Timer Seconds High [15:0] Register
      TSH       : aliased GMAC_TSH_Register;
      --  1588 Timer Sync Strobe Seconds [31:0] Register
      TSSSL     : aliased HAL.UInt32;
      --  1588 Timer Sync Strobe Nanoseconds Register
      TSSN      : aliased GMAC_TSSN_Register;
      --  1588 Timer Seconds [31:0] Register
      TSL       : aliased HAL.UInt32;
      --  1588 Timer Nanoseconds Register
      TN        : aliased GMAC_TN_Register;
      --  1588 Timer Adjust Register
      TA        : aliased GMAC_TA_Register;
      --  1588 Timer Increment Register
      TI        : aliased GMAC_TI_Register;
      --  PTP Event Frame Transmitted Seconds Low Register
      EFTSL     : aliased HAL.UInt32;
      --  PTP Event Frame Transmitted Nanoseconds
      EFTN      : aliased GMAC_EFTN_Register;
      --  PTP Event Frame Received Seconds Low Register
      EFRSL     : aliased HAL.UInt32;
      --  PTP Event Frame Received Nanoseconds
      EFRN      : aliased GMAC_EFRN_Register;
      --  PTP Peer Event Frame Transmitted Seconds Low Register
      PEFTSL    : aliased HAL.UInt32;
      --  PTP Peer Event Frame Transmitted Nanoseconds
      PEFTN     : aliased GMAC_PEFTN_Register;
      --  PTP Peer Event Frame Received Seconds Low Register
      PEFRSL    : aliased HAL.UInt32;
      --  PTP Peer Event Frame Received Nanoseconds
      PEFRN     : aliased GMAC_PEFRN_Register;
      --  Receive LPI transition Register
      RLPITR    : aliased GMAC_RLPITR_Register;
      --  Receive LPI Time Register
      RLPITI    : aliased GMAC_RLPITI_Register;
      --  Receive LPI transition Register
      TLPITR    : aliased GMAC_TLPITR_Register;
      --  Receive LPI Time Register
      TLPITI    : aliased GMAC_TLPITI_Register;
   end record
     with Volatile;

   for GMAC_Peripheral use record
      NCR       at 16#0# range 0 .. 31;
      NCFGR     at 16#4# range 0 .. 31;
      NSR       at 16#8# range 0 .. 31;
      UR        at 16#C# range 0 .. 31;
      DCFGR     at 16#10# range 0 .. 31;
      TSR       at 16#14# range 0 .. 31;
      RBQB      at 16#18# range 0 .. 31;
      TBQB      at 16#1C# range 0 .. 31;
      RSR       at 16#20# range 0 .. 31;
      ISR       at 16#24# range 0 .. 31;
      IER       at 16#28# range 0 .. 31;
      IDR       at 16#2C# range 0 .. 31;
      IMR       at 16#30# range 0 .. 31;
      MAN       at 16#34# range 0 .. 31;
      RPQ       at 16#38# range 0 .. 31;
      TPQ       at 16#3C# range 0 .. 31;
      TPSF      at 16#40# range 0 .. 31;
      RPSF      at 16#44# range 0 .. 31;
      RJFML     at 16#48# range 0 .. 31;
      HRB       at 16#80# range 0 .. 31;
      HRT       at 16#84# range 0 .. 31;
      SAB0      at 16#88# range 0 .. 31;
      SAT0      at 16#8C# range 0 .. 31;
      SAB1      at 16#90# range 0 .. 31;
      SAT1      at 16#94# range 0 .. 31;
      SAB2      at 16#98# range 0 .. 31;
      SAT2      at 16#9C# range 0 .. 31;
      SAB3      at 16#A0# range 0 .. 31;
      SAT3      at 16#A4# range 0 .. 31;
      TIDM      at 16#A8# range 0 .. 127;
      WOL       at 16#B8# range 0 .. 31;
      IPGS      at 16#BC# range 0 .. 31;
      SVLAN     at 16#C0# range 0 .. 31;
      TPFCP     at 16#C4# range 0 .. 31;
      SAMB1     at 16#C8# range 0 .. 31;
      SAMT1     at 16#CC# range 0 .. 31;
      NSC       at 16#DC# range 0 .. 31;
      SCL       at 16#E0# range 0 .. 31;
      SCH       at 16#E4# range 0 .. 31;
      EFTSH     at 16#E8# range 0 .. 31;
      EFRSH     at 16#EC# range 0 .. 31;
      PEFTSH    at 16#F0# range 0 .. 31;
      PEFRSH    at 16#F4# range 0 .. 31;
      OTLO      at 16#100# range 0 .. 31;
      OTHI      at 16#104# range 0 .. 31;
      FT        at 16#108# range 0 .. 31;
      BCFT      at 16#10C# range 0 .. 31;
      MFT       at 16#110# range 0 .. 31;
      PFT       at 16#114# range 0 .. 31;
      BFT64     at 16#118# range 0 .. 31;
      TBFT127   at 16#11C# range 0 .. 31;
      TBFT255   at 16#120# range 0 .. 31;
      TBFT511   at 16#124# range 0 .. 31;
      TBFT1023  at 16#128# range 0 .. 31;
      TBFT1518  at 16#12C# range 0 .. 31;
      GTBFT1518 at 16#130# range 0 .. 31;
      TUR       at 16#134# range 0 .. 31;
      SCF       at 16#138# range 0 .. 31;
      MCF       at 16#13C# range 0 .. 31;
      EC        at 16#140# range 0 .. 31;
      LC        at 16#144# range 0 .. 31;
      DTF       at 16#148# range 0 .. 31;
      CSE       at 16#14C# range 0 .. 31;
      ORLO      at 16#150# range 0 .. 31;
      ORHI      at 16#154# range 0 .. 31;
      FR        at 16#158# range 0 .. 31;
      BCFR      at 16#15C# range 0 .. 31;
      MFR       at 16#160# range 0 .. 31;
      PFR       at 16#164# range 0 .. 31;
      BFR64     at 16#168# range 0 .. 31;
      TBFR127   at 16#16C# range 0 .. 31;
      TBFR255   at 16#170# range 0 .. 31;
      TBFR511   at 16#174# range 0 .. 31;
      TBFR1023  at 16#178# range 0 .. 31;
      TBFR1518  at 16#17C# range 0 .. 31;
      TMXBFR    at 16#180# range 0 .. 31;
      UFR       at 16#184# range 0 .. 31;
      OFR       at 16#188# range 0 .. 31;
      JR        at 16#18C# range 0 .. 31;
      FCSE      at 16#190# range 0 .. 31;
      LFFE      at 16#194# range 0 .. 31;
      RSE       at 16#198# range 0 .. 31;
      AE        at 16#19C# range 0 .. 31;
      RRE       at 16#1A0# range 0 .. 31;
      ROE       at 16#1A4# range 0 .. 31;
      IHCE      at 16#1A8# range 0 .. 31;
      TCE       at 16#1AC# range 0 .. 31;
      UCE       at 16#1B0# range 0 .. 31;
      TISUBN    at 16#1BC# range 0 .. 31;
      TSH       at 16#1C0# range 0 .. 31;
      TSSSL     at 16#1C8# range 0 .. 31;
      TSSN      at 16#1CC# range 0 .. 31;
      TSL       at 16#1D0# range 0 .. 31;
      TN        at 16#1D4# range 0 .. 31;
      TA        at 16#1D8# range 0 .. 31;
      TI        at 16#1DC# range 0 .. 31;
      EFTSL     at 16#1E0# range 0 .. 31;
      EFTN      at 16#1E4# range 0 .. 31;
      EFRSL     at 16#1E8# range 0 .. 31;
      EFRN      at 16#1EC# range 0 .. 31;
      PEFTSL    at 16#1F0# range 0 .. 31;
      PEFTN     at 16#1F4# range 0 .. 31;
      PEFRSL    at 16#1F8# range 0 .. 31;
      PEFRN     at 16#1FC# range 0 .. 31;
      RLPITR    at 16#270# range 0 .. 31;
      RLPITI    at 16#274# range 0 .. 31;
      TLPITR    at 16#278# range 0 .. 31;
      TLPITI    at 16#27C# range 0 .. 31;
   end record;

   --  Ethernet MAC
   GMAC_Periph : aliased GMAC_Peripheral
     with Import, Address => System'To_Address (16#42000800#);

end SAM_SVD.GMAC;
