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

--  This spec has been automatically generated from ATSAM4LC8A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.LCDCA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type LCDCA_CR_Register is record
      --  Write-only. Disable
      DIS            : Boolean := False;
      --  Write-only. Enable
      EN             : Boolean := False;
      --  Write-only. Frame Counter 0 Disable
      FC0DIS         : Boolean := False;
      --  Write-only. Frame Counter 0 Enable
      FC0EN          : Boolean := False;
      --  Write-only. Frame Counter 1 Disable
      FC1DIS         : Boolean := False;
      --  Write-only. Frame Counter 1 Enable
      FC1EN          : Boolean := False;
      --  Write-only. Frame Counter 2 Disable
      FC2DIS         : Boolean := False;
      --  Write-only. Frame Counter 2 Enable
      FC2EN          : Boolean := False;
      --  Write-only. Clear Display Memory
      CDM            : Boolean := False;
      --  Write-only. Wake up Disable
      WDIS           : Boolean := False;
      --  Write-only. Wake up Enable
      WEN            : Boolean := False;
      --  Write-only. Blinking Start
      BSTART         : Boolean := False;
      --  Write-only. Blinking Stop
      BSTOP          : Boolean := False;
      --  Write-only. Circular Shift Start
      CSTART         : Boolean := False;
      --  Write-only. Circular Shift Stop
      CSTOP          : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CR_Register use record
      DIS            at 0 range 0 .. 0;
      EN             at 0 range 1 .. 1;
      FC0DIS         at 0 range 2 .. 2;
      FC0EN          at 0 range 3 .. 3;
      FC1DIS         at 0 range 4 .. 4;
      FC1EN          at 0 range 5 .. 5;
      FC2DIS         at 0 range 6 .. 6;
      FC2EN          at 0 range 7 .. 7;
      CDM            at 0 range 8 .. 8;
      WDIS           at 0 range 9 .. 9;
      WEN            at 0 range 10 .. 10;
      BSTART         at 0 range 11 .. 11;
      BSTOP          at 0 range 12 .. 12;
      CSTART         at 0 range 13 .. 13;
      CSTOP          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype LCDCA_CFG_DUTY_Field is HAL.UInt2;
   subtype LCDCA_CFG_FCST_Field is HAL.UInt6;
   subtype LCDCA_CFG_NSU_Field is HAL.UInt6;

   --  Configuration Register
   type LCDCA_CFG_Register is record
      --  External Bias Generation
      XBIAS          : Boolean := False;
      --  Waveform Mode
      WMOD           : Boolean := False;
      --  Blank LCD
      BLANK          : Boolean := False;
      --  Lock
      LOCK           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Duty Select
      DUTY           : LCDCA_CFG_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Fine Contrast
      FCST           : LCDCA_CFG_FCST_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Number of Segment Terminals in Use
      NSU            : LCDCA_CFG_NSU_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CFG_Register use record
      XBIAS          at 0 range 0 .. 0;
      WMOD           at 0 range 1 .. 1;
      BLANK          at 0 range 2 .. 2;
      LOCK           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DUTY           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FCST           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      NSU            at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype LCDCA_TIM_CLKDIV_Field is HAL.UInt3;
   subtype LCDCA_TIM_FC0_Field is HAL.UInt5;
   subtype LCDCA_TIM_FC1_Field is HAL.UInt5;
   subtype LCDCA_TIM_FC2_Field is HAL.UInt5;

   --  Timing Register
   type LCDCA_TIM_Register is record
      --  LCD Prescaler Select
      PRESC          : Boolean := False;
      --  LCD Clock Division
      CLKDIV         : LCDCA_TIM_CLKDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Frame Counter 0
      FC0            : LCDCA_TIM_FC0_Field := 16#0#;
      --  Frame Counter 0 Prescaler Bypass
      FC0PB          : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Frame Counter 1
      FC1            : LCDCA_TIM_FC1_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Frame Counter 2
      FC2            : LCDCA_TIM_FC2_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_TIM_Register use record
      PRESC          at 0 range 0 .. 0;
      CLKDIV         at 0 range 1 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FC0            at 0 range 8 .. 12;
      FC0PB          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FC1            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      FC2            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Status Register
   type LCDCA_SR_Register is record
      --  Read-only. Frame Counter 0 Rollover
      FC0R          : Boolean;
      --  Read-only. Frame Counter 0 Status
      FC0S          : Boolean;
      --  Read-only. Frame Counter 1 Status
      FC1S          : Boolean;
      --  Read-only. Frame Counter 2 Status
      FC2S          : Boolean;
      --  Read-only. LCDCA Status
      EN            : Boolean;
      --  Read-only. Wake up Status
      WEN           : Boolean;
      --  Read-only. Blink Status
      BLKS          : Boolean;
      --  Read-only. Circular Shift Register Status
      CSRS          : Boolean;
      --  Read-only. Charge Pump Status
      CPS           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_SR_Register use record
      FC0R          at 0 range 0 .. 0;
      FC0S          at 0 range 1 .. 1;
      FC1S          at 0 range 2 .. 2;
      FC2S          at 0 range 3 .. 3;
      EN            at 0 range 4 .. 4;
      WEN           at 0 range 5 .. 5;
      BLKS          at 0 range 6 .. 6;
      CSRS          at 0 range 7 .. 7;
      CPS           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Status Clear Register
   type LCDCA_SCR_Register is record
      --  Write-only. Frame Counter 0 Rollover
      FC0R          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_SCR_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DRH_DATA_Field is HAL.UInt8;

   --  Data Register High 0
   type DRH_Register is record
      --  Segments Value
      DATA          : DRH_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DRH_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LCDCA_IADR_DATA_Field is HAL.UInt8;
   subtype LCDCA_IADR_DMASK_Field is HAL.UInt8;
   subtype LCDCA_IADR_OFF_Field is HAL.UInt5;

   --  Indirect Access Data Register
   type LCDCA_IADR_Register is record
      --  Write-only. Segments Value
      DATA           : LCDCA_IADR_DATA_Field := 16#0#;
      --  Write-only. Data Mask
      DMASK          : LCDCA_IADR_DMASK_Field := 16#0#;
      --  Write-only. Byte Offset
      OFF            : LCDCA_IADR_OFF_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IADR_Register use record
      DATA           at 0 range 0 .. 7;
      DMASK          at 0 range 8 .. 15;
      OFF            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype LCDCA_BCFG_FCS_Field is HAL.UInt2;
   --  LCDCA_BCFG_BSS array element
   subtype LCDCA_BCFG_BSS_Element is HAL.UInt4;

   --  LCDCA_BCFG_BSS array
   type LCDCA_BCFG_BSS_Field_Array is array (0 .. 1)
     of LCDCA_BCFG_BSS_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for LCDCA_BCFG_BSS
   type LCDCA_BCFG_BSS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BSS as a value
            Val : HAL.UInt8;
         when True =>
            --  BSS as an array
            Arr : LCDCA_BCFG_BSS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for LCDCA_BCFG_BSS_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Blink Configuration Register
   type LCDCA_BCFG_Register is record
      --  Blinking Mode
      MODE           : Boolean := False;
      --  Frame Counter Selection
      FCS            : LCDCA_BCFG_FCS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Blink Segment Selection 0
      BSS            : LCDCA_BCFG_BSS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_BCFG_Register use record
      MODE           at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BSS            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LCDCA_CSRCFG_FCS_Field is HAL.UInt2;
   subtype LCDCA_CSRCFG_SIZE_Field is HAL.UInt3;
   subtype LCDCA_CSRCFG_DATA_Field is HAL.UInt8;

   --  Circular Shift Register Configuration
   type LCDCA_CSRCFG_Register is record
      --  Direction
      DIR            : Boolean := False;
      --  Frame Counter Selection
      FCS            : LCDCA_CSRCFG_FCS_Field := 16#0#;
      --  Size
      SIZE           : LCDCA_CSRCFG_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Circular Shift Register Value
      DATA           : LCDCA_CSRCFG_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CSRCFG_Register use record
      DIR            at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      SIZE           at 0 range 3 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DATA           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LCDCA_CMCFG_TDG_Field is HAL.UInt2;
   subtype LCDCA_CMCFG_STSEG_Field is HAL.UInt6;

   --  Character Mapping Configuration Register
   type LCDCA_CMCFG_Register is record
      --  Digit Reverse Mode
      DREV           : Boolean := False;
      --  Type of Digit
      TDG            : LCDCA_CMCFG_TDG_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Start Segment
      STSEG          : LCDCA_CMCFG_STSEG_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CMCFG_Register use record
      DREV           at 0 range 0 .. 0;
      TDG            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      STSEG          at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype LCDCA_CMDR_ASCII_Field is HAL.UInt7;

   --  Character Mapping Data Register
   type LCDCA_CMDR_Register is record
      --  Write-only. ASCII Code
      ASCII         : LCDCA_CMDR_ASCII_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_CMDR_Register use record
      ASCII         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype LCDCA_ACMCFG_FCS_Field is HAL.UInt2;
   subtype LCDCA_ACMCFG_TDG_Field is HAL.UInt2;
   subtype LCDCA_ACMCFG_STSEG_Field is HAL.UInt6;
   subtype LCDCA_ACMCFG_STEPS_Field is HAL.UInt8;
   subtype LCDCA_ACMCFG_DIGN_Field is HAL.UInt4;

   --  Automated Character Mapping Configuration Register
   type LCDCA_ACMCFG_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Frame Counter Selection
      FCS            : LCDCA_ACMCFG_FCS_Field := 16#0#;
      --  Mode (sequential or scrolling)
      MODE           : Boolean := False;
      --  Digit Reverse
      DREV           : Boolean := False;
      --  Type of Digit
      TDG            : LCDCA_ACMCFG_TDG_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Start Segment
      STSEG          : LCDCA_ACMCFG_STSEG_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Scrolling Steps
      STEPS          : LCDCA_ACMCFG_STEPS_Field := 16#0#;
      --  Digit Number
      DIGN           : LCDCA_ACMCFG_DIGN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ACMCFG_Register use record
      EN             at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      MODE           at 0 range 3 .. 3;
      DREV           at 0 range 4 .. 4;
      TDG            at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      STSEG          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      STEPS          at 0 range 16 .. 23;
      DIGN           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype LCDCA_ACMDR_ASCII_Field is HAL.UInt7;

   --  Automated Character Mapping Data Register
   type LCDCA_ACMDR_Register is record
      --  Write-only. ASCII Code
      ASCII         : LCDCA_ACMDR_ASCII_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ACMDR_Register use record
      ASCII         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype LCDCA_ABMCFG_FCS_Field is HAL.UInt2;
   subtype LCDCA_ABMCFG_SIZE_Field is HAL.UInt5;

   --  Automated Bit Mapping Configuration Register
   type LCDCA_ABMCFG_Register is record
      --  Enable
      EN             : Boolean := False;
      --  Frame Counter Selection
      FCS            : LCDCA_ABMCFG_FCS_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Size
      SIZE           : LCDCA_ABMCFG_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ABMCFG_Register use record
      EN             at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SIZE           at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype LCDCA_ABMDR_DATA_Field is HAL.UInt8;
   subtype LCDCA_ABMDR_DMASK_Field is HAL.UInt8;
   subtype LCDCA_ABMDR_OFF_Field is HAL.UInt5;

   --  Automated Bit Mapping Data Register
   type LCDCA_ABMDR_Register is record
      --  Write-only. Segments Value
      DATA           : LCDCA_ABMDR_DATA_Field := 16#0#;
      --  Write-only. Data Mask
      DMASK          : LCDCA_ABMDR_DMASK_Field := 16#0#;
      --  Write-only. Byte Offset
      OFF            : LCDCA_ABMDR_OFF_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_ABMDR_Register use record
      DATA           at 0 range 0 .. 7;
      DMASK          at 0 range 8 .. 15;
      OFF            at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Interrupt Enable Register
   type LCDCA_IER_Register is record
      --  Write-only. Frame Counter 0 Rollover
      FC0R          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IER_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type LCDCA_IDR_Register is record
      --  Write-only. Frame Counter 0 Rollover
      FC0R          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IDR_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type LCDCA_IMR_Register is record
      --  Read-only. Frame Counter 0 Rollover
      FC0R          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_IMR_Register use record
      FC0R          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LCDCA_VERSION_VERSION_Field is HAL.UInt12;
   subtype LCDCA_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type LCDCA_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : LCDCA_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : LCDCA_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LCDCA_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LCD Controller
   type LCDCA_Peripheral is record
      --  Control Register
      CR      : aliased LCDCA_CR_Register;
      --  Configuration Register
      CFG     : aliased LCDCA_CFG_Register;
      --  Timing Register
      TIM     : aliased LCDCA_TIM_Register;
      --  Status Register
      SR      : aliased LCDCA_SR_Register;
      --  Status Clear Register
      SCR     : aliased LCDCA_SCR_Register;
      --  Data Register Low 0
      DRL0    : aliased HAL.UInt32;
      --  Data Register High 0
      DRH0    : aliased DRH_Register;
      --  Data Register Low 1
      DRL1    : aliased HAL.UInt32;
      --  Data Register High 1
      DRH1    : aliased DRH_Register;
      --  Data Register Low 2
      DRL2    : aliased HAL.UInt32;
      --  Data Register High 2
      DRH2    : aliased DRH_Register;
      --  Data Register Low 3
      DRL3    : aliased HAL.UInt32;
      --  Data Register High 3
      DRH3    : aliased DRH_Register;
      --  Indirect Access Data Register
      IADR    : aliased LCDCA_IADR_Register;
      --  Blink Configuration Register
      BCFG    : aliased LCDCA_BCFG_Register;
      --  Circular Shift Register Configuration
      CSRCFG  : aliased LCDCA_CSRCFG_Register;
      --  Character Mapping Configuration Register
      CMCFG   : aliased LCDCA_CMCFG_Register;
      --  Character Mapping Data Register
      CMDR    : aliased LCDCA_CMDR_Register;
      --  Automated Character Mapping Configuration Register
      ACMCFG  : aliased LCDCA_ACMCFG_Register;
      --  Automated Character Mapping Data Register
      ACMDR   : aliased LCDCA_ACMDR_Register;
      --  Automated Bit Mapping Configuration Register
      ABMCFG  : aliased LCDCA_ABMCFG_Register;
      --  Automated Bit Mapping Data Register
      ABMDR   : aliased LCDCA_ABMDR_Register;
      --  Interrupt Enable Register
      IER     : aliased LCDCA_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased LCDCA_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased LCDCA_IMR_Register;
      --  Version Register
      VERSION : aliased LCDCA_VERSION_Register;
   end record
     with Volatile;

   for LCDCA_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      CFG     at 16#4# range 0 .. 31;
      TIM     at 16#8# range 0 .. 31;
      SR      at 16#C# range 0 .. 31;
      SCR     at 16#10# range 0 .. 31;
      DRL0    at 16#14# range 0 .. 31;
      DRH0    at 16#18# range 0 .. 31;
      DRL1    at 16#1C# range 0 .. 31;
      DRH1    at 16#20# range 0 .. 31;
      DRL2    at 16#24# range 0 .. 31;
      DRH2    at 16#28# range 0 .. 31;
      DRL3    at 16#2C# range 0 .. 31;
      DRH3    at 16#30# range 0 .. 31;
      IADR    at 16#34# range 0 .. 31;
      BCFG    at 16#38# range 0 .. 31;
      CSRCFG  at 16#3C# range 0 .. 31;
      CMCFG   at 16#40# range 0 .. 31;
      CMDR    at 16#44# range 0 .. 31;
      ACMCFG  at 16#48# range 0 .. 31;
      ACMDR   at 16#4C# range 0 .. 31;
      ABMCFG  at 16#50# range 0 .. 31;
      ABMDR   at 16#54# range 0 .. 31;
      IER     at 16#58# range 0 .. 31;
      IDR     at 16#5C# range 0 .. 31;
      IMR     at 16#60# range 0 .. 31;
      VERSION at 16#64# range 0 .. 31;
   end record;

   --  LCD Controller
   LCDCA_Periph : aliased LCDCA_Peripheral
     with Import, Address => System'To_Address (16#40080000#);

end SAM_SVD.LCDCA;
