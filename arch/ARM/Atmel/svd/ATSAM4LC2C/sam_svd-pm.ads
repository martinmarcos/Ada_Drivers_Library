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

--  This spec has been automatically generated from ATSAM4LC2C.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.PM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PM_MCCTRL_MCSEL_Field is HAL.UInt3;

   --  Main Clock Control
   type PM_MCCTRL_Register is record
      --  Main Clock Select
      MCSEL         : PM_MCCTRL_MCSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_MCCTRL_Register use record
      MCSEL         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  CPU Clock Select
   type CPUSEL_CPUSELSelect is
     (
      --  fCPU:fmain. CPUDIV:
      CPUSEL_CPUSELSelect_0,
      --  fCPU:fmain / 2^(CPUSEL+1)
      CPUSEL_CPUSELSelect_1)
     with Size => 3;
   for CPUSEL_CPUSELSelect use
     (CPUSEL_CPUSELSelect_0 => 0,
      CPUSEL_CPUSELSelect_1 => 1);

   --  CPU Clock Select
   type PM_CPUSEL_Register is record
      --  CPU Clock Select
      CPUSEL        : CPUSEL_CPUSELSelect := SAM_SVD.PM.CPUSEL_CPUSELSelect_0;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  CPU Division
      CPUDIV        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CPUSEL_Register use record
      CPUSEL        at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      CPUDIV        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PM_PBASEL_PBSEL_Field is HAL.UInt3;

   --  PBA Clock Select
   type PM_PBASEL_Register is record
      --  PBA Clock Select
      PBSEL         : PM_PBASEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  PBA Division Select
      PBDIV         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBASEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PM_PBBSEL_PBSEL_Field is HAL.UInt3;

   --  PBB Clock Select
   type PM_PBBSEL_Register is record
      --  PBB Clock Select
      PBSEL         : PM_PBBSEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  PBB Division Select
      PBDIV         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBBSEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PM_PBCSEL_PBSEL_Field is HAL.UInt3;

   --  PBC Clock Select
   type PM_PBCSEL_Register is record
      --  PBC Clock Select
      PBSEL         : PM_PBCSEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  PBC Division Select
      PBDIV         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBCSEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PM_PBDSEL_PBSEL_Field is HAL.UInt3;

   --  PBD Clock Select
   type PM_PBDSEL_Register is record
      --  PBD Clock Select
      PBSEL         : PM_PBDSEL_PBSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_6  : HAL.UInt4 := 16#0#;
      --  PBD Division Select
      PBDIV         : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBDSEL_Register use record
      PBSEL         at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      PBDIV         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CPU Mask
   type PM_CPUMASK_Register is record
      --  OCD CPU Clock Mask
      OCD           : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CPUMASK_Register use record
      OCD           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HSB Mask
   type PM_HSBMASK_Register is record
      --  PDCA HSB Clock Mask
      PDCA           : Boolean := False;
      --  HFLASHC HSB Clock Mask
      HFLASHC        : Boolean := True;
      --  HRAMC1 HSB Clock Mask
      HRAMC1         : Boolean := False;
      --  USBC HSB Clock Mask
      USBC           : Boolean := False;
      --  CRCCU HSB Clock Mask
      CRCCU          : Boolean := False;
      --  HTOP0 HSB Clock Mask
      HTOP0          : Boolean := True;
      --  HTOP1 HSB Clock Mask
      HTOP1          : Boolean := True;
      --  HTOP2 HSB Clock Mask
      HTOP2          : Boolean := True;
      --  HTOP3 HSB Clock Mask
      HTOP3          : Boolean := True;
      --  AESA HSB Clock Mask
      AESA           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_HSBMASK_Register use record
      PDCA           at 0 range 0 .. 0;
      HFLASHC        at 0 range 1 .. 1;
      HRAMC1         at 0 range 2 .. 2;
      USBC           at 0 range 3 .. 3;
      CRCCU          at 0 range 4 .. 4;
      HTOP0          at 0 range 5 .. 5;
      HTOP1          at 0 range 6 .. 6;
      HTOP2          at 0 range 7 .. 7;
      HTOP3          at 0 range 8 .. 8;
      AESA           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PBA Mask
   type PM_PBAMASK_Register is record
      --  IISC APB Clock Enable
      IISC           : Boolean := False;
      --  SPI APB Clock Enable
      SPI            : Boolean := False;
      --  TC0 APB Clock Enable
      TC0            : Boolean := False;
      --  TC1 APB Clock Enable
      TC1            : Boolean := False;
      --  TWIM0 APB Clock Enable
      TWIM0          : Boolean := False;
      --  TWIS0 APB Clock Enable
      TWIS0          : Boolean := False;
      --  TWIM1 APB Clock Enable
      TWIM1          : Boolean := False;
      --  TWIS1 APB Clock Enable
      TWIS1          : Boolean := False;
      --  USART0 APB Clock Enable
      USART0         : Boolean := False;
      --  USART1 APB Clock Enable
      USART1         : Boolean := False;
      --  USART2 APB Clock Enable
      USART2         : Boolean := False;
      --  USART3 APB Clock Enable
      USART3         : Boolean := False;
      --  ADCIFE APB Clock Enable
      ADCIFE         : Boolean := False;
      --  DACC APB Clock Enable
      DACC           : Boolean := False;
      --  ACIFC APB Clock Enable
      ACIFC          : Boolean := False;
      --  GLOC APB Clock Enable
      GLOC           : Boolean := False;
      --  ABDACB APB Clock Enable
      ABDACB         : Boolean := False;
      --  TRNG APB Clock Enable
      TRNG           : Boolean := False;
      --  PARC APB Clock Enable
      PARC           : Boolean := False;
      --  CATB APB Clock Enable
      CATB           : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  TWIM2 APB Clock Enable
      TWIM2          : Boolean := False;
      --  TWIM3 APB Clock Enable
      TWIM3          : Boolean := False;
      --  LCDCA APB Clock Enable
      LCDCA          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBAMASK_Register use record
      IISC           at 0 range 0 .. 0;
      SPI            at 0 range 1 .. 1;
      TC0            at 0 range 2 .. 2;
      TC1            at 0 range 3 .. 3;
      TWIM0          at 0 range 4 .. 4;
      TWIS0          at 0 range 5 .. 5;
      TWIM1          at 0 range 6 .. 6;
      TWIS1          at 0 range 7 .. 7;
      USART0         at 0 range 8 .. 8;
      USART1         at 0 range 9 .. 9;
      USART2         at 0 range 10 .. 10;
      USART3         at 0 range 11 .. 11;
      ADCIFE         at 0 range 12 .. 12;
      DACC           at 0 range 13 .. 13;
      ACIFC          at 0 range 14 .. 14;
      GLOC           at 0 range 15 .. 15;
      ABDACB         at 0 range 16 .. 16;
      TRNG           at 0 range 17 .. 17;
      PARC           at 0 range 18 .. 18;
      CATB           at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TWIM2          at 0 range 21 .. 21;
      TWIM3          at 0 range 22 .. 22;
      LCDCA          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PBB Mask
   type PM_PBBMASK_Register is record
      --  HFLASHC APB Clock Enable
      HFLASHC       : Boolean := True;
      --  HCACHE APB Clock Enable
      HCACHE        : Boolean := False;
      --  HMATRIX APB Clock Enable
      HMATRIX       : Boolean := False;
      --  PDCA APB Clock Enable
      PDCA          : Boolean := False;
      --  CRCCU APB Clock Enable
      CRCCU         : Boolean := False;
      --  USBC APB Clock Enable
      USBC          : Boolean := False;
      --  PEVC APB Clock Enable
      PEVC          : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBBMASK_Register use record
      HFLASHC       at 0 range 0 .. 0;
      HCACHE        at 0 range 1 .. 1;
      HMATRIX       at 0 range 2 .. 2;
      PDCA          at 0 range 3 .. 3;
      CRCCU         at 0 range 4 .. 4;
      USBC          at 0 range 5 .. 5;
      PEVC          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PBC Mask
   type PM_PBCMASK_Register is record
      --  PM APB Clock Enable
      PM            : Boolean := True;
      --  CHIPID APB Clock Enable
      CHIPID        : Boolean := True;
      --  SCIF APB Clock Enable
      SCIF          : Boolean := True;
      --  FREQM APB Clock Enable
      FREQM         : Boolean := True;
      --  GPIO APB Clock Enable
      GPIO          : Boolean := True;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBCMASK_Register use record
      PM            at 0 range 0 .. 0;
      CHIPID        at 0 range 1 .. 1;
      SCIF          at 0 range 2 .. 2;
      FREQM         at 0 range 3 .. 3;
      GPIO          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PBD Mask
   type PM_PBDMASK_Register is record
      --  BPM APB Clock Enable
      BPM           : Boolean := True;
      --  BSCIF APB Clock Enable
      BSCIF         : Boolean := True;
      --  AST APB Clock Enable
      AST           : Boolean := True;
      --  WDT APB Clock Enable
      WDT           : Boolean := True;
      --  EIC APB Clock Enable
      EIC           : Boolean := True;
      --  PICOUART APB Clock Enable
      PICOUART      : Boolean := True;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PBDMASK_Register use record
      BPM           at 0 range 0 .. 0;
      BSCIF         at 0 range 1 .. 1;
      AST           at 0 range 2 .. 2;
      WDT           at 0 range 3 .. 3;
      EIC           at 0 range 4 .. 4;
      PICOUART      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Clock Failure Detector Control
   type PM_CFDCTRL_Register is record
      --  Clock Failure Detection Enable
      CFDEN         : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Store Final Value
      SFV           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CFDCTRL_Register use record
      CFDEN         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      SFV           at 0 range 31 .. 31;
   end record;

   subtype PM_UNLOCK_ADDR_Field is HAL.UInt10;
   subtype PM_UNLOCK_KEY_Field is HAL.UInt8;

   --  Unlock Register
   type PM_UNLOCK_Register is record
      --  Write-only. Unlock Address
      ADDR           : PM_UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  Write-only. Unlock Key
      KEY            : PM_UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Wake up Interrupt Enable
   type IER_WAKESelect is
     (
      --  No effect
      IER_WAKESelect_0,
      --  Disable Interrupt.
      IER_WAKESelect_1)
     with Size => 1;
   for IER_WAKESelect use
     (IER_WAKESelect_0 => 0,
      IER_WAKESelect_1 => 1);

   --  Interrupt Enable Register
   type PM_IER_Register is record
      --  Write-only. Clock Failure Detected Interrupt Enable
      CFD           : Boolean := False;
      --  unspecified
      Reserved_1_4  : HAL.UInt4 := 16#0#;
      --  Write-only. Clock Ready Interrupt Enable
      CKRDY         : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Write-only. Wake up Interrupt Enable
      WAKE          : IER_WAKESelect := SAM_SVD.PM.IER_WAKESelect_0;
      --  unspecified
      Reserved_9_30 : HAL.UInt22 := 16#0#;
      --  Write-only. Access Error Interrupt Enable
      AE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_IER_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Wake up Interrupt Disable
   type IDR_WAKESelect is
     (
      --  No effect
      IDR_WAKESelect_0,
      --  Disable Interrupt.
      IDR_WAKESelect_1)
     with Size => 1;
   for IDR_WAKESelect use
     (IDR_WAKESelect_0 => 0,
      IDR_WAKESelect_1 => 1);

   --  Interrupt Disable Register
   type PM_IDR_Register is record
      --  Write-only. Clock Failure Detected Interrupt Disable
      CFD           : Boolean := False;
      --  unspecified
      Reserved_1_4  : HAL.UInt4 := 16#0#;
      --  Write-only. Clock Ready Interrupt Disable
      CKRDY         : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Write-only. Wake up Interrupt Disable
      WAKE          : IDR_WAKESelect := SAM_SVD.PM.IDR_WAKESelect_0;
      --  unspecified
      Reserved_9_30 : HAL.UInt22 := 16#0#;
      --  Write-only. Access Error Interrupt Disable
      AE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_IDR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Wake up Interrupt Mask
   type IMR_WAKESelect is
     (
      --  No effect
      IMR_WAKESelect_0,
      --  Disable Interrupt.
      IMR_WAKESelect_1)
     with Size => 1;
   for IMR_WAKESelect use
     (IMR_WAKESelect_0 => 0,
      IMR_WAKESelect_1 => 1);

   --  Interrupt Mask Register
   type PM_IMR_Register is record
      --  Read-only. Clock Failure Detected Interrupt Mask
      CFD           : Boolean;
      --  unspecified
      Reserved_1_4  : HAL.UInt4;
      --  Read-only. Clock Ready Interrupt Mask
      CKRDY         : Boolean;
      --  unspecified
      Reserved_6_7  : HAL.UInt2;
      --  Read-only. Wake up Interrupt Mask
      WAKE          : IMR_WAKESelect;
      --  unspecified
      Reserved_9_30 : HAL.UInt22;
      --  Read-only. Access Error Interrupt Mask
      AE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_IMR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Wake up Interrupt Status
   type ISR_WAKESelect is
     (
      --  No effect
      ISR_WAKESelect_0,
      --  Disable Interrupt.
      ISR_WAKESelect_1)
     with Size => 1;
   for ISR_WAKESelect use
     (ISR_WAKESelect_0 => 0,
      ISR_WAKESelect_1 => 1);

   --  Interrupt Status Register
   type PM_ISR_Register is record
      --  Read-only. Clock Failure Detected Interrupt Status
      CFD           : Boolean;
      --  unspecified
      Reserved_1_4  : HAL.UInt4;
      --  Read-only. Clock Ready Interrupt Status
      CKRDY         : Boolean;
      --  unspecified
      Reserved_6_7  : HAL.UInt2;
      --  Read-only. Wake up Interrupt Status
      WAKE          : ISR_WAKESelect;
      --  unspecified
      Reserved_9_30 : HAL.UInt22;
      --  Read-only. Access Error Interrupt Status
      AE            : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_ISR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Interrupt Clear Register
   type PM_ICR_Register is record
      --  Write-only. Clock Failure Detected Interrupt Status Clear
      CFD           : Boolean := False;
      --  unspecified
      Reserved_1_4  : HAL.UInt4 := 16#0#;
      --  Write-only. Clock Ready Interrupt Status Clear
      CKRDY         : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Write-only. Wake up Interrupt Status Clear
      WAKE          : Boolean := False;
      --  unspecified
      Reserved_9_30 : HAL.UInt22 := 16#0#;
      --  Write-only. Access Error Interrupt Status Clear
      AE            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_ICR_Register use record
      CFD           at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      CKRDY         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      WAKE          at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      AE            at 0 range 31 .. 31;
   end record;

   --  Wake up
   type SR_WAKESelect is
     (
      --  No effect
      SR_WAKESelect_0,
      --  Disable Interrupt.
      SR_WAKESelect_1)
     with Size => 1;
   for SR_WAKESelect use
     (SR_WAKESelect_0 => 0,
      SR_WAKESelect_1 => 1);

   --  Status Register
   type PM_SR_Register is record
      --  Read-only. Clock Failure Detected
      CFD            : Boolean;
      --  Read-only. Over Clock Detected
      OCP            : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Clock Ready
      CKRDY          : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Wake up
      WAKE           : SR_WAKESelect;
      --  unspecified
      Reserved_9_27  : HAL.UInt19;
      --  Read-only. Peripheral Ready
      PERRDY         : Boolean;
      --  unspecified
      Reserved_29_30 : HAL.UInt2;
      --  Read-only. Access Error
      AE             : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_SR_Register use record
      CFD            at 0 range 0 .. 0;
      OCP            at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      CKRDY          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WAKE           at 0 range 8 .. 8;
      Reserved_9_27  at 0 range 9 .. 27;
      PERRDY         at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   --  Peripheral Power Control Register
   type PM_PPCR_Register is record
      --  Reset Pullup
      RSTPUN         : Boolean := False;
      --  CAT Request Clock Mask
      CATBRCMASK     : Boolean := True;
      --  ACIFC Request Clock Mask
      ACIFCRCMASK    : Boolean := True;
      --  AST Request Clock Mask
      ASTRCMASK      : Boolean := True;
      --  TWIS0 Request Clock Mask
      TWIS0RCMASK    : Boolean := True;
      --  TWIS1 Request Clock Mask
      TWIS1RCMASK    : Boolean := True;
      --  PEVC Request Clock Mask
      PEVCRCMASK     : Boolean := True;
      --  ADCIFE Request Clock Mask
      ADCIFERCMASK   : Boolean := True;
      --  VREG Request Clock Mask
      VREGRCMASK     : Boolean := True;
      --  Flash Wait BGREF
      FWBGREF        : Boolean := False;
      --  Flash Wait BOD18
      FWBOD18        : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_PPCR_Register use record
      RSTPUN         at 0 range 0 .. 0;
      CATBRCMASK     at 0 range 1 .. 1;
      ACIFCRCMASK    at 0 range 2 .. 2;
      ASTRCMASK      at 0 range 3 .. 3;
      TWIS0RCMASK    at 0 range 4 .. 4;
      TWIS1RCMASK    at 0 range 5 .. 5;
      PEVCRCMASK     at 0 range 6 .. 6;
      ADCIFERCMASK   at 0 range 7 .. 7;
      VREGRCMASK     at 0 range 8 .. 8;
      FWBGREF        at 0 range 9 .. 9;
      FWBOD18        at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Reset Cause Register
   type PM_RCAUSE_Register is record
      --  Read-only. Power-on Reset
      POR            : Boolean;
      --  Read-only. Brown-out Reset
      BOD            : Boolean;
      --  Read-only. External Reset Pin
      EXT            : Boolean;
      --  Read-only. Watchdog Reset
      WDT            : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. OCD Reset
      OCDRST         : Boolean;
      --  unspecified
      Reserved_9_9   : HAL.Bit;
      --  Read-only. Power-on Reset
      POR33          : Boolean;
      --  unspecified
      Reserved_11_12 : HAL.UInt2;
      --  Read-only. Brown-out 3.3V Reset
      BOD33          : Boolean;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_RCAUSE_Register use record
      POR            at 0 range 0 .. 0;
      BOD            at 0 range 1 .. 1;
      EXT            at 0 range 2 .. 2;
      WDT            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OCDRST         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      POR33          at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      BOD33          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Wake Cause Register
   type PM_WCAUSE_Register is record
      --  Read-only. Two-wire Slave Interface 0
      TWI_SLAVE_0    : Boolean;
      --  Read-only. Two-wire Slave Interface 1
      TWI_SLAVE_1    : Boolean;
      --  Read-only. USB Device and Embedded Host Interface
      USBC           : Boolean;
      --  Read-only. Power Scaling OK
      PSOK           : Boolean;
      --  Read-only. BOD18 Interrupt
      BOD18_IRQ      : Boolean;
      --  Read-only. BOD33 Interrupt
      BOD33_IRQ      : Boolean;
      --  Read-only. Picopower UART
      PICOUART       : Boolean;
      --  Read-only. LCD Controller
      LCDCA          : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. External Interrupt Controller
      EIC            : Boolean;
      --  Read-only. Asynchronous Timer
      AST            : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_WCAUSE_Register use record
      TWI_SLAVE_0    at 0 range 0 .. 0;
      TWI_SLAVE_1    at 0 range 1 .. 1;
      USBC           at 0 range 2 .. 2;
      PSOK           at 0 range 3 .. 3;
      BOD18_IRQ      at 0 range 4 .. 4;
      BOD33_IRQ      at 0 range 5 .. 5;
      PICOUART       at 0 range 6 .. 6;
      LCDCA          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      EIC            at 0 range 16 .. 16;
      AST            at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PM_FASTSLEEP_FASTRCOSC_Field is HAL.UInt5;

   --  Fast Sleep Register
   type PM_FASTSLEEP_Register is record
      --  Oscillator
      OSC            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLL
      PLL            : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  RC80 or FLO
      FASTRCOSC      : PM_FASTSLEEP_FASTRCOSC_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  DFLL
      DFLL           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_FASTSLEEP_Register use record
      OSC            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLL            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FASTRCOSC      at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      DFLL           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Configuration Register
   type PM_CONFIG_Register is record
      --  Read-only. APBA Implemented
      PBA           : Boolean;
      --  Read-only. APBB Implemented
      PBB           : Boolean;
      --  Read-only. APBC Implemented
      PBC           : Boolean;
      --  Read-only. APBD Implemented
      PBD           : Boolean;
      --  unspecified
      Reserved_4_6  : HAL.UInt3;
      --  Read-only. HSB PEVC Clock Implemented
      HSBPEVC       : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_CONFIG_Register use record
      PBA           at 0 range 0 .. 0;
      PBB           at 0 range 1 .. 1;
      PBC           at 0 range 2 .. 2;
      PBD           at 0 range 3 .. 3;
      Reserved_4_6  at 0 range 4 .. 6;
      HSBPEVC       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PM_VERSION_VERSION_Field is HAL.UInt12;
   subtype PM_VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type PM_VERSION_Register is record
      --  Read-only. Version number
      VERSION        : PM_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant number
      VARIANT        : PM_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PM_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power Manager
   type PM_Peripheral is record
      --  Main Clock Control
      MCCTRL     : aliased PM_MCCTRL_Register;
      --  CPU Clock Select
      CPUSEL     : aliased PM_CPUSEL_Register;
      --  PBA Clock Select
      PBASEL     : aliased PM_PBASEL_Register;
      --  PBB Clock Select
      PBBSEL     : aliased PM_PBBSEL_Register;
      --  PBC Clock Select
      PBCSEL     : aliased PM_PBCSEL_Register;
      --  PBD Clock Select
      PBDSEL     : aliased PM_PBDSEL_Register;
      --  CPU Mask
      CPUMASK    : aliased PM_CPUMASK_Register;
      --  HSB Mask
      HSBMASK    : aliased PM_HSBMASK_Register;
      --  PBA Mask
      PBAMASK    : aliased PM_PBAMASK_Register;
      --  PBB Mask
      PBBMASK    : aliased PM_PBBMASK_Register;
      --  PBC Mask
      PBCMASK    : aliased PM_PBCMASK_Register;
      --  PBD Mask
      PBDMASK    : aliased PM_PBDMASK_Register;
      --  PBA Divided Clock Mask
      PBADIVMASK : aliased HAL.UInt32;
      --  Clock Failure Detector Control
      CFDCTRL    : aliased PM_CFDCTRL_Register;
      --  Unlock Register
      UNLOCK     : aliased PM_UNLOCK_Register;
      --  Interrupt Enable Register
      IER        : aliased PM_IER_Register;
      --  Interrupt Disable Register
      IDR        : aliased PM_IDR_Register;
      --  Interrupt Mask Register
      IMR        : aliased PM_IMR_Register;
      --  Interrupt Status Register
      ISR        : aliased PM_ISR_Register;
      --  Interrupt Clear Register
      ICR        : aliased PM_ICR_Register;
      --  Status Register
      SR         : aliased PM_SR_Register;
      --  Peripheral Power Control Register
      PPCR       : aliased PM_PPCR_Register;
      --  Reset Cause Register
      RCAUSE     : aliased PM_RCAUSE_Register;
      --  Wake Cause Register
      WCAUSE     : aliased PM_WCAUSE_Register;
      --  Asynchronous Wake Enable
      AWEN       : aliased HAL.UInt32;
      --  Obsvervability
      OBS        : aliased HAL.UInt32;
      --  Fast Sleep Register
      FASTSLEEP  : aliased PM_FASTSLEEP_Register;
      --  Configuration Register
      CONFIG     : aliased PM_CONFIG_Register;
      --  Version Register
      VERSION    : aliased PM_VERSION_Register;
   end record
     with Volatile;

   for PM_Peripheral use record
      MCCTRL     at 16#0# range 0 .. 31;
      CPUSEL     at 16#4# range 0 .. 31;
      PBASEL     at 16#C# range 0 .. 31;
      PBBSEL     at 16#10# range 0 .. 31;
      PBCSEL     at 16#14# range 0 .. 31;
      PBDSEL     at 16#18# range 0 .. 31;
      CPUMASK    at 16#20# range 0 .. 31;
      HSBMASK    at 16#24# range 0 .. 31;
      PBAMASK    at 16#28# range 0 .. 31;
      PBBMASK    at 16#2C# range 0 .. 31;
      PBCMASK    at 16#30# range 0 .. 31;
      PBDMASK    at 16#34# range 0 .. 31;
      PBADIVMASK at 16#40# range 0 .. 31;
      CFDCTRL    at 16#54# range 0 .. 31;
      UNLOCK     at 16#58# range 0 .. 31;
      IER        at 16#C0# range 0 .. 31;
      IDR        at 16#C4# range 0 .. 31;
      IMR        at 16#C8# range 0 .. 31;
      ISR        at 16#CC# range 0 .. 31;
      ICR        at 16#D0# range 0 .. 31;
      SR         at 16#D4# range 0 .. 31;
      PPCR       at 16#160# range 0 .. 31;
      RCAUSE     at 16#180# range 0 .. 31;
      WCAUSE     at 16#184# range 0 .. 31;
      AWEN       at 16#188# range 0 .. 31;
      OBS        at 16#190# range 0 .. 31;
      FASTSLEEP  at 16#194# range 0 .. 31;
      CONFIG     at 16#3F8# range 0 .. 31;
      VERSION    at 16#3FC# range 0 .. 31;
   end record;

   --  Power Manager
   PM_Periph : aliased PM_Peripheral
     with Import, Address => System'To_Address (16#400E0000#);

end SAM_SVD.PM;
