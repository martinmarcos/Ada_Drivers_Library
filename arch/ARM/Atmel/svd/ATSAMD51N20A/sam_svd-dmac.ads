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

--  This spec has been automatically generated from ATSAMD51N20A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMAC_CTRL_LVLEN array
   type DMAC_CTRL_LVLEN_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for DMAC_CTRL_LVLEN
   type DMAC_CTRL_LVLEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LVLEN as a value
            Val : HAL.UInt4;
         when True =>
            --  LVLEN as an array
            Arr : DMAC_CTRL_LVLEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for DMAC_CTRL_LVLEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Control
   type DMAC_CTRL_Register is record
      --  Software Reset
      SWRST          : Boolean := False;
      --  DMA Enable
      DMAENABLE      : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Priority Level 0 Enable
      LVLEN          : DMAC_CTRL_LVLEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMAC_CTRL_Register use record
      SWRST          at 0 range 0 .. 0;
      DMAENABLE      at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LVLEN          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  CRC Beat Size
   type CRCCTRL_CRCBEATSIZESelect is
     (
      --  8-bit bus transfer
      Byte,
      --  16-bit bus transfer
      Hword,
      --  32-bit bus transfer
      Word)
     with Size => 2;
   for CRCCTRL_CRCBEATSIZESelect use
     (Byte => 0,
      Hword => 1,
      Word => 2);

   --  CRC Polynomial Type
   type CRCCTRL_CRCPOLYSelect is
     (
      --  CRC-16 (CRC-CCITT)
      Crc16,
      --  CRC32 (IEEE 802.3)
      Crc32)
     with Size => 2;
   for CRCCTRL_CRCPOLYSelect use
     (Crc16 => 0,
      Crc32 => 1);

   --  CRC Input Source
   type CRCCTRL_CRCSRCSelect is
     (
      --  CRC Disabled
      Disable,
      --  I/O interface
      Io)
     with Size => 6;
   for CRCCTRL_CRCSRCSelect use
     (Disable => 0,
      Io => 1);

   --  CRC Operating Mode
   type CRCCTRL_CRCMODESelect is
     (
      --  Default operating mode
      Default,
      --  Memory CRC monitor operating mode
      Crcmon,
      --  Memory CRC generation operating mode
      Crcgen)
     with Size => 2;
   for CRCCTRL_CRCMODESelect use
     (Default => 0,
      Crcmon => 2,
      Crcgen => 3);

   --  CRC Control
   type DMAC_CRCCTRL_Register is record
      --  CRC Beat Size
      CRCBEATSIZE  : CRCCTRL_CRCBEATSIZESelect := SAM_SVD.DMAC.Byte;
      --  CRC Polynomial Type
      CRCPOLY      : CRCCTRL_CRCPOLYSelect := SAM_SVD.DMAC.Crc16;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  CRC Input Source
      CRCSRC       : CRCCTRL_CRCSRCSelect := SAM_SVD.DMAC.Disable;
      --  CRC Operating Mode
      CRCMODE      : CRCCTRL_CRCMODESelect := SAM_SVD.DMAC.Default;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMAC_CRCCTRL_Register use record
      CRCBEATSIZE  at 0 range 0 .. 1;
      CRCPOLY      at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      CRCSRC       at 0 range 8 .. 13;
      CRCMODE      at 0 range 14 .. 15;
   end record;

   --  CRC Status
   type DMAC_CRCSTATUS_Register is record
      --  CRC Module Busy
      CRCBUSY      : Boolean := False;
      --  Read-only. CRC Zero
      CRCZERO      : Boolean := False;
      --  Read-only. CRC Error
      CRCERR       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DMAC_CRCSTATUS_Register use record
      CRCBUSY      at 0 range 0 .. 0;
      CRCZERO      at 0 range 1 .. 1;
      CRCERR       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Debug Control
   type DMAC_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DMAC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  DMAC_SWTRIGCTRL_SWTRIG array
   type DMAC_SWTRIGCTRL_SWTRIG_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Software Trigger Control
   type DMAC_SWTRIGCTRL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWTRIG as a value
            Val : HAL.UInt32;
         when True =>
            --  SWTRIG as an array
            Arr : DMAC_SWTRIGCTRL_SWTRIG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DMAC_SWTRIGCTRL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype DMAC_PRICTRL0_LVLPRI0_Field is HAL.UInt5;

   --  Level 0 Quality of Service
   type PRICTRL0_QOS0Select is
     (
      --  Regular delivery
      Regular,
      --  Bandwidth shortage
      Shortage,
      --  Latency sensitive
      Sensitive,
      --  Latency critical
      Critical)
     with Size => 2;
   for PRICTRL0_QOS0Select use
     (Regular => 0,
      Shortage => 1,
      Sensitive => 2,
      Critical => 3);

   subtype DMAC_PRICTRL0_LVLPRI1_Field is HAL.UInt5;

   --  Level 1 Quality of Service
   type PRICTRL0_QOS1Select is
     (
      --  Regular delivery
      Regular,
      --  Bandwidth shortage
      Shortage,
      --  Latency sensitive
      Sensitive,
      --  Latency critical
      Critical)
     with Size => 2;
   for PRICTRL0_QOS1Select use
     (Regular => 0,
      Shortage => 1,
      Sensitive => 2,
      Critical => 3);

   subtype DMAC_PRICTRL0_LVLPRI2_Field is HAL.UInt5;

   --  Level 2 Quality of Service
   type PRICTRL0_QOS2Select is
     (
      --  Regular delivery
      Regular,
      --  Bandwidth shortage
      Shortage,
      --  Latency sensitive
      Sensitive,
      --  Latency critical
      Critical)
     with Size => 2;
   for PRICTRL0_QOS2Select use
     (Regular => 0,
      Shortage => 1,
      Sensitive => 2,
      Critical => 3);

   subtype DMAC_PRICTRL0_LVLPRI3_Field is HAL.UInt5;

   --  Level 3 Quality of Service
   type PRICTRL0_QOS3Select is
     (
      --  Regular delivery
      Regular,
      --  Bandwidth shortage
      Shortage,
      --  Latency sensitive
      Sensitive,
      --  Latency critical
      Critical)
     with Size => 2;
   for PRICTRL0_QOS3Select use
     (Regular => 0,
      Shortage => 1,
      Sensitive => 2,
      Critical => 3);

   --  Priority Control 0
   type DMAC_PRICTRL0_Register is record
      --  Level 0 Channel Priority Number
      LVLPRI0  : DMAC_PRICTRL0_LVLPRI0_Field := 16#0#;
      --  Level 0 Quality of Service
      QOS0     : PRICTRL0_QOS0Select := SAM_SVD.DMAC.Sensitive;
      --  Level 0 Round-Robin Scheduling Enable
      RRLVLEN0 : Boolean := False;
      --  Level 1 Channel Priority Number
      LVLPRI1  : DMAC_PRICTRL0_LVLPRI1_Field := 16#0#;
      --  Level 1 Quality of Service
      QOS1     : PRICTRL0_QOS1Select := SAM_SVD.DMAC.Sensitive;
      --  Level 1 Round-Robin Scheduling Enable
      RRLVLEN1 : Boolean := False;
      --  Level 2 Channel Priority Number
      LVLPRI2  : DMAC_PRICTRL0_LVLPRI2_Field := 16#0#;
      --  Level 2 Quality of Service
      QOS2     : PRICTRL0_QOS2Select := SAM_SVD.DMAC.Sensitive;
      --  Level 2 Round-Robin Scheduling Enable
      RRLVLEN2 : Boolean := False;
      --  Level 3 Channel Priority Number
      LVLPRI3  : DMAC_PRICTRL0_LVLPRI3_Field := 16#0#;
      --  Level 3 Quality of Service
      QOS3     : PRICTRL0_QOS3Select := SAM_SVD.DMAC.Sensitive;
      --  Level 3 Round-Robin Scheduling Enable
      RRLVLEN3 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAC_PRICTRL0_Register use record
      LVLPRI0  at 0 range 0 .. 4;
      QOS0     at 0 range 5 .. 6;
      RRLVLEN0 at 0 range 7 .. 7;
      LVLPRI1  at 0 range 8 .. 12;
      QOS1     at 0 range 13 .. 14;
      RRLVLEN1 at 0 range 15 .. 15;
      LVLPRI2  at 0 range 16 .. 20;
      QOS2     at 0 range 21 .. 22;
      RRLVLEN2 at 0 range 23 .. 23;
      LVLPRI3  at 0 range 24 .. 28;
      QOS3     at 0 range 29 .. 30;
      RRLVLEN3 at 0 range 31 .. 31;
   end record;

   subtype DMAC_INTPEND_ID_Field is HAL.UInt5;

   --  Interrupt Pending
   type DMAC_INTPEND_Register is record
      --  Channel ID
      ID             : DMAC_INTPEND_ID_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Transfer Error
      TERR           : Boolean := False;
      --  Transfer Complete
      TCMPL          : Boolean := False;
      --  Channel Suspend
      SUSP           : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CRC Error
      CRCERR         : Boolean := False;
      --  Read-only. Fetch Error
      FERR           : Boolean := False;
      --  Read-only. Busy
      BUSY           : Boolean := False;
      --  Read-only. Pending
      PEND           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for DMAC_INTPEND_Register use record
      ID             at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TERR           at 0 range 8 .. 8;
      TCMPL          at 0 range 9 .. 9;
      SUSP           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CRCERR         at 0 range 12 .. 12;
      FERR           at 0 range 13 .. 13;
      BUSY           at 0 range 14 .. 14;
      PEND           at 0 range 15 .. 15;
   end record;

   --  DMAC_INTSTATUS_CHINT array
   type DMAC_INTSTATUS_CHINT_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Status
   type DMAC_INTSTATUS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHINT as a value
            Val : HAL.UInt32;
         when True =>
            --  CHINT as an array
            Arr : DMAC_INTSTATUS_CHINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DMAC_INTSTATUS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DMAC_BUSYCH_BUSYCH array
   type DMAC_BUSYCH_BUSYCH_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Busy Channels
   type DMAC_BUSYCH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BUSYCH as a value
            Val : HAL.UInt32;
         when True =>
            --  BUSYCH as an array
            Arr : DMAC_BUSYCH_BUSYCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DMAC_BUSYCH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DMAC_PENDCH_PENDCH array
   type DMAC_PENDCH_PENDCH_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pending Channels
   type DMAC_PENDCH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PENDCH as a value
            Val : HAL.UInt32;
         when True =>
            --  PENDCH as an array
            Arr : DMAC_PENDCH_PENDCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for DMAC_PENDCH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DMAC_ACTIVE_LVLEX array
   type DMAC_ACTIVE_LVLEX_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for DMAC_ACTIVE_LVLEX
   type DMAC_ACTIVE_LVLEX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LVLEX as a value
            Val : HAL.UInt4;
         when True =>
            --  LVLEX as an array
            Arr : DMAC_ACTIVE_LVLEX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for DMAC_ACTIVE_LVLEX_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype DMAC_ACTIVE_ID_Field is HAL.UInt5;
   subtype DMAC_ACTIVE_BTCNT_Field is HAL.UInt16;

   --  Active Channel and Levels
   type DMAC_ACTIVE_Register is record
      --  Read-only. Level 0 Channel Trigger Request Executing
      LVLEX          : DMAC_ACTIVE_LVLEX_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Active Channel ID
      ID             : DMAC_ACTIVE_ID_Field;
      --  unspecified
      Reserved_13_14 : HAL.UInt2;
      --  Read-only. Active Channel Busy
      ABUSY          : Boolean;
      --  Read-only. Active Channel Block Transfer Count
      BTCNT          : DMAC_ACTIVE_BTCNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAC_ACTIVE_Register use record
      LVLEX          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ID             at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      ABUSY          at 0 range 15 .. 15;
      BTCNT          at 0 range 16 .. 31;
   end record;

   --  Trigger Source
   type CHCTRLA0_TRIGSRCSelect is
     (
      --  Only software/event triggers
      Disable)
     with Size => 7;
   for CHCTRLA0_TRIGSRCSelect use
     (Disable => 0);

   --  Trigger Action
   type CHCTRLA0_TRIGACTSelect is
     (
      --  One trigger required for each block transfer
      Block,
      --  One trigger required for each burst transfer
      Burst,
      --  One trigger required for each transaction
      Transaction)
     with Size => 2;
   for CHCTRLA0_TRIGACTSelect use
     (Block => 0,
      Burst => 2,
      Transaction => 3);

   --  Burst Length
   type CHCTRLA0_BURSTLENSelect is
     (
      --  Single-beat burst length
      Single,
      --  2-beats burst length
      CHCTRLA0_BURSTLENSelect_2Beat,
      --  3-beats burst length
      CHCTRLA0_BURSTLENSelect_3Beat,
      --  4-beats burst length
      CHCTRLA0_BURSTLENSelect_4Beat,
      --  5-beats burst length
      CHCTRLA0_BURSTLENSelect_5Beat,
      --  6-beats burst length
      CHCTRLA0_BURSTLENSelect_6Beat,
      --  7-beats burst length
      CHCTRLA0_BURSTLENSelect_7Beat,
      --  8-beats burst length
      CHCTRLA0_BURSTLENSelect_8Beat,
      --  9-beats burst length
      CHCTRLA0_BURSTLENSelect_9Beat,
      --  10-beats burst length
      CHCTRLA0_BURSTLENSelect_10Beat,
      --  11-beats burst length
      CHCTRLA0_BURSTLENSelect_11Beat,
      --  12-beats burst length
      CHCTRLA0_BURSTLENSelect_12Beat,
      --  13-beats burst length
      CHCTRLA0_BURSTLENSelect_13Beat,
      --  14-beats burst length
      CHCTRLA0_BURSTLENSelect_14Beat,
      --  15-beats burst length
      CHCTRLA0_BURSTLENSelect_15Beat,
      --  16-beats burst length
      CHCTRLA0_BURSTLENSelect_16Beat)
     with Size => 4;
   for CHCTRLA0_BURSTLENSelect use
     (Single => 0,
      CHCTRLA0_BURSTLENSelect_2Beat => 1,
      CHCTRLA0_BURSTLENSelect_3Beat => 2,
      CHCTRLA0_BURSTLENSelect_4Beat => 3,
      CHCTRLA0_BURSTLENSelect_5Beat => 4,
      CHCTRLA0_BURSTLENSelect_6Beat => 5,
      CHCTRLA0_BURSTLENSelect_7Beat => 6,
      CHCTRLA0_BURSTLENSelect_8Beat => 7,
      CHCTRLA0_BURSTLENSelect_9Beat => 8,
      CHCTRLA0_BURSTLENSelect_10Beat => 9,
      CHCTRLA0_BURSTLENSelect_11Beat => 10,
      CHCTRLA0_BURSTLENSelect_12Beat => 11,
      CHCTRLA0_BURSTLENSelect_13Beat => 12,
      CHCTRLA0_BURSTLENSelect_14Beat => 13,
      CHCTRLA0_BURSTLENSelect_15Beat => 14,
      CHCTRLA0_BURSTLENSelect_16Beat => 15);

   --  FIFO Threshold
   type CHCTRLA0_THRESHOLDSelect is
     (
      --  Destination write starts after each beat source address read
      CHCTRLA0_THRESHOLDSelect_1Beat,
      --  Destination write starts after 2-beats source address read
      CHCTRLA0_THRESHOLDSelect_2Beats,
      --  Destination write starts after 4-beats source address read
      CHCTRLA0_THRESHOLDSelect_4Beats,
      --  Destination write starts after 8-beats source address read
      CHCTRLA0_THRESHOLDSelect_8Beats)
     with Size => 2;
   for CHCTRLA0_THRESHOLDSelect use
     (CHCTRLA0_THRESHOLDSelect_1Beat => 0,
      CHCTRLA0_THRESHOLDSelect_2Beats => 1,
      CHCTRLA0_THRESHOLDSelect_4Beats => 2,
      CHCTRLA0_THRESHOLDSelect_8Beats => 3);

   --  Channel n Control A
   type CHCTRLA_Register is record
      --  Channel Software Reset
      SWRST          : Boolean := False;
      --  Channel Enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Channel Run in Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trigger Source
      TRIGSRC        : CHCTRLA0_TRIGSRCSelect := SAM_SVD.DMAC.Disable;
      --  unspecified
      Reserved_15_19 : HAL.UInt5 := 16#0#;
      --  Trigger Action
      TRIGACT        : CHCTRLA0_TRIGACTSelect := SAM_SVD.DMAC.Block;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Burst Length
      BURSTLEN       : CHCTRLA0_BURSTLENSelect := SAM_SVD.DMAC.Single;
      --  FIFO Threshold
      THRESHOLD      : CHCTRLA0_THRESHOLDSelect :=
                        SAM_SVD.DMAC.CHCTRLA0_THRESHOLDSelect_1Beat;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTRLA_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRIGSRC        at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      TRIGACT        at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      BURSTLEN       at 0 range 24 .. 27;
      THRESHOLD      at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Software Command
   type CHCTRLB0_CMDSelect is
     (
      --  No action
      Noact,
      --  Channel suspend operation
      Suspend,
      --  Channel resume operation
      Resume)
     with Size => 2;
   for CHCTRLB0_CMDSelect use
     (Noact => 0,
      Suspend => 1,
      Resume => 2);

   --  Channel n Control B
   type CHCTRLB_Register is record
      --  Software Command
      CMD          : CHCTRLB0_CMDSelect := SAM_SVD.DMAC.Noact;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHCTRLB_Register use record
      CMD          at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Channel Priority Level
   type CHPRILVL0_PRILVLSelect is
     (
      --  Channel Priority Level 0 (Lowest Level)
      Lvl0,
      --  Channel Priority Level 1
      Lvl1,
      --  Channel Priority Level 2
      Lvl2,
      --  Channel Priority Level 3
      Lvl3,
      --  Channel Priority Level 4
      Lvl4,
      --  Channel Priority Level 5
      Lvl5,
      --  Channel Priority Level 6
      Lvl6,
      --  Channel Priority Level 7 (Highest Level)
      Lvl7)
     with Size => 2;
   for CHPRILVL0_PRILVLSelect use
     (Lvl0 => 0,
      Lvl1 => 1,
      Lvl2 => 2,
      Lvl3 => 3,
      Lvl4 => 4,
      Lvl5 => 5,
      Lvl6 => 6,
      Lvl7 => 7);

   --  Channel n Priority Level
   type CHPRILVL_Register is record
      --  Channel Priority Level
      PRILVL       : CHPRILVL0_PRILVLSelect := SAM_SVD.DMAC.Lvl0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHPRILVL_Register use record
      PRILVL       at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Channel Event Input Action
   type CHEVCTRL0_EVACTSelect is
     (
      --  No action
      Noact,
      --  Transfer and periodic transfer trigger
      Trig,
      --  Conditional transfer trigger
      Ctrig,
      --  Conditional block transfer
      Cblock,
      --  Channel suspend operation
      Suspend,
      --  Channel resume operation
      Resume,
      --  Skip next block suspend action
      Sskip,
      --  Increase priority
      Incpri)
     with Size => 3;
   for CHEVCTRL0_EVACTSelect use
     (Noact => 0,
      Trig => 1,
      Ctrig => 2,
      Cblock => 3,
      Suspend => 4,
      Resume => 5,
      Sskip => 6,
      Incpri => 7);

   --  Channel Event Output Mode
   type CHEVCTRL0_EVOMODESelect is
     (
      --  Block event output selection. Refer to BTCTRL.EVOSEL for available
      --  selections.
      Default,
      --  Ongoing trigger action
      Trigact)
     with Size => 2;
   for CHEVCTRL0_EVOMODESelect use
     (Default => 0,
      Trigact => 1);

   --  Channel n Event Control
   type CHEVCTRL_Register is record
      --  Channel Event Input Action
      EVACT        : CHEVCTRL0_EVACTSelect := SAM_SVD.DMAC.Noact;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Channel Event Output Mode
      EVOMODE      : CHEVCTRL0_EVOMODESelect := SAM_SVD.DMAC.Default;
      --  Channel Event Input Enable
      EVIE         : Boolean := False;
      --  Channel Event Output Enable
      EVOE         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHEVCTRL_Register use record
      EVACT        at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      EVOMODE      at 0 range 4 .. 5;
      EVIE         at 0 range 6 .. 6;
      EVOE         at 0 range 7 .. 7;
   end record;

   --  Channel n Interrupt Enable Clear
   type CHINTENCLR_Register is record
      --  Channel Transfer Error Interrupt Enable
      TERR         : Boolean := False;
      --  Channel Transfer Complete Interrupt Enable
      TCMPL        : Boolean := False;
      --  Channel Suspend Interrupt Enable
      SUSP         : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHINTENCLR_Register use record
      TERR         at 0 range 0 .. 0;
      TCMPL        at 0 range 1 .. 1;
      SUSP         at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Channel n Interrupt Enable Set
   type CHINTENSET_Register is record
      --  Channel Transfer Error Interrupt Enable
      TERR         : Boolean := False;
      --  Channel Transfer Complete Interrupt Enable
      TCMPL        : Boolean := False;
      --  Channel Suspend Interrupt Enable
      SUSP         : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHINTENSET_Register use record
      TERR         at 0 range 0 .. 0;
      TCMPL        at 0 range 1 .. 1;
      SUSP         at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Channel n Interrupt Flag Status and Clear
   type CHINTFLAG_Register is record
      --  Channel Transfer Error
      TERR         : Boolean := False;
      --  Channel Transfer Complete
      TCMPL        : Boolean := False;
      --  Channel Suspend
      SUSP         : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHINTFLAG_Register use record
      TERR         at 0 range 0 .. 0;
      TCMPL        at 0 range 1 .. 1;
      SUSP         at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Channel n Status
   type CHSTATUS_Register is record
      --  Read-only. Channel Pending
      PEND         : Boolean := False;
      --  Read-only. Channel Busy
      BUSY         : Boolean := False;
      --  Read-only. Channel Fetch Error
      FERR         : Boolean := False;
      --  Channel CRC Error
      CRCERR       : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHSTATUS_Register use record
      PEND         at 0 range 0 .. 0;
      BUSY         at 0 range 1 .. 1;
      FERR         at 0 range 2 .. 2;
      CRCERR       at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Direct Memory Access Controller
   type DMAC_Peripheral is record
      --  Control
      CTRL         : aliased DMAC_CTRL_Register;
      --  CRC Control
      CRCCTRL      : aliased DMAC_CRCCTRL_Register;
      --  CRC Data Input
      CRCDATAIN    : aliased HAL.UInt32;
      --  CRC Checksum
      CRCCHKSUM    : aliased HAL.UInt32;
      --  CRC Status
      CRCSTATUS    : aliased DMAC_CRCSTATUS_Register;
      --  Debug Control
      DBGCTRL      : aliased DMAC_DBGCTRL_Register;
      --  Software Trigger Control
      SWTRIGCTRL   : aliased DMAC_SWTRIGCTRL_Register;
      --  Priority Control 0
      PRICTRL0     : aliased DMAC_PRICTRL0_Register;
      --  Interrupt Pending
      INTPEND      : aliased DMAC_INTPEND_Register;
      --  Interrupt Status
      INTSTATUS    : aliased DMAC_INTSTATUS_Register;
      --  Busy Channels
      BUSYCH       : aliased DMAC_BUSYCH_Register;
      --  Pending Channels
      PENDCH       : aliased DMAC_PENDCH_Register;
      --  Active Channel and Levels
      ACTIVE       : aliased DMAC_ACTIVE_Register;
      --  Descriptor Memory Section Base Address
      BASEADDR     : aliased HAL.UInt32;
      --  Write-Back Memory Section Base Address
      WRBADDR      : aliased HAL.UInt32;
      --  Channel n Control A
      CHCTRLA0     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB0     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL0    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL0    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR0  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET0  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG0   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS0    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA1     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB1     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL1    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL1    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR1  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET1  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG1   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS1    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA2     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB2     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL2    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL2    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR2  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET2  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG2   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS2    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA3     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB3     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL3    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL3    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR3  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET3  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG3   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS3    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA4     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB4     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL4    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL4    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR4  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET4  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG4   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS4    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA5     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB5     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL5    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL5    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR5  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET5  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG5   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS5    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA6     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB6     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL6    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL6    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR6  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET6  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG6   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS6    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA7     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB7     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL7    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL7    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR7  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET7  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG7   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS7    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA8     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB8     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL8    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL8    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR8  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET8  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG8   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS8    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA9     : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB9     : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL9    : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL9    : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR9  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET9  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG9   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS9    : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA10    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB10    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL10   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL10   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR10 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET10 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG10  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS10   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA11    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB11    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL11   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL11   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR11 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET11 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG11  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS11   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA12    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB12    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL12   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL12   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR12 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET12 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG12  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS12   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA13    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB13    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL13   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL13   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR13 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET13 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG13  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS13   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA14    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB14    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL14   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL14   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR14 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET14 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG14  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS14   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA15    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB15    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL15   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL15   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR15 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET15 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG15  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS15   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA16    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB16    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL16   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL16   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR16 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET16 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG16  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS16   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA17    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB17    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL17   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL17   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR17 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET17 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG17  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS17   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA18    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB18    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL18   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL18   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR18 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET18 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG18  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS18   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA19    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB19    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL19   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL19   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR19 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET19 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG19  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS19   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA20    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB20    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL20   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL20   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR20 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET20 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG20  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS20   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA21    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB21    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL21   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL21   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR21 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET21 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG21  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS21   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA22    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB22    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL22   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL22   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR22 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET22 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG22  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS22   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA23    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB23    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL23   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL23   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR23 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET23 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG23  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS23   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA24    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB24    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL24   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL24   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR24 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET24 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG24  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS24   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA25    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB25    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL25   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL25   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR25 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET25 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG25  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS25   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA26    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB26    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL26   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL26   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR26 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET26 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG26  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS26   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA27    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB27    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL27   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL27   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR27 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET27 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG27  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS27   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA28    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB28    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL28   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL28   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR28 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET28 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG28  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS28   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA29    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB29    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL29   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL29   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR29 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET29 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG29  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS29   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA30    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB30    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL30   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL30   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR30 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET30 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG30  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS30   : aliased CHSTATUS_Register;
      --  Channel n Control A
      CHCTRLA31    : aliased CHCTRLA_Register;
      --  Channel n Control B
      CHCTRLB31    : aliased CHCTRLB_Register;
      --  Channel n Priority Level
      CHPRILVL31   : aliased CHPRILVL_Register;
      --  Channel n Event Control
      CHEVCTRL31   : aliased CHEVCTRL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR31 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET31 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG31  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS31   : aliased CHSTATUS_Register;
   end record
     with Volatile;

   for DMAC_Peripheral use record
      CTRL         at 16#0# range 0 .. 15;
      CRCCTRL      at 16#2# range 0 .. 15;
      CRCDATAIN    at 16#4# range 0 .. 31;
      CRCCHKSUM    at 16#8# range 0 .. 31;
      CRCSTATUS    at 16#C# range 0 .. 7;
      DBGCTRL      at 16#D# range 0 .. 7;
      SWTRIGCTRL   at 16#10# range 0 .. 31;
      PRICTRL0     at 16#14# range 0 .. 31;
      INTPEND      at 16#20# range 0 .. 15;
      INTSTATUS    at 16#24# range 0 .. 31;
      BUSYCH       at 16#28# range 0 .. 31;
      PENDCH       at 16#2C# range 0 .. 31;
      ACTIVE       at 16#30# range 0 .. 31;
      BASEADDR     at 16#34# range 0 .. 31;
      WRBADDR      at 16#38# range 0 .. 31;
      CHCTRLA0     at 16#40# range 0 .. 31;
      CHCTRLB0     at 16#44# range 0 .. 7;
      CHPRILVL0    at 16#45# range 0 .. 7;
      CHEVCTRL0    at 16#46# range 0 .. 7;
      CHINTENCLR0  at 16#4C# range 0 .. 7;
      CHINTENSET0  at 16#4D# range 0 .. 7;
      CHINTFLAG0   at 16#4E# range 0 .. 7;
      CHSTATUS0    at 16#4F# range 0 .. 7;
      CHCTRLA1     at 16#50# range 0 .. 31;
      CHCTRLB1     at 16#54# range 0 .. 7;
      CHPRILVL1    at 16#55# range 0 .. 7;
      CHEVCTRL1    at 16#56# range 0 .. 7;
      CHINTENCLR1  at 16#5C# range 0 .. 7;
      CHINTENSET1  at 16#5D# range 0 .. 7;
      CHINTFLAG1   at 16#5E# range 0 .. 7;
      CHSTATUS1    at 16#5F# range 0 .. 7;
      CHCTRLA2     at 16#60# range 0 .. 31;
      CHCTRLB2     at 16#64# range 0 .. 7;
      CHPRILVL2    at 16#65# range 0 .. 7;
      CHEVCTRL2    at 16#66# range 0 .. 7;
      CHINTENCLR2  at 16#6C# range 0 .. 7;
      CHINTENSET2  at 16#6D# range 0 .. 7;
      CHINTFLAG2   at 16#6E# range 0 .. 7;
      CHSTATUS2    at 16#6F# range 0 .. 7;
      CHCTRLA3     at 16#70# range 0 .. 31;
      CHCTRLB3     at 16#74# range 0 .. 7;
      CHPRILVL3    at 16#75# range 0 .. 7;
      CHEVCTRL3    at 16#76# range 0 .. 7;
      CHINTENCLR3  at 16#7C# range 0 .. 7;
      CHINTENSET3  at 16#7D# range 0 .. 7;
      CHINTFLAG3   at 16#7E# range 0 .. 7;
      CHSTATUS3    at 16#7F# range 0 .. 7;
      CHCTRLA4     at 16#80# range 0 .. 31;
      CHCTRLB4     at 16#84# range 0 .. 7;
      CHPRILVL4    at 16#85# range 0 .. 7;
      CHEVCTRL4    at 16#86# range 0 .. 7;
      CHINTENCLR4  at 16#8C# range 0 .. 7;
      CHINTENSET4  at 16#8D# range 0 .. 7;
      CHINTFLAG4   at 16#8E# range 0 .. 7;
      CHSTATUS4    at 16#8F# range 0 .. 7;
      CHCTRLA5     at 16#90# range 0 .. 31;
      CHCTRLB5     at 16#94# range 0 .. 7;
      CHPRILVL5    at 16#95# range 0 .. 7;
      CHEVCTRL5    at 16#96# range 0 .. 7;
      CHINTENCLR5  at 16#9C# range 0 .. 7;
      CHINTENSET5  at 16#9D# range 0 .. 7;
      CHINTFLAG5   at 16#9E# range 0 .. 7;
      CHSTATUS5    at 16#9F# range 0 .. 7;
      CHCTRLA6     at 16#A0# range 0 .. 31;
      CHCTRLB6     at 16#A4# range 0 .. 7;
      CHPRILVL6    at 16#A5# range 0 .. 7;
      CHEVCTRL6    at 16#A6# range 0 .. 7;
      CHINTENCLR6  at 16#AC# range 0 .. 7;
      CHINTENSET6  at 16#AD# range 0 .. 7;
      CHINTFLAG6   at 16#AE# range 0 .. 7;
      CHSTATUS6    at 16#AF# range 0 .. 7;
      CHCTRLA7     at 16#B0# range 0 .. 31;
      CHCTRLB7     at 16#B4# range 0 .. 7;
      CHPRILVL7    at 16#B5# range 0 .. 7;
      CHEVCTRL7    at 16#B6# range 0 .. 7;
      CHINTENCLR7  at 16#BC# range 0 .. 7;
      CHINTENSET7  at 16#BD# range 0 .. 7;
      CHINTFLAG7   at 16#BE# range 0 .. 7;
      CHSTATUS7    at 16#BF# range 0 .. 7;
      CHCTRLA8     at 16#C0# range 0 .. 31;
      CHCTRLB8     at 16#C4# range 0 .. 7;
      CHPRILVL8    at 16#C5# range 0 .. 7;
      CHEVCTRL8    at 16#C6# range 0 .. 7;
      CHINTENCLR8  at 16#CC# range 0 .. 7;
      CHINTENSET8  at 16#CD# range 0 .. 7;
      CHINTFLAG8   at 16#CE# range 0 .. 7;
      CHSTATUS8    at 16#CF# range 0 .. 7;
      CHCTRLA9     at 16#D0# range 0 .. 31;
      CHCTRLB9     at 16#D4# range 0 .. 7;
      CHPRILVL9    at 16#D5# range 0 .. 7;
      CHEVCTRL9    at 16#D6# range 0 .. 7;
      CHINTENCLR9  at 16#DC# range 0 .. 7;
      CHINTENSET9  at 16#DD# range 0 .. 7;
      CHINTFLAG9   at 16#DE# range 0 .. 7;
      CHSTATUS9    at 16#DF# range 0 .. 7;
      CHCTRLA10    at 16#E0# range 0 .. 31;
      CHCTRLB10    at 16#E4# range 0 .. 7;
      CHPRILVL10   at 16#E5# range 0 .. 7;
      CHEVCTRL10   at 16#E6# range 0 .. 7;
      CHINTENCLR10 at 16#EC# range 0 .. 7;
      CHINTENSET10 at 16#ED# range 0 .. 7;
      CHINTFLAG10  at 16#EE# range 0 .. 7;
      CHSTATUS10   at 16#EF# range 0 .. 7;
      CHCTRLA11    at 16#F0# range 0 .. 31;
      CHCTRLB11    at 16#F4# range 0 .. 7;
      CHPRILVL11   at 16#F5# range 0 .. 7;
      CHEVCTRL11   at 16#F6# range 0 .. 7;
      CHINTENCLR11 at 16#FC# range 0 .. 7;
      CHINTENSET11 at 16#FD# range 0 .. 7;
      CHINTFLAG11  at 16#FE# range 0 .. 7;
      CHSTATUS11   at 16#FF# range 0 .. 7;
      CHCTRLA12    at 16#100# range 0 .. 31;
      CHCTRLB12    at 16#104# range 0 .. 7;
      CHPRILVL12   at 16#105# range 0 .. 7;
      CHEVCTRL12   at 16#106# range 0 .. 7;
      CHINTENCLR12 at 16#10C# range 0 .. 7;
      CHINTENSET12 at 16#10D# range 0 .. 7;
      CHINTFLAG12  at 16#10E# range 0 .. 7;
      CHSTATUS12   at 16#10F# range 0 .. 7;
      CHCTRLA13    at 16#110# range 0 .. 31;
      CHCTRLB13    at 16#114# range 0 .. 7;
      CHPRILVL13   at 16#115# range 0 .. 7;
      CHEVCTRL13   at 16#116# range 0 .. 7;
      CHINTENCLR13 at 16#11C# range 0 .. 7;
      CHINTENSET13 at 16#11D# range 0 .. 7;
      CHINTFLAG13  at 16#11E# range 0 .. 7;
      CHSTATUS13   at 16#11F# range 0 .. 7;
      CHCTRLA14    at 16#120# range 0 .. 31;
      CHCTRLB14    at 16#124# range 0 .. 7;
      CHPRILVL14   at 16#125# range 0 .. 7;
      CHEVCTRL14   at 16#126# range 0 .. 7;
      CHINTENCLR14 at 16#12C# range 0 .. 7;
      CHINTENSET14 at 16#12D# range 0 .. 7;
      CHINTFLAG14  at 16#12E# range 0 .. 7;
      CHSTATUS14   at 16#12F# range 0 .. 7;
      CHCTRLA15    at 16#130# range 0 .. 31;
      CHCTRLB15    at 16#134# range 0 .. 7;
      CHPRILVL15   at 16#135# range 0 .. 7;
      CHEVCTRL15   at 16#136# range 0 .. 7;
      CHINTENCLR15 at 16#13C# range 0 .. 7;
      CHINTENSET15 at 16#13D# range 0 .. 7;
      CHINTFLAG15  at 16#13E# range 0 .. 7;
      CHSTATUS15   at 16#13F# range 0 .. 7;
      CHCTRLA16    at 16#140# range 0 .. 31;
      CHCTRLB16    at 16#144# range 0 .. 7;
      CHPRILVL16   at 16#145# range 0 .. 7;
      CHEVCTRL16   at 16#146# range 0 .. 7;
      CHINTENCLR16 at 16#14C# range 0 .. 7;
      CHINTENSET16 at 16#14D# range 0 .. 7;
      CHINTFLAG16  at 16#14E# range 0 .. 7;
      CHSTATUS16   at 16#14F# range 0 .. 7;
      CHCTRLA17    at 16#150# range 0 .. 31;
      CHCTRLB17    at 16#154# range 0 .. 7;
      CHPRILVL17   at 16#155# range 0 .. 7;
      CHEVCTRL17   at 16#156# range 0 .. 7;
      CHINTENCLR17 at 16#15C# range 0 .. 7;
      CHINTENSET17 at 16#15D# range 0 .. 7;
      CHINTFLAG17  at 16#15E# range 0 .. 7;
      CHSTATUS17   at 16#15F# range 0 .. 7;
      CHCTRLA18    at 16#160# range 0 .. 31;
      CHCTRLB18    at 16#164# range 0 .. 7;
      CHPRILVL18   at 16#165# range 0 .. 7;
      CHEVCTRL18   at 16#166# range 0 .. 7;
      CHINTENCLR18 at 16#16C# range 0 .. 7;
      CHINTENSET18 at 16#16D# range 0 .. 7;
      CHINTFLAG18  at 16#16E# range 0 .. 7;
      CHSTATUS18   at 16#16F# range 0 .. 7;
      CHCTRLA19    at 16#170# range 0 .. 31;
      CHCTRLB19    at 16#174# range 0 .. 7;
      CHPRILVL19   at 16#175# range 0 .. 7;
      CHEVCTRL19   at 16#176# range 0 .. 7;
      CHINTENCLR19 at 16#17C# range 0 .. 7;
      CHINTENSET19 at 16#17D# range 0 .. 7;
      CHINTFLAG19  at 16#17E# range 0 .. 7;
      CHSTATUS19   at 16#17F# range 0 .. 7;
      CHCTRLA20    at 16#180# range 0 .. 31;
      CHCTRLB20    at 16#184# range 0 .. 7;
      CHPRILVL20   at 16#185# range 0 .. 7;
      CHEVCTRL20   at 16#186# range 0 .. 7;
      CHINTENCLR20 at 16#18C# range 0 .. 7;
      CHINTENSET20 at 16#18D# range 0 .. 7;
      CHINTFLAG20  at 16#18E# range 0 .. 7;
      CHSTATUS20   at 16#18F# range 0 .. 7;
      CHCTRLA21    at 16#190# range 0 .. 31;
      CHCTRLB21    at 16#194# range 0 .. 7;
      CHPRILVL21   at 16#195# range 0 .. 7;
      CHEVCTRL21   at 16#196# range 0 .. 7;
      CHINTENCLR21 at 16#19C# range 0 .. 7;
      CHINTENSET21 at 16#19D# range 0 .. 7;
      CHINTFLAG21  at 16#19E# range 0 .. 7;
      CHSTATUS21   at 16#19F# range 0 .. 7;
      CHCTRLA22    at 16#1A0# range 0 .. 31;
      CHCTRLB22    at 16#1A4# range 0 .. 7;
      CHPRILVL22   at 16#1A5# range 0 .. 7;
      CHEVCTRL22   at 16#1A6# range 0 .. 7;
      CHINTENCLR22 at 16#1AC# range 0 .. 7;
      CHINTENSET22 at 16#1AD# range 0 .. 7;
      CHINTFLAG22  at 16#1AE# range 0 .. 7;
      CHSTATUS22   at 16#1AF# range 0 .. 7;
      CHCTRLA23    at 16#1B0# range 0 .. 31;
      CHCTRLB23    at 16#1B4# range 0 .. 7;
      CHPRILVL23   at 16#1B5# range 0 .. 7;
      CHEVCTRL23   at 16#1B6# range 0 .. 7;
      CHINTENCLR23 at 16#1BC# range 0 .. 7;
      CHINTENSET23 at 16#1BD# range 0 .. 7;
      CHINTFLAG23  at 16#1BE# range 0 .. 7;
      CHSTATUS23   at 16#1BF# range 0 .. 7;
      CHCTRLA24    at 16#1C0# range 0 .. 31;
      CHCTRLB24    at 16#1C4# range 0 .. 7;
      CHPRILVL24   at 16#1C5# range 0 .. 7;
      CHEVCTRL24   at 16#1C6# range 0 .. 7;
      CHINTENCLR24 at 16#1CC# range 0 .. 7;
      CHINTENSET24 at 16#1CD# range 0 .. 7;
      CHINTFLAG24  at 16#1CE# range 0 .. 7;
      CHSTATUS24   at 16#1CF# range 0 .. 7;
      CHCTRLA25    at 16#1D0# range 0 .. 31;
      CHCTRLB25    at 16#1D4# range 0 .. 7;
      CHPRILVL25   at 16#1D5# range 0 .. 7;
      CHEVCTRL25   at 16#1D6# range 0 .. 7;
      CHINTENCLR25 at 16#1DC# range 0 .. 7;
      CHINTENSET25 at 16#1DD# range 0 .. 7;
      CHINTFLAG25  at 16#1DE# range 0 .. 7;
      CHSTATUS25   at 16#1DF# range 0 .. 7;
      CHCTRLA26    at 16#1E0# range 0 .. 31;
      CHCTRLB26    at 16#1E4# range 0 .. 7;
      CHPRILVL26   at 16#1E5# range 0 .. 7;
      CHEVCTRL26   at 16#1E6# range 0 .. 7;
      CHINTENCLR26 at 16#1EC# range 0 .. 7;
      CHINTENSET26 at 16#1ED# range 0 .. 7;
      CHINTFLAG26  at 16#1EE# range 0 .. 7;
      CHSTATUS26   at 16#1EF# range 0 .. 7;
      CHCTRLA27    at 16#1F0# range 0 .. 31;
      CHCTRLB27    at 16#1F4# range 0 .. 7;
      CHPRILVL27   at 16#1F5# range 0 .. 7;
      CHEVCTRL27   at 16#1F6# range 0 .. 7;
      CHINTENCLR27 at 16#1FC# range 0 .. 7;
      CHINTENSET27 at 16#1FD# range 0 .. 7;
      CHINTFLAG27  at 16#1FE# range 0 .. 7;
      CHSTATUS27   at 16#1FF# range 0 .. 7;
      CHCTRLA28    at 16#200# range 0 .. 31;
      CHCTRLB28    at 16#204# range 0 .. 7;
      CHPRILVL28   at 16#205# range 0 .. 7;
      CHEVCTRL28   at 16#206# range 0 .. 7;
      CHINTENCLR28 at 16#20C# range 0 .. 7;
      CHINTENSET28 at 16#20D# range 0 .. 7;
      CHINTFLAG28  at 16#20E# range 0 .. 7;
      CHSTATUS28   at 16#20F# range 0 .. 7;
      CHCTRLA29    at 16#210# range 0 .. 31;
      CHCTRLB29    at 16#214# range 0 .. 7;
      CHPRILVL29   at 16#215# range 0 .. 7;
      CHEVCTRL29   at 16#216# range 0 .. 7;
      CHINTENCLR29 at 16#21C# range 0 .. 7;
      CHINTENSET29 at 16#21D# range 0 .. 7;
      CHINTFLAG29  at 16#21E# range 0 .. 7;
      CHSTATUS29   at 16#21F# range 0 .. 7;
      CHCTRLA30    at 16#220# range 0 .. 31;
      CHCTRLB30    at 16#224# range 0 .. 7;
      CHPRILVL30   at 16#225# range 0 .. 7;
      CHEVCTRL30   at 16#226# range 0 .. 7;
      CHINTENCLR30 at 16#22C# range 0 .. 7;
      CHINTENSET30 at 16#22D# range 0 .. 7;
      CHINTFLAG30  at 16#22E# range 0 .. 7;
      CHSTATUS30   at 16#22F# range 0 .. 7;
      CHCTRLA31    at 16#230# range 0 .. 31;
      CHCTRLB31    at 16#234# range 0 .. 7;
      CHPRILVL31   at 16#235# range 0 .. 7;
      CHEVCTRL31   at 16#236# range 0 .. 7;
      CHINTENCLR31 at 16#23C# range 0 .. 7;
      CHINTENSET31 at 16#23D# range 0 .. 7;
      CHINTFLAG31  at 16#23E# range 0 .. 7;
      CHSTATUS31   at 16#23F# range 0 .. 7;
   end record;

   --  Direct Memory Access Controller
   DMAC_Periph : aliased DMAC_Peripheral
     with Import, Address => System'To_Address (16#4100A000#);

end SAM_SVD.DMAC;
