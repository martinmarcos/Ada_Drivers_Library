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

--  This spec has been automatically generated from ATSAMC20N17A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.CCL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control
   type CCL_CTRL_Register is record
      --  Write-only. Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_2_5 : HAL.UInt4 := 16#0#;
      --  Run during Standby
      RUNSTDBY     : Boolean := False;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CCL_CTRL_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_5 at 0 range 2 .. 5;
      RUNSTDBY     at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Sequential Selection
   type SEQCTRL_SEQSELSelect is
     (
      --  Sequential logic is disabled
      Disable,
      --  D flip flop
      Dff,
      --  JK flip flop
      Jk,
      --  D latch
      Latch,
      --  RS latch
      Rs)
     with Size => 4;
   for SEQCTRL_SEQSELSelect use
     (Disable => 0,
      Dff => 1,
      Jk => 2,
      Latch => 3,
      Rs => 4);

   --  SEQ Control x
   type CCL_SEQCTRL_Register is record
      --  Sequential Selection
      SEQSEL       : SEQCTRL_SEQSELSelect := SAM_SVD.CCL.Disable;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CCL_SEQCTRL_Register use record
      SEQSEL       at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  SEQ Control x
   type CCL_SEQCTRL_Registers is array (0 .. 1) of CCL_SEQCTRL_Register
     with Volatile;

   --  Filter Selection
   type LUTCTRL_FILTSELSelect is
     (
      --  Filter disabled
      Disable,
      --  Synchronizer enabled
      Synch,
      --  Filter enabled
      Filter)
     with Size => 2;
   for LUTCTRL_FILTSELSelect use
     (Disable => 0,
      Synch => 1,
      Filter => 2);

   --  Input Selection 0
   type LUTCTRL_INSEL0Select is
     (
      --  Masked input
      Mask,
      --  Feedback input source
      Feedback,
      --  Linked LUT input source
      Link,
      --  Event in put source
      Event,
      --  I/O pin input source
      Io,
      --  AC input source
      Ac,
      --  TC input source
      Tc,
      --  Alternate TC input source
      Alttc,
      --  TCC input source
      Tcc,
      --  SERCOM inout source
      Sercom,
      --  Alternate 2 TC input source
      Alt2Tc,
      --  ASYNC EVENT input source. The EVENT input will bypass edge detection
      --  logic.
      Asyncevent)
     with Size => 4;
   for LUTCTRL_INSEL0Select use
     (Mask => 0,
      Feedback => 1,
      Link => 2,
      Event => 3,
      Io => 4,
      Ac => 5,
      Tc => 6,
      Alttc => 7,
      Tcc => 8,
      Sercom => 9,
      Alt2Tc => 10,
      Asyncevent => 11);

   --  CCL_LUTCTRL_INSEL array element
   subtype CCL_LUTCTRL_INSEL_Element is HAL.UInt4;

   --  CCL_LUTCTRL_INSEL array
   type CCL_LUTCTRL_INSEL_Field_Array is array (1 .. 2)
     of CCL_LUTCTRL_INSEL_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for CCL_LUTCTRL_INSEL
   type CCL_LUTCTRL_INSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INSEL as a value
            Val : HAL.UInt8;
         when True =>
            --  INSEL as an array
            Arr : CCL_LUTCTRL_INSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CCL_LUTCTRL_INSEL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype CCL_LUTCTRL_TRUTH_Field is HAL.UInt8;

   --  LUT Control x
   type CCL_LUTCTRL_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  LUT Enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Filter Selection
      FILTSEL        : LUTCTRL_FILTSELSelect := SAM_SVD.CCL.Disable;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Edge Selection
      EDGESEL        : Boolean := False;
      --  Input Selection 0
      INSEL0         : LUTCTRL_INSEL0Select := SAM_SVD.CCL.Mask;
      --  Input Selection 1
      INSEL          : CCL_LUTCTRL_INSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Input Event Invert
      INVEI          : Boolean := False;
      --  Event Input Enable
      LUTEI          : Boolean := False;
      --  Event Output Enable
      LUTEO          : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Truth Value
      TRUTH          : CCL_LUTCTRL_TRUTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCL_LUTCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ENABLE         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FILTSEL        at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      EDGESEL        at 0 range 7 .. 7;
      INSEL0         at 0 range 8 .. 11;
      INSEL          at 0 range 12 .. 19;
      INVEI          at 0 range 20 .. 20;
      LUTEI          at 0 range 21 .. 21;
      LUTEO          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TRUTH          at 0 range 24 .. 31;
   end record;

   --  LUT Control x
   type CCL_LUTCTRL_Registers is array (0 .. 3) of CCL_LUTCTRL_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Configurable Custom Logic
   type CCL_Peripheral is record
      --  Control
      CTRL    : aliased CCL_CTRL_Register;
      --  SEQ Control x
      SEQCTRL : aliased CCL_SEQCTRL_Registers;
      --  LUT Control x
      LUTCTRL : aliased CCL_LUTCTRL_Registers;
   end record
     with Volatile;

   for CCL_Peripheral use record
      CTRL    at 16#0# range 0 .. 7;
      SEQCTRL at 16#4# range 0 .. 15;
      LUTCTRL at 16#8# range 0 .. 127;
   end record;

   --  Configurable Custom Logic
   CCL_Periph : aliased CCL_Peripheral
     with Import, Address => System'To_Address (16#42005C00#);

end SAM_SVD.CCL;
