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

--  This spec has been automatically generated from ATSAMD51P19A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DSU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control
   type DSU_CTRL_Register is record
      --  Write-only. Software Reset
      SWRST        : Boolean := False;
      --  unspecified
      Reserved_1_1 : HAL.Bit := 16#0#;
      --  Write-only. 32-bit Cyclic Redundancy Code
      CRC          : Boolean := False;
      --  Write-only. Memory built-in self-test
      MBIST        : Boolean := False;
      --  Write-only. Chip-Erase
      CE           : Boolean := False;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Write-only. Auxiliary Row Read
      ARR          : Boolean := False;
      --  Write-only. Start Memory Stream Access
      SMSA         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DSU_CTRL_Register use record
      SWRST        at 0 range 0 .. 0;
      Reserved_1_1 at 0 range 1 .. 1;
      CRC          at 0 range 2 .. 2;
      MBIST        at 0 range 3 .. 3;
      CE           at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      ARR          at 0 range 6 .. 6;
      SMSA         at 0 range 7 .. 7;
   end record;

   --  Status A
   type DSU_STATUSA_Register is record
      --  Done
      DONE         : Boolean := False;
      --  CPU Reset Phase Extension
      CRSTEXT      : Boolean := False;
      --  Bus Error
      BERR         : Boolean := False;
      --  Failure
      FAIL         : Boolean := False;
      --  Protection Error
      PERR         : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DSU_STATUSA_Register use record
      DONE         at 0 range 0 .. 0;
      CRSTEXT      at 0 range 1 .. 1;
      BERR         at 0 range 2 .. 2;
      FAIL         at 0 range 3 .. 3;
      PERR         at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  DSU_STATUSB_DCCD array
   type DSU_STATUSB_DCCD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DSU_STATUSB_DCCD
   type DSU_STATUSB_DCCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DCCD as a value
            Val : HAL.UInt2;
         when True =>
            --  DCCD as an array
            Arr : DSU_STATUSB_DCCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DSU_STATUSB_DCCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DSU_STATUSB_TDCCD array
   type DSU_STATUSB_TDCCD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for DSU_STATUSB_TDCCD
   type DSU_STATUSB_TDCCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TDCCD as a value
            Val : HAL.UInt2;
         when True =>
            --  TDCCD as an array
            Arr : DSU_STATUSB_TDCCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for DSU_STATUSB_TDCCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status B
   type DSU_STATUSB_Register is record
      --  Read-only. Protected
      PROT    : Boolean;
      --  Read-only. Debugger Present
      DBGPRES : Boolean;
      --  Read-only. Debug Communication Channel 0 Dirty
      DCCD    : DSU_STATUSB_DCCD_Field;
      --  Read-only. Hot-Plugging Enable
      HPE     : Boolean;
      --  Read-only. Chip Erase Locked
      CELCK   : Boolean;
      --  Read-only. Test Debug Communication Channel 0 Dirty
      TDCCD   : DSU_STATUSB_TDCCD_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DSU_STATUSB_Register use record
      PROT    at 0 range 0 .. 0;
      DBGPRES at 0 range 1 .. 1;
      DCCD    at 0 range 2 .. 3;
      HPE     at 0 range 4 .. 4;
      CELCK   at 0 range 5 .. 5;
      TDCCD   at 0 range 6 .. 7;
   end record;

   subtype DSU_ADDR_AMOD_Field is HAL.UInt2;
   subtype DSU_ADDR_ADDR_Field is HAL.UInt30;

   --  Address
   type DSU_ADDR_Register is record
      --  Access Mode
      AMOD : DSU_ADDR_AMOD_Field := 16#0#;
      --  Address
      ADDR : DSU_ADDR_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_ADDR_Register use record
      AMOD at 0 range 0 .. 1;
      ADDR at 0 range 2 .. 31;
   end record;

   subtype DSU_LENGTH_LENGTH_Field is HAL.UInt30;

   --  Length
   type DSU_LENGTH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Length
      LENGTH       : DSU_LENGTH_LENGTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_LENGTH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      LENGTH       at 0 range 2 .. 31;
   end record;

   --  Debug Communication Channel n

   --  Debug Communication Channel n
   type DSU_DCC_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   subtype DSU_DID_DEVSEL_Field is HAL.UInt8;
   subtype DSU_DID_REVISION_Field is HAL.UInt4;
   subtype DSU_DID_DIE_Field is HAL.UInt4;

   --  Series
   type DID_SERIESSelect is
     (
      --  Cortex-M0+ processor, basic feature set
      DID_SERIESSelect_0,
      --  Cortex-M0+ processor, USB
      DID_SERIESSelect_1)
     with Size => 6;
   for DID_SERIESSelect use
     (DID_SERIESSelect_0 => 0,
      DID_SERIESSelect_1 => 1);

   --  Family
   type DID_FAMILYSelect is
     (
      --  General purpose microcontroller
      DID_FAMILYSelect_0,
      --  PicoPower
      DID_FAMILYSelect_1)
     with Size => 5;
   for DID_FAMILYSelect use
     (DID_FAMILYSelect_0 => 0,
      DID_FAMILYSelect_1 => 1);

   --  Processor
   type DID_PROCESSORSelect is
     (
      --  Cortex-M0+
      Cm0P,
      --  Cortex-M23
      Cm23,
      --  Cortex-M3
      Cm3,
      --  Cortex-M4
      Cm4,
      --  Cortex-M4 with FPU
      Cm4F,
      --  Cortex-M33
      Cm33)
     with Size => 4;
   for DID_PROCESSORSelect use
     (Cm0P => 1,
      Cm23 => 2,
      Cm3 => 3,
      Cm4 => 5,
      Cm4F => 6,
      Cm33 => 7);

   --  Device Identification
   type DSU_DID_Register is record
      --  Read-only. Device Select
      DEVSEL         : DSU_DID_DEVSEL_Field;
      --  Read-only. Revision Number
      REVISION       : DSU_DID_REVISION_Field;
      --  Read-only. Die Number
      DIE            : DSU_DID_DIE_Field;
      --  Read-only. Series
      SERIES         : DID_SERIESSelect;
      --  unspecified
      Reserved_22_22 : HAL.Bit;
      --  Read-only. Family
      FAMILY         : DID_FAMILYSelect;
      --  Read-only. Processor
      PROCESSOR      : DID_PROCESSORSelect;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_DID_Register use record
      DEVSEL         at 0 range 0 .. 7;
      REVISION       at 0 range 8 .. 11;
      DIE            at 0 range 12 .. 15;
      SERIES         at 0 range 16 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      FAMILY         at 0 range 23 .. 27;
      PROCESSOR      at 0 range 28 .. 31;
   end record;

   subtype DSU_CFG_LQOS_Field is HAL.UInt2;

   --  DMA Trigger Level
   type CFG_DCCDMALEVELSelect is
     (
      --  Trigger rises when DCC is empty
      Empty,
      --  Trigger rises when DCC is full
      Full)
     with Size => 2;
   for CFG_DCCDMALEVELSelect use
     (Empty => 0,
      Full => 1);

   --  Configuration
   type DSU_CFG_Register is record
      --  Latency Quality Of Service
      LQOS          : DSU_CFG_LQOS_Field := 16#2#;
      --  DMA Trigger Level
      DCCDMALEVEL   : CFG_DCCDMALEVELSelect := SAM_SVD.DSU.Empty;
      --  Trace Control
      ETBRAMEN      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_CFG_Register use record
      LQOS          at 0 range 0 .. 1;
      DCCDMALEVEL   at 0 range 2 .. 3;
      ETBRAMEN      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  MBIST Control
   type DSU_MBCTRL_Register is record
      --  MBIST Software Reset
      SWRST         : Boolean := False;
      --  MBIST Enable
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBCTRL_Register use record
      SWRST         at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MBIST Algorithm
   type MBCONFIG_ALGOSelect is
     (
      --  Memory Clear (1n)
      Memclear,
      --  Memory Verify (1n)
      Verify,
      --  Memory Clear and Verify (2n)
      Clearver,
      --  Address Decoder (2n)
      Addr_Dec,
      --  March LR (14n)
      March_Lr,
      --  March SR (14n)
      March_Sr,
      --  March SS (22n)
      March_Ss,
      --  CRC increasing address (1n)
      Crc_Up,
      --  CRC decreasing address (1n)
      Crc_Down)
     with Size => 5;
   for MBCONFIG_ALGOSelect use
     (Memclear => 0,
      Verify => 1,
      Clearver => 2,
      Addr_Dec => 3,
      March_Lr => 4,
      March_Sr => 5,
      March_Ss => 6,
      Crc_Up => 8,
      Crc_Down => 9);

   --  MBIST Configuration
   type DSU_MBCONFIG_Register is record
      --  MBIST Algorithm
      ALGO          : MBCONFIG_ALGOSelect := SAM_SVD.DSU.Memclear;
      --  unspecified
      Reserved_5_5  : HAL.Bit := 16#0#;
      --  Force Default Read Margin
      DEFRDMARGIN   : Boolean := False;
      --  Enable Debug Mode
      DBG           : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBCONFIG_Register use record
      ALGO          at 0 range 0 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      DEFRDMARGIN   at 0 range 6 .. 6;
      DBG           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  MBIST Global Status
   type DSU_MBGSTAT_Register is record
      --  MBIST Completed
      ALLDONE       : Boolean := False;
      --  MBIST Failed
      FAILED        : Boolean := False;
      --  MBIST Error Info Present
      ERRINFO       : Boolean := False;
      --  MBIST Configuration Sent
      CONFIGURED    : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBGSTAT_Register use record
      ALLDONE       at 0 range 0 .. 0;
      FAILED        at 0 range 1 .. 1;
      ERRINFO       at 0 range 2 .. 2;
      CONFIGURED    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DSU_MBAFAIL_ADDR_Field is HAL.UInt14;

   --  MBIST Fail Address
   type DSU_MBAFAIL_Register is record
      --  Read-only. Error Address
      ADDR           : DSU_MBAFAIL_ADDR_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBAFAIL_Register use record
      ADDR           at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Algorithm Sub-step
   type MBCONTEXT_SUBSTEPSelect is
     (
      R0_1,
      R1_1,
      R0_2,
      R1_2,
      R0_3,
      R1_3)
     with Size => 5;
   for MBCONTEXT_SUBSTEPSelect use
     (R0_1 => 1,
      R1_1 => 3,
      R0_2 => 5,
      R1_2 => 7,
      R0_3 => 9,
      R1_3 => 11);

   --  Algorithm Step
   type MBCONTEXT_STEPSelect is
     (
      Down_R0W1,
      Up_R1W0R0W1,
      Up_R1W0,
      Up_R0W1R1W0,
      Up_R0,
      Up_R0R0W0R0W1,
      Up_R1R1W1R1W0,
      Down_R0R0W0R0W1,
      Down_R1R1W1R1W0,
      Up_R0R0,
      Down_R1W0R0W1,
      Down_R1R1)
     with Size => 5;
   for MBCONTEXT_STEPSelect use
     (Down_R0W1 => 2,
      Up_R1W0R0W1 => 3,
      Up_R1W0 => 4,
      Up_R0W1R1W0 => 5,
      Up_R0 => 6,
      Up_R0R0W0R0W1 => 7,
      Up_R1R1W1R1W0 => 8,
      Down_R0R0W0R0W1 => 9,
      Down_R1R1W1R1W0 => 10,
      Up_R0R0 => 12,
      Down_R1W0R0W1 => 14,
      Down_R1R1 => 15);

   --  MBIST Fail Context
   type DSU_MBCONTEXT_Register is record
      --  Read-only. Algorithm Sub-step
      SUBSTEP        : MBCONTEXT_SUBSTEPSelect;
      --  Read-only. Algorithm Step
      STEP           : MBCONTEXT_STEPSelect;
      --  Read-only. DPRAM Port Index
      PORT           : Boolean;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBCONTEXT_Register use record
      SUBSTEP        at 0 range 0 .. 4;
      STEP           at 0 range 5 .. 9;
      PORT           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  DSU_MBENABLE0_ENABLE array
   type DSU_MBENABLE0_ENABLE_Field_Array is array (0 .. 28) of Boolean
     with Component_Size => 1, Size => 29;

   --  Type definition for DSU_MBENABLE0_ENABLE
   type DSU_MBENABLE0_ENABLE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENABLE as a value
            Val : HAL.UInt29;
         when True =>
            --  ENABLE as an array
            Arr : DSU_MBENABLE0_ENABLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 29;

   for DSU_MBENABLE0_ENABLE_Field use record
      Val at 0 range 0 .. 28;
      Arr at 0 range 0 .. 28;
   end record;

   --  MBIST Memory Enable 0
   type DSU_MBENABLE0_Register is record
      --  Memory 0 MBIST Enable
      ENABLE         : DSU_MBENABLE0_ENABLE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBENABLE0_Register use record
      ENABLE         at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  DSU_MBBUSY0_BUSY array
   type DSU_MBBUSY0_BUSY_Field_Array is array (0 .. 28) of Boolean
     with Component_Size => 1, Size => 29;

   --  Type definition for DSU_MBBUSY0_BUSY
   type DSU_MBBUSY0_BUSY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BUSY as a value
            Val : HAL.UInt29;
         when True =>
            --  BUSY as an array
            Arr : DSU_MBBUSY0_BUSY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 29;

   for DSU_MBBUSY0_BUSY_Field use record
      Val at 0 range 0 .. 28;
      Arr at 0 range 0 .. 28;
   end record;

   --  MBIST Memory Busy 0
   type DSU_MBBUSY0_Register is record
      --  Read-only. Memory 0 BIST Busy
      BUSY           : DSU_MBBUSY0_BUSY_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBBUSY0_Register use record
      BUSY           at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  DSU_MBSTATUS0_STATUS array
   type DSU_MBSTATUS0_STATUS_Field_Array is array (0 .. 28) of Boolean
     with Component_Size => 1, Size => 29;

   --  Type definition for DSU_MBSTATUS0_STATUS
   type DSU_MBSTATUS0_STATUS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STATUS as a value
            Val : HAL.UInt29;
         when True =>
            --  STATUS as an array
            Arr : DSU_MBSTATUS0_STATUS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 29;

   for DSU_MBSTATUS0_STATUS_Field use record
      Val at 0 range 0 .. 28;
      Arr at 0 range 0 .. 28;
   end record;

   --  MBIST Memory Status 0
   type DSU_MBSTATUS0_Register is record
      --  Memory 0 MBIST Status
      STATUS         : DSU_MBSTATUS0_STATUS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MBSTATUS0_Register use record
      STATUS         at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Device Configuration

   --  Device Configuration
   type DSU_DCFG_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   subtype DSU_ENTRY0_ADDOFF_Field is HAL.UInt20;

   --  CoreSight ROM Table Entry 0
   type DSU_ENTRY0_Register is record
      --  Read-only. Entry Present
      EPRES         : Boolean;
      --  Read-only. Format
      FMT           : Boolean;
      --  unspecified
      Reserved_2_11 : HAL.UInt10;
      --  Read-only. Address Offset
      ADDOFF        : DSU_ENTRY0_ADDOFF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_ENTRY0_Register use record
      EPRES         at 0 range 0 .. 0;
      FMT           at 0 range 1 .. 1;
      Reserved_2_11 at 0 range 2 .. 11;
      ADDOFF        at 0 range 12 .. 31;
   end record;

   --  CoreSight ROM Table Memory Type
   type DSU_MEMTYPE_Register is record
      --  Read-only. System Memory Present
      SMEMP         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_MEMTYPE_Register use record
      SMEMP         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DSU_PID4_JEPCC_Field is HAL.UInt4;
   subtype DSU_PID4_FKBC_Field is HAL.UInt4;

   --  Peripheral Identification 4
   type DSU_PID4_Register is record
      --  Read-only. JEP-106 Continuation Code
      JEPCC         : DSU_PID4_JEPCC_Field;
      --  Read-only. 4KB count
      FKBC          : DSU_PID4_FKBC_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_PID4_Register use record
      JEPCC         at 0 range 0 .. 3;
      FKBC          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_PID0_PARTNBL_Field is HAL.UInt8;

   --  Peripheral Identification 0
   type DSU_PID0_Register is record
      --  Read-only. Part Number Low
      PARTNBL       : DSU_PID0_PARTNBL_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_PID0_Register use record
      PARTNBL       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_PID1_PARTNBH_Field is HAL.UInt4;
   subtype DSU_PID1_JEPIDCL_Field is HAL.UInt4;

   --  Peripheral Identification 1
   type DSU_PID1_Register is record
      --  Read-only. Part Number High
      PARTNBH       : DSU_PID1_PARTNBH_Field;
      --  Read-only. Low part of the JEP-106 Identity Code
      JEPIDCL       : DSU_PID1_JEPIDCL_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_PID1_Register use record
      PARTNBH       at 0 range 0 .. 3;
      JEPIDCL       at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_PID2_JEPIDCH_Field is HAL.UInt3;
   subtype DSU_PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral Identification 2
   type DSU_PID2_Register is record
      --  Read-only. JEP-106 Identity Code High
      JEPIDCH       : DSU_PID2_JEPIDCH_Field;
      --  Read-only. JEP-106 Identity Code is used
      JEPU          : Boolean;
      --  Read-only. Revision Number
      REVISION      : DSU_PID2_REVISION_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_PID2_Register use record
      JEPIDCH       at 0 range 0 .. 2;
      JEPU          at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_PID3_CUSMOD_Field is HAL.UInt4;
   subtype DSU_PID3_REVAND_Field is HAL.UInt4;

   --  Peripheral Identification 3
   type DSU_PID3_Register is record
      --  Read-only. ARM CUSMOD
      CUSMOD        : DSU_PID3_CUSMOD_Field;
      --  Read-only. Revision Number
      REVAND        : DSU_PID3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_PID3_Register use record
      CUSMOD        at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_CID0_PREAMBLEB0_Field is HAL.UInt8;

   --  Component Identification 0
   type DSU_CID0_Register is record
      --  Read-only. Preamble Byte 0
      PREAMBLEB0    : DSU_CID0_PREAMBLEB0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_CID0_Register use record
      PREAMBLEB0    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_CID1_PREAMBLE_Field is HAL.UInt4;
   subtype DSU_CID1_CCLASS_Field is HAL.UInt4;

   --  Component Identification 1
   type DSU_CID1_Register is record
      --  Read-only. Preamble
      PREAMBLE      : DSU_CID1_PREAMBLE_Field;
      --  Read-only. Component Class
      CCLASS        : DSU_CID1_CCLASS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_CID1_Register use record
      PREAMBLE      at 0 range 0 .. 3;
      CCLASS        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_CID2_PREAMBLEB2_Field is HAL.UInt8;

   --  Component Identification 2
   type DSU_CID2_Register is record
      --  Read-only. Preamble Byte 2
      PREAMBLEB2    : DSU_CID2_PREAMBLEB2_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_CID2_Register use record
      PREAMBLEB2    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DSU_CID3_PREAMBLEB3_Field is HAL.UInt8;

   --  Component Identification 3
   type DSU_CID3_Register is record
      --  Read-only. Preamble Byte 3
      PREAMBLEB3    : DSU_CID3_PREAMBLEB3_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSU_CID3_Register use record
      PREAMBLEB3    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Device Service Unit
   type DSU_Peripheral is record
      --  Control
      CTRL      : aliased DSU_CTRL_Register;
      --  Status A
      STATUSA   : aliased DSU_STATUSA_Register;
      --  Status B
      STATUSB   : aliased DSU_STATUSB_Register;
      --  Address
      ADDR      : aliased DSU_ADDR_Register;
      --  Length
      LENGTH    : aliased DSU_LENGTH_Register;
      --  Data
      DATA      : aliased HAL.UInt32;
      --  Debug Communication Channel n
      DCC       : aliased DSU_DCC_Registers;
      --  Device Identification
      DID       : aliased DSU_DID_Register;
      --  Configuration
      CFG       : aliased DSU_CFG_Register;
      --  MBIST Control
      MBCTRL    : aliased DSU_MBCTRL_Register;
      --  MBIST Configuration
      MBCONFIG  : aliased DSU_MBCONFIG_Register;
      --  MBIST Background Word
      MBWORD    : aliased HAL.UInt32;
      --  MBIST Global Status
      MBGSTAT   : aliased DSU_MBGSTAT_Register;
      --  MBIST Fail Data
      MBDFAIL   : aliased HAL.UInt32;
      --  MBIST Expected Data
      MBDEXP    : aliased HAL.UInt32;
      --  MBIST Fail Address
      MBAFAIL   : aliased DSU_MBAFAIL_Register;
      --  MBIST Fail Context
      MBCONTEXT : aliased DSU_MBCONTEXT_Register;
      --  MBIST Memory Enable 0
      MBENABLE0 : aliased DSU_MBENABLE0_Register;
      --  MBIST Memory Busy 0
      MBBUSY0   : aliased DSU_MBBUSY0_Register;
      --  MBIST Memory Status 0
      MBSTATUS0 : aliased DSU_MBSTATUS0_Register;
      --  Device Configuration
      DCFG      : aliased DSU_DCFG_Registers;
      --  CoreSight ROM Table Entry 0
      ENTRY0    : aliased DSU_ENTRY0_Register;
      --  CoreSight ROM Table Entry 1
      ENTRY1    : aliased HAL.UInt32;
      --  CoreSight ROM Table End
      END_k     : aliased HAL.UInt32;
      --  CoreSight ROM Table Memory Type
      MEMTYPE   : aliased DSU_MEMTYPE_Register;
      --  Peripheral Identification 4
      PID4      : aliased DSU_PID4_Register;
      --  Peripheral Identification 5
      PID5      : aliased HAL.UInt32;
      --  Peripheral Identification 6
      PID6      : aliased HAL.UInt32;
      --  Peripheral Identification 7
      PID7      : aliased HAL.UInt32;
      --  Peripheral Identification 0
      PID0      : aliased DSU_PID0_Register;
      --  Peripheral Identification 1
      PID1      : aliased DSU_PID1_Register;
      --  Peripheral Identification 2
      PID2      : aliased DSU_PID2_Register;
      --  Peripheral Identification 3
      PID3      : aliased DSU_PID3_Register;
      --  Component Identification 0
      CID0      : aliased DSU_CID0_Register;
      --  Component Identification 1
      CID1      : aliased DSU_CID1_Register;
      --  Component Identification 2
      CID2      : aliased DSU_CID2_Register;
      --  Component Identification 3
      CID3      : aliased DSU_CID3_Register;
   end record
     with Volatile;

   for DSU_Peripheral use record
      CTRL      at 16#0# range 0 .. 7;
      STATUSA   at 16#1# range 0 .. 7;
      STATUSB   at 16#2# range 0 .. 7;
      ADDR      at 16#4# range 0 .. 31;
      LENGTH    at 16#8# range 0 .. 31;
      DATA      at 16#C# range 0 .. 31;
      DCC       at 16#10# range 0 .. 63;
      DID       at 16#18# range 0 .. 31;
      CFG       at 16#1C# range 0 .. 31;
      MBCTRL    at 16#40# range 0 .. 31;
      MBCONFIG  at 16#44# range 0 .. 31;
      MBWORD    at 16#48# range 0 .. 31;
      MBGSTAT   at 16#4C# range 0 .. 31;
      MBDFAIL   at 16#50# range 0 .. 31;
      MBDEXP    at 16#54# range 0 .. 31;
      MBAFAIL   at 16#58# range 0 .. 31;
      MBCONTEXT at 16#5C# range 0 .. 31;
      MBENABLE0 at 16#60# range 0 .. 31;
      MBBUSY0   at 16#68# range 0 .. 31;
      MBSTATUS0 at 16#70# range 0 .. 31;
      DCFG      at 16#F0# range 0 .. 63;
      ENTRY0    at 16#1000# range 0 .. 31;
      ENTRY1    at 16#1004# range 0 .. 31;
      END_k     at 16#1008# range 0 .. 31;
      MEMTYPE   at 16#1FCC# range 0 .. 31;
      PID4      at 16#1FD0# range 0 .. 31;
      PID5      at 16#1FD4# range 0 .. 31;
      PID6      at 16#1FD8# range 0 .. 31;
      PID7      at 16#1FDC# range 0 .. 31;
      PID0      at 16#1FE0# range 0 .. 31;
      PID1      at 16#1FE4# range 0 .. 31;
      PID2      at 16#1FE8# range 0 .. 31;
      PID3      at 16#1FEC# range 0 .. 31;
      CID0      at 16#1FF0# range 0 .. 31;
      CID1      at 16#1FF4# range 0 .. 31;
      CID2      at 16#1FF8# range 0 .. 31;
      CID3      at 16#1FFC# range 0 .. 31;
   end record;

   --  Device Service Unit
   DSU_Periph : aliased DSU_Peripheral
     with Import, Address => System'To_Address (16#41002000#);

end SAM_SVD.DSU;
