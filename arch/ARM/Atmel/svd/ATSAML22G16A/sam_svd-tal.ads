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

package SAM_SVD.TAL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control A
   type TAL_CTRLA_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  External Break Control
   type TAL_EXTCTRL_Register is record
      --  Enable BRK Pin
      ENABLE       : Boolean := False;
      --  Invert BRK Pin
      INV          : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_EXTCTRL_Register use record
      ENABLE       at 0 range 0 .. 0;
      INV          at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Event Control
   type TAL_EVCTRL_Register is record
      --  Break Input Event Enable
      BRKEI        : Boolean := False;
      --  Break Output Event Enable
      BRKEO        : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_EVCTRL_Register use record
      BRKEI        at 0 range 0 .. 0;
      BRKEO        at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Interrupt Enable Clear
   type TAL_INTENCLR_Register is record
      --  Break Interrupt Enable
      BRK          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_INTENCLR_Register use record
      BRK          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Enable Set
   type TAL_INTENSET_Register is record
      --  Break Interrupt Enable
      BRK          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_INTENSET_Register use record
      BRK          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Flag Status and Clear
   type TAL_INTFLAG_Register is record
      --  Break
      BRK          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_INTFLAG_Register use record
      BRK          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Global Break Requests Mask
   type TAL_GLOBMASK_Register is record
      --  CM0P Break Master
      CM0P         : Boolean := False;
      --  PPP Break Master
      PPP          : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Event Break Master
      EVBRK        : Boolean := False;
      --  External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_GLOBMASK_Register use record
      CM0P         at 0 range 0 .. 0;
      PPP          at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  Debug Halt Request
   type TAL_HALT_Register is record
      --  Write-only. CM0P Break Master
      CM0P         : Boolean := False;
      --  Write-only. PPP Break Master
      PPP          : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Write-only. Event Break Master
      EVBRK        : Boolean := False;
      --  Write-only. External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_HALT_Register use record
      CM0P         at 0 range 0 .. 0;
      PPP          at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  Debug Restart Request
   type TAL_RESTART_Register is record
      --  Write-only. CM0P Break Master
      CM0P         : Boolean := False;
      --  Write-only. PPP Break Master
      PPP          : Boolean := False;
      --  unspecified
      Reserved_2_6 : HAL.UInt5 := 16#0#;
      --  Write-only. External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_RESTART_Register use record
      CM0P         at 0 range 0 .. 0;
      PPP          at 0 range 1 .. 1;
      Reserved_2_6 at 0 range 2 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   subtype TAL_BRKSTATUS_CM0P_Field is HAL.UInt2;
   subtype TAL_BRKSTATUS_PPP_Field is HAL.UInt2;
   subtype TAL_BRKSTATUS_EVBRK_Field is HAL.UInt2;
   subtype TAL_BRKSTATUS_EXTBRK_Field is HAL.UInt2;

   --  Break Request Status
   type TAL_BRKSTATUS_Register is record
      --  Read-only. CM0P Break Request
      CM0P          : TAL_BRKSTATUS_CM0P_Field;
      --  Read-only. PPP Break Request
      PPP           : TAL_BRKSTATUS_PPP_Field;
      --  unspecified
      Reserved_4_11 : HAL.UInt8;
      --  Read-only. Event Break Request
      EVBRK         : TAL_BRKSTATUS_EVBRK_Field;
      --  Read-only. External Break Request
      EXTBRK        : TAL_BRKSTATUS_EXTBRK_Field;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TAL_BRKSTATUS_Register use record
      CM0P          at 0 range 0 .. 1;
      PPP           at 0 range 2 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      EVBRK         at 0 range 12 .. 13;
      EXTBRK        at 0 range 14 .. 15;
   end record;

   --  Action when global break issued
   type CTICTRLA0_ACTIONSelect is
     (
      --  Break when requested
      Break,
      --  Trigger DBG interrupt instead of break
      Interrupt,
      --  Ignore break request
      Ignore)
     with Size => 2;
   for CTICTRLA0_ACTIONSelect use
     (Break => 0,
      Interrupt => 1,
      Ignore => 2);

   --  Action when global restart issued
   type CTICTRLA0_RESTARTSelect is
     (
      --  Restart when requested
      Restart,
      --  Ignore restart request
      Ignore)
     with Size => 1;
   for CTICTRLA0_RESTARTSelect use
     (Restart => 0,
      Ignore => 1);

   --  Cross-Trigger Interface n Control A
   type CTICTRLA_Register is record
      --  Action when global break issued
      ACTION       : CTICTRLA0_ACTIONSelect := SAM_SVD.TAL.Break;
      --  Action when global restart issued
      RESTART      : CTICTRLA0_RESTARTSelect := SAM_SVD.TAL.Restart;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTICTRLA_Register use record
      ACTION       at 0 range 0 .. 1;
      RESTART      at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Cross-Trigger Interface n Mask
   type CTIMASK_Register is record
      --  CM0P Break Master
      CM0P         : Boolean := False;
      --  PPP Break Master
      PPP          : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Event Break Master
      EVBRK        : Boolean := False;
      --  External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTIMASK_Register use record
      CM0P         at 0 range 0 .. 0;
      PPP          at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  TAL_INTSTATUS_IRQ array
   type TAL_INTSTATUS_IRQ_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Interrupt n Status
   type TAL_INTSTATUS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IRQ as a value
            Val : HAL.UInt8;
         when True =>
            --  IRQ as an array
            Arr : TAL_INTSTATUS_IRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TAL_INTSTATUS_Register use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Interrupt n Status
   type TAL_INTSTATUS_Registers is array (0 .. 25) of TAL_INTSTATUS_Register
     with Volatile;

   --  DMA Channel Interrupts CPU Select 0
   type TAL_DMACPUSEL0_Register is record
      --  DMA Channel 0 Interrupt CPU Select
      CH0            : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  DMA Channel 1 Interrupt CPU Select
      CH1            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  DMA Channel 2 Interrupt CPU Select
      CH2            : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  DMA Channel 3 Interrupt CPU Select
      CH3            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  DMA Channel 4 Interrupt CPU Select
      CH4            : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  DMA Channel 5 Interrupt CPU Select
      CH5            : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  DMA Channel 6 Interrupt CPU Select
      CH6            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  DMA Channel 7 Interrupt CPU Select
      CH7            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  DMA Channel 8 Interrupt CPU Select
      CH8            : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  DMA Channel 9 Interrupt CPU Select
      CH9            : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  DMA Channel 10 Interrupt CPU Select
      CH10           : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  DMA Channel 11 Interrupt CPU Select
      CH11           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  DMA Channel 12 Interrupt CPU Select
      CH12           : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  DMA Channel 13 Interrupt CPU Select
      CH13           : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  DMA Channel 14 Interrupt CPU Select
      CH14           : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  DMA Channel 15 Interrupt CPU Select
      CH15           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_DMACPUSEL0_Register use record
      CH0            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CH1            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CH2            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CH3            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CH4            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CH5            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CH6            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CH7            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CH8            at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CH9            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CH10           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CH11           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CH12           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CH13           at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CH14           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      CH15           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  EVSYS Channel Interrupts CPU Select 0
   type TAL_EVCPUSEL0_Register is record
      --  Event Channel 0 Interrupt CPU Select
      CH0            : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Event Channel 1 Interrupt CPU Select
      CH1            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Event Channel 2 Interrupt CPU Select
      CH2            : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Event Channel 3 Interrupt CPU Select
      CH3            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Event Channel 4 Interrupt CPU Select
      CH4            : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Event Channel 5 Interrupt CPU Select
      CH5            : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Event Channel 6 Interrupt CPU Select
      CH6            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Event Channel 7 Interrupt CPU Select
      CH7            : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_EVCPUSEL0_Register use record
      CH0            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CH1            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CH2            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CH3            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CH4            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CH5            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CH6            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CH7            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  EIC External Interrupts CPU Select 0
   type TAL_EICCPUSEL0_Register is record
      --  External Interrupt 0 CPU Select
      EXTINT0        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  External Interrupt 1 CPU Select
      EXTINT1        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  External Interrupt 2 CPU Select
      EXTINT2        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  External Interrupt 3 CPU Select
      EXTINT3        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  External Interrupt 4 CPU Select
      EXTINT4        : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  External Interrupt 5 CPU Select
      EXTINT5        : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External Interrupt 6 CPU Select
      EXTINT6        : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  External Interrupt 7 CPU Select
      EXTINT7        : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  External Interrupt 8 CPU Select
      EXTINT8        : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  External Interrupt 9 CPU Select
      EXTINT9        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  External Interrupt 10 CPU Select
      EXTINT10       : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  External Interrupt 11 CPU Select
      EXTINT11       : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  External Interrupt 12 CPU Select
      EXTINT12       : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  External Interrupt 13 CPU Select
      EXTINT13       : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  External Interrupt 14 CPU Select
      EXTINT14       : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  External Interrupt 15 CPU Select
      EXTINT15       : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_EICCPUSEL0_Register use record
      EXTINT0        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      EXTINT1        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EXTINT2        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      EXTINT3        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EXTINT4        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      EXTINT5        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EXTINT6        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      EXTINT7        at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      EXTINT8        at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      EXTINT9        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      EXTINT10       at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      EXTINT11       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EXTINT12       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      EXTINT13       at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      EXTINT14       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      EXTINT15       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Interrupts CPU Select 0
   type TAL_INTCPUSEL0_Register is record
      --  SYSTEM Interrupt CPU Select
      SYSTEM         : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  WDT Interrupt CPU Select
      WDT            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  RTC Interrupt CPU Select
      RTC            : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  FREQM Interrupt CPU Select
      FREQM          : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  USB Interrupt CPU Select
      USB            : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  NVMCTRL Interrupt CPU Select
      NVMCTRL        : Boolean := False;
      --  unspecified
      Reserved_13_17 : HAL.UInt5 := 16#0#;
      --  SERCOM0 Interrupt CPU Select
      SERCOM0        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  SERCOM1 Interrupt CPU Select
      SERCOM1        : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  SERCOM2 Interrupt CPU Select
      SERCOM2        : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  SERCOM3 Interrupt CPU Select
      SERCOM3        : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  SERCOM4 Interrupt CPU Select
      SERCOM4        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  SERCOM5 Interrupt CPU Select
      SERCOM5        : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  TCC0 Interrupt CPU Select
      TCC0           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL0_Register use record
      SYSTEM         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      WDT            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RTC            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FREQM          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      USB            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NVMCTRL        at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      SERCOM0        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SERCOM1        at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SERCOM2        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SERCOM3        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      SERCOM4        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SERCOM5        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TCC0           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Interrupts CPU Select 1
   type TAL_INTCPUSEL1_Register is record
      --  TC0 Interrupt CPU Select
      TC0            : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  TC1 Interrupt CPU Select
      TC1            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  TC2 Interrupt CPU Select
      TC2            : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  TC3 Interrupt CPU Select
      TC3            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ADC Interrupt CPU Select
      ADC            : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  AC Interrupt CPU Select
      AC             : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  PTC Interrupt CPU Select
      PTC            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  SLCD Interrupt CPU Select
      SLCD           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  AES Interrupt CPU Select
      AES            : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  TRNG Interrupt CPU Select
      TRNG           : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL1_Register use record
      TC0            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TC1            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TC2            at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TC3            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ADC            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      AC             at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PTC            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SLCD           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AES            at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TRNG           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TAL_IRQTRIG_IRQNUM_Field is HAL.UInt5;
   subtype TAL_IRQTRIG_OVERRIDE_Field is HAL.UInt8;

   --  Interrupt Trigger
   type TAL_IRQTRIG_Register is record
      --  Trigger Enable
      ENABLE       : Boolean := False;
      --  Interrupt Request Number
      IRQNUM       : TAL_IRQTRIG_IRQNUM_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Interrupt Request Override Value
      OVERRIDE     : TAL_IRQTRIG_OVERRIDE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TAL_IRQTRIG_Register use record
      ENABLE       at 0 range 0 .. 0;
      IRQNUM       at 0 range 1 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      OVERRIDE     at 0 range 8 .. 15;
   end record;

   subtype TAL_CPUIRQS_CPUIRQS_Field is HAL.UInt26;

   --  Interrupt Status for CPU n
   type TAL_CPUIRQS_Register is record
      --  Read-only. Interrupt Requests for CPU n
      CPUIRQS        : TAL_CPUIRQS_CPUIRQS_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_CPUIRQS_Register use record
      CPUIRQS        at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger Allocator
   type TAL_Peripheral is record
      --  Control A
      CTRLA      : aliased TAL_CTRLA_Register;
      --  Reset Control
      RSTCTRL    : aliased HAL.UInt8;
      --  External Break Control
      EXTCTRL    : aliased TAL_EXTCTRL_Register;
      --  Event Control
      EVCTRL     : aliased TAL_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR   : aliased TAL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET   : aliased TAL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG    : aliased TAL_INTFLAG_Register;
      --  Global Break Requests Mask
      GLOBMASK   : aliased TAL_GLOBMASK_Register;
      --  Debug Halt Request
      HALT       : aliased TAL_HALT_Register;
      --  Debug Restart Request
      RESTART    : aliased TAL_RESTART_Register;
      --  Break Request Status
      BRKSTATUS  : aliased TAL_BRKSTATUS_Register;
      --  Cross-Trigger Interface n Control A
      CTICTRLA0  : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK0   : aliased CTIMASK_Register;
      --  Cross-Trigger Interface n Control A
      CTICTRLA1  : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK1   : aliased CTIMASK_Register;
      --  Cross-Trigger Interface n Control A
      CTICTRLA2  : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK2   : aliased CTIMASK_Register;
      --  Interrupt n Status
      INTSTATUS  : aliased TAL_INTSTATUS_Registers;
      --  DMA Channel Interrupts CPU Select 0
      DMACPUSEL0 : aliased TAL_DMACPUSEL0_Register;
      --  EVSYS Channel Interrupts CPU Select 0
      EVCPUSEL0  : aliased TAL_EVCPUSEL0_Register;
      --  EIC External Interrupts CPU Select 0
      EICCPUSEL0 : aliased TAL_EICCPUSEL0_Register;
      --  Interrupts CPU Select 0
      INTCPUSEL0 : aliased TAL_INTCPUSEL0_Register;
      --  Interrupts CPU Select 1
      INTCPUSEL1 : aliased TAL_INTCPUSEL1_Register;
      --  Interrupt Trigger
      IRQTRIG    : aliased TAL_IRQTRIG_Register;
      --  Interrupt Status for CPU n
      CPUIRQS    : aliased TAL_CPUIRQS_Register;
   end record
     with Volatile;

   for TAL_Peripheral use record
      CTRLA      at 16#0# range 0 .. 7;
      RSTCTRL    at 16#4# range 0 .. 7;
      EXTCTRL    at 16#5# range 0 .. 7;
      EVCTRL     at 16#6# range 0 .. 7;
      INTENCLR   at 16#8# range 0 .. 7;
      INTENSET   at 16#9# range 0 .. 7;
      INTFLAG    at 16#A# range 0 .. 7;
      GLOBMASK   at 16#B# range 0 .. 7;
      HALT       at 16#C# range 0 .. 7;
      RESTART    at 16#D# range 0 .. 7;
      BRKSTATUS  at 16#E# range 0 .. 15;
      CTICTRLA0  at 16#10# range 0 .. 7;
      CTIMASK0   at 16#11# range 0 .. 7;
      CTICTRLA1  at 16#12# range 0 .. 7;
      CTIMASK1   at 16#13# range 0 .. 7;
      CTICTRLA2  at 16#14# range 0 .. 7;
      CTIMASK2   at 16#15# range 0 .. 7;
      INTSTATUS  at 16#20# range 0 .. 207;
      DMACPUSEL0 at 16#40# range 0 .. 31;
      EVCPUSEL0  at 16#48# range 0 .. 31;
      EICCPUSEL0 at 16#50# range 0 .. 31;
      INTCPUSEL0 at 16#58# range 0 .. 31;
      INTCPUSEL1 at 16#5C# range 0 .. 31;
      IRQTRIG    at 16#60# range 0 .. 15;
      CPUIRQS    at 16#64# range 0 .. 31;
   end record;

   --  Trigger Allocator
   TAL_Periph : aliased TAL_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

end SAM_SVD.TAL;
