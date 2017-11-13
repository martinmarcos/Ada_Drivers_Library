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

--  This spec has been automatically generated from ATSAM4LC4A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.CATB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CATB_CR_ESAMPLES_Field is HAL.UInt7;
   subtype CATB_CR_CHARGET_Field is HAL.UInt4;

   --  Control Register
   type CATB_CR_Register is record
      --  Module Enable
      EN             : Boolean := False;
      --  Start Operation
      RUN            : Boolean := False;
      --  Initialize Idle Value
      IIDLE          : Boolean := False;
      --  Event Triggered Operation
      ETRIG          : Boolean := False;
      --  Internal Resistors
      INTRES         : Boolean := False;
      --  Clock Select
      CKSEL          : Boolean := False;
      --  Differential Mode
      DIFF           : Boolean := False;
      --  DMA Enable
      DMAEN          : Boolean := False;
      --  Number of Event Samples
      ESAMPLES       : CATB_CR_ESAMPLES_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Charge Time
      CHARGET        : CATB_CR_CHARGET_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Software Reset
      SWRST          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_CR_Register use record
      EN             at 0 range 0 .. 0;
      RUN            at 0 range 1 .. 1;
      IIDLE          at 0 range 2 .. 2;
      ETRIG          at 0 range 3 .. 3;
      INTRES         at 0 range 4 .. 4;
      CKSEL          at 0 range 5 .. 5;
      DIFF           at 0 range 6 .. 6;
      DMAEN          at 0 range 7 .. 7;
      ESAMPLES       at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CHARGET        at 0 range 16 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SWRST          at 0 range 31 .. 31;
   end record;

   subtype CATB_CNTCR_TOP_Field is HAL.UInt24;
   subtype CATB_CNTCR_SPREAD_Field is HAL.UInt4;
   subtype CATB_CNTCR_REPEAT_Field is HAL.UInt3;

   --  Counter Control Register
   type CATB_CNTCR_Register is record
      --  Counter Top Value
      TOP            : CATB_CNTCR_TOP_Field := 16#0#;
      --  Spread Spectrum
      SPREAD         : CATB_CNTCR_SPREAD_Field := 16#0#;
      --  Repeat Measurements
      REPEAT         : CATB_CNTCR_REPEAT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_CNTCR_Register use record
      TOP            at 0 range 0 .. 23;
      SPREAD         at 0 range 24 .. 27;
      REPEAT         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CATB_IDLE_FIDLE_Field is HAL.UInt12;
   subtype CATB_IDLE_RIDLE_Field is HAL.UInt16;

   --  Sensor Idle Level
   type CATB_IDLE_Register is record
      --  Fractional Sensor Idle
      FIDLE          : CATB_IDLE_FIDLE_Field := 16#0#;
      --  Integer Sensor Idle
      RIDLE          : CATB_IDLE_RIDLE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IDLE_Register use record
      FIDLE          at 0 range 0 .. 11;
      RIDLE          at 0 range 12 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CATB_LEVEL_FLEVEL_Field is HAL.UInt12;
   subtype CATB_LEVEL_RLEVEL_Field is HAL.UInt8;

   --  Sensor Relative Level
   type CATB_LEVEL_Register is record
      --  Read-only. Fractional Sensor Level
      FLEVEL         : CATB_LEVEL_FLEVEL_Field;
      --  Read-only. Integer Sensor Level
      RLEVEL         : CATB_LEVEL_RLEVEL_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_LEVEL_Register use record
      FLEVEL         at 0 range 0 .. 11;
      RLEVEL         at 0 range 12 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CATB_RAW_RAWA_Field is HAL.UInt8;
   subtype CATB_RAW_RAWB_Field is HAL.UInt8;

   --  Sensor Raw Value
   type CATB_RAW_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16;
      --  Read-only. Current Sensor Raw Value
      RAWA          : CATB_RAW_RAWA_Field;
      --  Read-only. Last Sensor Raw Value
      RAWB          : CATB_RAW_RAWB_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_RAW_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      RAWA          at 0 range 16 .. 23;
      RAWB          at 0 range 24 .. 31;
   end record;

   subtype CATB_TIMING_TLEVEL_Field is HAL.UInt12;
   subtype CATB_TIMING_TIDLE_Field is HAL.UInt12;

   --  Filter Timing Register
   type CATB_TIMING_Register is record
      --  Relative Level Smoothing
      TLEVEL         : CATB_TIMING_TLEVEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Idle Smoothening
      TIDLE          : CATB_TIMING_TIDLE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_TIMING_Register use record
      TLEVEL         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TIDLE          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CATB_THRESH_FTHRESH_Field is HAL.UInt12;
   subtype CATB_THRESH_RTHRESH_Field is HAL.UInt8;
   subtype CATB_THRESH_LENGTH_Field is HAL.UInt5;

   --  Threshold Register
   type CATB_THRESH_Register is record
      --  Fractional part of Threshold Value
      FTHRESH        : CATB_THRESH_FTHRESH_Field := 16#0#;
      --  Rational part of Threshold Value
      RTHRESH        : CATB_THRESH_RTHRESH_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Threshold Direction
      DIR            : Boolean := False;
      --  Threshold Length
      LENGTH         : CATB_THRESH_LENGTH_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_THRESH_Register use record
      FTHRESH        at 0 range 0 .. 11;
      RTHRESH        at 0 range 12 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      DIR            at 0 range 23 .. 23;
      LENGTH         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CATB_PINSEL_PINSEL_Field is HAL.UInt8;

   --  Pin Selection Register
   type CATB_PINSEL_Register is record
      --  Pin Select
      PINSEL        : CATB_PINSEL_PINSEL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_PINSEL_Register use record
      PINSEL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Status Register
   type CATB_ISR_Register is record
      --  Read-only. Sample Ready Interrupt Status
      SAMPLE        : Boolean;
      --  Read-only. In-touch Interrupt Status
      INTCH         : Boolean;
      --  Read-only. Out-of-Touch Interrupt Status
      OUTTCH        : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_ISR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Enable Register
   type CATB_IER_Register is record
      --  Write-only. Sample Ready Interrupt Enable
      SAMPLE        : Boolean := False;
      --  Write-only. In-touch Interrupt Enable
      INTCH         : Boolean := False;
      --  Write-only. Out-of-Touch Interrupt Enable
      OUTTCH        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IER_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Disable Register
   type CATB_IDR_Register is record
      --  Write-only. Sample Ready Interrupt Disable
      SAMPLE        : Boolean := False;
      --  Write-only. In-touch Interrupt Disable
      INTCH         : Boolean := False;
      --  Write-only. Out-of-Touch Interrupt Disable
      OUTTCH        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IDR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Mask Register
   type CATB_IMR_Register is record
      --  Read-only. Sample Ready Interrupt Mask
      SAMPLE        : Boolean;
      --  Read-only. In-touch Interrupt Mask
      INTCH         : Boolean;
      --  Read-only. Out-of-Touch Interrupt Mask
      OUTTCH        : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_IMR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Status Clear Register
   type CATB_SCR_Register is record
      --  Write-only. Sample Ready
      SAMPLE        : Boolean := False;
      --  Write-only. In-touch
      INTCH         : Boolean := False;
      --  Write-only. Out-of-Touch
      OUTTCH        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_SCR_Register use record
      SAMPLE        at 0 range 0 .. 0;
      INTCH         at 0 range 1 .. 1;
      OUTTCH        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CATB_PARAMETER_NPINS_Field is HAL.UInt8;
   subtype CATB_PARAMETER_NSTATUS_Field is HAL.UInt8;
   subtype CATB_PARAMETER_FRACTIONAL_Field is HAL.UInt4;

   --  Parameter Register
   type CATB_PARAMETER_Register is record
      --  Read-only. Number of Pins
      NPINS          : CATB_PARAMETER_NPINS_Field;
      --  Read-only. Number of Status bits
      NSTATUS        : CATB_PARAMETER_NSTATUS_Field;
      --  Read-only. Number of Fractional bits
      FRACTIONAL     : CATB_PARAMETER_FRACTIONAL_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_PARAMETER_Register use record
      NPINS          at 0 range 0 .. 7;
      NSTATUS        at 0 range 8 .. 15;
      FRACTIONAL     at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CATB_VERSION_VERSION_Field is HAL.UInt12;
   subtype CATB_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type CATB_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : CATB_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : CATB_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CATB_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Capacitive Touch Module B
   type CATB_Peripheral is record
      --  Control Register
      CR        : aliased CATB_CR_Register;
      --  Counter Control Register
      CNTCR     : aliased CATB_CNTCR_Register;
      --  Sensor Idle Level
      IDLE      : aliased CATB_IDLE_Register;
      --  Sensor Relative Level
      LEVEL     : aliased CATB_LEVEL_Register;
      --  Sensor Raw Value
      RAW       : aliased CATB_RAW_Register;
      --  Filter Timing Register
      TIMING    : aliased CATB_TIMING_Register;
      --  Threshold Register
      THRESH    : aliased CATB_THRESH_Register;
      --  Pin Selection Register
      PINSEL    : aliased CATB_PINSEL_Register;
      --  Direct Memory Access Register
      DMA       : aliased HAL.UInt32;
      --  Interrupt Status Register
      ISR       : aliased CATB_ISR_Register;
      --  Interrupt Enable Register
      IER       : aliased CATB_IER_Register;
      --  Interrupt Disable Register
      IDR       : aliased CATB_IDR_Register;
      --  Interrupt Mask Register
      IMR       : aliased CATB_IMR_Register;
      --  Status Clear Register
      SCR       : aliased CATB_SCR_Register;
      --  In-Touch Status Register
      INTCH     : aliased HAL.UInt32;
      --  In-Touch Status Clear Register
      INTCHCLR  : aliased HAL.UInt32;
      --  Out-of-Touch Status Register
      OUTTCH    : aliased HAL.UInt32;
      --  Out-of-Touch Status Clear Register
      OUTTCHCLR : aliased HAL.UInt32;
      --  Parameter Register
      PARAMETER : aliased CATB_PARAMETER_Register;
      --  Version Register
      VERSION   : aliased CATB_VERSION_Register;
   end record
     with Volatile;

   for CATB_Peripheral use record
      CR        at 16#0# range 0 .. 31;
      CNTCR     at 16#4# range 0 .. 31;
      IDLE      at 16#8# range 0 .. 31;
      LEVEL     at 16#C# range 0 .. 31;
      RAW       at 16#10# range 0 .. 31;
      TIMING    at 16#14# range 0 .. 31;
      THRESH    at 16#18# range 0 .. 31;
      PINSEL    at 16#1C# range 0 .. 31;
      DMA       at 16#20# range 0 .. 31;
      ISR       at 16#24# range 0 .. 31;
      IER       at 16#28# range 0 .. 31;
      IDR       at 16#2C# range 0 .. 31;
      IMR       at 16#30# range 0 .. 31;
      SCR       at 16#34# range 0 .. 31;
      INTCH     at 16#40# range 0 .. 31;
      INTCHCLR  at 16#50# range 0 .. 31;
      OUTTCH    at 16#60# range 0 .. 31;
      OUTTCHCLR at 16#70# range 0 .. 31;
      PARAMETER at 16#F8# range 0 .. 31;
      VERSION   at 16#FC# range 0 .. 31;
   end record;

   --  Capacitive Touch Module B
   CATB_Periph : aliased CATB_Peripheral
     with Import, Address => System'To_Address (16#40070000#);

end SAM_SVD.CATB;
