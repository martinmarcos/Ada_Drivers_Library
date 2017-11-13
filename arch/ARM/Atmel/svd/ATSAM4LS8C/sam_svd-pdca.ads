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

--  This spec has been automatically generated from ATSAM4LS8C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PDCA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PSR_PID_Field is HAL.UInt8;

   --  Peripheral Select Register
   type PSR_Register is record
      --  Peripheral Identifier
      PID           : PSR_PID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSR_Register use record
      PID           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TCR_TCV_Field is HAL.UInt16;

   --  Transfer Counter Register
   type TCR_Register is record
      --  Transfer Counter Value
      TCV            : TCR_TCV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCR_Register use record
      TCV            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TCRR_TCRV_Field is HAL.UInt16;

   --  Transfer Counter Reload Register
   type TCRR_Register is record
      --  Transfer Counter Reload Value
      TCRV           : TCRR_TCRV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCRR_Register use record
      TCRV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Control Register
   type CR_Register is record
      --  Write-only. Transfer Enable
      TEN           : Boolean := False;
      --  Write-only. Transfer Disable
      TDIS          : Boolean := False;
      --  unspecified
      Reserved_2_7  : HAL.UInt6 := 16#0#;
      --  Write-only. Error Clear
      ECLR          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      TEN           at 0 range 0 .. 0;
      TDIS          at 0 range 1 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      ECLR          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Transfer size
   type MR0_SIZESelect is
     (
      Byte,
      Half_Word,
      Word)
     with Size => 2;
   for MR0_SIZESelect use
     (Byte => 0,
      Half_Word => 1,
      Word => 2);

   --  Mode Register
   type MR_Register is record
      --  Transfer size
      SIZE          : MR0_SIZESelect := SAM_SVD.PDCA.Byte;
      --  Event trigger
      ETRIG         : Boolean := False;
      --  Ring Buffer
      RING          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MR_Register use record
      SIZE          at 0 range 0 .. 1;
      ETRIG         at 0 range 2 .. 2;
      RING          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Status Register
   type SR_Register is record
      --  Read-only. Transfer Enabled
      TEN           : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      TEN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Enable Register
   type IER_Register is record
      --  Write-only. Reload Counter Zero
      RCZ           : Boolean := False;
      --  Write-only. Transfer Complete
      TRC           : Boolean := False;
      --  Write-only. Transfer Error
      TERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Disable Register
   type IDR_Register is record
      --  Write-only. Reload Counter Zero
      RCZ           : Boolean := False;
      --  Write-only. Transfer Complete
      TRC           : Boolean := False;
      --  Write-only. Transfer Error
      TERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Register
   type IMR_Register is record
      --  Read-only. Reload Counter Zero
      RCZ           : Boolean;
      --  Read-only. Transfer Complete
      TRC           : Boolean;
      --  Read-only. Transfer Error
      TERR          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Status Register
   type ISR_Register is record
      --  Read-only. Reload Counter Zero
      RCZ           : Boolean;
      --  Read-only. Transfer Complete
      TRC           : Boolean;
      --  Read-only. Transfer Error
      TERR          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      RCZ           at 0 range 0 .. 0;
      TRC           at 0 range 1 .. 1;
      TERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PDCA_PCONTROL_MON0CH_Field is HAL.UInt6;
   subtype PDCA_PCONTROL_MON1CH_Field is HAL.UInt6;

   --  Performance Control Register
   type PDCA_PCONTROL_Register is record
      --  Channel 0 Enabled
      CH0EN          : Boolean := False;
      --  Channel 1 Enabled.
      CH1EN          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Channel 0 Overflow Freeze
      CH0OF          : Boolean := False;
      --  Channel 1 overflow freeze
      CH1OF          : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Channel 0 counter reset
      CH0RES         : Boolean := False;
      --  Channel 1 counter reset
      CH1RES         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  PDCA Channel to monitor with counter 0
      MON0CH         : PDCA_PCONTROL_MON0CH_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  PDCA Channel to monitor with counter 1
      MON1CH         : PDCA_PCONTROL_MON1CH_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCA_PCONTROL_Register use record
      CH0EN          at 0 range 0 .. 0;
      CH1EN          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CH0OF          at 0 range 4 .. 4;
      CH1OF          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CH0RES         at 0 range 8 .. 8;
      CH1RES         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      MON0CH         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      MON1CH         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PRLAT_LAT_Field is HAL.UInt16;

   --  Channel 0 Read Max Latency
   type PRLAT_Register is record
      --  Read-only. Maximum Transfer Initiation cycles counted since last
      --  reset
      LAT            : PRLAT_LAT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRLAT_Register use record
      LAT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PWLAT_LAT_Field is HAL.UInt16;

   --  Channel0 Write Max Latency
   type PWLAT_Register is record
      --  Read-only. Maximum transfer initiation cycles counted since last
      --  reset
      LAT            : PWLAT_LAT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWLAT_Register use record
      LAT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDCA_VERSION_VERSION_Field is HAL.UInt12;
   subtype PDCA_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type PDCA_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : PDCA_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : PDCA_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDCA_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Peripheral DMA Controller
   type PDCA_Peripheral is record
      --  Memory Address Register
      MAR0     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR0     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR0     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR0    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR0    : aliased TCRR_Register;
      --  Control Register
      CR0      : aliased CR_Register;
      --  Mode Register
      MR0      : aliased MR_Register;
      --  Status Register
      SR0      : aliased SR_Register;
      --  Interrupt Enable Register
      IER0     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR0     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR0     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR0     : aliased ISR_Register;
      --  Memory Address Register
      MAR1     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR1     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR1     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR1    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR1    : aliased TCRR_Register;
      --  Control Register
      CR1      : aliased CR_Register;
      --  Mode Register
      MR1      : aliased MR_Register;
      --  Status Register
      SR1      : aliased SR_Register;
      --  Interrupt Enable Register
      IER1     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR1     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR1     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR1     : aliased ISR_Register;
      --  Memory Address Register
      MAR2     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR2     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR2     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR2    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR2    : aliased TCRR_Register;
      --  Control Register
      CR2      : aliased CR_Register;
      --  Mode Register
      MR2      : aliased MR_Register;
      --  Status Register
      SR2      : aliased SR_Register;
      --  Interrupt Enable Register
      IER2     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR2     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR2     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR2     : aliased ISR_Register;
      --  Memory Address Register
      MAR3     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR3     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR3     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR3    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR3    : aliased TCRR_Register;
      --  Control Register
      CR3      : aliased CR_Register;
      --  Mode Register
      MR3      : aliased MR_Register;
      --  Status Register
      SR3      : aliased SR_Register;
      --  Interrupt Enable Register
      IER3     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR3     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR3     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR3     : aliased ISR_Register;
      --  Memory Address Register
      MAR4     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR4     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR4     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR4    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR4    : aliased TCRR_Register;
      --  Control Register
      CR4      : aliased CR_Register;
      --  Mode Register
      MR4      : aliased MR_Register;
      --  Status Register
      SR4      : aliased SR_Register;
      --  Interrupt Enable Register
      IER4     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR4     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR4     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR4     : aliased ISR_Register;
      --  Memory Address Register
      MAR5     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR5     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR5     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR5    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR5    : aliased TCRR_Register;
      --  Control Register
      CR5      : aliased CR_Register;
      --  Mode Register
      MR5      : aliased MR_Register;
      --  Status Register
      SR5      : aliased SR_Register;
      --  Interrupt Enable Register
      IER5     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR5     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR5     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR5     : aliased ISR_Register;
      --  Memory Address Register
      MAR6     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR6     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR6     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR6    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR6    : aliased TCRR_Register;
      --  Control Register
      CR6      : aliased CR_Register;
      --  Mode Register
      MR6      : aliased MR_Register;
      --  Status Register
      SR6      : aliased SR_Register;
      --  Interrupt Enable Register
      IER6     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR6     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR6     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR6     : aliased ISR_Register;
      --  Memory Address Register
      MAR7     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR7     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR7     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR7    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR7    : aliased TCRR_Register;
      --  Control Register
      CR7      : aliased CR_Register;
      --  Mode Register
      MR7      : aliased MR_Register;
      --  Status Register
      SR7      : aliased SR_Register;
      --  Interrupt Enable Register
      IER7     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR7     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR7     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR7     : aliased ISR_Register;
      --  Memory Address Register
      MAR8     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR8     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR8     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR8    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR8    : aliased TCRR_Register;
      --  Control Register
      CR8      : aliased CR_Register;
      --  Mode Register
      MR8      : aliased MR_Register;
      --  Status Register
      SR8      : aliased SR_Register;
      --  Interrupt Enable Register
      IER8     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR8     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR8     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR8     : aliased ISR_Register;
      --  Memory Address Register
      MAR9     : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR9     : aliased PSR_Register;
      --  Transfer Counter Register
      TCR9     : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR9    : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR9    : aliased TCRR_Register;
      --  Control Register
      CR9      : aliased CR_Register;
      --  Mode Register
      MR9      : aliased MR_Register;
      --  Status Register
      SR9      : aliased SR_Register;
      --  Interrupt Enable Register
      IER9     : aliased IER_Register;
      --  Interrupt Disable Register
      IDR9     : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR9     : aliased IMR_Register;
      --  Interrupt Status Register
      ISR9     : aliased ISR_Register;
      --  Memory Address Register
      MAR10    : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR10    : aliased PSR_Register;
      --  Transfer Counter Register
      TCR10    : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR10   : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR10   : aliased TCRR_Register;
      --  Control Register
      CR10     : aliased CR_Register;
      --  Mode Register
      MR10     : aliased MR_Register;
      --  Status Register
      SR10     : aliased SR_Register;
      --  Interrupt Enable Register
      IER10    : aliased IER_Register;
      --  Interrupt Disable Register
      IDR10    : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR10    : aliased IMR_Register;
      --  Interrupt Status Register
      ISR10    : aliased ISR_Register;
      --  Memory Address Register
      MAR11    : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR11    : aliased PSR_Register;
      --  Transfer Counter Register
      TCR11    : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR11   : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR11   : aliased TCRR_Register;
      --  Control Register
      CR11     : aliased CR_Register;
      --  Mode Register
      MR11     : aliased MR_Register;
      --  Status Register
      SR11     : aliased SR_Register;
      --  Interrupt Enable Register
      IER11    : aliased IER_Register;
      --  Interrupt Disable Register
      IDR11    : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR11    : aliased IMR_Register;
      --  Interrupt Status Register
      ISR11    : aliased ISR_Register;
      --  Memory Address Register
      MAR12    : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR12    : aliased PSR_Register;
      --  Transfer Counter Register
      TCR12    : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR12   : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR12   : aliased TCRR_Register;
      --  Control Register
      CR12     : aliased CR_Register;
      --  Mode Register
      MR12     : aliased MR_Register;
      --  Status Register
      SR12     : aliased SR_Register;
      --  Interrupt Enable Register
      IER12    : aliased IER_Register;
      --  Interrupt Disable Register
      IDR12    : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR12    : aliased IMR_Register;
      --  Interrupt Status Register
      ISR12    : aliased ISR_Register;
      --  Memory Address Register
      MAR13    : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR13    : aliased PSR_Register;
      --  Transfer Counter Register
      TCR13    : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR13   : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR13   : aliased TCRR_Register;
      --  Control Register
      CR13     : aliased CR_Register;
      --  Mode Register
      MR13     : aliased MR_Register;
      --  Status Register
      SR13     : aliased SR_Register;
      --  Interrupt Enable Register
      IER13    : aliased IER_Register;
      --  Interrupt Disable Register
      IDR13    : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR13    : aliased IMR_Register;
      --  Interrupt Status Register
      ISR13    : aliased ISR_Register;
      --  Memory Address Register
      MAR14    : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR14    : aliased PSR_Register;
      --  Transfer Counter Register
      TCR14    : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR14   : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR14   : aliased TCRR_Register;
      --  Control Register
      CR14     : aliased CR_Register;
      --  Mode Register
      MR14     : aliased MR_Register;
      --  Status Register
      SR14     : aliased SR_Register;
      --  Interrupt Enable Register
      IER14    : aliased IER_Register;
      --  Interrupt Disable Register
      IDR14    : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR14    : aliased IMR_Register;
      --  Interrupt Status Register
      ISR14    : aliased ISR_Register;
      --  Memory Address Register
      MAR15    : aliased HAL.UInt32;
      --  Peripheral Select Register
      PSR15    : aliased PSR_Register;
      --  Transfer Counter Register
      TCR15    : aliased TCR_Register;
      --  Memory Address Reload Register
      MARR15   : aliased HAL.UInt32;
      --  Transfer Counter Reload Register
      TCRR15   : aliased TCRR_Register;
      --  Control Register
      CR15     : aliased CR_Register;
      --  Mode Register
      MR15     : aliased MR_Register;
      --  Status Register
      SR15     : aliased SR_Register;
      --  Interrupt Enable Register
      IER15    : aliased IER_Register;
      --  Interrupt Disable Register
      IDR15    : aliased IDR_Register;
      --  Interrupt Mask Register
      IMR15    : aliased IMR_Register;
      --  Interrupt Status Register
      ISR15    : aliased ISR_Register;
      --  Performance Control Register
      PCONTROL : aliased PDCA_PCONTROL_Register;
      --  Channel 0 Read Data Cycles
      PRDATA0  : aliased HAL.UInt32;
      --  Channel 0 Read Stall Cycles
      PRSTALL0 : aliased HAL.UInt32;
      --  Channel 0 Read Max Latency
      PRLAT0   : aliased PRLAT_Register;
      --  Channel 0 Write Data Cycles
      PWDATA0  : aliased HAL.UInt32;
      --  Channel 0 Write Stall Cycles
      PWSTALL0 : aliased HAL.UInt32;
      --  Channel0 Write Max Latency
      PWLAT0   : aliased PWLAT_Register;
      --  Channel 1 Read Data Cycles
      PRDATA1  : aliased HAL.UInt32;
      --  Channel Read Stall Cycles
      PRSTALL1 : aliased HAL.UInt32;
      --  Channel 1 Read Max Latency
      PRLAT1   : aliased PRLAT_Register;
      --  Channel 1 Write Data Cycles
      PWDATA1  : aliased HAL.UInt32;
      --  Channel 1 Write stall Cycles
      PWSTALL1 : aliased HAL.UInt32;
      --  Channel 1 Read Max Latency
      PWLAT1   : aliased PWLAT_Register;
      --  Version Register
      VERSION  : aliased PDCA_VERSION_Register;
   end record
     with Volatile;

   for PDCA_Peripheral use record
      MAR0     at 16#0# range 0 .. 31;
      PSR0     at 16#4# range 0 .. 31;
      TCR0     at 16#8# range 0 .. 31;
      MARR0    at 16#C# range 0 .. 31;
      TCRR0    at 16#10# range 0 .. 31;
      CR0      at 16#14# range 0 .. 31;
      MR0      at 16#18# range 0 .. 31;
      SR0      at 16#1C# range 0 .. 31;
      IER0     at 16#20# range 0 .. 31;
      IDR0     at 16#24# range 0 .. 31;
      IMR0     at 16#28# range 0 .. 31;
      ISR0     at 16#2C# range 0 .. 31;
      MAR1     at 16#40# range 0 .. 31;
      PSR1     at 16#44# range 0 .. 31;
      TCR1     at 16#48# range 0 .. 31;
      MARR1    at 16#4C# range 0 .. 31;
      TCRR1    at 16#50# range 0 .. 31;
      CR1      at 16#54# range 0 .. 31;
      MR1      at 16#58# range 0 .. 31;
      SR1      at 16#5C# range 0 .. 31;
      IER1     at 16#60# range 0 .. 31;
      IDR1     at 16#64# range 0 .. 31;
      IMR1     at 16#68# range 0 .. 31;
      ISR1     at 16#6C# range 0 .. 31;
      MAR2     at 16#80# range 0 .. 31;
      PSR2     at 16#84# range 0 .. 31;
      TCR2     at 16#88# range 0 .. 31;
      MARR2    at 16#8C# range 0 .. 31;
      TCRR2    at 16#90# range 0 .. 31;
      CR2      at 16#94# range 0 .. 31;
      MR2      at 16#98# range 0 .. 31;
      SR2      at 16#9C# range 0 .. 31;
      IER2     at 16#A0# range 0 .. 31;
      IDR2     at 16#A4# range 0 .. 31;
      IMR2     at 16#A8# range 0 .. 31;
      ISR2     at 16#AC# range 0 .. 31;
      MAR3     at 16#C0# range 0 .. 31;
      PSR3     at 16#C4# range 0 .. 31;
      TCR3     at 16#C8# range 0 .. 31;
      MARR3    at 16#CC# range 0 .. 31;
      TCRR3    at 16#D0# range 0 .. 31;
      CR3      at 16#D4# range 0 .. 31;
      MR3      at 16#D8# range 0 .. 31;
      SR3      at 16#DC# range 0 .. 31;
      IER3     at 16#E0# range 0 .. 31;
      IDR3     at 16#E4# range 0 .. 31;
      IMR3     at 16#E8# range 0 .. 31;
      ISR3     at 16#EC# range 0 .. 31;
      MAR4     at 16#100# range 0 .. 31;
      PSR4     at 16#104# range 0 .. 31;
      TCR4     at 16#108# range 0 .. 31;
      MARR4    at 16#10C# range 0 .. 31;
      TCRR4    at 16#110# range 0 .. 31;
      CR4      at 16#114# range 0 .. 31;
      MR4      at 16#118# range 0 .. 31;
      SR4      at 16#11C# range 0 .. 31;
      IER4     at 16#120# range 0 .. 31;
      IDR4     at 16#124# range 0 .. 31;
      IMR4     at 16#128# range 0 .. 31;
      ISR4     at 16#12C# range 0 .. 31;
      MAR5     at 16#140# range 0 .. 31;
      PSR5     at 16#144# range 0 .. 31;
      TCR5     at 16#148# range 0 .. 31;
      MARR5    at 16#14C# range 0 .. 31;
      TCRR5    at 16#150# range 0 .. 31;
      CR5      at 16#154# range 0 .. 31;
      MR5      at 16#158# range 0 .. 31;
      SR5      at 16#15C# range 0 .. 31;
      IER5     at 16#160# range 0 .. 31;
      IDR5     at 16#164# range 0 .. 31;
      IMR5     at 16#168# range 0 .. 31;
      ISR5     at 16#16C# range 0 .. 31;
      MAR6     at 16#180# range 0 .. 31;
      PSR6     at 16#184# range 0 .. 31;
      TCR6     at 16#188# range 0 .. 31;
      MARR6    at 16#18C# range 0 .. 31;
      TCRR6    at 16#190# range 0 .. 31;
      CR6      at 16#194# range 0 .. 31;
      MR6      at 16#198# range 0 .. 31;
      SR6      at 16#19C# range 0 .. 31;
      IER6     at 16#1A0# range 0 .. 31;
      IDR6     at 16#1A4# range 0 .. 31;
      IMR6     at 16#1A8# range 0 .. 31;
      ISR6     at 16#1AC# range 0 .. 31;
      MAR7     at 16#1C0# range 0 .. 31;
      PSR7     at 16#1C4# range 0 .. 31;
      TCR7     at 16#1C8# range 0 .. 31;
      MARR7    at 16#1CC# range 0 .. 31;
      TCRR7    at 16#1D0# range 0 .. 31;
      CR7      at 16#1D4# range 0 .. 31;
      MR7      at 16#1D8# range 0 .. 31;
      SR7      at 16#1DC# range 0 .. 31;
      IER7     at 16#1E0# range 0 .. 31;
      IDR7     at 16#1E4# range 0 .. 31;
      IMR7     at 16#1E8# range 0 .. 31;
      ISR7     at 16#1EC# range 0 .. 31;
      MAR8     at 16#200# range 0 .. 31;
      PSR8     at 16#204# range 0 .. 31;
      TCR8     at 16#208# range 0 .. 31;
      MARR8    at 16#20C# range 0 .. 31;
      TCRR8    at 16#210# range 0 .. 31;
      CR8      at 16#214# range 0 .. 31;
      MR8      at 16#218# range 0 .. 31;
      SR8      at 16#21C# range 0 .. 31;
      IER8     at 16#220# range 0 .. 31;
      IDR8     at 16#224# range 0 .. 31;
      IMR8     at 16#228# range 0 .. 31;
      ISR8     at 16#22C# range 0 .. 31;
      MAR9     at 16#240# range 0 .. 31;
      PSR9     at 16#244# range 0 .. 31;
      TCR9     at 16#248# range 0 .. 31;
      MARR9    at 16#24C# range 0 .. 31;
      TCRR9    at 16#250# range 0 .. 31;
      CR9      at 16#254# range 0 .. 31;
      MR9      at 16#258# range 0 .. 31;
      SR9      at 16#25C# range 0 .. 31;
      IER9     at 16#260# range 0 .. 31;
      IDR9     at 16#264# range 0 .. 31;
      IMR9     at 16#268# range 0 .. 31;
      ISR9     at 16#26C# range 0 .. 31;
      MAR10    at 16#280# range 0 .. 31;
      PSR10    at 16#284# range 0 .. 31;
      TCR10    at 16#288# range 0 .. 31;
      MARR10   at 16#28C# range 0 .. 31;
      TCRR10   at 16#290# range 0 .. 31;
      CR10     at 16#294# range 0 .. 31;
      MR10     at 16#298# range 0 .. 31;
      SR10     at 16#29C# range 0 .. 31;
      IER10    at 16#2A0# range 0 .. 31;
      IDR10    at 16#2A4# range 0 .. 31;
      IMR10    at 16#2A8# range 0 .. 31;
      ISR10    at 16#2AC# range 0 .. 31;
      MAR11    at 16#2C0# range 0 .. 31;
      PSR11    at 16#2C4# range 0 .. 31;
      TCR11    at 16#2C8# range 0 .. 31;
      MARR11   at 16#2CC# range 0 .. 31;
      TCRR11   at 16#2D0# range 0 .. 31;
      CR11     at 16#2D4# range 0 .. 31;
      MR11     at 16#2D8# range 0 .. 31;
      SR11     at 16#2DC# range 0 .. 31;
      IER11    at 16#2E0# range 0 .. 31;
      IDR11    at 16#2E4# range 0 .. 31;
      IMR11    at 16#2E8# range 0 .. 31;
      ISR11    at 16#2EC# range 0 .. 31;
      MAR12    at 16#300# range 0 .. 31;
      PSR12    at 16#304# range 0 .. 31;
      TCR12    at 16#308# range 0 .. 31;
      MARR12   at 16#30C# range 0 .. 31;
      TCRR12   at 16#310# range 0 .. 31;
      CR12     at 16#314# range 0 .. 31;
      MR12     at 16#318# range 0 .. 31;
      SR12     at 16#31C# range 0 .. 31;
      IER12    at 16#320# range 0 .. 31;
      IDR12    at 16#324# range 0 .. 31;
      IMR12    at 16#328# range 0 .. 31;
      ISR12    at 16#32C# range 0 .. 31;
      MAR13    at 16#340# range 0 .. 31;
      PSR13    at 16#344# range 0 .. 31;
      TCR13    at 16#348# range 0 .. 31;
      MARR13   at 16#34C# range 0 .. 31;
      TCRR13   at 16#350# range 0 .. 31;
      CR13     at 16#354# range 0 .. 31;
      MR13     at 16#358# range 0 .. 31;
      SR13     at 16#35C# range 0 .. 31;
      IER13    at 16#360# range 0 .. 31;
      IDR13    at 16#364# range 0 .. 31;
      IMR13    at 16#368# range 0 .. 31;
      ISR13    at 16#36C# range 0 .. 31;
      MAR14    at 16#380# range 0 .. 31;
      PSR14    at 16#384# range 0 .. 31;
      TCR14    at 16#388# range 0 .. 31;
      MARR14   at 16#38C# range 0 .. 31;
      TCRR14   at 16#390# range 0 .. 31;
      CR14     at 16#394# range 0 .. 31;
      MR14     at 16#398# range 0 .. 31;
      SR14     at 16#39C# range 0 .. 31;
      IER14    at 16#3A0# range 0 .. 31;
      IDR14    at 16#3A4# range 0 .. 31;
      IMR14    at 16#3A8# range 0 .. 31;
      ISR14    at 16#3AC# range 0 .. 31;
      MAR15    at 16#3C0# range 0 .. 31;
      PSR15    at 16#3C4# range 0 .. 31;
      TCR15    at 16#3C8# range 0 .. 31;
      MARR15   at 16#3CC# range 0 .. 31;
      TCRR15   at 16#3D0# range 0 .. 31;
      CR15     at 16#3D4# range 0 .. 31;
      MR15     at 16#3D8# range 0 .. 31;
      SR15     at 16#3DC# range 0 .. 31;
      IER15    at 16#3E0# range 0 .. 31;
      IDR15    at 16#3E4# range 0 .. 31;
      IMR15    at 16#3E8# range 0 .. 31;
      ISR15    at 16#3EC# range 0 .. 31;
      PCONTROL at 16#800# range 0 .. 31;
      PRDATA0  at 16#804# range 0 .. 31;
      PRSTALL0 at 16#808# range 0 .. 31;
      PRLAT0   at 16#80C# range 0 .. 31;
      PWDATA0  at 16#810# range 0 .. 31;
      PWSTALL0 at 16#814# range 0 .. 31;
      PWLAT0   at 16#818# range 0 .. 31;
      PRDATA1  at 16#81C# range 0 .. 31;
      PRSTALL1 at 16#820# range 0 .. 31;
      PRLAT1   at 16#824# range 0 .. 31;
      PWDATA1  at 16#828# range 0 .. 31;
      PWSTALL1 at 16#82C# range 0 .. 31;
      PWLAT1   at 16#830# range 0 .. 31;
      VERSION  at 16#834# range 0 .. 31;
   end record;

   --  Peripheral DMA Controller
   PDCA_Periph : aliased PDCA_Peripheral
     with Import, Address => System'To_Address (16#400A2000#);

end SAM_SVD.PDCA;
