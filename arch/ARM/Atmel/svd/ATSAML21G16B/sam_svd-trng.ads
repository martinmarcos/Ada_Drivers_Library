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

--  This spec has been automatically generated from ATSAML21G16B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.TRNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type TRNG_CTRLA_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
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

   for TRNG_CTRLA_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Event Control
   type TRNG_EVCTRL_Register is record
      --  Data Ready Event Output
      DATARDYEO    : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TRNG_EVCTRL_Register use record
      DATARDYEO    at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Clear
   type TRNG_INTENCLR_Register is record
      --  Data Ready Interrupt Enable
      DATARDY      : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TRNG_INTENCLR_Register use record
      DATARDY      at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Set
   type TRNG_INTENSET_Register is record
      --  Data Ready Interrupt Enable
      DATARDY      : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TRNG_INTENSET_Register use record
      DATARDY      at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type TRNG_INTFLAG_Register is record
      --  Data Ready Interrupt Flag
      DATARDY      : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TRNG_INTFLAG_Register use record
      DATARDY      at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True Random Generator
   type TRNG_Peripheral is record
      --  Control A
      CTRLA    : aliased TRNG_CTRLA_Register;
      --  Event Control
      EVCTRL   : aliased TRNG_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased TRNG_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased TRNG_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased TRNG_INTFLAG_Register;
      --  Output Data
      DATA     : aliased HAL.UInt32;
   end record
     with Volatile;

   for TRNG_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      EVCTRL   at 16#4# range 0 .. 7;
      INTENCLR at 16#8# range 0 .. 7;
      INTENSET at 16#9# range 0 .. 7;
      INTFLAG  at 16#A# range 0 .. 7;
      DATA     at 16#20# range 0 .. 31;
   end record;

   --  True Random Generator
   TRNG_Periph : aliased TRNG_Peripheral
     with Import, Address => System'To_Address (16#42003800#);

end SAM_SVD.TRNG;
