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

--  This spec has been automatically generated from ATSAME54N19A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.EIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type EIC_CTRLA_Register is record
      --  Write-only. Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Clock Selection
      CKSEL        : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EIC_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      CKSEL        at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Non-Maskable Interrupt Sense Configuration
   type NMICTRL_NMISENSESelect is
     (
      --  No detection
      None,
      --  Rising-edge detection
      Rise,
      --  Falling-edge detection
      Fall,
      --  Both-edges detection
      Both,
      --  High-level detection
      High,
      --  Low-level detection
      Low)
     with Size => 3;
   for NMICTRL_NMISENSESelect use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Non-Maskable Interrupt Control
   type EIC_NMICTRL_Register is record
      --  Non-Maskable Interrupt Sense Configuration
      NMISENSE     : NMICTRL_NMISENSESelect := SAM_SVD.EIC.None;
      --  Non-Maskable Interrupt Filter Enable
      NMIFILTEN    : Boolean := False;
      --  Asynchronous Edge Detection Mode
      NMIASYNCH    : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EIC_NMICTRL_Register use record
      NMISENSE     at 0 range 0 .. 2;
      NMIFILTEN    at 0 range 3 .. 3;
      NMIASYNCH    at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Non-Maskable Interrupt Flag Status and Clear
   type EIC_NMIFLAG_Register is record
      --  Non-Maskable Interrupt
      NMI           : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for EIC_NMIFLAG_Register use record
      NMI           at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  Synchronization Busy
   type EIC_SYNCBUSY_Register is record
      --  Read-only. Software Reset Synchronization Busy Status
      SWRST         : Boolean;
      --  Read-only. Enable Synchronization Busy Status
      ENABLE        : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_SYNCBUSY_Register use record
      SWRST         at 0 range 0 .. 0;
      ENABLE        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype EIC_EVCTRL_EXTINTEO_Field is HAL.UInt16;

   --  Event Control
   type EIC_EVCTRL_Register is record
      --  External Interrupt Event Output Enable
      EXTINTEO       : EIC_EVCTRL_EXTINTEO_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_EVCTRL_Register use record
      EXTINTEO       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EIC_INTENCLR_EXTINT_Field is HAL.UInt16;

   --  Interrupt Enable Clear
   type EIC_INTENCLR_Register is record
      --  External Interrupt Enable
      EXTINT         : EIC_INTENCLR_EXTINT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_INTENCLR_Register use record
      EXTINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EIC_INTENSET_EXTINT_Field is HAL.UInt16;

   --  Interrupt Enable Set
   type EIC_INTENSET_Register is record
      --  External Interrupt Enable
      EXTINT         : EIC_INTENSET_EXTINT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_INTENSET_Register use record
      EXTINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EIC_INTFLAG_EXTINT_Field is HAL.UInt16;

   --  Interrupt Flag Status and Clear
   type EIC_INTFLAG_Register is record
      --  External Interrupt
      EXTINT         : EIC_INTFLAG_EXTINT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_INTFLAG_Register use record
      EXTINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EIC_ASYNCH_ASYNCH_Field is HAL.UInt16;

   --  External Interrupt Asynchronous Mode
   type EIC_ASYNCH_Register is record
      --  Asynchronous Edge Detection Mode
      ASYNCH         : EIC_ASYNCH_ASYNCH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_ASYNCH_Register use record
      ASYNCH         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Input Sense Configuration 0
   type CONFIG_SENSE0Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE0Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 1
   type CONFIG_SENSE1Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE1Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 2
   type CONFIG_SENSE2Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE2Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 3
   type CONFIG_SENSE3Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE3Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 4
   type CONFIG_SENSE4Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE4Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 5
   type CONFIG_SENSE5Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE5Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 6
   type CONFIG_SENSE6Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE6Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense Configuration 7
   type CONFIG_SENSE7Select is
     (
      --  No detection
      None,
      --  Rising edge detection
      Rise,
      --  Falling edge detection
      Fall,
      --  Both edges detection
      Both,
      --  High level detection
      High,
      --  Low level detection
      Low)
     with Size => 3;
   for CONFIG_SENSE7Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  External Interrupt Sense Configuration
   type EIC_CONFIG_Register is record
      --  Input Sense Configuration 0
      SENSE0  : CONFIG_SENSE0Select := SAM_SVD.EIC.None;
      --  Filter Enable 0
      FILTEN0 : Boolean := False;
      --  Input Sense Configuration 1
      SENSE1  : CONFIG_SENSE1Select := SAM_SVD.EIC.None;
      --  Filter Enable 1
      FILTEN1 : Boolean := False;
      --  Input Sense Configuration 2
      SENSE2  : CONFIG_SENSE2Select := SAM_SVD.EIC.None;
      --  Filter Enable 2
      FILTEN2 : Boolean := False;
      --  Input Sense Configuration 3
      SENSE3  : CONFIG_SENSE3Select := SAM_SVD.EIC.None;
      --  Filter Enable 3
      FILTEN3 : Boolean := False;
      --  Input Sense Configuration 4
      SENSE4  : CONFIG_SENSE4Select := SAM_SVD.EIC.None;
      --  Filter Enable 4
      FILTEN4 : Boolean := False;
      --  Input Sense Configuration 5
      SENSE5  : CONFIG_SENSE5Select := SAM_SVD.EIC.None;
      --  Filter Enable 5
      FILTEN5 : Boolean := False;
      --  Input Sense Configuration 6
      SENSE6  : CONFIG_SENSE6Select := SAM_SVD.EIC.None;
      --  Filter Enable 6
      FILTEN6 : Boolean := False;
      --  Input Sense Configuration 7
      SENSE7  : CONFIG_SENSE7Select := SAM_SVD.EIC.None;
      --  Filter Enable 7
      FILTEN7 : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_CONFIG_Register use record
      SENSE0  at 0 range 0 .. 2;
      FILTEN0 at 0 range 3 .. 3;
      SENSE1  at 0 range 4 .. 6;
      FILTEN1 at 0 range 7 .. 7;
      SENSE2  at 0 range 8 .. 10;
      FILTEN2 at 0 range 11 .. 11;
      SENSE3  at 0 range 12 .. 14;
      FILTEN3 at 0 range 15 .. 15;
      SENSE4  at 0 range 16 .. 18;
      FILTEN4 at 0 range 19 .. 19;
      SENSE5  at 0 range 20 .. 22;
      FILTEN5 at 0 range 23 .. 23;
      SENSE6  at 0 range 24 .. 26;
      FILTEN6 at 0 range 27 .. 27;
      SENSE7  at 0 range 28 .. 30;
      FILTEN7 at 0 range 31 .. 31;
   end record;

   --  External Interrupt Sense Configuration
   type EIC_CONFIG_Registers is array (0 .. 1) of EIC_CONFIG_Register
     with Volatile;

   subtype EIC_DEBOUNCEN_DEBOUNCEN_Field is HAL.UInt16;

   --  Debouncer Enable
   type EIC_DEBOUNCEN_Register is record
      --  Debouncer Enable
      DEBOUNCEN      : EIC_DEBOUNCEN_DEBOUNCEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_DEBOUNCEN_Register use record
      DEBOUNCEN      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EIC_DPRESCALER_PRESCALER0_Field is HAL.UInt3;
   subtype EIC_DPRESCALER_PRESCALER1_Field is HAL.UInt3;

   --  Debouncer Prescaler
   type EIC_DPRESCALER_Register is record
      --  Debouncer Prescaler
      PRESCALER0     : EIC_DPRESCALER_PRESCALER0_Field := 16#0#;
      --  Debouncer number of states
      STATES0        : Boolean := False;
      --  Debouncer Prescaler
      PRESCALER1     : EIC_DPRESCALER_PRESCALER1_Field := 16#0#;
      --  Debouncer number of states
      STATES1        : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Pin Sampler frequency selection
      TICKON         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_DPRESCALER_Register use record
      PRESCALER0     at 0 range 0 .. 2;
      STATES0        at 0 range 3 .. 3;
      PRESCALER1     at 0 range 4 .. 6;
      STATES1        at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TICKON         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype EIC_PINSTATE_PINSTATE_Field is HAL.UInt16;

   --  Pin State
   type EIC_PINSTATE_Register is record
      --  Read-only. Pin State
      PINSTATE       : EIC_PINSTATE_PINSTATE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_PINSTATE_Register use record
      PINSTATE       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External Interrupt Controller
   type EIC_Peripheral is record
      --  Control A
      CTRLA      : aliased EIC_CTRLA_Register;
      --  Non-Maskable Interrupt Control
      NMICTRL    : aliased EIC_NMICTRL_Register;
      --  Non-Maskable Interrupt Flag Status and Clear
      NMIFLAG    : aliased EIC_NMIFLAG_Register;
      --  Synchronization Busy
      SYNCBUSY   : aliased EIC_SYNCBUSY_Register;
      --  Event Control
      EVCTRL     : aliased EIC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR   : aliased EIC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased EIC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG    : aliased EIC_INTFLAG_Register;
      --  External Interrupt Asynchronous Mode
      ASYNCH     : aliased EIC_ASYNCH_Register;
      --  External Interrupt Sense Configuration
      CONFIG     : aliased EIC_CONFIG_Registers;
      --  Debouncer Enable
      DEBOUNCEN  : aliased EIC_DEBOUNCEN_Register;
      --  Debouncer Prescaler
      DPRESCALER : aliased EIC_DPRESCALER_Register;
      --  Pin State
      PINSTATE   : aliased EIC_PINSTATE_Register;
   end record
     with Volatile;

   for EIC_Peripheral use record
      CTRLA      at 16#0# range 0 .. 7;
      NMICTRL    at 16#1# range 0 .. 7;
      NMIFLAG    at 16#2# range 0 .. 15;
      SYNCBUSY   at 16#4# range 0 .. 31;
      EVCTRL     at 16#8# range 0 .. 31;
      INTENCLR   at 16#C# range 0 .. 31;
      INTENSET   at 16#10# range 0 .. 31;
      INTFLAG    at 16#14# range 0 .. 31;
      ASYNCH     at 16#18# range 0 .. 31;
      CONFIG     at 16#1C# range 0 .. 63;
      DEBOUNCEN  at 16#30# range 0 .. 31;
      DPRESCALER at 16#34# range 0 .. 31;
      PINSTATE   at 16#38# range 0 .. 31;
   end record;

   --  External Interrupt Controller
   EIC_Periph : aliased EIC_Peripheral
     with Import, Address => System'To_Address (16#40002800#);

end SAM_SVD.EIC;
