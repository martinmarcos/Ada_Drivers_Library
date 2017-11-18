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

--  This spec has been automatically generated from MKE04Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ACMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ACMP MOD
   type CS_ACMOD_Field is
     (
      --  ACMP interrupt on output falling edge.
      CS_ACMOD_Field_00,
      --  ACMP interrupt on output rising edge.
      CS_ACMOD_Field_01,
      --  ACMP interrupt on output falling edge.
      CS_ACMOD_Field_10,
      --  ACMP interrupt on output falling or rising edge.
      CS_ACMOD_Field_11)
     with Size => 2;
   for CS_ACMOD_Field use
     (CS_ACMOD_Field_00 => 0,
      CS_ACMOD_Field_01 => 1,
      CS_ACMOD_Field_10 => 2,
      CS_ACMOD_Field_11 => 3);

   --  ACMP Output Pin Enable
   type CS_ACOPE_Field is
     (
      --  ACMP output cannot be placed onto external pin.
      CS_ACOPE_Field_0,
      --  ACMP output can be placed onto external pin.
      CS_ACOPE_Field_1)
     with Size => 1;
   for CS_ACOPE_Field use
     (CS_ACOPE_Field_0 => 0,
      CS_ACOPE_Field_1 => 1);

   --  ACMP Interrupt Enable
   type CS_ACIE_Field is
     (
      --  Disable the ACMP Interrupt.
      CS_ACIE_Field_0,
      --  Enable the ACMP Interrupt.
      CS_ACIE_Field_1)
     with Size => 1;
   for CS_ACIE_Field use
     (CS_ACIE_Field_0 => 0,
      CS_ACIE_Field_1 => 1);

   --  Analog Comparator Hysterisis Selection
   type CS_HYST_Field is
     (
      --  20 mV.
      CS_HYST_Field_0,
      --  30 mV.
      CS_HYST_Field_1)
     with Size => 1;
   for CS_HYST_Field use
     (CS_HYST_Field_0 => 0,
      CS_HYST_Field_1 => 1);

   --  Analog Comparator Enable
   type CS_ACE_Field is
     (
      --  The ACMP is disabled.
      CS_ACE_Field_0,
      --  The ACMP is enabled.
      CS_ACE_Field_1)
     with Size => 1;
   for CS_ACE_Field use
     (CS_ACE_Field_0 => 0,
      CS_ACE_Field_1 => 1);

   --  ACMP Control and Status Register
   type ACMP0_CS_Register is record
      --  ACMP MOD
      ACMOD : CS_ACMOD_Field := NRF_SVD.ACMP.CS_ACMOD_Field_00;
      --  ACMP Output Pin Enable
      ACOPE : CS_ACOPE_Field := NRF_SVD.ACMP.CS_ACOPE_Field_0;
      --  Read-only. ACMP Output
      ACO   : Boolean := False;
      --  ACMP Interrupt Enable
      ACIE  : CS_ACIE_Field := NRF_SVD.ACMP.CS_ACIE_Field_0;
      --  ACMP Interrupt Flag Bit
      ACF   : Boolean := False;
      --  Analog Comparator Hysterisis Selection
      HYST  : CS_HYST_Field := NRF_SVD.ACMP.CS_HYST_Field_0;
      --  Analog Comparator Enable
      ACE   : CS_ACE_Field := NRF_SVD.ACMP.CS_ACE_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ACMP0_CS_Register use record
      ACMOD at 0 range 0 .. 1;
      ACOPE at 0 range 2 .. 2;
      ACO   at 0 range 3 .. 3;
      ACIE  at 0 range 4 .. 4;
      ACF   at 0 range 5 .. 5;
      HYST  at 0 range 6 .. 6;
      ACE   at 0 range 7 .. 7;
   end record;

   --  ACMP Negative Input Select
   type C0_ACNSEL_Field is
     (
      --  External reference 0
      C0_ACNSEL_Field_00,
      --  External reference 1
      C0_ACNSEL_Field_01,
      --  External reference 2
      C0_ACNSEL_Field_10,
      --  DAC output
      C0_ACNSEL_Field_11)
     with Size => 2;
   for C0_ACNSEL_Field use
     (C0_ACNSEL_Field_00 => 0,
      C0_ACNSEL_Field_01 => 1,
      C0_ACNSEL_Field_10 => 2,
      C0_ACNSEL_Field_11 => 3);

   --  ACMP Positive Input Select
   type C0_ACPSEL_Field is
     (
      --  External reference 0
      C0_ACPSEL_Field_00,
      --  External reference 1
      C0_ACPSEL_Field_01,
      --  External reference 2
      C0_ACPSEL_Field_10,
      --  DAC output
      C0_ACPSEL_Field_11)
     with Size => 2;
   for C0_ACPSEL_Field use
     (C0_ACPSEL_Field_00 => 0,
      C0_ACPSEL_Field_01 => 1,
      C0_ACPSEL_Field_10 => 2,
      C0_ACPSEL_Field_11 => 3);

   --  ACMP Control Register 0
   type ACMP0_C0_Register is record
      --  ACMP Negative Input Select
      ACNSEL       : C0_ACNSEL_Field := NRF_SVD.ACMP.C0_ACNSEL_Field_00;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  ACMP Positive Input Select
      ACPSEL       : C0_ACPSEL_Field := NRF_SVD.ACMP.C0_ACPSEL_Field_00;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ACMP0_C0_Register use record
      ACNSEL       at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      ACPSEL       at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   subtype ACMP0_C1_DACVAL_Field is HAL.UInt6;

   --  DAC Reference Select
   type C1_DACREF_Field is
     (
      --  The DAC selects Bandgap as the reference.
      C1_DACREF_Field_0,
      --  The DAC selects VDDA as the reference.
      C1_DACREF_Field_1)
     with Size => 1;
   for C1_DACREF_Field use
     (C1_DACREF_Field_0 => 0,
      C1_DACREF_Field_1 => 1);

   --  DAC Enable
   type C1_DACEN_Field is
     (
      --  The DAC is disabled.
      C1_DACEN_Field_0,
      --  The DAC is enabled.
      C1_DACEN_Field_1)
     with Size => 1;
   for C1_DACEN_Field use
     (C1_DACEN_Field_0 => 0,
      C1_DACEN_Field_1 => 1);

   --  ACMP Control Register 1
   type ACMP0_C1_Register is record
      --  DAC Output Level Selection
      DACVAL : ACMP0_C1_DACVAL_Field := 16#0#;
      --  DAC Reference Select
      DACREF : C1_DACREF_Field := NRF_SVD.ACMP.C1_DACREF_Field_0;
      --  DAC Enable
      DACEN  : C1_DACEN_Field := NRF_SVD.ACMP.C1_DACEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ACMP0_C1_Register use record
      DACVAL at 0 range 0 .. 5;
      DACREF at 0 range 6 .. 6;
      DACEN  at 0 range 7 .. 7;
   end record;

   --  ACMP Input Pin Enable
   type C2_ACIPE_Field is
     (
      --  The corresponding external analog input is not allowed.
      C2_ACIPE_Field_0,
      --  The corresponding external analog input is allowed.
      C2_ACIPE_Field_1)
     with Size => 3;
   for C2_ACIPE_Field use
     (C2_ACIPE_Field_0 => 0,
      C2_ACIPE_Field_1 => 1);

   --  ACMP Control Register 2
   type ACMP0_C2_Register is record
      --  ACMP Input Pin Enable
      ACIPE        : C2_ACIPE_Field := NRF_SVD.ACMP.C2_ACIPE_Field_0;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ACMP0_C2_Register use record
      ACIPE        at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog comparator
   type ACMP_Peripheral is record
      --  ACMP Control and Status Register
      CS : aliased ACMP0_CS_Register;
      --  ACMP Control Register 0
      C0 : aliased ACMP0_C0_Register;
      --  ACMP Control Register 1
      C1 : aliased ACMP0_C1_Register;
      --  ACMP Control Register 2
      C2 : aliased ACMP0_C2_Register;
   end record
     with Volatile;

   for ACMP_Peripheral use record
      CS at 16#0# range 0 .. 7;
      C0 at 16#1# range 0 .. 7;
      C1 at 16#2# range 0 .. 7;
      C2 at 16#3# range 0 .. 7;
   end record;

   --  Analog comparator
   ACMP0_Periph : aliased ACMP_Peripheral
     with Import, Address => System'To_Address (16#40073000#);

   --  Analog comparator
   ACMP1_Periph : aliased ACMP_Peripheral
     with Import, Address => System'To_Address (16#40074000#);

end NRF_SVD.ACMP;
