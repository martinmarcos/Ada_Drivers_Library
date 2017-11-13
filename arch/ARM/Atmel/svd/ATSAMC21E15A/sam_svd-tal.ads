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

--  This spec has been automatically generated from ATSAMC21E15A.svd

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
      --  unspecified
      Reserved_1_5 : HAL.UInt5 := 16#0#;
      --  Event Break Master
      EVBRK        : Boolean := False;
      --  External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_GLOBMASK_Register use record
      CM0P         at 0 range 0 .. 0;
      Reserved_1_5 at 0 range 1 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  Debug Halt Request
   type TAL_HALT_Register is record
      --  Write-only. CM0P Break Master
      CM0P         : Boolean := False;
      --  unspecified
      Reserved_1_5 : HAL.UInt5 := 16#0#;
      --  Write-only. Event Break Master
      EVBRK        : Boolean := False;
      --  Write-only. External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_HALT_Register use record
      CM0P         at 0 range 0 .. 0;
      Reserved_1_5 at 0 range 1 .. 5;
      EVBRK        at 0 range 6 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   --  Debug Restart Request
   type TAL_RESTART_Register is record
      --  Write-only. CM0P Break Master
      CM0P         : Boolean := False;
      --  unspecified
      Reserved_1_6 : HAL.UInt6 := 16#0#;
      --  Write-only. External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for TAL_RESTART_Register use record
      CM0P         at 0 range 0 .. 0;
      Reserved_1_6 at 0 range 1 .. 6;
      EXTBRK       at 0 range 7 .. 7;
   end record;

   subtype TAL_BRKSTATUS_CM0P_Field is HAL.UInt2;
   subtype TAL_BRKSTATUS_EVBRK_Field is HAL.UInt2;
   subtype TAL_BRKSTATUS_EXTBRK_Field is HAL.UInt2;

   --  Break Request Status
   type TAL_BRKSTATUS_Register is record
      --  Read-only. CM0P Break Request
      CM0P          : TAL_BRKSTATUS_CM0P_Field;
      --  unspecified
      Reserved_2_11 : HAL.UInt10;
      --  Read-only. Event Break Request
      EVBRK         : TAL_BRKSTATUS_EVBRK_Field;
      --  Read-only. External Break Request
      EXTBRK        : TAL_BRKSTATUS_EXTBRK_Field;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for TAL_BRKSTATUS_Register use record
      CM0P          at 0 range 0 .. 1;
      Reserved_2_11 at 0 range 2 .. 11;
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

   --  Cross-Trigger Interface n Control A
   type CTICTRLA_Register is record
      --  Action when global break issued
      ACTION       : CTICTRLA0_ACTIONSelect := SAM_SVD.TAL.Break;
      --  Action when global restart issued
      RESTART      : Boolean := False;
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
      --  unspecified
      Reserved_1_5 : HAL.UInt5 := 16#0#;
      --  Event Break Master
      EVBRK        : Boolean := False;
      --  External Break Master
      EXTBRK       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTIMASK_Register use record
      CM0P         at 0 range 0 .. 0;
      Reserved_1_5 at 0 range 1 .. 5;
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
   type TAL_INTSTATUS_Registers is array (0 .. 30) of TAL_INTSTATUS_Register
     with Volatile;

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

   subtype TAL_CPUIRQS_CPUIRQS_Field is HAL.UInt31;

   --  Interrupt Status for CPU n
   type TAL_CPUIRQS_Register is record
      --  Read-only. Interrupt Requests for CPU n
      CPUIRQS        : TAL_CPUIRQS_CPUIRQS_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAL_CPUIRQS_Register use record
      CPUIRQS        at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger Allocator
   type TAL_Peripheral is record
      --  Control A
      CTRLA     : aliased TAL_CTRLA_Register;
      --  Reset Control
      RSTCTRL   : aliased HAL.UInt8;
      --  External Break Control
      EXTCTRL   : aliased TAL_EXTCTRL_Register;
      --  Event Control
      EVCTRL    : aliased TAL_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR  : aliased TAL_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET  : aliased TAL_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG   : aliased TAL_INTFLAG_Register;
      --  Global Break Requests Mask
      GLOBMASK  : aliased TAL_GLOBMASK_Register;
      --  Debug Halt Request
      HALT      : aliased TAL_HALT_Register;
      --  Debug Restart Request
      RESTART   : aliased TAL_RESTART_Register;
      --  Break Request Status
      BRKSTATUS : aliased TAL_BRKSTATUS_Register;
      --  Cross-Trigger Interface n Control A
      CTICTRLA0 : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK0  : aliased CTIMASK_Register;
      --  Cross-Trigger Interface n Control A
      CTICTRLA1 : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK1  : aliased CTIMASK_Register;
      --  Cross-Trigger Interface n Control A
      CTICTRLA2 : aliased CTICTRLA_Register;
      --  Cross-Trigger Interface n Mask
      CTIMASK2  : aliased CTIMASK_Register;
      --  Interrupt n Status
      INTSTATUS : aliased TAL_INTSTATUS_Registers;
      --  Interrupt Trigger
      IRQTRIG   : aliased TAL_IRQTRIG_Register;
      --  Interrupt Status for CPU n
      CPUIRQS   : aliased TAL_CPUIRQS_Register;
   end record
     with Volatile;

   for TAL_Peripheral use record
      CTRLA     at 16#0# range 0 .. 7;
      RSTCTRL   at 16#4# range 0 .. 7;
      EXTCTRL   at 16#5# range 0 .. 7;
      EVCTRL    at 16#6# range 0 .. 7;
      INTENCLR  at 16#8# range 0 .. 7;
      INTENSET  at 16#9# range 0 .. 7;
      INTFLAG   at 16#A# range 0 .. 7;
      GLOBMASK  at 16#B# range 0 .. 7;
      HALT      at 16#C# range 0 .. 7;
      RESTART   at 16#D# range 0 .. 7;
      BRKSTATUS at 16#E# range 0 .. 15;
      CTICTRLA0 at 16#10# range 0 .. 7;
      CTIMASK0  at 16#11# range 0 .. 7;
      CTICTRLA1 at 16#12# range 0 .. 7;
      CTIMASK1  at 16#13# range 0 .. 7;
      CTICTRLA2 at 16#14# range 0 .. 7;
      CTIMASK2  at 16#15# range 0 .. 7;
      INTSTATUS at 16#20# range 0 .. 247;
      IRQTRIG   at 16#60# range 0 .. 15;
      CPUIRQS   at 16#64# range 0 .. 31;
   end record;

   --  Trigger Allocator
   TAL_Periph : aliased TAL_Peripheral
     with Import, Address => System'To_Address (16#42006000#);

end SAM_SVD.TAL;
