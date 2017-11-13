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

--  This spec has been automatically generated from ATSAML22G16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.SLCD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Duty Ratio
   type CTRLA_DUTYSelect is
     (
      --  Static duty
      Static,
      --  1/2 duty
      Half,
      --  1/3 duty
      Third,
      --  1/4 duty
      Fourth,
      --  1/6 duty
      Sixth,
      --  1/8 duty
      Eight)
     with Size => 3;
   for CTRLA_DUTYSelect use
     (Static => 0,
      Half => 1,
      Third => 2,
      Fourth => 3,
      Sixth => 4,
      Eight => 5);

   --  Waveform Mode
   type CTRLA_WMODSelect is
     (
      --  Low Power Waveform Mode
      Lp,
      --  Standard Waveform Mode
      Std)
     with Size => 1;
   for CTRLA_WMODSelect use
     (Lp => 0,
      Std => 1);

   --  Clock Prescaler
   type CTRLA_PRESCSelect is
     (
      --  16
      Presc16,
      --  32
      Presc32,
      --  64
      Presc64,
      --  128
      Presc128)
     with Size => 2;
   for CTRLA_PRESCSelect use
     (Presc16 => 0,
      Presc32 => 1,
      Presc64 => 2,
      Presc128 => 3);

   subtype SLCD_CTRLA_CKDIV_Field is HAL.UInt3;

   --  Bias Setting
   type CTRLA_BIASSelect is
     (
      --  Static
      Static,
      --  1/2 bias
      Half,
      --  1/3 bias
      Third,
      --  1/4 bias
      Fourth)
     with Size => 2;
   for CTRLA_BIASSelect use
     (Static => 0,
      Half => 1,
      Third => 2,
      Fourth => 3);

   --  Power Refresh Frequency
   type CTRLA_PRFSelect is
     (
      --  2kHz
      Pr2000,
      --  1kHz
      Pr1000,
      --  500Hz
      Pr500,
      --  250Hz
      Pr250)
     with Size => 2;
   for CTRLA_PRFSelect use
     (Pr2000 => 0,
      Pr1000 => 1,
      Pr500 => 2,
      Pr250 => 3);

   --  Display Memory Update Frame Counter Selection
   type CTRLA_DMFCSSelect is
     (
      --  Frame Counter 0
      Fc0,
      --  Frame Counter 1
      Fc1,
      --  Frame Counter 2
      Fc2,
      --  Frame Counter event to DMU is forced to 0
      Nfc)
     with Size => 2;
   for CTRLA_DMFCSSelect use
     (Fc0 => 0,
      Fc1 => 1,
      Fc2 => 2,
      Nfc => 3);

   --  Reference Refresh Frequency
   type CTRLA_RRFSelect is
     (
      --  2kHz
      Rr2000,
      --  1kHz
      Rr1000,
      --  500Hz
      Rr500,
      --  250Hz
      Rr250,
      --  125Hz
      Rr125,
      --  62.5Hz
      Rr62)
     with Size => 3;
   for CTRLA_RRFSelect use
     (Rr2000 => 0,
      Rr1000 => 1,
      Rr500 => 2,
      Rr250 => 3,
      Rr125 => 4,
      Rr62 => 5);

   --  Control A
   type SLCD_CTRLA_Register is record
      --  Software Reset
      SWRST          : Boolean := False;
      --  Enable
      ENABLE         : Boolean := False;
      --  Duty Ratio
      DUTY           : CTRLA_DUTYSelect := SAM_SVD.SLCD.Static;
      --  Waveform Mode
      WMOD           : CTRLA_WMODSelect := SAM_SVD.SLCD.Lp;
      --  Run in Standby
      RUNSTDBY       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Clock Prescaler
      PRESC          : CTRLA_PRESCSelect := SAM_SVD.SLCD.Presc16;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Clock Divider
      CKDIV          : SLCD_CTRLA_CKDIV_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Bias Setting
      BIAS           : CTRLA_BIASSelect := SAM_SVD.SLCD.Static;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  External VLCD
      XVLCD          : Boolean := True;
      --  Power Refresh Frequency
      PRF            : CTRLA_PRFSelect := SAM_SVD.SLCD.Pr1000;
      --  Display Memory Update Frame Counter Selection
      DMFCS          : CTRLA_DMFCSSelect := SAM_SVD.SLCD.Nfc;
      --  Reference Refresh Frequency
      RRF            : CTRLA_RRFSelect := SAM_SVD.SLCD.Rr250;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_CTRLA_Register use record
      SWRST          at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      DUTY           at 0 range 2 .. 4;
      WMOD           at 0 range 5 .. 5;
      RUNSTDBY       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRESC          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CKDIV          at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      BIAS           at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      XVLCD          at 0 range 19 .. 19;
      PRF            at 0 range 20 .. 21;
      DMFCS          at 0 range 22 .. 23;
      RRF            at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype SLCD_CTRLB_BBD_Field is HAL.UInt4;
   subtype SLCD_CTRLB_LRD_Field is HAL.UInt4;

   --  Control B
   type SLCD_CTRLB_Register is record
      --  Bias Buffer Enable Duration
      BBD            : SLCD_CTRLB_BBD_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Bias Buffer Enable
      BBEN           : Boolean := False;
      --  Low Resistance Enable Duration
      LRD            : SLCD_CTRLB_LRD_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Low Resistance Enable
      LREN           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SLCD_CTRLB_Register use record
      BBD            at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      BBEN           at 0 range 7 .. 7;
      LRD            at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      LREN           at 0 range 15 .. 15;
   end record;

   subtype SLCD_CTRLC_CTST_Field is HAL.UInt4;

   --  LCD Power Macro Power mode
   type CTRLC_LPPMSelect is
     (
      --  LCD power automatically select regualation mode or pump mode
      Auto,
      --  LCD power use step-up pump loop only
      Stepup,
      --  LCD power use step-down drop-out regulation loop only
      Stepdown)
     with Size => 2;
   for CTRLC_LPPMSelect use
     (Auto => 0,
      Stepup => 1,
      Stepdown => 2);

   --  Control C
   type SLCD_CTRLC_Register is record
      --  Clear Display Memory
      CLEAR          : Boolean := False;
      --  Lock Shadow Memory
      LOCK           : Boolean := False;
      --  Automated Bit Mapping Enable
      ABMEN          : Boolean := False;
      --  Automated Character Mapping Enable
      ACMEN          : Boolean := False;
      --  Contrast Adjustment
      CTST           : SLCD_CTRLC_CTST_Field := 16#0#;
      --  LCD Power Macro Power mode
      LPPM           : CTRLC_LPPMSelect := SAM_SVD.SLCD.Auto;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SLCD_CTRLC_Register use record
      CLEAR          at 0 range 0 .. 0;
      LOCK           at 0 range 1 .. 1;
      ABMEN          at 0 range 2 .. 2;
      ACMEN          at 0 range 3 .. 3;
      CTST           at 0 range 4 .. 7;
      LPPM           at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Control D
   type SLCD_CTRLD_Register is record
      --  Blank LCD
      BLANK        : Boolean := False;
      --  Blinking Enable
      BLINK        : Boolean := False;
      --  Circular Shift Register Enable
      CSREN        : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Frame Counter 0 Enable
      FC0EN        : Boolean := False;
      --  Frame Counter 1 Enable
      FC1EN        : Boolean := False;
      --  Frame Counter 2 Enable
      FC2EN        : Boolean := False;
      --  Display enable
      DISPEN       : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_CTRLD_Register use record
      BLANK        at 0 range 0 .. 0;
      BLINK        at 0 range 1 .. 1;
      CSREN        at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      FC0EN        at 0 range 4 .. 4;
      FC1EN        at 0 range 5 .. 5;
      FC2EN        at 0 range 6 .. 6;
      DISPEN       at 0 range 7 .. 7;
   end record;

   --  Event Control
   type SLCD_EVCTRL_Register is record
      --  Frame Counter 0 Overflow Event Output Enable
      FC0OEO       : Boolean := False;
      --  Frame Counter 1 Overflow Event Output Enable
      FC1OEO       : Boolean := False;
      --  Frame Counter 2 Overflow Event Output Enable
      FC2OEO       : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_EVCTRL_Register use record
      FC0OEO       at 0 range 0 .. 0;
      FC1OEO       at 0 range 1 .. 1;
      FC2OEO       at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Enable Clear
   type SLCD_INTENCLR_Register is record
      --  Frame Counter 0 Overflow Interrupt Disable
      FC0O         : Boolean := False;
      --  Frame Counter 1 Overflow Interrupt Disable
      FC1O         : Boolean := False;
      --  Frame Counter 2 Overflow Interrupt Disable
      FC2O         : Boolean := False;
      --  VLCD Ready Toggle Interrupt Disable
      VLCDRT       : Boolean := False;
      --  VLCD Status Toggle Interrupt Disable
      VLCDST       : Boolean := False;
      --  Pump Run Status Toggle Interrupt Disable
      PRST         : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_INTENCLR_Register use record
      FC0O         at 0 range 0 .. 0;
      FC1O         at 0 range 1 .. 1;
      FC2O         at 0 range 2 .. 2;
      VLCDRT       at 0 range 3 .. 3;
      VLCDST       at 0 range 4 .. 4;
      PRST         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Interrupt Enable Set
   type SLCD_INTENSET_Register is record
      --  Frame Counter 0 Overflow Interrupt Enable
      FC0O         : Boolean := False;
      --  Frame Counter 1 Overflow Interrupt Enable
      FC1O         : Boolean := False;
      --  Frame Counter 2 Overflow Interrupt Enable
      FC2O         : Boolean := False;
      --  VLCD Ready Toggle Interrupt Enable
      VLCDRT       : Boolean := False;
      --  VLCD Status Toggle Interrupt Enable
      VLCDST       : Boolean := False;
      --  Pump Run Status Toggle Interrupt Enable
      PRST         : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_INTENSET_Register use record
      FC0O         at 0 range 0 .. 0;
      FC1O         at 0 range 1 .. 1;
      FC2O         at 0 range 2 .. 2;
      VLCDRT       at 0 range 3 .. 3;
      VLCDST       at 0 range 4 .. 4;
      PRST         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type SLCD_INTFLAG_Register is record
      --  Frame Counter 0 Overflow
      FC0O         : Boolean := False;
      --  Frame Counter 1 Overflow
      FC1O         : Boolean := False;
      --  Frame Counter 2 Overflow
      FC2O         : Boolean := False;
      --  VLCD Ready Toggle
      VLCDRT       : Boolean := False;
      --  VLCD Status Toggle
      VLCDST       : Boolean := False;
      --  Pump Run Status Toggle
      PRST         : Boolean := False;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_INTFLAG_Register use record
      FC0O         at 0 range 0 .. 0;
      FC1O         at 0 range 1 .. 1;
      FC2O         at 0 range 2 .. 2;
      VLCDRT       at 0 range 3 .. 3;
      VLCDST       at 0 range 4 .. 4;
      PRST         at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Status
   type SLCD_STATUS_Register is record
      --  Read-only. VLCD Ready
      VLCDR        : Boolean;
      --  Read-only. LCD Charge Pump is Running
      PRUN         : Boolean;
      --  Read-only. VLCD Status
      VLCDS        : Boolean;
      --  Read-only. Character mapping write busy
      CMWRBUSY     : Boolean;
      --  Read-only. ACM state machine busy
      ACMBUSY      : Boolean;
      --  Read-only. ABM state machine busy
      ABMBUSY      : Boolean;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_STATUS_Register use record
      VLCDR        at 0 range 0 .. 0;
      PRUN         at 0 range 1 .. 1;
      VLCDS        at 0 range 2 .. 2;
      CMWRBUSY     at 0 range 3 .. 3;
      ACMBUSY      at 0 range 4 .. 4;
      ABMBUSY      at 0 range 5 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Synchronization Busy
   type SLCD_SYNCBUSY_Register is record
      --  Read-only. Software Reset
      SWRST         : Boolean;
      --  Read-only. Enable
      ENABLE        : Boolean;
      --  Read-only. Control D
      CTRLD         : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_SYNCBUSY_Register use record
      SWRST         at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      CTRLD         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FC_OVF_Field is HAL.UInt5;

   --  Frame Counter 0 Configuration
   type FC_Register is record
      --  Frame Counter Overflow Value
      OVF          : FC_OVF_Field := 16#0#;
      --  unspecified
      Reserved_5_6 : HAL.UInt2 := 16#0#;
      --  Prescaler Bypass
      PB           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for FC_Register use record
      OVF          at 0 range 0 .. 4;
      Reserved_5_6 at 0 range 5 .. 6;
      PB           at 0 range 7 .. 7;
   end record;

   subtype SLCD_LPENH_LPEN_Field is HAL.UInt20;

   --  LCD Pin Enable High
   type SLCD_LPENH_Register is record
      --  LCD Pin Enable
      LPEN           : SLCD_LPENH_LPEN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_LPENH_Register use record
      LPEN           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SDATAH_SDATA_Field is HAL.UInt12;

   --  Segments Data High for COM0 Line
   type SDATAH_Register is record
      --  Segments Data
      SDATA          : SDATAH_SDATA_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDATAH_Register use record
      SDATA          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SDATAH_SDATA_Field_1 is HAL.UInt10;

   --  Segments Data High for COM4 Line
   type SDATAH_Register_1 is record
      --  Segments Data
      SDATA          : SDATAH_SDATA_Field_1 := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDATAH_Register_1 use record
      SDATA          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SDATAH_SDATA_Field_2 is HAL.UInt8;

   --  Segments Data High for COM6 Line
   type SDATAH_Register_2 is record
      --  Segments Data
      SDATA         : SDATAH_SDATA_Field_2 := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDATAH_Register_2 use record
      SDATA         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SLCD_ISDATA_SDATA_Field is HAL.UInt8;
   subtype SLCD_ISDATA_SDMASK_Field is HAL.UInt8;
   subtype SLCD_ISDATA_OFF_Field is HAL.UInt6;

   --  Indirect Segments Data Access
   type SLCD_ISDATA_Register is record
      --  Write-only. Segments Data
      SDATA          : SLCD_ISDATA_SDATA_Field := 16#0#;
      --  Write-only. Segments Data Mask
      SDMASK         : SLCD_ISDATA_SDMASK_Field := 16#0#;
      --  Write-only. Byte Offset
      OFF            : SLCD_ISDATA_OFF_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_ISDATA_Register use record
      SDATA          at 0 range 0 .. 7;
      SDMASK         at 0 range 8 .. 15;
      OFF            at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Blinking Mode
   type BCFG_MODESelect is
     (
      --  Blink all segments
      Blinkall,
      --  Blink selected segments
      Blinksel)
     with Size => 1;
   for BCFG_MODESelect use
     (Blinkall => 0,
      Blinksel => 1);

   --  Frame Counter Selection
   type BCFG_FCSSelect is
     (
      --  Frame Counter 0
      Fc0,
      --  Frame Counter 1
      Fc1,
      --  Frame Counter 2
      Fc2)
     with Size => 2;
   for BCFG_FCSSelect use
     (Fc0 => 0,
      Fc1 => 1,
      Fc2 => 2);

   --  SLCD_BCFG_BSS array element
   subtype SLCD_BCFG_BSS_Element is HAL.UInt8;

   --  SLCD_BCFG_BSS array
   type SLCD_BCFG_BSS_Field_Array is array (0 .. 1) of SLCD_BCFG_BSS_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for SLCD_BCFG_BSS
   type SLCD_BCFG_BSS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BSS as a value
            Val : HAL.UInt16;
         when True =>
            --  BSS as an array
            Arr : SLCD_BCFG_BSS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SLCD_BCFG_BSS_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Blink Configuration
   type SLCD_BCFG_Register is record
      --  Blinking Mode
      MODE           : BCFG_MODESelect := SAM_SVD.SLCD.Blinkall;
      --  Frame Counter Selection
      FCS            : BCFG_FCSSelect := SAM_SVD.SLCD.Fc0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Blink Segment Selection 0
      BSS            : SLCD_BCFG_BSS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_BCFG_Register use record
      MODE           at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      BSS            at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Frame Counter Selection
   type CSRCFG_FCSSelect is
     (
      --  Frame Counter 0
      Fc0,
      --  Frame Counter 1
      Fc1,
      --  Frame Counter 2
      Fc2)
     with Size => 2;
   for CSRCFG_FCSSelect use
     (Fc0 => 0,
      Fc1 => 1,
      Fc2 => 2);

   subtype SLCD_CSRCFG_SIZE_Field is HAL.UInt4;
   subtype SLCD_CSRCFG_DATA_Field is HAL.UInt16;

   --  Circular Shift Register Configuration
   type SLCD_CSRCFG_Register is record
      --  Direction
      DIR            : Boolean := False;
      --  Frame Counter Selection
      FCS            : CSRCFG_FCSSelect := SAM_SVD.SLCD.Fc0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Circular Shift Register Size
      SIZE           : SLCD_CSRCFG_SIZE_Field := 16#0#;
      --  Circular Shift Register Value
      DATA           : SLCD_CSRCFG_DATA_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_CSRCFG_Register use record
      DIR            at 0 range 0 .. 0;
      FCS            at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SIZE           at 0 range 4 .. 7;
      DATA           at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SLCD_CMCFG_NSEG_Field is HAL.UInt3;

   --  Character Mapping Configuration
   type SLCD_CMCFG_Register is record
      --  Number of SEG lines
      NSEG         : SLCD_CMCFG_NSEG_Field := 16#0#;
      --  Decrement SEG Line Index
      DEC          : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_CMCFG_Register use record
      NSEG         at 0 range 0 .. 2;
      DEC          at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype SLCD_ACMCFG_NCOM_Field is HAL.UInt3;
   subtype SLCD_ACMCFG_NDIG_Field is HAL.UInt4;
   subtype SLCD_ACMCFG_STEPS_Field is HAL.UInt8;
   subtype SLCD_ACMCFG_NDROW_Field is HAL.UInt6;

   --  Mode
   type ACMCFG_MODESelect is
     (
      --  Sequential Display Mode
      Seq,
      --  Scrolling Display Mode
      Scroll)
     with Size => 1;
   for ACMCFG_MODESelect use
     (Seq => 0,
      Scroll => 1);

   subtype SLCD_ACMCFG_STSEG_Field is HAL.UInt6;

   --  Frame Counter Selection
   type ACMCFG_FCSSelect is
     (
      --  Frame Counter 0
      Fc0,
      --  Frame Counter 1
      Fc1,
      --  Frame Counter 2
      Fc2)
     with Size => 2;
   for ACMCFG_FCSSelect use
     (Fc0 => 0,
      Fc1 => 1,
      Fc2 => 2);

   --  Automated Character Mapping Configuration
   type SLCD_ACMCFG_Register is record
      --  COM Lines per Row
      NCOM           : SLCD_ACMCFG_NCOM_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Number of Digit
      NDIG           : SLCD_ACMCFG_NDIG_Field := 16#0#;
      --  Scrolling Steps
      STEPS          : SLCD_ACMCFG_STEPS_Field := 16#0#;
      --  Number of Digit per Row
      NDROW          : SLCD_ACMCFG_NDROW_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  Mode
      MODE           : ACMCFG_MODESelect := SAM_SVD.SLCD.Seq;
      --  Start SEG Line
      STSEG          : SLCD_ACMCFG_STSEG_Field := 16#0#;
      --  Frame Counter Selection
      FCS            : ACMCFG_FCSSelect := SAM_SVD.SLCD.Fc0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_ACMCFG_Register use record
      NCOM           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      NDIG           at 0 range 4 .. 7;
      STEPS          at 0 range 8 .. 15;
      NDROW          at 0 range 16 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      MODE           at 0 range 23 .. 23;
      STSEG          at 0 range 24 .. 29;
      FCS            at 0 range 30 .. 31;
   end record;

   --  Frame Counter Selection
   type ABMCFG_FCSSelect is
     (
      --  Frame Counter 0
      Fc0,
      --  Frame Counter 1
      Fc1,
      --  Frame Counter 2
      Fc2)
     with Size => 2;
   for ABMCFG_FCSSelect use
     (Fc0 => 0,
      Fc1 => 1,
      Fc2 => 2);

   subtype SLCD_ABMCFG_SIZE_Field is HAL.UInt6;

   --  Automated Bit Mapping Configuration
   type SLCD_ABMCFG_Register is record
      --  Frame Counter Selection
      FCS  : ABMCFG_FCSSelect := SAM_SVD.SLCD.Fc0;
      --  Size
      SIZE : SLCD_ABMCFG_SIZE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SLCD_ABMCFG_Register use record
      FCS  at 0 range 0 .. 1;
      SIZE at 0 range 2 .. 7;
   end record;

   subtype SLCD_CMDATA_SDATA_Field is HAL.UInt24;

   --  Character Mapping Segments Data
   type SLCD_CMDATA_Register is record
      --  Write-only. Segments Data
      SDATA          : SLCD_CMDATA_SDATA_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_CMDATA_Register use record
      SDATA          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SLCD_CMDMASK_SDMASK_Field is HAL.UInt24;

   --  Character Mapping Segments Data Mask
   type SLCD_CMDMASK_Register is record
      --  Segments Data Mask
      SDMASK         : SLCD_CMDMASK_SDMASK_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLCD_CMDMASK_Register use record
      SDMASK         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SLCD_CMINDEX_SINDEX_Field is HAL.UInt6;
   subtype SLCD_CMINDEX_CINDEX_Field is HAL.UInt3;

   --  Character Mapping SEG/COM Index
   type SLCD_CMINDEX_Register is record
      --  SEG Line Index
      SINDEX         : SLCD_CMINDEX_SINDEX_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  COM Line Index
      CINDEX         : SLCD_CMINDEX_CINDEX_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SLCD_CMINDEX_Register use record
      SINDEX         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CINDEX         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Segment Liquid Crystal Display Controller
   type SLCD_Peripheral is record
      --  Control A
      CTRLA    : aliased SLCD_CTRLA_Register;
      --  Control B
      CTRLB    : aliased SLCD_CTRLB_Register;
      --  Control C
      CTRLC    : aliased SLCD_CTRLC_Register;
      --  Control D
      CTRLD    : aliased SLCD_CTRLD_Register;
      --  Event Control
      EVCTRL   : aliased SLCD_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased SLCD_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased SLCD_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased SLCD_INTFLAG_Register;
      --  Status
      STATUS   : aliased SLCD_STATUS_Register;
      --  Synchronization Busy
      SYNCBUSY : aliased SLCD_SYNCBUSY_Register;
      --  Frame Counter 0 Configuration
      FC0      : aliased FC_Register;
      --  Frame Counter 1 Configuration
      FC1      : aliased FC_Register;
      --  Frame Counter 2 Configuration
      FC2      : aliased FC_Register;
      --  LCD Pin Enable Low
      LPENL    : aliased HAL.UInt32;
      --  LCD Pin Enable High
      LPENH    : aliased SLCD_LPENH_Register;
      --  Segments Data Low for COM0 Line
      SDATAL0  : aliased HAL.UInt32;
      --  Segments Data High for COM0 Line
      SDATAH0  : aliased SDATAH_Register;
      --  Segments Data Low for COM1 Line
      SDATAL1  : aliased HAL.UInt32;
      --  Segments Data High for COM1 Line
      SDATAH1  : aliased SDATAH_Register;
      --  Segments Data Low for COM2 Line
      SDATAL2  : aliased HAL.UInt32;
      --  Segments Data High for COM2 Line
      SDATAH2  : aliased SDATAH_Register;
      --  Segments Data Low for COM3 Line
      SDATAL3  : aliased HAL.UInt32;
      --  Segments Data High for COM3 Line
      SDATAH3  : aliased SDATAH_Register;
      --  Segments Data Low for COM4 Line
      SDATAL4  : aliased HAL.UInt32;
      --  Segments Data High for COM4 Line
      SDATAH4  : aliased SDATAH_Register_1;
      --  Segments Data Low for COM5 Line
      SDATAL5  : aliased HAL.UInt32;
      --  Segments Data High for COM5 Line
      SDATAH5  : aliased SDATAH_Register_1;
      --  Segments Data Low for COM6 Line
      SDATAL6  : aliased HAL.UInt32;
      --  Segments Data High for COM6 Line
      SDATAH6  : aliased SDATAH_Register_2;
      --  Segments Data Low for COM7 Line
      SDATAL7  : aliased HAL.UInt32;
      --  Segments Data High for COM7 Line
      SDATAH7  : aliased SDATAH_Register_2;
      --  Indirect Segments Data Access
      ISDATA   : aliased SLCD_ISDATA_Register;
      --  Blink Configuration
      BCFG     : aliased SLCD_BCFG_Register;
      --  Circular Shift Register Configuration
      CSRCFG   : aliased SLCD_CSRCFG_Register;
      --  Character Mapping Configuration
      CMCFG    : aliased SLCD_CMCFG_Register;
      --  Automated Character Mapping Configuration
      ACMCFG   : aliased SLCD_ACMCFG_Register;
      --  Automated Bit Mapping Configuration
      ABMCFG   : aliased SLCD_ABMCFG_Register;
      --  Character Mapping Segments Data
      CMDATA   : aliased SLCD_CMDATA_Register;
      --  Character Mapping Segments Data Mask
      CMDMASK  : aliased SLCD_CMDMASK_Register;
      --  Character Mapping SEG/COM Index
      CMINDEX  : aliased SLCD_CMINDEX_Register;
   end record
     with Volatile;

   for SLCD_Peripheral use record
      CTRLA    at 16#0# range 0 .. 31;
      CTRLB    at 16#4# range 0 .. 15;
      CTRLC    at 16#6# range 0 .. 15;
      CTRLD    at 16#8# range 0 .. 7;
      EVCTRL   at 16#C# range 0 .. 7;
      INTENCLR at 16#D# range 0 .. 7;
      INTENSET at 16#E# range 0 .. 7;
      INTFLAG  at 16#F# range 0 .. 7;
      STATUS   at 16#10# range 0 .. 7;
      SYNCBUSY at 16#14# range 0 .. 31;
      FC0      at 16#18# range 0 .. 7;
      FC1      at 16#19# range 0 .. 7;
      FC2      at 16#1A# range 0 .. 7;
      LPENL    at 16#1C# range 0 .. 31;
      LPENH    at 16#20# range 0 .. 31;
      SDATAL0  at 16#24# range 0 .. 31;
      SDATAH0  at 16#28# range 0 .. 31;
      SDATAL1  at 16#2C# range 0 .. 31;
      SDATAH1  at 16#30# range 0 .. 31;
      SDATAL2  at 16#34# range 0 .. 31;
      SDATAH2  at 16#38# range 0 .. 31;
      SDATAL3  at 16#3C# range 0 .. 31;
      SDATAH3  at 16#40# range 0 .. 31;
      SDATAL4  at 16#44# range 0 .. 31;
      SDATAH4  at 16#48# range 0 .. 31;
      SDATAL5  at 16#4C# range 0 .. 31;
      SDATAH5  at 16#50# range 0 .. 31;
      SDATAL6  at 16#54# range 0 .. 31;
      SDATAH6  at 16#58# range 0 .. 31;
      SDATAL7  at 16#5C# range 0 .. 31;
      SDATAH7  at 16#60# range 0 .. 31;
      ISDATA   at 16#64# range 0 .. 31;
      BCFG     at 16#68# range 0 .. 31;
      CSRCFG   at 16#6C# range 0 .. 31;
      CMCFG    at 16#70# range 0 .. 7;
      ACMCFG   at 16#74# range 0 .. 31;
      ABMCFG   at 16#78# range 0 .. 7;
      CMDATA   at 16#7C# range 0 .. 31;
      CMDMASK  at 16#80# range 0 .. 31;
      CMINDEX  at 16#84# range 0 .. 15;
   end record;

   --  Segment Liquid Crystal Display Controller
   SLCD_Periph : aliased SLCD_Peripheral
     with Import, Address => System'To_Address (16#42003C00#);

end SAM_SVD.SLCD;
