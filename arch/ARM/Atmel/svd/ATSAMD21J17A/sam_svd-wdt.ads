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

--  This spec has been automatically generated from ATSAMD21J17A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.WDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control
   type WDT_CTRL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Enable
      ENABLE       : Boolean := False;
      --  Watchdog Timer Window Mode Enable
      WEN          : Boolean := False;
      --  unspecified
      Reserved_3_6 : HAL.UInt4 := 16#0#;
      --  Always-On
      ALWAYSON     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_CTRL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      WEN          at 0 range 2 .. 2;
      Reserved_3_6 at 0 range 3 .. 6;
      ALWAYSON     at 0 range 7 .. 7;
   end record;

   --  Time-Out Period
   type CONFIG_PERSelect is
     (
      --  8 clock cycles
      CONFIG_PERSelect_8,
      --  16 clock cycles
      CONFIG_PERSelect_16,
      --  32 clock cycles
      CONFIG_PERSelect_32,
      --  64 clock cycles
      CONFIG_PERSelect_64,
      --  128 clock cycles
      CONFIG_PERSelect_128,
      --  256 clock cycles
      CONFIG_PERSelect_256,
      --  512 clock cycles
      CONFIG_PERSelect_512,
      --  1024 clock cycles
      CONFIG_PERSelect_1K,
      --  2048 clock cycles
      CONFIG_PERSelect_2K,
      --  4096 clock cycles
      CONFIG_PERSelect_4K,
      --  8192 clock cycles
      CONFIG_PERSelect_8K,
      --  16384 clock cycles
      CONFIG_PERSelect_16K)
     with Size => 4;
   for CONFIG_PERSelect use
     (CONFIG_PERSelect_8 => 0,
      CONFIG_PERSelect_16 => 1,
      CONFIG_PERSelect_32 => 2,
      CONFIG_PERSelect_64 => 3,
      CONFIG_PERSelect_128 => 4,
      CONFIG_PERSelect_256 => 5,
      CONFIG_PERSelect_512 => 6,
      CONFIG_PERSelect_1K => 7,
      CONFIG_PERSelect_2K => 8,
      CONFIG_PERSelect_4K => 9,
      CONFIG_PERSelect_8K => 10,
      CONFIG_PERSelect_16K => 11);

   --  Window Mode Time-Out Period
   type CONFIG_WINDOWSelect is
     (
      --  8 clock cycles
      CONFIG_WINDOWSelect_8,
      --  16 clock cycles
      CONFIG_WINDOWSelect_16,
      --  32 clock cycles
      CONFIG_WINDOWSelect_32,
      --  64 clock cycles
      CONFIG_WINDOWSelect_64,
      --  128 clock cycles
      CONFIG_WINDOWSelect_128,
      --  256 clock cycles
      CONFIG_WINDOWSelect_256,
      --  512 clock cycles
      CONFIG_WINDOWSelect_512,
      --  1024 clock cycles
      CONFIG_WINDOWSelect_1K,
      --  2048 clock cycles
      CONFIG_WINDOWSelect_2K,
      --  4096 clock cycles
      CONFIG_WINDOWSelect_4K,
      --  8192 clock cycles
      CONFIG_WINDOWSelect_8K,
      --  16384 clock cycles
      CONFIG_WINDOWSelect_16K)
     with Size => 4;
   for CONFIG_WINDOWSelect use
     (CONFIG_WINDOWSelect_8 => 0,
      CONFIG_WINDOWSelect_16 => 1,
      CONFIG_WINDOWSelect_32 => 2,
      CONFIG_WINDOWSelect_64 => 3,
      CONFIG_WINDOWSelect_128 => 4,
      CONFIG_WINDOWSelect_256 => 5,
      CONFIG_WINDOWSelect_512 => 6,
      CONFIG_WINDOWSelect_1K => 7,
      CONFIG_WINDOWSelect_2K => 8,
      CONFIG_WINDOWSelect_4K => 9,
      CONFIG_WINDOWSelect_8K => 10,
      CONFIG_WINDOWSelect_16K => 11);

   --  Configuration
   type WDT_CONFIG_Register is record
      --  Time-Out Period
      PER    : CONFIG_PERSelect := SAM_SVD.WDT.CONFIG_PERSelect_16K;
      --  Window Mode Time-Out Period
      WINDOW : CONFIG_WINDOWSelect := SAM_SVD.WDT.CONFIG_WINDOWSelect_16K;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_CONFIG_Register use record
      PER    at 0 range 0 .. 3;
      WINDOW at 0 range 4 .. 7;
   end record;

   --  Early Warning Interrupt Time Offset
   type EWCTRL_EWOFFSETSelect is
     (
      --  8 clock cycles
      EWCTRL_EWOFFSETSelect_8,
      --  16 clock cycles
      EWCTRL_EWOFFSETSelect_16,
      --  32 clock cycles
      EWCTRL_EWOFFSETSelect_32,
      --  64 clock cycles
      EWCTRL_EWOFFSETSelect_64,
      --  128 clock cycles
      EWCTRL_EWOFFSETSelect_128,
      --  256 clock cycles
      EWCTRL_EWOFFSETSelect_256,
      --  512 clock cycles
      EWCTRL_EWOFFSETSelect_512,
      --  1024 clock cycles
      EWCTRL_EWOFFSETSelect_1K,
      --  2048 clock cycles
      EWCTRL_EWOFFSETSelect_2K,
      --  4096 clock cycles
      EWCTRL_EWOFFSETSelect_4K,
      --  8192 clock cycles
      EWCTRL_EWOFFSETSelect_8K,
      --  16384 clock cycles
      EWCTRL_EWOFFSETSelect_16K)
     with Size => 4;
   for EWCTRL_EWOFFSETSelect use
     (EWCTRL_EWOFFSETSelect_8 => 0,
      EWCTRL_EWOFFSETSelect_16 => 1,
      EWCTRL_EWOFFSETSelect_32 => 2,
      EWCTRL_EWOFFSETSelect_64 => 3,
      EWCTRL_EWOFFSETSelect_128 => 4,
      EWCTRL_EWOFFSETSelect_256 => 5,
      EWCTRL_EWOFFSETSelect_512 => 6,
      EWCTRL_EWOFFSETSelect_1K => 7,
      EWCTRL_EWOFFSETSelect_2K => 8,
      EWCTRL_EWOFFSETSelect_4K => 9,
      EWCTRL_EWOFFSETSelect_8K => 10,
      EWCTRL_EWOFFSETSelect_16K => 11);

   --  Early Warning Interrupt Control
   type WDT_EWCTRL_Register is record
      --  Early Warning Interrupt Time Offset
      EWOFFSET     : EWCTRL_EWOFFSETSelect :=
                      SAM_SVD.WDT.EWCTRL_EWOFFSETSelect_16K;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_EWCTRL_Register use record
      EWOFFSET     at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Interrupt Enable Clear
   type WDT_INTENCLR_Register is record
      --  Early Warning Interrupt Enable
      EW           : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_INTENCLR_Register use record
      EW           at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Set
   type WDT_INTENSET_Register is record
      --  Early Warning Interrupt Enable
      EW           : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_INTENSET_Register use record
      EW           at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type WDT_INTFLAG_Register is record
      --  Early Warning
      EW           : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_INTFLAG_Register use record
      EW           at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Status
   type WDT_STATUS_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDT_STATUS_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog Timer
   type WDT_Peripheral is record
      --  Control
      CTRL     : aliased WDT_CTRL_Register;
      --  Configuration
      CONFIG   : aliased WDT_CONFIG_Register;
      --  Early Warning Interrupt Control
      EWCTRL   : aliased WDT_EWCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased WDT_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased WDT_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased WDT_INTFLAG_Register;
      --  Status
      STATUS   : aliased WDT_STATUS_Register;
      --  Clear
      CLEAR    : aliased HAL.UInt8;
   end record
     with Volatile;

   for WDT_Peripheral use record
      CTRL     at 16#0# range 0 .. 7;
      CONFIG   at 16#1# range 0 .. 7;
      EWCTRL   at 16#2# range 0 .. 7;
      INTENCLR at 16#4# range 0 .. 7;
      INTENSET at 16#5# range 0 .. 7;
      INTFLAG  at 16#6# range 0 .. 7;
      STATUS   at 16#7# range 0 .. 7;
      CLEAR    at 16#8# range 0 .. 7;
   end record;

   --  Watchdog Timer
   WDT_Periph : aliased WDT_Peripheral
     with Import, Address => System'To_Address (16#40001000#);

end SAM_SVD.WDT;
