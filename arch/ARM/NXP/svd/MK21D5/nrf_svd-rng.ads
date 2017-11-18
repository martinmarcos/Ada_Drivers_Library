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

--  This spec has been automatically generated from MK21D5.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Random Number Generator Accelerator
package NRF_SVD.RNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  This bit must be set before the RNGA begins loading data into the RNGA
   --  Output Register
   type CR_GO_Field is
     (
      --  RNGA Output Register is not loaded with random data.
      CR_GO_Field_0,
      --  RNGA Output Register is loaded with random data.
      CR_GO_Field_1)
     with Size => 1;
   for CR_GO_Field use
     (CR_GO_Field_0 => 0,
      CR_GO_Field_1 => 1);

   --  High Assurance
   type CR_HA_Field is
     (
      --  Notification of security violations is enabled.
      CR_HA_Field_0,
      --  Notification of security violations is masked.
      CR_HA_Field_1)
     with Size => 1;
   for CR_HA_Field use
     (CR_HA_Field_0 => 0,
      CR_HA_Field_1 => 1);

   --  Interrupt Mask
   type CR_INTM_Field is
     (
      --  Interrupt is enabled.
      CR_INTM_Field_0,
      --  Interrupt is masked.
      CR_INTM_Field_1)
     with Size => 1;
   for CR_INTM_Field use
     (CR_INTM_Field_0 => 0,
      CR_INTM_Field_1 => 1);

   --  Clear Interrupt
   type CR_CLRI_Field is
     (
      --  Do not clear the interrupt.
      CR_CLRI_Field_0,
      --  Clear the interrupt.
      CR_CLRI_Field_1)
     with Size => 1;
   for CR_CLRI_Field use
     (CR_CLRI_Field_0 => 0,
      CR_CLRI_Field_1 => 1);

   --  Sleep
   type CR_SLP_Field is
     (
      --  RNGA is not in Sleep mode.
      CR_SLP_Field_0,
      --  RNGA is in Sleep mode.
      CR_SLP_Field_1)
     with Size => 1;
   for CR_SLP_Field use
     (CR_SLP_Field_0 => 0,
      CR_SLP_Field_1 => 1);

   --  RNGA Control Register
   type RNG_CR_Register is record
      --  This bit must be set before the RNGA begins loading data into the
      --  RNGA Output Register
      GO            : CR_GO_Field := NRF_SVD.RNG.CR_GO_Field_0;
      --  High Assurance
      HA            : CR_HA_Field := NRF_SVD.RNG.CR_HA_Field_0;
      --  Interrupt Mask
      INTM          : CR_INTM_Field := NRF_SVD.RNG.CR_INTM_Field_0;
      --  Write-only. Clear Interrupt
      CLRI          : CR_CLRI_Field := NRF_SVD.RNG.CR_CLRI_Field_0;
      --  Sleep
      SLP           : CR_SLP_Field := NRF_SVD.RNG.CR_SLP_Field_0;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_CR_Register use record
      GO            at 0 range 0 .. 0;
      HA            at 0 range 1 .. 1;
      INTM          at 0 range 2 .. 2;
      CLRI          at 0 range 3 .. 3;
      SLP           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Security Violation
   type SR_SECV_Field is
     (
      --  No security violations have occured or the High Assurance bit (HA) in
      --  the RNGA Control Register is not set.
      SR_SECV_Field_0,
      --  A security violation has occurred.
      SR_SECV_Field_1)
     with Size => 1;
   for SR_SECV_Field use
     (SR_SECV_Field_0 => 0,
      SR_SECV_Field_1 => 1);

   --  Last Read Status
   type SR_LRS_Field is
     (
      --  Last read was performed while the RNGA Output Register was not empty.
      SR_LRS_Field_0,
      --  Last read was performed while the RNGA Output Register was empty
      --  (underflow condition).
      SR_LRS_Field_1)
     with Size => 1;
   for SR_LRS_Field use
     (SR_LRS_Field_0 => 0,
      SR_LRS_Field_1 => 1);

   --  Output Register Underflow
   type SR_ORU_Field is
     (
      --  The RNGA Output Register has not been read while empty since last
      --  read of the RNGA Status Register.
      SR_ORU_Field_0,
      --  The RNGA Output Register has been read while empty since last read of
      --  the RNGA Status Register.
      SR_ORU_Field_1)
     with Size => 1;
   for SR_ORU_Field use
     (SR_ORU_Field_0 => 0,
      SR_ORU_Field_1 => 1);

   --  Error Interrupt
   type SR_ERRI_Field is
     (
      --  The RNGA Output Register has not been read while empty.
      SR_ERRI_Field_0,
      --  The RNGA Output Register has been read while empty.
      SR_ERRI_Field_1)
     with Size => 1;
   for SR_ERRI_Field use
     (SR_ERRI_Field_0 => 0,
      SR_ERRI_Field_1 => 1);

   --  Sleep
   type SR_SLP_Field is
     (
      --  The RNGA is not in Sleep mode.
      SR_SLP_Field_0,
      --  The RNGA is in Sleep mode.
      SR_SLP_Field_1)
     with Size => 1;
   for SR_SLP_Field use
     (SR_SLP_Field_0 => 0,
      SR_SLP_Field_1 => 1);

   subtype RNG_SR_OREG_LVL_Field is HAL.UInt8;
   subtype RNG_SR_OREG_SIZE_Field is HAL.UInt8;

   --  RNGA Status Register
   type RNG_SR_Register is record
      --  Read-only. Security Violation
      SECV           : SR_SECV_Field;
      --  Read-only. Last Read Status
      LRS            : SR_LRS_Field;
      --  Read-only. Output Register Underflow
      ORU            : SR_ORU_Field;
      --  Read-only. Error Interrupt
      ERRI           : SR_ERRI_Field;
      --  Read-only. Sleep
      SLP            : SR_SLP_Field;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Output Register Level
      OREG_LVL       : RNG_SR_OREG_LVL_Field;
      --  Read-only. Output Register Size
      OREG_SIZE      : RNG_SR_OREG_SIZE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNG_SR_Register use record
      SECV           at 0 range 0 .. 0;
      LRS            at 0 range 1 .. 1;
      ORU            at 0 range 2 .. 2;
      ERRI           at 0 range 3 .. 3;
      SLP            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OREG_LVL       at 0 range 8 .. 15;
      OREG_SIZE      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Random Number Generator Accelerator
   type RNG_Peripheral is record
      --  RNGA Control Register
      CR   : aliased RNG_CR_Register;
      --  RNGA Status Register
      SR   : aliased RNG_SR_Register;
      --  RNGA Entropy Register
      ER   : aliased HAL.UInt32;
      --  RNGA Output Register
      OR_k : aliased HAL.UInt32;
   end record
     with Volatile;

   for RNG_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      SR   at 16#4# range 0 .. 31;
      ER   at 16#8# range 0 .. 31;
      OR_k at 16#C# range 0 .. 31;
   end record;

   --  Random Number Generator Accelerator
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_Base;

end NRF_SVD.RNG;
