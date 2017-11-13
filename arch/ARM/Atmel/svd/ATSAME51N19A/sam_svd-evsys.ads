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

--  This spec has been automatically generated from ATSAME51N19A.svd

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

   --  EVSYS_SWEVT_CHANNEL array
   type EVSYS_SWEVT_CHANNEL_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Software Event
   type EVSYS_SWEVT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHANNEL as a value
            Val : HAL.UInt32;
         when True =>
            --  CHANNEL as an array
            Arr : EVSYS_SWEVT_CHANNEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVSYS_SWEVT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype EVSYS_PRICTRL_PRI_Field is HAL.UInt4;

   --  Priority Control
   type EVSYS_PRICTRL_Register is record
      --  Channel Priority Number
      PRI          : EVSYS_PRICTRL_PRI_Field := 16#0#;
      --  unspecified
      Reserved_4_6 : HAL.UInt3 := 16#0#;
      --  Round-Robin Scheduling Enable
      RREN         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EVSYS_PRICTRL_Register use record
      PRI          at 0 range 0 .. 3;
      Reserved_4_6 at 0 range 4 .. 6;
      RREN         at 0 range 7 .. 7;
   end record;

   subtype EVSYS_INTPEND_ID_Field is HAL.UInt4;

   --  Channel Pending Interrupt
   type EVSYS_INTPEND_Register is record
      --  Channel ID
      ID             : EVSYS_INTPEND_ID_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Channel Overrun
      OVR            : Boolean := False;
      --  Channel Event Detected
      EVD            : Boolean := False;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Read-only. Ready
      READY          : Boolean := True;
      --  Read-only. Busy
      BUSY           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for EVSYS_INTPEND_Register use record
      ID             at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      OVR            at 0 range 8 .. 8;
      EVD            at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      READY          at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
   end record;

   --  EVSYS_INTSTATUS_CHINT array
   type EVSYS_INTSTATUS_CHINT_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for EVSYS_INTSTATUS_CHINT
   type EVSYS_INTSTATUS_CHINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHINT as a value
            Val : HAL.UInt12;
         when True =>
            --  CHINT as an array
            Arr : EVSYS_INTSTATUS_CHINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for EVSYS_INTSTATUS_CHINT_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Interrupt Status
   type EVSYS_INTSTATUS_Register is record
      --  Read-only. Channel 0 Pending Interrupt
      CHINT          : EVSYS_INTSTATUS_CHINT_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_INTSTATUS_Register use record
      CHINT          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  EVSYS_BUSYCH_BUSYCH array
   type EVSYS_BUSYCH_BUSYCH_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for EVSYS_BUSYCH_BUSYCH
   type EVSYS_BUSYCH_BUSYCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BUSYCH as a value
            Val : HAL.UInt12;
         when True =>
            --  BUSYCH as an array
            Arr : EVSYS_BUSYCH_BUSYCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for EVSYS_BUSYCH_BUSYCH_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Busy Channels
   type EVSYS_BUSYCH_Register is record
      --  Read-only. Busy Channel 0
      BUSYCH         : EVSYS_BUSYCH_BUSYCH_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_BUSYCH_Register use record
      BUSYCH         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  EVSYS_READYUSR_READYUSR array
   type EVSYS_READYUSR_READYUSR_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for EVSYS_READYUSR_READYUSR
   type EVSYS_READYUSR_READYUSR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  READYUSR as a value
            Val : HAL.UInt12;
         when True =>
            --  READYUSR as an array
            Arr : EVSYS_READYUSR_READYUSR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for EVSYS_READYUSR_READYUSR_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Ready Users
   type EVSYS_READYUSR_Register is record
      --  Read-only. Ready User for Channel 0
      READYUSR       : EVSYS_READYUSR_READYUSR_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_READYUSR_Register use record
      READYUSR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CHANNEL_EVGEN_Field is HAL.UInt7;

   --  Path Selection
   type CHANNEL0_PATHSelect is
     (
      --  Synchronous path
      Synchronous,
      --  Resynchronized path
      Resynchronized,
      --  Asynchronous path
      Asynchronous)
     with Size => 2;
   for CHANNEL0_PATHSelect use
     (Synchronous => 0,
      Resynchronized => 1,
      Asynchronous => 2);

   --  Edge Detection Selection
   type CHANNEL0_EDGSELSelect is
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
   for CHANNEL0_EDGSELSelect use
     (No_Evt_Output => 0,
      Rising_Edge => 1,
      Falling_Edge => 2,
      Both_Edges => 3);

   --  Channel n Control
   type CHANNEL_Register is record
      --  Event Generator Selection
      EVGEN          : CHANNEL_EVGEN_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Path Selection
      PATH           : CHANNEL0_PATHSelect := SAM_SVD.EVSYS.Synchronous;
      --  Edge Detection Selection
      EDGSEL         : CHANNEL0_EDGSELSelect := SAM_SVD.EVSYS.No_Evt_Output;
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

   for CHANNEL_Register use record
      EVGEN          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PATH           at 0 range 8 .. 9;
      EDGSEL         at 0 range 10 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      RUNSTDBY       at 0 range 14 .. 14;
      ONDEMAND       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Channel n Interrupt Enable Clear
   type CHINTENCLR_Register is record
      --  Channel Overrun Interrupt Disable
      OVR          : Boolean := False;
      --  Channel Event Detected Interrupt Disable
      EVD          : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHINTENCLR_Register use record
      OVR          at 0 range 0 .. 0;
      EVD          at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Channel n Interrupt Enable Set
   type CHINTENSET_Register is record
      --  Channel Overrun Interrupt Enable
      OVR          : Boolean := False;
      --  Channel Event Detected Interrupt Enable
      EVD          : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHINTENSET_Register use record
      OVR          at 0 range 0 .. 0;
      EVD          at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Channel n Interrupt Flag Status and Clear
   type CHINTFLAG_Register is record
      --  Channel Overrun
      OVR          : Boolean := False;
      --  Channel Event Detected
      EVD          : Boolean := False;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHINTFLAG_Register use record
      OVR          at 0 range 0 .. 0;
      EVD          at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Channel n Status
   type CHSTATUS_Register is record
      --  Read-only. Ready User
      RDYUSR       : Boolean;
      --  Read-only. Busy Channel
      BUSYCH       : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CHSTATUS_Register use record
      RDYUSR       at 0 range 0 .. 0;
      BUSYCH       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype EVSYS_USER_CHANNEL_Field is HAL.UInt6;

   --  User Multiplexer n
   type EVSYS_USER_Register is record
      --  Channel Event Selection
      CHANNEL       : EVSYS_USER_CHANNEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVSYS_USER_Register use record
      CHANNEL       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  User Multiplexer n
   type EVSYS_USER_Registers is array (0 .. 66) of EVSYS_USER_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Event System Interface
   type EVSYS_Peripheral is record
      --  Control
      CTRLA        : aliased EVSYS_CTRLA_Register;
      --  Software Event
      SWEVT        : aliased EVSYS_SWEVT_Register;
      --  Priority Control
      PRICTRL      : aliased EVSYS_PRICTRL_Register;
      --  Channel Pending Interrupt
      INTPEND      : aliased EVSYS_INTPEND_Register;
      --  Interrupt Status
      INTSTATUS    : aliased EVSYS_INTSTATUS_Register;
      --  Busy Channels
      BUSYCH       : aliased EVSYS_BUSYCH_Register;
      --  Ready Users
      READYUSR     : aliased EVSYS_READYUSR_Register;
      --  Channel n Control
      CHANNEL0     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR0  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET0  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG0   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS0    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL1     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR1  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET1  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG1   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS1    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL2     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR2  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET2  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG2   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS2    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL3     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR3  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET3  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG3   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS3    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL4     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR4  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET4  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG4   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS4    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL5     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR5  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET5  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG5   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS5    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL6     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR6  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET6  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG6   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS6    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL7     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR7  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET7  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG7   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS7    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL8     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR8  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET8  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG8   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS8    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL9     : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR9  : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET9  : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG9   : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS9    : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL10    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR10 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET10 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG10  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS10   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL11    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR11 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET11 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG11  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS11   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL12    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR12 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET12 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG12  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS12   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL13    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR13 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET13 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG13  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS13   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL14    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR14 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET14 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG14  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS14   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL15    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR15 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET15 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG15  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS15   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL16    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR16 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET16 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG16  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS16   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL17    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR17 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET17 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG17  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS17   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL18    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR18 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET18 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG18  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS18   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL19    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR19 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET19 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG19  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS19   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL20    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR20 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET20 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG20  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS20   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL21    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR21 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET21 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG21  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS21   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL22    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR22 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET22 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG22  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS22   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL23    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR23 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET23 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG23  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS23   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL24    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR24 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET24 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG24  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS24   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL25    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR25 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET25 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG25  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS25   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL26    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR26 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET26 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG26  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS26   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL27    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR27 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET27 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG27  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS27   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL28    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR28 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET28 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG28  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS28   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL29    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR29 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET29 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG29  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS29   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL30    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR30 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET30 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG30  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS30   : aliased CHSTATUS_Register;
      --  Channel n Control
      CHANNEL31    : aliased CHANNEL_Register;
      --  Channel n Interrupt Enable Clear
      CHINTENCLR31 : aliased CHINTENCLR_Register;
      --  Channel n Interrupt Enable Set
      CHINTENSET31 : aliased CHINTENSET_Register;
      --  Channel n Interrupt Flag Status and Clear
      CHINTFLAG31  : aliased CHINTFLAG_Register;
      --  Channel n Status
      CHSTATUS31   : aliased CHSTATUS_Register;
      --  User Multiplexer n
      USER         : aliased EVSYS_USER_Registers;
   end record
     with Volatile;

   for EVSYS_Peripheral use record
      CTRLA        at 16#0# range 0 .. 7;
      SWEVT        at 16#4# range 0 .. 31;
      PRICTRL      at 16#8# range 0 .. 7;
      INTPEND      at 16#10# range 0 .. 15;
      INTSTATUS    at 16#14# range 0 .. 31;
      BUSYCH       at 16#18# range 0 .. 31;
      READYUSR     at 16#1C# range 0 .. 31;
      CHANNEL0     at 16#20# range 0 .. 31;
      CHINTENCLR0  at 16#24# range 0 .. 7;
      CHINTENSET0  at 16#25# range 0 .. 7;
      CHINTFLAG0   at 16#26# range 0 .. 7;
      CHSTATUS0    at 16#27# range 0 .. 7;
      CHANNEL1     at 16#28# range 0 .. 31;
      CHINTENCLR1  at 16#2C# range 0 .. 7;
      CHINTENSET1  at 16#2D# range 0 .. 7;
      CHINTFLAG1   at 16#2E# range 0 .. 7;
      CHSTATUS1    at 16#2F# range 0 .. 7;
      CHANNEL2     at 16#30# range 0 .. 31;
      CHINTENCLR2  at 16#34# range 0 .. 7;
      CHINTENSET2  at 16#35# range 0 .. 7;
      CHINTFLAG2   at 16#36# range 0 .. 7;
      CHSTATUS2    at 16#37# range 0 .. 7;
      CHANNEL3     at 16#38# range 0 .. 31;
      CHINTENCLR3  at 16#3C# range 0 .. 7;
      CHINTENSET3  at 16#3D# range 0 .. 7;
      CHINTFLAG3   at 16#3E# range 0 .. 7;
      CHSTATUS3    at 16#3F# range 0 .. 7;
      CHANNEL4     at 16#40# range 0 .. 31;
      CHINTENCLR4  at 16#44# range 0 .. 7;
      CHINTENSET4  at 16#45# range 0 .. 7;
      CHINTFLAG4   at 16#46# range 0 .. 7;
      CHSTATUS4    at 16#47# range 0 .. 7;
      CHANNEL5     at 16#48# range 0 .. 31;
      CHINTENCLR5  at 16#4C# range 0 .. 7;
      CHINTENSET5  at 16#4D# range 0 .. 7;
      CHINTFLAG5   at 16#4E# range 0 .. 7;
      CHSTATUS5    at 16#4F# range 0 .. 7;
      CHANNEL6     at 16#50# range 0 .. 31;
      CHINTENCLR6  at 16#54# range 0 .. 7;
      CHINTENSET6  at 16#55# range 0 .. 7;
      CHINTFLAG6   at 16#56# range 0 .. 7;
      CHSTATUS6    at 16#57# range 0 .. 7;
      CHANNEL7     at 16#58# range 0 .. 31;
      CHINTENCLR7  at 16#5C# range 0 .. 7;
      CHINTENSET7  at 16#5D# range 0 .. 7;
      CHINTFLAG7   at 16#5E# range 0 .. 7;
      CHSTATUS7    at 16#5F# range 0 .. 7;
      CHANNEL8     at 16#60# range 0 .. 31;
      CHINTENCLR8  at 16#64# range 0 .. 7;
      CHINTENSET8  at 16#65# range 0 .. 7;
      CHINTFLAG8   at 16#66# range 0 .. 7;
      CHSTATUS8    at 16#67# range 0 .. 7;
      CHANNEL9     at 16#68# range 0 .. 31;
      CHINTENCLR9  at 16#6C# range 0 .. 7;
      CHINTENSET9  at 16#6D# range 0 .. 7;
      CHINTFLAG9   at 16#6E# range 0 .. 7;
      CHSTATUS9    at 16#6F# range 0 .. 7;
      CHANNEL10    at 16#70# range 0 .. 31;
      CHINTENCLR10 at 16#74# range 0 .. 7;
      CHINTENSET10 at 16#75# range 0 .. 7;
      CHINTFLAG10  at 16#76# range 0 .. 7;
      CHSTATUS10   at 16#77# range 0 .. 7;
      CHANNEL11    at 16#78# range 0 .. 31;
      CHINTENCLR11 at 16#7C# range 0 .. 7;
      CHINTENSET11 at 16#7D# range 0 .. 7;
      CHINTFLAG11  at 16#7E# range 0 .. 7;
      CHSTATUS11   at 16#7F# range 0 .. 7;
      CHANNEL12    at 16#80# range 0 .. 31;
      CHINTENCLR12 at 16#84# range 0 .. 7;
      CHINTENSET12 at 16#85# range 0 .. 7;
      CHINTFLAG12  at 16#86# range 0 .. 7;
      CHSTATUS12   at 16#87# range 0 .. 7;
      CHANNEL13    at 16#88# range 0 .. 31;
      CHINTENCLR13 at 16#8C# range 0 .. 7;
      CHINTENSET13 at 16#8D# range 0 .. 7;
      CHINTFLAG13  at 16#8E# range 0 .. 7;
      CHSTATUS13   at 16#8F# range 0 .. 7;
      CHANNEL14    at 16#90# range 0 .. 31;
      CHINTENCLR14 at 16#94# range 0 .. 7;
      CHINTENSET14 at 16#95# range 0 .. 7;
      CHINTFLAG14  at 16#96# range 0 .. 7;
      CHSTATUS14   at 16#97# range 0 .. 7;
      CHANNEL15    at 16#98# range 0 .. 31;
      CHINTENCLR15 at 16#9C# range 0 .. 7;
      CHINTENSET15 at 16#9D# range 0 .. 7;
      CHINTFLAG15  at 16#9E# range 0 .. 7;
      CHSTATUS15   at 16#9F# range 0 .. 7;
      CHANNEL16    at 16#A0# range 0 .. 31;
      CHINTENCLR16 at 16#A4# range 0 .. 7;
      CHINTENSET16 at 16#A5# range 0 .. 7;
      CHINTFLAG16  at 16#A6# range 0 .. 7;
      CHSTATUS16   at 16#A7# range 0 .. 7;
      CHANNEL17    at 16#A8# range 0 .. 31;
      CHINTENCLR17 at 16#AC# range 0 .. 7;
      CHINTENSET17 at 16#AD# range 0 .. 7;
      CHINTFLAG17  at 16#AE# range 0 .. 7;
      CHSTATUS17   at 16#AF# range 0 .. 7;
      CHANNEL18    at 16#B0# range 0 .. 31;
      CHINTENCLR18 at 16#B4# range 0 .. 7;
      CHINTENSET18 at 16#B5# range 0 .. 7;
      CHINTFLAG18  at 16#B6# range 0 .. 7;
      CHSTATUS18   at 16#B7# range 0 .. 7;
      CHANNEL19    at 16#B8# range 0 .. 31;
      CHINTENCLR19 at 16#BC# range 0 .. 7;
      CHINTENSET19 at 16#BD# range 0 .. 7;
      CHINTFLAG19  at 16#BE# range 0 .. 7;
      CHSTATUS19   at 16#BF# range 0 .. 7;
      CHANNEL20    at 16#C0# range 0 .. 31;
      CHINTENCLR20 at 16#C4# range 0 .. 7;
      CHINTENSET20 at 16#C5# range 0 .. 7;
      CHINTFLAG20  at 16#C6# range 0 .. 7;
      CHSTATUS20   at 16#C7# range 0 .. 7;
      CHANNEL21    at 16#C8# range 0 .. 31;
      CHINTENCLR21 at 16#CC# range 0 .. 7;
      CHINTENSET21 at 16#CD# range 0 .. 7;
      CHINTFLAG21  at 16#CE# range 0 .. 7;
      CHSTATUS21   at 16#CF# range 0 .. 7;
      CHANNEL22    at 16#D0# range 0 .. 31;
      CHINTENCLR22 at 16#D4# range 0 .. 7;
      CHINTENSET22 at 16#D5# range 0 .. 7;
      CHINTFLAG22  at 16#D6# range 0 .. 7;
      CHSTATUS22   at 16#D7# range 0 .. 7;
      CHANNEL23    at 16#D8# range 0 .. 31;
      CHINTENCLR23 at 16#DC# range 0 .. 7;
      CHINTENSET23 at 16#DD# range 0 .. 7;
      CHINTFLAG23  at 16#DE# range 0 .. 7;
      CHSTATUS23   at 16#DF# range 0 .. 7;
      CHANNEL24    at 16#E0# range 0 .. 31;
      CHINTENCLR24 at 16#E4# range 0 .. 7;
      CHINTENSET24 at 16#E5# range 0 .. 7;
      CHINTFLAG24  at 16#E6# range 0 .. 7;
      CHSTATUS24   at 16#E7# range 0 .. 7;
      CHANNEL25    at 16#E8# range 0 .. 31;
      CHINTENCLR25 at 16#EC# range 0 .. 7;
      CHINTENSET25 at 16#ED# range 0 .. 7;
      CHINTFLAG25  at 16#EE# range 0 .. 7;
      CHSTATUS25   at 16#EF# range 0 .. 7;
      CHANNEL26    at 16#F0# range 0 .. 31;
      CHINTENCLR26 at 16#F4# range 0 .. 7;
      CHINTENSET26 at 16#F5# range 0 .. 7;
      CHINTFLAG26  at 16#F6# range 0 .. 7;
      CHSTATUS26   at 16#F7# range 0 .. 7;
      CHANNEL27    at 16#F8# range 0 .. 31;
      CHINTENCLR27 at 16#FC# range 0 .. 7;
      CHINTENSET27 at 16#FD# range 0 .. 7;
      CHINTFLAG27  at 16#FE# range 0 .. 7;
      CHSTATUS27   at 16#FF# range 0 .. 7;
      CHANNEL28    at 16#100# range 0 .. 31;
      CHINTENCLR28 at 16#104# range 0 .. 7;
      CHINTENSET28 at 16#105# range 0 .. 7;
      CHINTFLAG28  at 16#106# range 0 .. 7;
      CHSTATUS28   at 16#107# range 0 .. 7;
      CHANNEL29    at 16#108# range 0 .. 31;
      CHINTENCLR29 at 16#10C# range 0 .. 7;
      CHINTENSET29 at 16#10D# range 0 .. 7;
      CHINTFLAG29  at 16#10E# range 0 .. 7;
      CHSTATUS29   at 16#10F# range 0 .. 7;
      CHANNEL30    at 16#110# range 0 .. 31;
      CHINTENCLR30 at 16#114# range 0 .. 7;
      CHINTENSET30 at 16#115# range 0 .. 7;
      CHINTFLAG30  at 16#116# range 0 .. 7;
      CHSTATUS30   at 16#117# range 0 .. 7;
      CHANNEL31    at 16#118# range 0 .. 31;
      CHINTENCLR31 at 16#11C# range 0 .. 7;
      CHINTENSET31 at 16#11D# range 0 .. 7;
      CHINTFLAG31  at 16#11E# range 0 .. 7;
      CHSTATUS31   at 16#11F# range 0 .. 7;
      USER         at 16#120# range 0 .. 2143;
   end record;

   --  Event System Interface
   EVSYS_Periph : aliased EVSYS_Peripheral
     with Import, Address => System'To_Address (16#4100E000#);

end SAM_SVD.EVSYS;
