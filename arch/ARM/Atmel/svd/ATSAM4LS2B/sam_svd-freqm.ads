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

--  This spec has been automatically generated from ATSAM4LS2B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.FREQM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register
   type FREQM_CTRL_Register is record
      --  Write-only. Start frequency measurement
      START         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_CTRL_Register use record
      START         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype FREQM_MODE_REFSEL_Field is HAL.UInt2;
   subtype FREQM_MODE_REFNUM_Field is HAL.UInt8;
   subtype FREQM_MODE_CLKSEL_Field is HAL.UInt5;

   --  Mode register
   type FREQM_MODE_Register is record
      --  Reference Clock Selection
      REFSEL         : FREQM_MODE_REFSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Number of Reference CLock Cycles
      REFNUM         : FREQM_MODE_REFNUM_Field := 16#0#;
      --  Clock Source Selection
      CLKSEL         : FREQM_MODE_CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_21_30 : HAL.UInt10 := 16#0#;
      --  Reference Clock Enable
      REFCEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_MODE_Register use record
      REFSEL         at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      REFNUM         at 0 range 8 .. 15;
      CLKSEL         at 0 range 16 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      REFCEN         at 0 range 31 .. 31;
   end record;

   --  Status register
   type FREQM_STATUS_Register is record
      --  Read-only. Frequency measurement on-going
      BUSY          : Boolean;
      --  Read-only. Reference Clock busy
      RCLKBUSY      : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_STATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      RCLKBUSY      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FREQM_VALUE_VALUE_Field is HAL.UInt24;

   --  Value register
   type FREQM_VALUE_Register is record
      --  Read-only. Measured frequency
      VALUE          : FREQM_VALUE_VALUE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_VALUE_Register use record
      VALUE          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Interrupt Enable Register
   type FREQM_IER_Register is record
      --  Write-only. Frequency measurment done
      DONE          : Boolean := False;
      --  Write-only. Reference Clock ready
      RCLKRDY       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_IER_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Diable Register
   type FREQM_IDR_Register is record
      --  Write-only. Frequency measurment done
      DONE          : Boolean := False;
      --  Write-only. Reference Clock ready
      RCLKRDY       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_IDR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Mask Register
   type FREQM_IMR_Register is record
      --  Read-only. Frequency measurment done
      DONE          : Boolean;
      --  Read-only. Reference Clock ready
      RCLKRDY       : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_IMR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Status Register
   type FREQM_ISR_Register is record
      --  Read-only. Frequency measurment done
      DONE          : Boolean;
      --  Read-only. Reference Clock ready
      RCLKRDY       : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_ISR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt Clear Register
   type FREQM_ICR_Register is record
      --  Write-only. Frequency measurment done
      DONE          : Boolean := False;
      --  Write-only. Reference Clock ready
      RCLKRDY       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_ICR_Register use record
      DONE          at 0 range 0 .. 0;
      RCLKRDY       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FREQM_VERSION_VERSION_Field is HAL.UInt12;
   subtype FREQM_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type FREQM_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : FREQM_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : FREQM_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Frequency Meter
   type FREQM_Peripheral is record
      --  Control register
      CTRL    : aliased FREQM_CTRL_Register;
      --  Mode register
      MODE    : aliased FREQM_MODE_Register;
      --  Status register
      STATUS  : aliased FREQM_STATUS_Register;
      --  Value register
      VALUE   : aliased FREQM_VALUE_Register;
      --  Interrupt Enable Register
      IER     : aliased FREQM_IER_Register;
      --  Interrupt Diable Register
      IDR     : aliased FREQM_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased FREQM_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased FREQM_ISR_Register;
      --  Interrupt Clear Register
      ICR     : aliased FREQM_ICR_Register;
      --  Version Register
      VERSION : aliased FREQM_VERSION_Register;
   end record
     with Volatile;

   for FREQM_Peripheral use record
      CTRL    at 16#0# range 0 .. 31;
      MODE    at 16#4# range 0 .. 31;
      STATUS  at 16#8# range 0 .. 31;
      VALUE   at 16#C# range 0 .. 31;
      IER     at 16#10# range 0 .. 31;
      IDR     at 16#14# range 0 .. 31;
      IMR     at 16#18# range 0 .. 31;
      ISR     at 16#1C# range 0 .. 31;
      ICR     at 16#20# range 0 .. 31;
      VERSION at 16#3FC# range 0 .. 31;
   end record;

   --  Frequency Meter
   FREQM_Periph : aliased FREQM_Peripheral
     with Import, Address => System'To_Address (16#400E0C00#);

end SAM_SVD.FREQM;
