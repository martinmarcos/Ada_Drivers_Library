--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MKV58F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Core Platform Miscellaneous Control Module
package NRF_SVD.MCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MCM_PCT_PLREV_Field is HAL.UInt16;
   subtype MCM_PCT_PCT_Field is HAL.UInt16;

   --  Processor core type
   type MCM_PCT_Register is record
      --  Read-only. Platform revision
      PLREV : MCM_PCT_PLREV_Field;
      --  Read-only. This MCM design supports the ARM Cortex M7 core.
      PCT   : MCM_PCT_PCT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_PCT_Register use record
      PLREV at 0 range 0 .. 15;
      PCT   at 0 range 16 .. 31;
   end record;

   --  AHB Slave Interface Priority
   type CR_AHBSPRI_Field is
     (
      --  SW accesses take priority over AHBS accesses
      CR_AHBSPRI_Field_0,
      --  AHBS accesses take priority over SW accesses
      CR_AHBSPRI_Field_1)
     with Size => 1;
   for CR_AHBSPRI_Field use
     (CR_AHBSPRI_Field_0 => 0,
      CR_AHBSPRI_Field_1 => 1);

   --  Control Register
   type MCM_CR_Register is record
      --  unspecified
      Reserved_0_26  : HAL.UInt27 := 16#0#;
      --  AHB Slave Interface Priority
      AHBSPRI        : CR_AHBSPRI_Field := NRF_SVD.MCM.CR_AHBSPRI_Field_0;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_CR_Register use record
      Reserved_0_26  at 0 range 0 .. 26;
      AHBSPRI        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  FPU invalid operation interrupt status
   type ISCR_FIOC_Field is
     (
      --  No interrupt
      ISCR_FIOC_Field_0,
      --  Interrupt has occurred
      ISCR_FIOC_Field_1)
     with Size => 1;
   for ISCR_FIOC_Field use
     (ISCR_FIOC_Field_0 => 0,
      ISCR_FIOC_Field_1 => 1);

   --  FPU divide-by-zero interrupt status
   type ISCR_FDZC_Field is
     (
      --  No interrupt
      ISCR_FDZC_Field_0,
      --  Interrupt has occurred
      ISCR_FDZC_Field_1)
     with Size => 1;
   for ISCR_FDZC_Field use
     (ISCR_FDZC_Field_0 => 0,
      ISCR_FDZC_Field_1 => 1);

   --  FPU overflow interrupt status
   type ISCR_FOFC_Field is
     (
      --  No interrupt
      ISCR_FOFC_Field_0,
      --  Interrupt has occurred
      ISCR_FOFC_Field_1)
     with Size => 1;
   for ISCR_FOFC_Field use
     (ISCR_FOFC_Field_0 => 0,
      ISCR_FOFC_Field_1 => 1);

   --  FPU underflow interrupt status
   type ISCR_FUFC_Field is
     (
      --  No interrupt
      ISCR_FUFC_Field_0,
      --  Interrupt has occurred
      ISCR_FUFC_Field_1)
     with Size => 1;
   for ISCR_FUFC_Field use
     (ISCR_FUFC_Field_0 => 0,
      ISCR_FUFC_Field_1 => 1);

   --  FPU inexact interrupt status
   type ISCR_FIXC_Field is
     (
      --  No interrupt
      ISCR_FIXC_Field_0,
      --  Interrupt has occured
      ISCR_FIXC_Field_1)
     with Size => 1;
   for ISCR_FIXC_Field use
     (ISCR_FIXC_Field_0 => 0,
      ISCR_FIXC_Field_1 => 1);

   --  FPU input denormal interrupt status
   type ISCR_FIDC_Field is
     (
      --  No interrupt
      ISCR_FIDC_Field_0,
      --  Interrupt has occured
      ISCR_FIDC_Field_1)
     with Size => 1;
   for ISCR_FIDC_Field use
     (ISCR_FIDC_Field_0 => 0,
      ISCR_FIDC_Field_1 => 1);

   --  FPU invalid operation interrupt enable
   type ISCR_FIOCE_Field is
     (
      --  Disable interrupt
      ISCR_FIOCE_Field_0,
      --  Enable interrupt
      ISCR_FIOCE_Field_1)
     with Size => 1;
   for ISCR_FIOCE_Field use
     (ISCR_FIOCE_Field_0 => 0,
      ISCR_FIOCE_Field_1 => 1);

   --  FPU divide-by-zero interrupt enable
   type ISCR_FDZCE_Field is
     (
      --  Disable interrupt
      ISCR_FDZCE_Field_0,
      --  Enable interrupt
      ISCR_FDZCE_Field_1)
     with Size => 1;
   for ISCR_FDZCE_Field use
     (ISCR_FDZCE_Field_0 => 0,
      ISCR_FDZCE_Field_1 => 1);

   --  FPU overflow interrupt enable
   type ISCR_FOFCE_Field is
     (
      --  Disable interrupt
      ISCR_FOFCE_Field_0,
      --  Enable interrupt
      ISCR_FOFCE_Field_1)
     with Size => 1;
   for ISCR_FOFCE_Field use
     (ISCR_FOFCE_Field_0 => 0,
      ISCR_FOFCE_Field_1 => 1);

   --  FPU underflow interrupt enable
   type ISCR_FUFCE_Field is
     (
      --  Disable interrupt
      ISCR_FUFCE_Field_0,
      --  Enable interrupt
      ISCR_FUFCE_Field_1)
     with Size => 1;
   for ISCR_FUFCE_Field use
     (ISCR_FUFCE_Field_0 => 0,
      ISCR_FUFCE_Field_1 => 1);

   --  FPU inexact interrupt enable
   type ISCR_FIXCE_Field is
     (
      --  Disable interrupt
      ISCR_FIXCE_Field_0,
      --  Enable interrupt
      ISCR_FIXCE_Field_1)
     with Size => 1;
   for ISCR_FIXCE_Field use
     (ISCR_FIXCE_Field_0 => 0,
      ISCR_FIXCE_Field_1 => 1);

   --  FPU input denormal interrupt enable
   type ISCR_FIDCE_Field is
     (
      --  Disable interrupt
      ISCR_FIDCE_Field_0,
      --  Enable interrupt
      ISCR_FIDCE_Field_1)
     with Size => 1;
   for ISCR_FIDCE_Field use
     (ISCR_FIDCE_Field_0 => 0,
      ISCR_FIDCE_Field_1 => 1);

   --  Interrupt Status and Control Register
   type MCM_ISCR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Read-only. FPU invalid operation interrupt status
      FIOC           : ISCR_FIOC_Field := NRF_SVD.MCM.ISCR_FIOC_Field_0;
      --  Read-only. FPU divide-by-zero interrupt status
      FDZC           : ISCR_FDZC_Field := NRF_SVD.MCM.ISCR_FDZC_Field_0;
      --  Read-only. FPU overflow interrupt status
      FOFC           : ISCR_FOFC_Field := NRF_SVD.MCM.ISCR_FOFC_Field_0;
      --  Read-only. FPU underflow interrupt status
      FUFC           : ISCR_FUFC_Field := NRF_SVD.MCM.ISCR_FUFC_Field_0;
      --  Read-only. FPU inexact interrupt status
      FIXC           : ISCR_FIXC_Field := NRF_SVD.MCM.ISCR_FIXC_Field_0;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Read-only. FPU input denormal interrupt status
      FIDC           : ISCR_FIDC_Field := NRF_SVD.MCM.ISCR_FIDC_Field_0;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  FPU invalid operation interrupt enable
      FIOCE          : ISCR_FIOCE_Field := NRF_SVD.MCM.ISCR_FIOCE_Field_0;
      --  FPU divide-by-zero interrupt enable
      FDZCE          : ISCR_FDZCE_Field := NRF_SVD.MCM.ISCR_FDZCE_Field_0;
      --  FPU overflow interrupt enable
      FOFCE          : ISCR_FOFCE_Field := NRF_SVD.MCM.ISCR_FOFCE_Field_0;
      --  FPU underflow interrupt enable
      FUFCE          : ISCR_FUFCE_Field := NRF_SVD.MCM.ISCR_FUFCE_Field_0;
      --  FPU inexact interrupt enable
      FIXCE          : ISCR_FIXCE_Field := NRF_SVD.MCM.ISCR_FIXCE_Field_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  FPU input denormal interrupt enable
      FIDCE          : ISCR_FIDCE_Field := NRF_SVD.MCM.ISCR_FIDCE_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_ISCR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      FIOC           at 0 range 8 .. 8;
      FDZC           at 0 range 9 .. 9;
      FOFC           at 0 range 10 .. 10;
      FUFC           at 0 range 11 .. 11;
      FIXC           at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FIDC           at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      FIOCE          at 0 range 24 .. 24;
      FDZCE          at 0 range 25 .. 25;
      FOFCE          at 0 range 26 .. 26;
      FUFCE          at 0 range 27 .. 27;
      FIXCE          at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FIDCE          at 0 range 31 .. 31;
   end record;

   --  Compute Only Operation request
   type CPO_CPOREQ_Field is
     (
      --  Request is cleared.
      CPO_CPOREQ_Field_0,
      --  Request Compute Only Operation.
      CPO_CPOREQ_Field_1)
     with Size => 1;
   for CPO_CPOREQ_Field use
     (CPO_CPOREQ_Field_0 => 0,
      CPO_CPOREQ_Field_1 => 1);

   --  Compute Only Operation acknowledge
   type CPO_CPOACK_Field is
     (
      --  Compute only operation entry has not completed or compute only
      --  operation exit has completed.
      CPO_CPOACK_Field_0,
      --  Compute only operation entry has completed or compute only operation
      --  exit has not completed.
      CPO_CPOACK_Field_1)
     with Size => 1;
   for CPO_CPOACK_Field use
     (CPO_CPOACK_Field_0 => 0,
      CPO_CPOACK_Field_1 => 1);

   --  Compute Only Operation Control Register
   type MCM_CPO_Register is record
      --  Compute Only Operation request
      CPOREQ        : CPO_CPOREQ_Field := NRF_SVD.MCM.CPO_CPOREQ_Field_0;
      --  Read-only. Compute Only Operation acknowledge
      CPOACK        : CPO_CPOACK_Field := NRF_SVD.MCM.CPO_CPOACK_Field_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_CPO_Register use record
      CPOREQ        at 0 range 0 .. 0;
      CPOACK        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Defines the type of local memory
   type LMEM_LMEM_Type_Field is
     (
      --  ITCM (Instruction Tightly Coupled Memory)
      LMEM_LMEM_Type_Field_000,
      --  DTCM (Data Tightly Coupled Memory)
      LMEM_LMEM_Type_Field_001,
      --  Instruction Cache
      LMEM_LMEM_Type_Field_010,
      --  Data Cache
      LMEM_LMEM_Type_Field_011)
     with Size => 3;
   for LMEM_LMEM_Type_Field use
     (LMEM_LMEM_Type_Field_000 => 0,
      LMEM_LMEM_Type_Field_001 => 1,
      LMEM_LMEM_Type_Field_010 => 2,
      LMEM_LMEM_Type_Field_011 => 3);

   --  Defines the local memory bit width
   type LMEM_LMEM_Width_Field is
     (
      --  32-bits
      LMEM_LMEM_Width_Field_010,
      --  64-bits
      LMEM_LMEM_Width_Field_011)
     with Size => 3;
   for LMEM_LMEM_Width_Field use
     (LMEM_LMEM_Width_Field_010 => 2,
      LMEM_LMEM_Width_Field_011 => 3);

   --  Defines the ways of set associative
   type LMEM_LMEM_Ways_Field is
     (
      --  Reserved (not applicable)
      LMEM_LMEM_Ways_Field_0000,
      --  2-way set associative
      LMEM_LMEM_Ways_Field_0010,
      --  4-way set associative
      LMEM_LMEM_Ways_Field_0100)
     with Size => 4;
   for LMEM_LMEM_Ways_Field use
     (LMEM_LMEM_Ways_Field_0000 => 0,
      LMEM_LMEM_Ways_Field_0010 => 2,
      LMEM_LMEM_Ways_Field_0100 => 4);

   --  Defines the local memory size
   type LMEM_LMEM_Size_Field is
     (
      --  8KB
      LMEM_LMEM_Size_Field_0100,
      --  16KB
      LMEM_LMEM_Size_Field_0101,
      --  64KB
      LMEM_LMEM_Size_Field_0111)
     with Size => 4;
   for LMEM_LMEM_Size_Field use
     (LMEM_LMEM_Size_Field_0100 => 4,
      LMEM_LMEM_Size_Field_0101 => 5,
      LMEM_LMEM_Size_Field_0111 => 7);

   --  Defines whether the local memory is present
   type LMEM_LMEM_Valid_Field is
     (
      --  Local memory not present
      LMEM_LMEM_Valid_Field_0,
      --  Local memory present
      LMEM_LMEM_Valid_Field_1)
     with Size => 1;
   for LMEM_LMEM_Valid_Field use
     (LMEM_LMEM_Valid_Field_0 => 0,
      LMEM_LMEM_Valid_Field_1 => 1);

   --  Local Memory General Descriptor Register
   type MCM_LMEM_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13;
      --  Read-only. Defines the type of local memory
      LMEM_Type      : LMEM_LMEM_Type_Field;
      --  unspecified
      Reserved_16_16 : HAL.Bit;
      --  Read-only. Defines the local memory bit width
      LMEM_Width     : LMEM_LMEM_Width_Field;
      --  Read-only. Defines the ways of set associative
      LMEM_Ways      : LMEM_LMEM_Ways_Field;
      --  Read-only. Defines the local memory size
      LMEM_Size      : LMEM_LMEM_Size_Field;
      --  unspecified
      Reserved_28_30 : HAL.UInt3;
      --  Read-only. Defines whether the local memory is present
      LMEM_Valid     : LMEM_LMEM_Valid_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_LMEM_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      LMEM_Type      at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LMEM_Width     at 0 range 17 .. 19;
      LMEM_Ways      at 0 range 20 .. 23;
      LMEM_Size      at 0 range 24 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      LMEM_Valid     at 0 range 31 .. 31;
   end record;

   --  Local Memory General Descriptor Register
   type MCM_LMEM_Registers is array (0 .. 4) of MCM_LMEM_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Core Platform Miscellaneous Control Module
   type MCM_Peripheral is record
      --  Processor core type
      PCT  : aliased MCM_PCT_Register;
      --  Control Register
      CR   : aliased MCM_CR_Register;
      --  Interrupt Status and Control Register
      ISCR : aliased MCM_ISCR_Register;
      --  Compute Only Operation Control Register
      CPO  : aliased MCM_CPO_Register;
      --  Local Memory General Descriptor Register
      LMEM : aliased MCM_LMEM_Registers;
   end record
     with Volatile;

   for MCM_Peripheral use record
      PCT  at 16#0# range 0 .. 31;
      CR   at 16#C# range 0 .. 31;
      ISCR at 16#10# range 0 .. 31;
      CPO  at 16#34# range 0 .. 31;
      LMEM at 16#400# range 0 .. 159;
   end record;

   --  Core Platform Miscellaneous Control Module
   MCM_Periph : aliased MCM_Peripheral
     with Import, Address => MCM_Base;

end NRF_SVD.MCM;
