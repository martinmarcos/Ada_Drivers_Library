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

--  This spec has been automatically generated from MK22F12810.xml

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

   --  Each bit in the ASC field indicates whether there is a corresponding
   --  connection to the crossbar switch's slave input port.
   type PLASC_ASC_Field is
     (
      --  A bus slave connection to AXBS input port n is absent
      PLASC_ASC_Field_0,
      --  A bus slave connection to AXBS input port n is present
      PLASC_ASC_Field_1)
     with Size => 8;
   for PLASC_ASC_Field use
     (PLASC_ASC_Field_0 => 0,
      PLASC_ASC_Field_1 => 1);

   --  Crossbar Switch (AXBS) Slave Configuration
   type MCM_PLASC_Register is record
      --  Read-only. Each bit in the ASC field indicates whether there is a
      --  corresponding connection to the crossbar switch's slave input port.
      ASC           : PLASC_ASC_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCM_PLASC_Register use record
      ASC           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Each bit in the AMC field indicates whether there is a corresponding
   --  connection to the AXBS master input port.
   type PLAMC_AMC_Field is
     (
      --  A bus master connection to AXBS input port n is absent
      PLAMC_AMC_Field_0,
      --  A bus master connection to AXBS input port n is present
      PLAMC_AMC_Field_1)
     with Size => 8;
   for PLAMC_AMC_Field use
     (PLAMC_AMC_Field_0 => 0,
      PLAMC_AMC_Field_1 => 1);

   --  Crossbar Switch (AXBS) Master Configuration
   type MCM_PLAMC_Register is record
      --  Read-only. Each bit in the AMC field indicates whether there is a
      --  corresponding connection to the AXBS master input port.
      AMC           : PLAMC_AMC_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for MCM_PLAMC_Register use record
      AMC           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  Arbitration select
   type PLACR_ARB_Field is
     (
      --  Fixed-priority arbitration for the crossbar masters
      PLACR_ARB_Field_0,
      --  Round-robin arbitration for the crossbar masters
      PLACR_ARB_Field_1)
     with Size => 1;
   for PLACR_ARB_Field use
     (PLACR_ARB_Field_0 => 0,
      PLACR_ARB_Field_1 => 1);

   --  Crossbar Switch (AXBS) Control Register
   type MCM_PLACR_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9 := 16#0#;
      --  Arbitration select
      ARB            : PLACR_ARB_Field := NRF_SVD.MCM.PLACR_ARB_Field_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_PLACR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      ARB            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  FPU invalid operation interrupt status
   type ISCR_FIOC_Field is
     (
      --  No interrupt
      ISCR_FIOC_Field_0,
      --  Interrupt occurred
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
      --  Interrupt occurred
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
      --  Interrupt occurred
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
      --  Interrupt occurred
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
      --  Interrupt occurred
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
      --  Interrupt occurred
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
      Reserved_16_23 : HAL.UInt8 := 16#2#;
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

   --  Compute Operation request
   type CPO_CPOREQ_Field is
     (
      --  Request is cleared.
      CPO_CPOREQ_Field_0,
      --  Request Compute Operation.
      CPO_CPOREQ_Field_1)
     with Size => 1;
   for CPO_CPOREQ_Field use
     (CPO_CPOREQ_Field_0 => 0,
      CPO_CPOREQ_Field_1 => 1);

   --  Compute Operation acknowledge
   type CPO_CPOACK_Field is
     (
      --  Compute operation entry has not completed or compute operation exit
      --  has completed.
      CPO_CPOACK_Field_0,
      --  Compute operation entry has completed or compute operation exit has
      --  not completed.
      CPO_CPOACK_Field_1)
     with Size => 1;
   for CPO_CPOACK_Field use
     (CPO_CPOACK_Field_0 => 0,
      CPO_CPOACK_Field_1 => 1);

   --  Compute Operation wakeup on interrupt
   type CPO_CPOWOI_Field is
     (
      --  No effect.
      CPO_CPOWOI_Field_0,
      --  When set, the CPOREQ is cleared on any interrupt or exception vector
      --  fetch.
      CPO_CPOWOI_Field_1)
     with Size => 1;
   for CPO_CPOWOI_Field use
     (CPO_CPOWOI_Field_0 => 0,
      CPO_CPOWOI_Field_1 => 1);

   --  Compute Operation Control Register
   type MCM_CPO_Register is record
      --  Compute Operation request
      CPOREQ        : CPO_CPOREQ_Field := NRF_SVD.MCM.CPO_CPOREQ_Field_0;
      --  Read-only. Compute Operation acknowledge
      CPOACK        : CPO_CPOACK_Field := NRF_SVD.MCM.CPO_CPOACK_Field_0;
      --  Compute Operation wakeup on interrupt
      CPOWOI        : CPO_CPOWOI_Field := NRF_SVD.MCM.CPO_CPOWOI_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_CPO_Register use record
      CPOREQ        at 0 range 0 .. 0;
      CPOACK        at 0 range 1 .. 1;
      CPOWOI        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Core Platform Miscellaneous Control Module
   type MCM_Peripheral is record
      --  Crossbar Switch (AXBS) Slave Configuration
      PLASC : aliased MCM_PLASC_Register;
      --  Crossbar Switch (AXBS) Master Configuration
      PLAMC : aliased MCM_PLAMC_Register;
      --  Crossbar Switch (AXBS) Control Register
      PLACR : aliased MCM_PLACR_Register;
      --  Interrupt Status and Control Register
      ISCR  : aliased MCM_ISCR_Register;
      --  Compute Operation Control Register
      CPO   : aliased MCM_CPO_Register;
   end record
     with Volatile;

   for MCM_Peripheral use record
      PLASC at 16#8# range 0 .. 15;
      PLAMC at 16#A# range 0 .. 15;
      PLACR at 16#C# range 0 .. 31;
      ISCR  at 16#10# range 0 .. 31;
      CPO   at 16#40# range 0 .. 31;
   end record;

   --  Core Platform Miscellaneous Control Module
   MCM_Periph : aliased MCM_Peripheral
     with Import, Address => MCM_Base;

end NRF_SVD.MCM;
