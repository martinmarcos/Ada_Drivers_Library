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

--  This spec has been automatically generated from ATSAMC20J17AU.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.EVSYS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control
   type EVSYS_CTRLA_Register is record
      --  Write-only. Software Reset
      SWRST        : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EVSYS_CTRLA_Register use record
      SWRST        at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  EVSYS_CHSTATUS_USRRDY array
   type EVSYS_CHSTATUS_USRRDY_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_CHSTATUS_USRRDY
   type EVSYS_CHSTATUS_USRRDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USRRDY as a value
            Val : HAL.UInt6;
         when True =>
            --  USRRDY as an array
            Arr : EVSYS_CHSTATUS_USRRDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_CHSTATUS_USRRDY_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EVSYS_CHSTATUS_CHBUSY array
   type EVSYS_CHSTATUS_CHBUSY_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_CHSTATUS_CHBUSY
   type EVSYS_CHSTATUS_CHBUSY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHBUSY as a value
            Val : HAL.UInt6;
         when True =>
            --  CHBUSY as an array
            Arr : EVSYS_CHSTATUS_CHBUSY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_CHSTATUS_CHBUSY_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Channel Status
   type EVSYS_CHSTATUS_Register is record
      --  Read-only. Channel 0 User Ready
      USRRDY         : EVSYS_CHSTATUS_USRRDY_Field;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Channel 0 Busy
      CHBUSY         : EVSYS_CHSTATUS_CHBUSY_Field;
      --  unspecified
      Reserved_22_31 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_CHSTATUS_Register use record
      USRRDY         at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      CHBUSY         at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  EVSYS_INTENCLR_OVR array
   type EVSYS_INTENCLR_OVR_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_INTENCLR_OVR
   type EVSYS_INTENCLR_OVR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVR as a value
            Val : HAL.UInt6;
         when True =>
            --  OVR as an array
            Arr : EVSYS_INTENCLR_OVR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_INTENCLR_OVR_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EVSYS_INTENCLR_EVD array
   type EVSYS_INTENCLR_EVD_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_INTENCLR_EVD
   type EVSYS_INTENCLR_EVD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EVD as a value
            Val : HAL.UInt6;
         when True =>
            --  EVD as an array
            Arr : EVSYS_INTENCLR_EVD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_INTENCLR_EVD_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Interrupt Enable Clear
   type EVSYS_INTENCLR_Register is record
      --  Channel 0 Overrun Interrupt Enable
      OVR            : EVSYS_INTENCLR_OVR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Channel 0 Event Detection Interrupt Enable
      EVD            : EVSYS_INTENCLR_EVD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_INTENCLR_Register use record
      OVR            at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      EVD            at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  EVSYS_INTENSET_OVR array
   type EVSYS_INTENSET_OVR_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_INTENSET_OVR
   type EVSYS_INTENSET_OVR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVR as a value
            Val : HAL.UInt6;
         when True =>
            --  OVR as an array
            Arr : EVSYS_INTENSET_OVR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_INTENSET_OVR_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EVSYS_INTENSET_EVD array
   type EVSYS_INTENSET_EVD_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_INTENSET_EVD
   type EVSYS_INTENSET_EVD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EVD as a value
            Val : HAL.UInt6;
         when True =>
            --  EVD as an array
            Arr : EVSYS_INTENSET_EVD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_INTENSET_EVD_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Interrupt Enable Set
   type EVSYS_INTENSET_Register is record
      --  Channel 0 Overrun Interrupt Enable
      OVR            : EVSYS_INTENSET_OVR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Channel 0 Event Detection Interrupt Enable
      EVD            : EVSYS_INTENSET_EVD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_INTENSET_Register use record
      OVR            at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      EVD            at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  EVSYS_INTFLAG_OVR array
   type EVSYS_INTFLAG_OVR_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_INTFLAG_OVR
   type EVSYS_INTFLAG_OVR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVR as a value
            Val : HAL.UInt6;
         when True =>
            --  OVR as an array
            Arr : EVSYS_INTFLAG_OVR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_INTFLAG_OVR_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EVSYS_INTFLAG_EVD array
   type EVSYS_INTFLAG_EVD_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_INTFLAG_EVD
   type EVSYS_INTFLAG_EVD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EVD as a value
            Val : HAL.UInt6;
         when True =>
            --  EVD as an array
            Arr : EVSYS_INTFLAG_EVD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_INTFLAG_EVD_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Interrupt Flag Status and Clear
   type EVSYS_INTFLAG_Register is record
      --  Channel 0 Overrun
      OVR            : EVSYS_INTFLAG_OVR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Channel 0 Event Detection
      EVD            : EVSYS_INTFLAG_EVD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_INTFLAG_Register use record
      OVR            at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      EVD            at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  EVSYS_SWEVT_CHANNEL array
   type EVSYS_SWEVT_CHANNEL_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EVSYS_SWEVT_CHANNEL
   type EVSYS_SWEVT_CHANNEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHANNEL as a value
            Val : HAL.UInt6;
         when True =>
            --  CHANNEL as an array
            Arr : EVSYS_SWEVT_CHANNEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EVSYS_SWEVT_CHANNEL_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Software Event
   type EVSYS_SWEVT_Register is record
      --  Write-only. Channel 0 Software Selection
      CHANNEL       : EVSYS_SWEVT_CHANNEL_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_SWEVT_Register use record
      CHANNEL       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype EVSYS_CHANNEL_EVGEN_Field is HAL.UInt7;

   --  Path Selection
   type CHANNEL_PATHSelect is
     (
      --  Synchronous path
      Synchronous,
      --  Resynchronized path
      Resynchronized,
      --  Asynchronous path
      Asynchronous)
     with Size => 2;
   for CHANNEL_PATHSelect use
     (Synchronous => 0,
      Resynchronized => 1,
      Asynchronous => 2);

   --  Edge Detection Selection
   type CHANNEL_EDGSELSelect is
     (
      --  No event output when using the resynchronized or synchronous path
      No_Evt_Output,
      --  Event detection only on the rising edge of the signal from the event
      --  generator when using the resynchronized or synchronous path
      Rising_Edge,
      --  Event detection only on the falling edge of the signal from the event
      --  generator when using the resynchronized or synchronous path
      Falling_Edge,
      --  Event detection on rising and falling edges of the signal from the
      --  event generator when using the resynchronized or synchronous path
      Both_Edges)
     with Size => 2;
   for CHANNEL_EDGSELSelect use
     (No_Evt_Output => 0,
      Rising_Edge => 1,
      Falling_Edge => 2,
      Both_Edges => 3);

   --  Channel n
   type EVSYS_CHANNEL_Register is record
      --  Event Generator Selection
      EVGEN          : EVSYS_CHANNEL_EVGEN_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Path Selection
      PATH           : CHANNEL_PATHSelect := SAM_SVD.EVSYS.Synchronous;
      --  Edge Detection Selection
      EDGSEL         : CHANNEL_EDGSELSelect := SAM_SVD.EVSYS.No_Evt_Output;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Run in standby
      RUNSTDBY       : Boolean := False;
      --  Generic Clock On Demand
      ONDEMAND       : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_CHANNEL_Register use record
      EVGEN          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PATH           at 0 range 8 .. 9;
      EDGSEL         at 0 range 10 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      RUNSTDBY       at 0 range 14 .. 14;
      ONDEMAND       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Channel n
   type EVSYS_CHANNEL_Registers is array (0 .. 5) of EVSYS_CHANNEL_Register
     with Volatile;

   subtype EVSYS_USER_CHANNEL_Field is HAL.UInt4;

   --  User Multiplexer n
   type EVSYS_USER_Register is record
      --  Channel Event Selection
      CHANNEL       : EVSYS_USER_CHANNEL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_USER_Register use record
      CHANNEL       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  User Multiplexer n
   type EVSYS_USER_Registers is array (0 .. 46) of EVSYS_USER_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Event System Interface
   type EVSYS_Peripheral is record
      --  Control
      CTRLA    : aliased EVSYS_CTRLA_Register;
      --  Channel Status
      CHSTATUS : aliased EVSYS_CHSTATUS_Register;
      --  Interrupt Enable Clear
      INTENCLR : aliased EVSYS_INTENCLR_Register;
      --  Interrupt Enable Set
      INTENSET : aliased EVSYS_INTENSET_Register;
      --  Interrupt Flag Status and Clear
      INTFLAG  : aliased EVSYS_INTFLAG_Register;
      --  Software Event
      SWEVT    : aliased EVSYS_SWEVT_Register;
      --  Channel n
      CHANNEL  : aliased EVSYS_CHANNEL_Registers;
      --  User Multiplexer n
      USER     : aliased EVSYS_USER_Registers;
   end record
     with Volatile;

   for EVSYS_Peripheral use record
      CTRLA    at 16#0# range 0 .. 7;
      CHSTATUS at 16#C# range 0 .. 31;
      INTENCLR at 16#10# range 0 .. 31;
      INTENSET at 16#14# range 0 .. 31;
      INTFLAG  at 16#18# range 0 .. 31;
      SWEVT    at 16#1C# range 0 .. 31;
      CHANNEL  at 16#20# range 0 .. 191;
      USER     at 16#80# range 0 .. 1503;
   end record;

   --  Event System Interface
   EVSYS_Periph : aliased EVSYS_Peripheral
     with Import, Address => System'To_Address (16#42000000#);

end SAM_SVD.EVSYS;
