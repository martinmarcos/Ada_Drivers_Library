--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKE02Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Oscillator
package NRF_SVD.OSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  OSC Initialization
   type CR_OSCINIT_Field is
     (
      --  Oscillator initialization is not complete.
      CR_OSCINIT_Field_0,
      --  Oscillator initialization is completed.
      CR_OSCINIT_Field_1)
     with Size => 1;
   for CR_OSCINIT_Field use
     (CR_OSCINIT_Field_0 => 0,
      CR_OSCINIT_Field_1 => 1);

   --  High Gain Oscillator Select
   type CR_HGO_Field is
     (
      --  Low-power mode
      CR_HGO_Field_0,
      --  High-gain mode
      CR_HGO_Field_1)
     with Size => 1;
   for CR_HGO_Field use
     (CR_HGO_Field_0 => 0,
      CR_HGO_Field_1 => 1);

   --  Frequency Range Select
   type CR_RANGE_Field is
     (
      --  Low frequency range of 32 kHz.
      CR_RANGE_Field_0,
      --  High frequency range of 4-20 MHz.
      CR_RANGE_Field_1)
     with Size => 1;
   for CR_RANGE_Field use
     (CR_RANGE_Field_0 => 0,
      CR_RANGE_Field_1 => 1);

   --  OSC Output Select
   type CR_OSCOS_Field is
     (
      --  External clock source from EXTAL pin is selected.
      CR_OSCOS_Field_0,
      --  Oscillator clock source is selected.
      CR_OSCOS_Field_1)
     with Size => 1;
   for CR_OSCOS_Field use
     (CR_OSCOS_Field_0 => 0,
      CR_OSCOS_Field_1 => 1);

   --  OSC Enable in Stop mode
   type CR_OSCSTEN_Field is
     (
      --  OSC clock is disabled in Stop mode.
      CR_OSCSTEN_Field_0,
      --  OSC clock stays enabled in Stop mode.
      CR_OSCSTEN_Field_1)
     with Size => 1;
   for CR_OSCSTEN_Field use
     (CR_OSCSTEN_Field_0 => 0,
      CR_OSCSTEN_Field_1 => 1);

   --  OSC Enable
   type CR_OSCEN_Field is
     (
      --  OSC module is disabled.
      CR_OSCEN_Field_0,
      --  OSC module is enabled.
      CR_OSCEN_Field_1)
     with Size => 1;
   for CR_OSCEN_Field use
     (CR_OSCEN_Field_0 => 0,
      CR_OSCEN_Field_1 => 1);

   --  OSC Control Register
   type OSC_CR_Register is record
      --  Read-only. OSC Initialization
      OSCINIT      : CR_OSCINIT_Field := NRF_SVD.OSC.CR_OSCINIT_Field_0;
      --  High Gain Oscillator Select
      HGO          : CR_HGO_Field := NRF_SVD.OSC.CR_HGO_Field_0;
      --  Frequency Range Select
      RANGE_k      : CR_RANGE_Field := NRF_SVD.OSC.CR_RANGE_Field_0;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  OSC Output Select
      OSCOS        : CR_OSCOS_Field := NRF_SVD.OSC.CR_OSCOS_Field_0;
      --  OSC Enable in Stop mode
      OSCSTEN      : CR_OSCSTEN_Field := NRF_SVD.OSC.CR_OSCSTEN_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  OSC Enable
      OSCEN        : CR_OSCEN_Field := NRF_SVD.OSC.CR_OSCEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for OSC_CR_Register use record
      OSCINIT      at 0 range 0 .. 0;
      HGO          at 0 range 1 .. 1;
      RANGE_k      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      OSCOS        at 0 range 4 .. 4;
      OSCSTEN      at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      OSCEN        at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Oscillator
   type OSC_Peripheral is record
      --  OSC Control Register
      CR : aliased OSC_CR_Register;
   end record
     with Volatile;

   for OSC_Peripheral use record
      CR at 0 range 0 .. 7;
   end record;

   --  Oscillator
   OSC_Periph : aliased OSC_Peripheral
     with Import, Address => OSC_Base;

end NRF_SVD.OSC;
