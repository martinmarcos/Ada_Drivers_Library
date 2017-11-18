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

--  This spec has been automatically generated from MKL03Z4.xml

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
      --  A bus slave connection to AXBS input port n is absent.
      PLASC_ASC_Field_0,
      --  A bus slave connection to AXBS input port n is present.
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

   --  Enable Flash Data Speculation
   type PLACR_EFDS_Field is
     (
      --  Disable flash data speculation.
      PLACR_EFDS_Field_0,
      --  Enable flash data speculation.
      PLACR_EFDS_Field_1)
     with Size => 1;
   for PLACR_EFDS_Field use
     (PLACR_EFDS_Field_0 => 0,
      PLACR_EFDS_Field_1 => 1);

   --  Disable Flash Controller Speculation
   type PLACR_DFCS_Field is
     (
      --  Enable flash controller speculation.
      PLACR_DFCS_Field_0,
      --  Disable flash controller speculation.
      PLACR_DFCS_Field_1)
     with Size => 1;
   for PLACR_DFCS_Field use
     (PLACR_DFCS_Field_0 => 0,
      PLACR_DFCS_Field_1 => 1);

   --  Enable Stalling Flash Controller
   type PLACR_ESFC_Field is
     (
      --  Disable stalling flash controller when flash is busy.
      PLACR_ESFC_Field_0,
      --  Enable stalling flash controller when flash is busy.
      PLACR_ESFC_Field_1)
     with Size => 1;
   for PLACR_ESFC_Field use
     (PLACR_ESFC_Field_0 => 0,
      PLACR_ESFC_Field_1 => 1);

   --  Platform Control Register
   type MCM_PLACR_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Enable Flash Data Speculation
      EFDS           : PLACR_EFDS_Field := NRF_SVD.MCM.PLACR_EFDS_Field_0;
      --  Disable Flash Controller Speculation
      DFCS           : PLACR_DFCS_Field := NRF_SVD.MCM.PLACR_DFCS_Field_0;
      --  Enable Stalling Flash Controller
      ESFC           : PLACR_ESFC_Field := NRF_SVD.MCM.PLACR_ESFC_Field_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCM_PLACR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      EFDS           at 0 range 14 .. 14;
      DFCS           at 0 range 15 .. 15;
      ESFC           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Compute Operation Request
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

   --  Compute Operation Acknowledge
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

   --  Compute Operation Wake-up on Interrupt
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
      --  Compute Operation Request
      CPOREQ        : CPO_CPOREQ_Field := NRF_SVD.MCM.CPO_CPOREQ_Field_0;
      --  Read-only. Compute Operation Acknowledge
      CPOACK        : CPO_CPOACK_Field := NRF_SVD.MCM.CPO_CPOACK_Field_0;
      --  Compute Operation Wake-up on Interrupt
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
      --  Platform Control Register
      PLACR : aliased MCM_PLACR_Register;
      --  Compute Operation Control Register
      CPO   : aliased MCM_CPO_Register;
   end record
     with Volatile;

   for MCM_Peripheral use record
      PLASC at 16#8# range 0 .. 15;
      PLAMC at 16#A# range 0 .. 15;
      PLACR at 16#C# range 0 .. 31;
      CPO   at 16#40# range 0 .. 31;
   end record;

   --  Core Platform Miscellaneous Control Module
   MCM_Periph : aliased MCM_Peripheral
     with Import, Address => MCM_Base;

end NRF_SVD.MCM;
