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

--  This spec has been automatically generated from ATSAM4LS8A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.BPM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Interrupt Enable Register
   type BPM_IER_Register is record
      --  Write-only. Power Scaling OK Interrupt Enable
      PSOK          : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Write-only. Access Error Interrupt Enable
      AE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IER_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Disable Register
   type BPM_IDR_Register is record
      --  Write-only. Power Scaling OK Interrupt Disable
      PSOK          : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Write-only. Access Error Interrupt Disable
      AE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IDR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Mask Register
   type BPM_IMR_Register is record
      --  Read-only. Power Scaling OK Interrupt Mask
      PSOK          : Boolean;
      --  unspecified
      Reserved_1_30 : HAL.UInt30;
      --  Read-only. Access Error Interrupt Mask
      AE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IMR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Status Register
   type BPM_ISR_Register is record
      --  Read-only. Power Scaling OK Interrupt Status
      PSOK          : Boolean;
      --  unspecified
      Reserved_1_30 : HAL.UInt30;
      --  Read-only. Access Error Interrupt Status
      AE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_ISR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Clear Register
   type BPM_ICR_Register is record
      --  Write-only. Power Scaling OK Interrupt Status Clear
      PSOK          : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Write-only. Access Error Interrupt Status Clear
      AE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_ICR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Status Register
   type BPM_SR_Register is record
      --  Read-only. Power Scaling OK Status
      PSOK          : Boolean;
      --  unspecified
      Reserved_1_30 : HAL.UInt30;
      --  Read-only. Access Error
      AE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_SR_Register use record
      PSOK          at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   subtype BPM_UNLOCK_ADDR_Field is HAL.UInt10;
   subtype BPM_UNLOCK_KEY_Field is HAL.UInt8;

   --  Unlock Register
   type BPM_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : BPM_UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : BPM_UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   subtype BPM_PMCON_PS_Field is HAL.UInt2;
   subtype BPM_PMCON_SLEEP_Field is HAL.UInt2;

   --  Power Mode Control Register
   type BPM_PMCON_Register is record
      --  Power Scaling Configuration Value
      PS             : BPM_PMCON_PS_Field := 16#0#;
      --  Power Scaling Change Request
      PSCREQ         : Boolean := False;
      --  Power Scaling Change Mode
      PSCM           : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  BACKUP Mode
      BKUP           : Boolean := False;
      --  RETENTION Mode
      RET            : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  SLEEP mode Configuration
      SLEEP          : BPM_PMCON_SLEEP_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  32Khz-1Khz Clock Source Selection
      CK32S          : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Fast Wakeup
      FASTWKUP       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_PMCON_Register use record
      PS             at 0 range 0 .. 1;
      PSCREQ         at 0 range 2 .. 2;
      PSCM           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      BKUP           at 0 range 8 .. 8;
      RET            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SLEEP          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CK32S          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      FASTWKUP       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype BPM_BKUPPMUX_BKUPPMUX_Field is HAL.UInt9;

   --  Backup Pin Muxing Register
   type BPM_BKUPPMUX_Register is record
      --  Backup Pin Muxing
      BKUPPMUX      : BPM_BKUPPMUX_BKUPPMUX_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_BKUPPMUX_Register use record
      BKUPPMUX      at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Input Output Retention Register
   type BPM_IORET_Register is record
      --  Retention on I/O lines after waking up from the BACKUP mode
      RET           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_IORET_Register use record
      RET           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Bypass Register
   type BPM_BPR_Register is record
      --  Run Mode Power Scaling Preset Bypass
      RUNPSPB        : Boolean := False;
      --  Power Save Mode Power Scaling Preset Bypass
      PSMPSPB        : Boolean := False;
      --  Sequencial Startup from ULP (Active Low)
      SEQSTN         : Boolean := False;
      --  Power Scaling Bias Timing Disable
      PSBTD          : Boolean := False;
      --  Power Scaling Halt Flash Until VREGOK Disable
      PSHFD          : Boolean := False;
      --  Delaying Reset Disable
      DLYRSTD        : Boolean := False;
      --  Bias Switch Enable
      BIASSEN        : Boolean := False;
      --  Latdel Switch Enable
      LATSEN         : Boolean := False;
      --  BOD18 in continuous mode not disabled in WAIT/RET/BACKUP modes
      BOD18CONT      : Boolean := False;
      --  Pico Uart Observability
      POBS           : Boolean := False;
      --  Force Flash Fast Wakeup
      FFFW           : Boolean := False;
      --  Flash Bias Ready Enable
      FBRDYEN        : Boolean := False;
      --  Flash Vref Switch Enable
      FVREFSEN       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_BPR_Register use record
      RUNPSPB        at 0 range 0 .. 0;
      PSMPSPB        at 0 range 1 .. 1;
      SEQSTN         at 0 range 2 .. 2;
      PSBTD          at 0 range 3 .. 3;
      PSHFD          at 0 range 4 .. 4;
      DLYRSTD        at 0 range 5 .. 5;
      BIASSEN        at 0 range 6 .. 6;
      LATSEN         at 0 range 7 .. 7;
      BOD18CONT      at 0 range 8 .. 8;
      POBS           at 0 range 9 .. 9;
      FFFW           at 0 range 10 .. 10;
      FBRDYEN        at 0 range 11 .. 11;
      FVREFSEN       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype BPM_FWRUNPS_REGLEVEL_Field is HAL.UInt4;

   --  Regulator Type
   type FWRUNPS_REGTYPESelect is
     (
      Normal,
      Lp,
      Xulp)
     with Size => 2;
   for FWRUNPS_REGTYPESelect use
     (Normal => 0,
      Lp => 1,
      Xulp => 2);

   --  Reference Type
   type FWRUNPS_REFTYPESelect is
     (
      Both,
      Bg,
      Lpbg,
      Internal)
     with Size => 2;
   for FWRUNPS_REFTYPESelect use
     (Both => 0,
      Bg => 1,
      Lpbg => 2,
      Internal => 3);

   subtype BPM_FWRUNPS_FLASHLATDEL_Field is HAL.UInt5;
   subtype BPM_FWRUNPS_FLASHBIAS_Field is HAL.UInt4;
   subtype BPM_FWRUNPS_RC115_Field is HAL.UInt7;
   subtype BPM_FWRUNPS_RCFAST_Field is HAL.UInt7;

   --  Factory Word Run PS Register
   type BPM_FWRUNPS_Register is record
      --  Read-only. Regulator Voltage Level
      REGLEVEL    : BPM_FWRUNPS_REGLEVEL_Field;
      --  Read-only. Regulator Type
      REGTYPE     : FWRUNPS_REGTYPESelect;
      --  Read-only. Reference Type
      REFTYPE     : FWRUNPS_REFTYPESelect;
      --  Read-only. Flash Latch Delay Value
      FLASHLATDEL : BPM_FWRUNPS_FLASHLATDEL_Field;
      --  Read-only. Flash Bias Value
      FLASHBIAS   : BPM_FWRUNPS_FLASHBIAS_Field;
      --  Read-only. Flash Pico Power Mode
      FPPW        : Boolean;
      --  Read-only. RC 115KHZ Calibration Value
      RC115       : BPM_FWRUNPS_RC115_Field;
      --  Read-only. RCFAST Calibration Value
      RCFAST      : BPM_FWRUNPS_RCFAST_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_FWRUNPS_Register use record
      REGLEVEL    at 0 range 0 .. 3;
      REGTYPE     at 0 range 4 .. 5;
      REFTYPE     at 0 range 6 .. 7;
      FLASHLATDEL at 0 range 8 .. 12;
      FLASHBIAS   at 0 range 13 .. 16;
      FPPW        at 0 range 17 .. 17;
      RC115       at 0 range 18 .. 24;
      RCFAST      at 0 range 25 .. 31;
   end record;

   subtype BPM_FWPSAVEPS_WREGLEVEL_Field is HAL.UInt4;
   subtype BPM_FWPSAVEPS_WBIAS_Field is HAL.UInt4;
   subtype BPM_FWPSAVEPS_WLATDEL_Field is HAL.UInt5;
   subtype BPM_FWPSAVEPS_RREGLEVEL_Field is HAL.UInt4;
   subtype BPM_FWPSAVEPS_RBIAS_Field is HAL.UInt4;
   subtype BPM_FWPSAVEPS_RLATDEL_Field is HAL.UInt5;
   subtype BPM_FWPSAVEPS_BREGLEVEL_Field is HAL.UInt4;

   --  Factory Word Power Save PS Register
   type BPM_FWPSAVEPS_Register is record
      --  Read-only. Wait mode Regulator Level
      WREGLEVEL : BPM_FWPSAVEPS_WREGLEVEL_Field;
      --  Read-only. Bias in wait mode
      WBIAS     : BPM_FWPSAVEPS_WBIAS_Field;
      --  Read-only. Flash Latdel in wait mode
      WLATDEL   : BPM_FWPSAVEPS_WLATDEL_Field;
      --  Read-only. Retention mode Regulator Level
      RREGLEVEL : BPM_FWPSAVEPS_RREGLEVEL_Field;
      --  Read-only. Bias in Retention mode
      RBIAS     : BPM_FWPSAVEPS_RBIAS_Field;
      --  Read-only. Flash Latdel in Retention mode
      RLATDEL   : BPM_FWPSAVEPS_RLATDEL_Field;
      --  Read-only. Backup mode Regulator Level
      BREGLEVEL : BPM_FWPSAVEPS_BREGLEVEL_Field;
      --  Read-only. POR 18 Disable
      POR18DIS  : Boolean;
      --  Read-only. Flash Wait State Automatic Switching
      FWSAS     : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_FWPSAVEPS_Register use record
      WREGLEVEL at 0 range 0 .. 3;
      WBIAS     at 0 range 4 .. 7;
      WLATDEL   at 0 range 8 .. 12;
      RREGLEVEL at 0 range 13 .. 16;
      RBIAS     at 0 range 17 .. 20;
      RLATDEL   at 0 range 21 .. 25;
      BREGLEVEL at 0 range 26 .. 29;
      POR18DIS  at 0 range 30 .. 30;
      FWSAS     at 0 range 31 .. 31;
   end record;

   subtype BPM_VERSION_VERSION_Field is HAL.UInt12;
   subtype BPM_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type BPM_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : BPM_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : BPM_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BPM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Backup Power Manager
   type BPM_Peripheral is record
      --  Interrupt Enable Register
      IER        : aliased BPM_IER_Register;
      --  Interrupt Disable Register
      IDR        : aliased BPM_IDR_Register;
      --  Interrupt Mask Register
      IMR        : aliased BPM_IMR_Register;
      --  Interrupt Status Register
      ISR        : aliased BPM_ISR_Register;
      --  Interrupt Clear Register
      ICR        : aliased BPM_ICR_Register;
      --  Status Register
      SR         : aliased BPM_SR_Register;
      --  Unlock Register
      UNLOCK     : aliased BPM_UNLOCK_Register;
      --  Power Mode Control Register
      PMCON      : aliased BPM_PMCON_Register;
      --  Backup Wake up Cause Register
      BKUPWCAUSE : aliased HAL.UInt32;
      --  Backup Wake up Enable Register
      BKUPWEN    : aliased HAL.UInt32;
      --  Backup Pin Muxing Register
      BKUPPMUX   : aliased BPM_BKUPPMUX_Register;
      --  Input Output Retention Register
      IORET      : aliased BPM_IORET_Register;
      --  Bypass Register
      BPR        : aliased BPM_BPR_Register;
      --  Factory Word Run PS Register
      FWRUNPS    : aliased BPM_FWRUNPS_Register;
      --  Factory Word Power Save PS Register
      FWPSAVEPS  : aliased BPM_FWPSAVEPS_Register;
      --  Version Register
      VERSION    : aliased BPM_VERSION_Register;
   end record
     with Volatile;

   for BPM_Peripheral use record
      IER        at 16#0# range 0 .. 31;
      IDR        at 16#4# range 0 .. 31;
      IMR        at 16#8# range 0 .. 31;
      ISR        at 16#C# range 0 .. 31;
      ICR        at 16#10# range 0 .. 31;
      SR         at 16#14# range 0 .. 31;
      UNLOCK     at 16#18# range 0 .. 31;
      PMCON      at 16#1C# range 0 .. 31;
      BKUPWCAUSE at 16#28# range 0 .. 31;
      BKUPWEN    at 16#2C# range 0 .. 31;
      BKUPPMUX   at 16#30# range 0 .. 31;
      IORET      at 16#34# range 0 .. 31;
      BPR        at 16#40# range 0 .. 31;
      FWRUNPS    at 16#44# range 0 .. 31;
      FWPSAVEPS  at 16#48# range 0 .. 31;
      VERSION    at 16#FC# range 0 .. 31;
   end record;

   --  Backup Power Manager
   BPM_Periph : aliased BPM_Peripheral
     with Import, Address => System'To_Address (16#400F0000#);

end SAM_SVD.BPM;
