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

--  This spec has been automatically generated from ATSAMD51P20A.svd

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
      BRKEI         : Boolean := False;
      --  Break Output Event Enable
      BRKEO         : Boolean := False;
      --  Interrupt Request Monitor 0 Output Event Enable
      IRQMONEO0     : Boolean := False;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TAL_EVCTRL_Register use record
      BRKEI         at 0 range 0 .. 0;
      BRKEO         at 0 range 1 .. 1;
      IRQMONEO0     at 0 range 2 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   --  TAL_INTENCLR_IPS array
   type TAL_INTENCLR_IPS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TAL_INTENCLR_IPS
   type TAL_INTENCLR_IPS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt2;
         when True =>
            --  IPS as an array
            Arr : TAL_INTENCLR_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TAL_INTENCLR_IPS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Clear
   type TAL_INTENCLR_Register is record
      --  Break Interrupt Enable
      BRK          : Boolean := False;
      --  Inter-Processor Signal Interrupt Enable for CPU 0
      IPS          : TAL_INTENCLR_IPS_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_INTENCLR_Register use record
      BRK          at 0 range 0 .. 0;
      IPS          at 0 range 1 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  TAL_INTENSET_IPS array
   type TAL_INTENSET_IPS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TAL_INTENSET_IPS
   type TAL_INTENSET_IPS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt2;
         when True =>
            --  IPS as an array
            Arr : TAL_INTENSET_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TAL_INTENSET_IPS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Set
   type TAL_INTENSET_Register is record
      --  Break Interrupt Enable
      BRK          : Boolean := False;
      --  Inter-Processor Signal Interrupt Enable for CPU 0
      IPS          : TAL_INTENSET_IPS_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_INTENSET_Register use record
      BRK          at 0 range 0 .. 0;
      IPS          at 0 range 1 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  TAL_INTFLAG_IPS array
   type TAL_INTFLAG_IPS_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TAL_INTFLAG_IPS
   type TAL_INTFLAG_IPS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt2;
         when True =>
            --  IPS as an array
            Arr : TAL_INTFLAG_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TAL_INTFLAG_IPS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Status and Clear
   type TAL_INTFLAG_Register is record
      --  Break
      BRK          : Boolean := False;
      --  Inter-Processor Signal for CPU 0
      IPS          : TAL_INTFLAG_IPS_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_INTFLAG_Register use record
      BRK          at 0 range 0 .. 0;
      IPS          at 0 range 1 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  TAL_GLOBMASK_CPU array
   type TAL_GLOBMASK_CPU_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TAL_GLOBMASK_CPU
   type TAL_GLOBMASK_CPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPU as a value
            Val : HAL.UInt2;
         when True =>
            --  CPU as an array
            Arr : TAL_GLOBMASK_CPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TAL_GLOBMASK_CPU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Global Break Requests Mask
   type TAL_GLOBMASK_Register is record
      --  CPU 0 Break Master
      CPU          : TAL_GLOBMASK_CPU_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Event Break Master
      EVBRK        : Boolean := False;
      --  External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_GLOBMASK_Register use record
      CPU          at 0 range 0 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  TAL_HALT_CPU array
   type TAL_HALT_CPU_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TAL_HALT_CPU
   type TAL_HALT_CPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPU as a value
            Val : HAL.UInt2;
         when True =>
            --  CPU as an array
            Arr : TAL_HALT_CPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TAL_HALT_CPU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Debug Halt Request
   type TAL_HALT_Register is record
      --  Write-only. CPU 0 Break Master
      CPU          : TAL_HALT_CPU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Write-only. Event Break Master
      EVBRK        : Boolean := False;
      --  Write-only. External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_HALT_Register use record
      CPU          at 0 range 0 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  TAL_RESTART_CPU array
   type TAL_RESTART_CPU_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TAL_RESTART_CPU
   type TAL_RESTART_CPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPU as a value
            Val : HAL.UInt2;
         when True =>
            --  CPU as an array
            Arr : TAL_RESTART_CPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TAL_RESTART_CPU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Debug Restart Request
   type TAL_RESTART_Register is record
      --  Write-only. CPU 0 Break Master
      CPU          : TAL_RESTART_CPU_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_6 : HAL.UInt5 := 16#0#;
      --  Write-only. External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_RESTART_Register use record
      CPU          at 0 range 0 .. 1;
      Reserved_2_6 at 0 range 2 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  TAL_BRKSTATUS_CPU array element
   subtype TAL_BRKSTATUS_CPU_Element is HAL.UInt2;

   --  TAL_BRKSTATUS_CPU array
   type TAL_BRKSTATUS_CPU_Field_Array is array (0 .. 1)
     of TAL_BRKSTATUS_CPU_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for TAL_BRKSTATUS_CPU
   type TAL_BRKSTATUS_CPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPU as a value
            Val : HAL.UInt4;
         when True =>
            --  CPU as an array
            Arr : TAL_BRKSTATUS_CPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TAL_BRKSTATUS_CPU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype TAL_BRKSTATUS_EVBRK_Field is HAL.UInt2;
   subtype TAL_BRKSTATUS_EXTBRK_Field is HAL.UInt2;

   --  Break Request Status
   type TAL_BRKSTATUS_Register is record
      --  Read-only. CPU 0 Break Request
      CPU           : TAL_BRKSTATUS_CPU_Field;
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
      CPU           at 0 range 0 .. 3;
      Reserved_4_11 at 0 range 4 .. 11;
      EVBRK         at 0 range 12 .. 13;
      EXTBRK        at 0 range 14 .. 15;
   end record;

   --  Action when global break issued
   type CTICTRLA0_BRKSelect is
     (
      --  Break when requested
      Break,
      --  Trigger DBG interrupt instead of break
      Interrupt,
      --  Ignore break request
      Ignore)
     with Size => 2;
   for CTICTRLA0_BRKSelect use
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

   --  Action when inter-process resource freed
   type CTICTRLA0_IPSSelect is
     (
      --  Generate CPU Event when awaited resource is freed.
      Event,
      --  Generate Interrupt when awaited resource is freed.
      Interrupt)
     with Size => 1;
   for CTICTRLA0_IPSSelect use
     (Event => 0,
      Interrupt => 1);

   --  Cross-Trigger Interface n Control A
   type CTICTRLA_Register is record
      --  Action when global break issued
      BRK          : CTICTRLA0_BRKSelect := SAM_SVD.TAL.Break;
      --  Action when global restart issued
      RESTART      : CTICTRLA0_RESTARTSelect := SAM_SVD.TAL.Restart;
      --  Action when inter-process resource freed
      IPS          : CTICTRLA0_IPSSelect := SAM_SVD.TAL.Event;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTICTRLA_Register use record
      BRK          at 0 range 0 .. 1;
      RESTART      at 0 range 2 .. 2;
      IPS          at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  CTIMASK_CPU array
   type CTIMASK_CPU_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CTIMASK_CPU
   type CTIMASK_CPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CPU as a value
            Val : HAL.UInt2;
         when True =>
            --  CPU as an array
            Arr : CTIMASK_CPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTIMASK_CPU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Cross-Trigger Interface n Mask
   type CTIMASK_Register is record
      --  CPU 0 Break Master
      CPU          : CTIMASK_CPU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Event Break Master
      EVBRK        : Boolean := False;
      --  External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTIMASK_Register use record
      CPU          at 0 range 0 .. 1;
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
   type TAL_INTSTATUS_Registers is array (0 .. 136) of TAL_INTSTATUS_Register
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

   --  DMA Channel Interrupts CPU Select 1
   type TAL_DMACPUSEL1_Register is record
      --  DMA Channel 16 Interrupt CPU Select
      CH16           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  DMA Channel 17 Interrupt CPU Select
      CH17           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  DMA Channel 18 Interrupt CPU Select
      CH18           : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  DMA Channel 19 Interrupt CPU Select
      CH19           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  DMA Channel 20 Interrupt CPU Select
      CH20           : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  DMA Channel 21 Interrupt CPU Select
      CH21           : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  DMA Channel 22 Interrupt CPU Select
      CH22           : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  DMA Channel 23 Interrupt CPU Select
      CH23           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  DMA Channel 24 Interrupt CPU Select
      CH24           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  DMA Channel 25 Interrupt CPU Select
      CH25           : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  DMA Channel 26 Interrupt CPU Select
      CH26           : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  DMA Channel 27 Interrupt CPU Select
      CH27           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  DMA Channel 28 Interrupt CPU Select
      CH28           : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  DMA Channel 29 Interrupt CPU Select
      CH29           : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  DMA Channel 30 Interrupt CPU Select
      CH30           : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  DMA Channel 31 Interrupt CPU Select
      CH31           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_DMACPUSEL1_Register use record
      CH16           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CH17           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CH18           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CH19           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CH20           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CH21           at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CH22           at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CH23           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CH24           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CH25           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CH26           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CH27           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      CH28           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CH29           at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CH30           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      CH31           at 0 range 30 .. 30;
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
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Event Channel 8 Interrupt CPU Select
      CH8            : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Event Channel 9 Interrupt CPU Select
      CH9            : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Event Channel 10 Interrupt CPU Select
      CH10           : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Event Channel 11 Interrupt CPU Select
      CH11           : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
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
      Reserved_15_15 at 0 range 15 .. 15;
      CH8            at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CH9            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CH10           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CH11           at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
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
      --  PAC Interrupt CPU Select
      PAC            : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  PM Interrupt CPU Select
      PM             : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  MCLK Interrupt CPU Select
      MCLK           : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  OSCCTRL Interrupt CPU Select
      OSCCTRL        : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  OSC32KCTRL Interrupt CPU Select
      OSC32KCTRL     : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  SUPC Interrupt CPU Select
      SUPC           : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  WDT Interrupt CPU Select
      WDT            : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  RTC Interrupt CPU Select
      RTC            : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  EIC Interrupt CPU Select
      EIC            : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  FREQM Interrupt CPU Select
      FREQM          : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  SERCOM0 Interrupt CPU Select
      SERCOM0        : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  SERCOM1 Interrupt CPU Select
      SERCOM1        : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  TC0 Interrupt CPU Select
      TC0            : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  TC1 Interrupt CPU Select
      TC1            : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL0_Register use record
      PAC            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      PM             at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MCLK           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OSCCTRL        at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      OSC32KCTRL     at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SUPC           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WDT            at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      RTC            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      EIC            at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      FREQM          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SERCOM0        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      SERCOM1        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TC0            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TC1            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Interrupts CPU Select 2
   type TAL_INTCPUSEL2_Register is record
      --  USB Interrupt CPU Select
      USB            : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  NVMCTRL Interrupt CPU Select
      NVMCTRL        : Boolean := False;
      --  unspecified
      Reserved_5_9   : HAL.UInt5 := 16#0#;
      --  DMAC Interrupt CPU Select
      DMAC           : Boolean := False;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  EVSYS Interrupt CPU Select
      EVSYS          : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  PICOP Interrupt CPU Select
      PICOP          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  SERCOM2 Interrupt CPU Select
      SERCOM2        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  SERCOM3 Interrupt CPU Select
      SERCOM3        : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  TCC0 Interrupt CPU Select
      TCC0           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  TCC1 Interrupt CPU Select
      TCC1           : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  TC2 Interrupt CPU Select
      TC2            : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  TC3 Interrupt CPU Select
      TC3            : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  TAL Interrupt CPU Select
      TAL            : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL2_Register use record
      USB            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      NVMCTRL        at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      DMAC           at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      EVSYS          at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PICOP          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SERCOM2        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SERCOM3        at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      TCC0           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TCC1           at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      TC2            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TC3            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      TAL            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Interrupts CPU Select 3
   type TAL_INTCPUSEL3_Register is record
      --  RAMECC Interrupt CPU Select
      RAMECC        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL3_Register use record
      RAMECC        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupts CPU Select 4
   type TAL_INTCPUSEL4_Register is record
      --  CAN0 Interrupt CPU Select
      CAN0           : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  CAN1 Interrupt CPU Select
      CAN1           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  GMAC Interrupt CPU Select
      GMAC           : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  TCC2 Interrupt CPU Select
      TCC2           : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  TCC3 Interrupt CPU Select
      TCC3           : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  TC4 Interrupt CPU Select
      TC4            : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  TC5 Interrupt CPU Select
      TC5            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  PDEC Interrupt CPU Select
      PDEC           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  AC Interrupt CPU Select
      AC             : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  AES Interrupt CPU Select
      AES            : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  TRNG Interrupt CPU Select
      TRNG           : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  ICM Interrupt CPU Select
      ICM            : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  PUKCC Interrupt CPU Select
      PUKCC          : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  QSPI Interrupt CPU Select
      QSPI           : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL4_Register use record
      CAN0           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CAN1           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GMAC           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TCC2           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TCC3           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      TC4            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TC5            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PDEC           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      AC             at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      AES            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TRNG           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ICM            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      PUKCC          at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      QSPI           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Interrupts CPU Select 6
   type TAL_INTCPUSEL6_Register is record
      --  SERCOM4 Interrupt CPU Select
      SERCOM4        : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  SERCOM5 Interrupt CPU Select
      SERCOM5        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  SERCOM6 Interrupt CPU Select
      SERCOM6        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  SERCOM7 Interrupt CPU Select
      SERCOM7        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  TCC4 Interrupt CPU Select
      TCC4           : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  TC6 Interrupt CPU Select
      TC6            : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  TC7 Interrupt CPU Select
      TC7            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  ADC0 Interrupt CPU Select
      ADC0           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  ADC1 Interrupt CPU Select
      ADC1           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  DAC Interrupt CPU Select
      DAC            : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  I2S Interrupt CPU Select
      I2S            : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  PCC Interrupt CPU Select
      PCC            : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL6_Register use record
      SERCOM4        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      SERCOM5        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SERCOM6        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SERCOM7        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TCC4           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      TC6            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TC7            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      ADC0           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      ADC1           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DAC            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      I2S            at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      PCC            at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Interrupts CPU Select 8
   type TAL_INTCPUSEL8_Register is record
      --  SDHC0 Interrupt CPU Select
      SDHC0         : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  SDHC1 Interrupt CPU Select
      SDHC1         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_INTCPUSEL8_Register use record
      SDHC0         at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      SDHC1         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype TAL_IRQTRIG_IRQNUM_Field is HAL.UInt8;
   subtype TAL_IRQTRIG_OVERRIDE_Field is HAL.UInt8;

   --  Interrupt Trigger
   type TAL_IRQTRIG_Register is record
      --  Trigger Enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Interrupt Request Number
      IRQNUM         : TAL_IRQTRIG_IRQNUM_Field := 16#0#;
      --  Interrupt Request Override Value
      OVERRIDE       : TAL_IRQTRIG_OVERRIDE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_IRQTRIG_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      IRQNUM         at 0 range 8 .. 15;
      OVERRIDE       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Extended Interrupt Request
   type IRQMON_EXTENDSelect is
     (
      --  Event is Interrupt Request signal
      No,
      --  Event is Interrupt Request signal extended until end of Interrupt
      --  Handler
      Yes)
     with Size => 1;
   for IRQMON_EXTENDSelect use
     (No => 0,
      Yes => 1);

   subtype TAL_IRQMON_IRQNUM_Field is HAL.UInt8;

   --  Interrupt Monitor Select
   type TAL_IRQMON_Register is record
      --  Extended Interrupt Request
      EXTEND       : IRQMON_EXTENDSelect := SAM_SVD.TAL.No;
      --  Drop Shortened Events
      DROP         : Boolean := False;
      --  ID of CPU currently servicing this IRQ
      CPUID        : Boolean := False;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
      --  Interrupt Request Number
      IRQNUM       : TAL_IRQMON_IRQNUM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TAL_IRQMON_Register use record
      EXTEND       at 0 range 0 .. 0;
      DROP         at 0 range 1 .. 1;
      CPUID        at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      IRQNUM       at 0 range 8 .. 15;
   end record;

   --  Interrupt Status m for CPU n - Group 0

   --  Interrupt Status m for CPU n - Group 0
   type CPUIRQS_Registers is array (0 .. 4) of HAL.UInt32
     with Volatile;

   --  SMASK_IPS array
   type SMASK_IPS_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Inter-Process Signal Mask m for CPU n - Group 0
   type SMASK_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt32;
         when True =>
            --  IPS as an array
            Arr : SMASK_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SMASK_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Inter-Process Signal Mask m for CPU n - Group 0
   type SMASK_Registers is array (0 .. 1) of SMASK_Register
     with Volatile;

   --  TAL_SFLAGCLR_IPS array
   type TAL_SFLAGCLR_IPS_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Inter-Process Signal Flag Clear
   type TAL_SFLAGCLR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt32;
         when True =>
            --  IPS as an array
            Arr : TAL_SFLAGCLR_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TAL_SFLAGCLR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Inter-Process Signal Flag Clear
   type TAL_SFLAGCLR_Registers is array (0 .. 1) of TAL_SFLAGCLR_Register
     with Volatile;

   --  TAL_SFLAGSET_IPS array
   type TAL_SFLAGSET_IPS_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Inter-Process Signal Flag Set
   type TAL_SFLAGSET_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt32;
         when True =>
            --  IPS as an array
            Arr : TAL_SFLAGSET_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TAL_SFLAGSET_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Inter-Process Signal Flag Set
   type TAL_SFLAGSET_Registers is array (0 .. 1) of TAL_SFLAGSET_Register
     with Volatile;

   --  TAL_SFLAG_IPS array
   type TAL_SFLAG_IPS_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Inter-Process Signal Flag
   type TAL_SFLAG_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IPS as a value
            Val : HAL.UInt32;
         when True =>
            --  IPS as an array
            Arr : TAL_SFLAG_IPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TAL_SFLAG_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Inter-Process Signal Flag
   type TAL_SFLAG_Registers is array (0 .. 1) of TAL_SFLAG_Register
     with Volatile;

   --  Inter-Process Signal Flag Bit n
   type TAL_SFLAGCLRR_Register is record
      --  Inter-Process Signal n
      IPS          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_SFLAGCLRR_Register use record
      IPS          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Inter-Process Signal Flag Bit n
   type TAL_SFLAGCLRR_Registers is array (0 .. 63) of TAL_SFLAGCLRR_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger Allocator
   type TAL_Peripheral is record
      --  Control A
      CTRLA      : aliased TAL_CTRLA_Register;
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
      --  Cross-Trigger Interface n Control A
      CTICTRLA3  : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK3   : aliased CTIMASK_Register;
      --  Interrupt n Status
      INTSTATUS  : aliased TAL_INTSTATUS_Registers;
      --  DMA Channel Interrupts CPU Select 0
      DMACPUSEL0 : aliased TAL_DMACPUSEL0_Register;
      --  DMA Channel Interrupts CPU Select 1
      DMACPUSEL1 : aliased TAL_DMACPUSEL1_Register;
      --  EVSYS Channel Interrupts CPU Select 0
      EVCPUSEL0  : aliased TAL_EVCPUSEL0_Register;
      --  EIC External Interrupts CPU Select 0
      EICCPUSEL0 : aliased TAL_EICCPUSEL0_Register;
      --  Interrupts CPU Select 0
      INTCPUSEL0 : aliased TAL_INTCPUSEL0_Register;
      --  Interrupts CPU Select 1
      INTCPUSEL1 : aliased HAL.UInt32;
      --  Interrupts CPU Select 2
      INTCPUSEL2 : aliased TAL_INTCPUSEL2_Register;
      --  Interrupts CPU Select 3
      INTCPUSEL3 : aliased TAL_INTCPUSEL3_Register;
      --  Interrupts CPU Select 4
      INTCPUSEL4 : aliased TAL_INTCPUSEL4_Register;
      --  Interrupts CPU Select 5
      INTCPUSEL5 : aliased HAL.UInt32;
      --  Interrupts CPU Select 6
      INTCPUSEL6 : aliased TAL_INTCPUSEL6_Register;
      --  Interrupts CPU Select 7
      INTCPUSEL7 : aliased HAL.UInt32;
      --  Interrupts CPU Select 8
      INTCPUSEL8 : aliased TAL_INTCPUSEL8_Register;
      --  Interrupt Trigger
      IRQTRIG    : aliased TAL_IRQTRIG_Register;
      --  Interrupt Monitor Select
      IRQMON     : aliased TAL_IRQMON_Register;
      --  Interrupt Status m for CPU n - Group 0
      CPUIRQS0   : aliased CPUIRQS_Registers;
      --  Interrupt Status m for CPU n - Group 1
      CPUIRQS1   : aliased CPUIRQS_Registers;
      --  Inter-Process Signal Mask m for CPU n - Group 0
      SMASK0     : aliased SMASK_Registers;
      --  Inter-Process Signal Mask m for CPU n - Group 1
      SMASK1     : aliased SMASK_Registers;
      --  Inter-Process Signal Flag Clear
      SFLAGCLR   : aliased TAL_SFLAGCLR_Registers;
      --  Inter-Process Signal Flag Set
      SFLAGSET   : aliased TAL_SFLAGSET_Registers;
      --  Inter-Process Signal Flag
      SFLAG      : aliased TAL_SFLAG_Registers;
      --  Inter-Process Signal Flag Bit n
      SFLAGCLRR  : aliased TAL_SFLAGCLRR_Registers;
   end record
     with Volatile;

   for TAL_Peripheral use record
      CTRLA      at 16#0# range 0 .. 7;
      EXTCTRL    at 16#1# range 0 .. 7;
      EVCTRL     at 16#4# range 0 .. 15;
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
      CTICTRLA3  at 16#16# range 0 .. 7;
      CTIMASK3   at 16#17# range 0 .. 7;
      INTSTATUS  at 16#20# range 0 .. 1095;
      DMACPUSEL0 at 16#110# range 0 .. 31;
      DMACPUSEL1 at 16#114# range 0 .. 31;
      EVCPUSEL0  at 16#118# range 0 .. 31;
      EICCPUSEL0 at 16#120# range 0 .. 31;
      INTCPUSEL0 at 16#128# range 0 .. 31;
      INTCPUSEL1 at 16#12C# range 0 .. 31;
      INTCPUSEL2 at 16#130# range 0 .. 31;
      INTCPUSEL3 at 16#134# range 0 .. 31;
      INTCPUSEL4 at 16#138# range 0 .. 31;
      INTCPUSEL5 at 16#13C# range 0 .. 31;
      INTCPUSEL6 at 16#140# range 0 .. 31;
      INTCPUSEL7 at 16#144# range 0 .. 31;
      INTCPUSEL8 at 16#148# range 0 .. 31;
      IRQTRIG    at 16#164# range 0 .. 31;
      IRQMON     at 16#168# range 0 .. 15;
      CPUIRQS0   at 16#180# range 0 .. 159;
      CPUIRQS1   at 16#1A0# range 0 .. 159;
      SMASK0     at 16#200# range 0 .. 63;
      SMASK1     at 16#208# range 0 .. 63;
      SFLAGCLR   at 16#220# range 0 .. 63;
      SFLAGSET   at 16#228# range 0 .. 63;
      SFLAG      at 16#230# range 0 .. 63;
      SFLAGCLRR  at 16#300# range 0 .. 511;
   end record;

   --  Trigger Allocator
   TAL_Periph : aliased TAL_Peripheral
     with Import, Address => System'To_Address (16#4101E000#);

end SAM_SVD.TAL;
