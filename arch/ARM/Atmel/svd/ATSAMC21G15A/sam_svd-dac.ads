--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2017 Atmel Corporation,
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

--  This spec has been automatically generated from ATSAMC21G15A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.DAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type DAC_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run in Standby
      RUNSTDBY     : Boolean := False;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Reference Selection
   type CTRLB_REFSELSelect is
     (
      --  Internal 1.0V reference
      Int1V,
      --  AVCC
      Avcc,
      --  External reference
      Vrefp)
     with Size => 2;
   for CTRLB_REFSELSelect use
     (Int1V => 0,
      Avcc => 1,
      Vrefp => 2);

   --  Control B
   type DAC_CTRLB_Register is record
      --  External Output Enable
      EOEN         : Boolean := False;
      --  Internal Output Enable
      IOEN         : Boolean := False;
      --  Left Adjusted Data
      LEFTADJ      : Boolean := False;
      --  Voltage Pump Disable
      VPD          : Boolean := False;
      --  unspecified
      Reserved_4_4 : HAL.Bit := 16#0#;
      --  Dither Enable
      DITHER       : Boolean := False;
      --  Reference Selection
      REFSEL       : CTRLB_REFSELSelect := SAM_SVD.DAC.Int1V;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_CTRLB_Register use record
      EOEN         at 0 range 0 .. 0;
      IOEN         at 0 range 1 .. 1;
      LEFTADJ      at 0 range 2 .. 2;
      VPD          at 0 range 3 .. 3;
      Reserved_4_4 at 0 range 4 .. 4;
      DITHER       at 0 range 5 .. 5;
      REFSEL       at 0 range 6 .. 7;
   end record;

   --  Event Control
   type DAC_EVCTRL_Register is record
      --  Start Conversion Event Input
      STARTEI      : Boolean := False;
      --  Data Buffer Empty Event Output
      EMPTYEO      : Boolean := False;
      --  Invert Event Input
      INVEI        : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_EVCTRL_Register use record
      STARTEI      at 0 range 0 .. 0;
      EMPTYEO      at 0 range 1 .. 1;
      INVEI        at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Interrupt Enable Clear
   type DAC_INTENCLR_Register is record
      --  Underrun Interrupt Enable
      UNDERRUN     : Boolean := False;
      --  Data Buffer Empty Interrupt Enable
      EMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_INTENCLR_Register use record
      UNDERRUN     at 0 range 0 .. 0;
      EMPTY        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Enable Set
   type DAC_INTENSET_Register is record
      --  Underrun Interrupt Enable
      UNDERRUN     : Boolean := False;
      --  Data Buffer Empty Interrupt Enable
      EMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_INTENSET_Register use record
      UNDERRUN     at 0 range 0 .. 0;
      EMPTY        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type DAC_INTFLAG_Register is record
      --  Underrun
      UNDERRUN     : Boolean := False;
      --  Data Buffer Empty
      EMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_INTFLAG_Register use record
      UNDERRUN     at 0 range 0 .. 0;
      EMPTY        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Status
   type DAC_STATUS_Register is record
      --  Read-only. Ready
      READY        : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_STATUS_Register use record
      READY        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Synchronization Busy
   type DAC_SYNCBUSY_Register is record
      --  Read-only. Software Reset
      SWRST         : Boolean;
      --  Read-only. Enable
      ENABLE        : Boolean;
      --  Read-only. Data
      DATA          : Boolean;
      --  Read-only. Data Buffer
      DATABUF       : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_SYNCBUSY_Register use record
      SWRST         at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      DATA          at 0 range 2 .. 2;
      DATABUF       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Debug Control
   type DAC_DBGCTRL_Register is record
      --  Debug Run
      DBGRUN       : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DAC_DBGCTRL_Register use record
      DBGRUN       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital Analog Converter
   type DAC_Peripheral is record
      --  Control A
      CTRLA    : aliased DAC_CTRLA_Register;
      --  Control B
      CTRLB    : aliased DAC_CTRLB_Register;
      --  Event Control
      EVCTRL   : aliased DAC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased DAC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased DAC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased DAC_INTFLAG_Register;
      --  Status
      STATUS   : aliased DAC_STATUS_Register;
      --  Data
      DATA     : aliased HAL.UInt16;
      --  Data Buffer
      DATABUF  : aliased HAL.UInt16;
      --  Synchronization Busy
      SYNCBUSY : aliased DAC_SYNCBUSY_Register;
      --  Debug Control
      DBGCTRL  : aliased DAC_DBGCTRL_Register;
   end record
     with Volatile;

   for DAC_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      CTRLB    at 16#1# range 0 .. 7;
      EVCTRL   at 16#2# range 0 .. 7;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STATUS   at 16#7# range 0 .. 7;
      DATA     at 16#8# range 0 .. 15;
      DATABUF  at 16#C# range 0 .. 15;
      SYNCBUSY at 16#10# range 0 .. 31;
      DBGCTRL  at 16#14# range 0 .. 7;
   end record;

   --  Digital Analog Converter
   DAC_Periph : aliased DAC_Peripheral
     with Import, Address => System'To_Address (16#42005400#);

end SAM_SVD.DAC;
