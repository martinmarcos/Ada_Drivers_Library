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

--  This spec has been automatically generated from ATSAM4LC2B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ABDACB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable
   type CR_ENSelect is
     (
      --  Audio DAC is disabled
      CR_ENSelect_0,
      --  Audio DAC is enabled
      CR_ENSelect_1)
     with Size => 1;
   for CR_ENSelect use
     (CR_ENSelect_0 => 0,
      CR_ENSelect_1 => 1);

   --  Swap Channels
   type CR_SWAPSelect is
     (
      --  The CHANNEL0 and CHANNEL1 samples will not be swapped when writing
      --  the Audio DAC Sample Data Register (SDR)
      CR_SWAPSelect_0,
      --  The CHANNEL0 and CHANNEL1 samples will be swapped when writing the
      --  Audio DAC Sample Data Register (SDR)
      CR_SWAPSelect_1)
     with Size => 1;
   for CR_SWAPSelect use
     (CR_SWAPSelect_0 => 0,
      CR_SWAPSelect_1 => 1);

   subtype ABDACB_CR_DATAFORMAT_Field is HAL.UInt3;
   subtype ABDACB_CR_FS_Field is HAL.UInt4;

   --  Control Register
   type ABDACB_CR_Register is record
      --  Enable
      EN             : CR_ENSelect := SAM_SVD.ABDACB.CR_ENSelect_0;
      --  Swap Channels
      SWAP           : CR_SWAPSelect := SAM_SVD.ABDACB.CR_SWAPSelect_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Alternative up-sampling ratio
      ALTUPR         : Boolean := False;
      --  Common mode offset control
      CMOC           : Boolean := False;
      --  Mono mode
      MONO           : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Software reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Data word format
      DATAFORMAT     : ABDACB_CR_DATAFORMAT_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Sampling frequency
      FS             : ABDACB_CR_FS_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_CR_Register use record
      EN             at 0 range 0 .. 0;
      SWAP           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ALTUPR         at 0 range 3 .. 3;
      CMOC           at 0 range 4 .. 4;
      MONO           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SWRST          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      DATAFORMAT     at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      FS             at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype VCR_VOLUME_Field is HAL.UInt15;

   --  Volume Control Register 0
   type VCR_Register is record
      --  Volume Control
      VOLUME         : VCR_VOLUME_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Mute
      MUTE           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VCR_Register use record
      VOLUME         at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      MUTE           at 0 range 31 .. 31;
   end record;

   --  Transmit Ready Interrupt Enable
   type IER_TXRDYSelect is
     (
      --  No effect
      IER_TXRDYSelect_0,
      --  Enables the Audio DAC TX Ready interrupt
      IER_TXRDYSelect_1)
     with Size => 1;
   for IER_TXRDYSelect use
     (IER_TXRDYSelect_0 => 0,
      IER_TXRDYSelect_1 => 1);

   --  Transmit Underrun Interrupt Enable
   type IER_TXURSelect is
     (
      --  No effect
      IER_TXURSelect_0,
      --  Enables the Audio DAC Underrun interrupt
      IER_TXURSelect_1)
     with Size => 1;
   for IER_TXURSelect use
     (IER_TXURSelect_0 => 0,
      IER_TXURSelect_1 => 1);

   --  Interrupt Enable Register
   type ABDACB_IER_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY         : IER_TXRDYSelect := SAM_SVD.ABDACB.IER_TXRDYSelect_0;
      --  Write-only. Transmit Underrun Interrupt Enable
      TXUR          : IER_TXURSelect := SAM_SVD.ABDACB.IER_TXURSelect_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Transmit Ready Interrupt Disable
   type IDR_TXRDYSelect is
     (
      --  No effect
      IDR_TXRDYSelect_0,
      --  Disable the Audio DAC TX Ready interrupt
      IDR_TXRDYSelect_1)
     with Size => 1;
   for IDR_TXRDYSelect use
     (IDR_TXRDYSelect_0 => 0,
      IDR_TXRDYSelect_1 => 1);

   --  Transmit Underrun Interrupt Disable
   type IDR_TXURSelect is
     (
      --  No effect
      IDR_TXURSelect_0,
      --  Disable the Audio DAC Underrun interrupt
      IDR_TXURSelect_1)
     with Size => 1;
   for IDR_TXURSelect use
     (IDR_TXURSelect_0 => 0,
      IDR_TXURSelect_1 => 1);

   --  Interupt Disable Register
   type ABDACB_IDR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY         : IDR_TXRDYSelect := SAM_SVD.ABDACB.IDR_TXRDYSelect_0;
      --  Write-only. Transmit Underrun Interrupt Disable
      TXUR          : IDR_TXURSelect := SAM_SVD.ABDACB.IDR_TXURSelect_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_IDR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Transmit Ready Interrupt Mask
   type IMR_TXRDYSelect is
     (
      --  The Audio DAC TX Ready interrupt is disabled
      IMR_TXRDYSelect_0,
      --  The Audio DAC TX Ready interrupt is enabled
      IMR_TXRDYSelect_1)
     with Size => 1;
   for IMR_TXRDYSelect use
     (IMR_TXRDYSelect_0 => 0,
      IMR_TXRDYSelect_1 => 1);

   --  Transmit Underrun Interrupt Mask
   type IMR_TXURSelect is
     (
      --  The Audio DAC Underrun interrupt is disabled
      IMR_TXURSelect_0,
      --  The Audio DAC Underrun interrupt is enabled
      IMR_TXURSelect_1)
     with Size => 1;
   for IMR_TXURSelect use
     (IMR_TXURSelect_0 => 0,
      IMR_TXURSelect_1 => 1);

   --  Interrupt Mask Register
   type ABDACB_IMR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY         : IMR_TXRDYSelect;
      --  Read-only. Transmit Underrun Interrupt Mask
      TXUR          : IMR_TXURSelect;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_IMR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Transmit Ready
   type SR_TXRDYSelect is
     (
      --  No Audio DAC TX Ready has occured since the last time ISR was read or
      --  since reset
      SR_TXRDYSelect_0,
      --  At least one Audio DAC TX Ready has occured since the last time ISR
      --  was read or since reset
      SR_TXRDYSelect_1)
     with Size => 1;
   for SR_TXRDYSelect use
     (SR_TXRDYSelect_0 => 0,
      SR_TXRDYSelect_1 => 1);

   --  Transmit Underrun
   type SR_TXURSelect is
     (
      --  No Audio DAC Underrun has occured since the last time ISR was read or
      --  since reset
      SR_TXURSelect_0,
      --  At least one Audio DAC Underrun has occured since the last time ISR
      --  was read or since reset
      SR_TXURSelect_1)
     with Size => 1;
   for SR_TXURSelect use
     (SR_TXURSelect_0 => 0,
      SR_TXURSelect_1 => 1);

   --  Status Register
   type ABDACB_SR_Register is record
      --  Read-only. ABDACB Busy
      BUSY          : Boolean;
      --  Read-only. Transmit Ready
      TXRDY         : SR_TXRDYSelect;
      --  Read-only. Transmit Underrun
      TXUR          : SR_TXURSelect;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_SR_Register use record
      BUSY          at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Transmit Ready Interrupt Clear
   type SCR_TXRDYSelect is
     (
      --  No effect
      SCR_TXRDYSelect_0,
      --  Clear the Audio DAC TX Ready interrupt
      SCR_TXRDYSelect_1)
     with Size => 1;
   for SCR_TXRDYSelect use
     (SCR_TXRDYSelect_0 => 0,
      SCR_TXRDYSelect_1 => 1);

   --  Transmit Underrun Interrupt Clear
   type SCR_TXURSelect is
     (
      --  No effect
      SCR_TXURSelect_0,
      --  Clear the Audio DAC Underrun interrupt
      SCR_TXURSelect_1)
     with Size => 1;
   for SCR_TXURSelect use
     (SCR_TXURSelect_0 => 0,
      SCR_TXURSelect_1 => 1);

   --  Status Clear Register
   type ABDACB_SCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. Transmit Ready Interrupt Clear
      TXRDY         : SCR_TXRDYSelect := SAM_SVD.ABDACB.SCR_TXRDYSelect_0;
      --  Write-only. Transmit Underrun Interrupt Clear
      TXUR          : SCR_TXURSelect := SAM_SVD.ABDACB.SCR_TXURSelect_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_SCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TXRDY         at 0 range 1 .. 1;
      TXUR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ABDACB_VERSION_VERSION_Field is HAL.UInt12;
   subtype ABDACB_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type ABDACB_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : ABDACB_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : ABDACB_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ABDACB_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Audio Bitstream DAC
   type ABDACB_Peripheral is record
      --  Control Register
      CR        : aliased ABDACB_CR_Register;
      --  Sample Data Register 0
      SDR0      : aliased HAL.UInt32;
      --  Sample Data Register 1
      SDR1      : aliased HAL.UInt32;
      --  Volume Control Register 0
      VCR0      : aliased VCR_Register;
      --  Volume Control Register 1
      VCR1      : aliased VCR_Register;
      --  Interrupt Enable Register
      IER       : aliased ABDACB_IER_Register;
      --  Interupt Disable Register
      IDR       : aliased ABDACB_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased ABDACB_IMR_Register;
      --  Status Register
      SR        : aliased ABDACB_SR_Register;
      --  Status Clear Register
      SCR       : aliased ABDACB_SCR_Register;
      --  Parameter Register
      PARAMETER : aliased HAL.UInt32;
      --  Version Register
      VERSION   : aliased ABDACB_VERSION_Register;
   end record
     with Volatile;

   for ABDACB_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      SDR0      at 16#4# range 0 .. 31;
      SDR1      at 16#8# range 0 .. 31;
      VCR0      at 16#C# range 0 .. 31;
      VCR1      at 16#10# range 0 .. 31;
      IER       at 16#14# range 0 .. 31;
      IDR       at 16#18# range 0 .. 31;
      IMR       at 16#1C# range 0 .. 31;
      SR        at 16#20# range 0 .. 31;
      SCR       at 16#24# range 0 .. 31;
      PARAMETER at 16#28# range 0 .. 31;
      VERSION   at 16#2C# range 0 .. 31;
   end record;

   --  Audio Bitstream DAC
   ABDACB_Periph : aliased ABDACB_Peripheral
     with Import, Address => System'To_Address (16#40064000#);

end SAM_SVD.ABDACB;
