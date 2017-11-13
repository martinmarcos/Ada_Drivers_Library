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

--  This spec has been automatically generated from ATSAMD20G14.svd

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

   --  Control
   type EIC_CTRL_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EIC_CTRL_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Status
   type EIC_STATUS_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7;
      --  Read-only. Synchronization Busy
      SYNCBUSY     : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EIC_STATUS_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      SYNCBUSY     at 0 range 7 .. 7;
   end record;

   --  Non-Maskable Interrupt Sense
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
      --  Non-Maskable Interrupt Sense
      NMISENSE     : NMICTRL_NMISENSESelect := SAM_SVD.EIC.None;
      --  Non-Maskable Interrupt Filter Enable
      NMIFILTEN    : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EIC_NMICTRL_Register use record
      NMISENSE     at 0 range 0 .. 2;
      NMIFILTEN    at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Non-Maskable Interrupt Flag Status and Clear
   type EIC_NMIFLAG_Register is record
      --  Non-Maskable Interrupt
      NMI          : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EIC_NMIFLAG_Register use record
      NMI          at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  EIC_EVCTRL_EXTINTEO array
   type EIC_EVCTRL_EXTINTEO_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EIC_EVCTRL_EXTINTEO
   type EIC_EVCTRL_EXTINTEO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTINTEO as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTINTEO as an array
            Arr : EIC_EVCTRL_EXTINTEO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EIC_EVCTRL_EXTINTEO_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Event Control
   type EIC_EVCTRL_Register is record
      --  External Interrupt 0 Event Output Enable
      EXTINTEO       : EIC_EVCTRL_EXTINTEO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_EVCTRL_Register use record
      EXTINTEO       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_INTENCLR_EXTINT array
   type EIC_INTENCLR_EXTINT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EIC_INTENCLR_EXTINT
   type EIC_INTENCLR_EXTINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTINT as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTINT as an array
            Arr : EIC_INTENCLR_EXTINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EIC_INTENCLR_EXTINT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Enable Clear
   type EIC_INTENCLR_Register is record
      --  External Interrupt 0 Enable
      EXTINT         : EIC_INTENCLR_EXTINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_INTENCLR_Register use record
      EXTINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_INTENSET_EXTINT array
   type EIC_INTENSET_EXTINT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EIC_INTENSET_EXTINT
   type EIC_INTENSET_EXTINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTINT as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTINT as an array
            Arr : EIC_INTENSET_EXTINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EIC_INTENSET_EXTINT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Enable Set
   type EIC_INTENSET_Register is record
      --  External Interrupt 0 Enable
      EXTINT         : EIC_INTENSET_EXTINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_INTENSET_Register use record
      EXTINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_INTFLAG_EXTINT array
   type EIC_INTFLAG_EXTINT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EIC_INTFLAG_EXTINT
   type EIC_INTFLAG_EXTINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTINT as a value
            Val : HAL.UInt16;
         when True =>
            --  EXTINT as an array
            Arr : EIC_INTFLAG_EXTINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EIC_INTFLAG_EXTINT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt Flag Status and Clear
   type EIC_INTFLAG_Register is record
      --  External Interrupt 0
      EXTINT         : EIC_INTFLAG_EXTINT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_INTFLAG_Register use record
      EXTINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EIC_WAKEUP_WAKEUPEN array
   type EIC_WAKEUP_WAKEUPEN_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EIC_WAKEUP_WAKEUPEN
   type EIC_WAKEUP_WAKEUPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WAKEUPEN as a value
            Val : HAL.UInt16;
         when True =>
            --  WAKEUPEN as an array
            Arr : EIC_WAKEUP_WAKEUPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EIC_WAKEUP_WAKEUPEN_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Wake-Up Enable
   type EIC_WAKEUP_Register is record
      --  External Interrupt 0 Wake-up Enable
      WAKEUPEN       : EIC_WAKEUP_WAKEUPEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EIC_WAKEUP_Register use record
      WAKEUPEN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Input Sense 0 Configuration
   type CONFIG_SENSE0Select is
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
   for CONFIG_SENSE0Select use
     (None => 0,
      Rise => 1,
      Fall => 2,
      Both => 3,
      High => 4,
      Low => 5);

   --  Input Sense 1 Configuration
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

   --  Input Sense 2 Configuration
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

   --  Input Sense 3 Configuration
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

   --  Input Sense 4 Configuration
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

   --  Input Sense 5 Configuration
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

   --  Input Sense 6 Configuration
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

   --  Input Sense 7 Configuration
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

   --  Configuration n
   type EIC_CONFIG_Register is record
      --  Input Sense 0 Configuration
      SENSE0  : CONFIG_SENSE0Select := SAM_SVD.EIC.None;
      --  Filter 0 Enable
      FILTEN0 : Boolean := False;
      --  Input Sense 1 Configuration
      SENSE1  : CONFIG_SENSE1Select := SAM_SVD.EIC.None;
      --  Filter 1 Enable
      FILTEN1 : Boolean := False;
      --  Input Sense 2 Configuration
      SENSE2  : CONFIG_SENSE2Select := SAM_SVD.EIC.None;
      --  Filter 2 Enable
      FILTEN2 : Boolean := False;
      --  Input Sense 3 Configuration
      SENSE3  : CONFIG_SENSE3Select := SAM_SVD.EIC.None;
      --  Filter 3 Enable
      FILTEN3 : Boolean := False;
      --  Input Sense 4 Configuration
      SENSE4  : CONFIG_SENSE4Select := SAM_SVD.EIC.None;
      --  Filter 4 Enable
      FILTEN4 : Boolean := False;
      --  Input Sense 5 Configuration
      SENSE5  : CONFIG_SENSE5Select := SAM_SVD.EIC.None;
      --  Filter 5 Enable
      FILTEN5 : Boolean := False;
      --  Input Sense 6 Configuration
      SENSE6  : CONFIG_SENSE6Select := SAM_SVD.EIC.None;
      --  Filter 6 Enable
      FILTEN6 : Boolean := False;
      --  Input Sense 7 Configuration
      SENSE7  : CONFIG_SENSE7Select := SAM_SVD.EIC.None;
      --  Filter 7 Enable
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

   --  Configuration n
   type EIC_CONFIG_Registers is array (0 .. 1) of EIC_CONFIG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  External Interrupt Controller
   type EIC_Peripheral is record
      --  Control
      CTRL     : aliased EIC_CTRL_Register;
      --  Status
      STATUS   : aliased EIC_STATUS_Register;
      --  Non-Maskable Interrupt Control
      NMICTRL  : aliased EIC_NMICTRL_Register;
      --  Non-Maskable Interrupt Flag Status and Clear
      NMIFLAG  : aliased EIC_NMIFLAG_Register;
      --  Event Control
      EVCTRL   : aliased EIC_EVCTRL_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased EIC_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased EIC_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased EIC_INTFLAG_Register;
      --  Wake-Up Enable
      WAKEUP   : aliased EIC_WAKEUP_Register;
      --  Configuration n
      CONFIG   : aliased EIC_CONFIG_Registers;
   end record
     with Volatile;

   for EIC_Peripheral use record
      CTRL     at 16#0# range 0 .. 7;
      STATUS   at 16#1# range 0 .. 7;
      NMICTRL  at 16#2# range 0 .. 7;
      NMIFLAG  at 16#3# range 0 .. 7;
      EVCTRL   at 16#4# range 0 .. 31;
      INTENCLR at 16#8# range 0 .. 31;
      INTENSET at 16#C# range 0 .. 31;
      INTFLAG  at 16#10# range 0 .. 31;
      WAKEUP   at 16#14# range 0 .. 31;
      CONFIG   at 16#18# range 0 .. 63;
   end record;

   --  External Interrupt Controller
   EIC_Periph : aliased EIC_Peripheral
     with Import, Address => System'To_Address (16#40001800#);

end SAM_SVD.EIC;
