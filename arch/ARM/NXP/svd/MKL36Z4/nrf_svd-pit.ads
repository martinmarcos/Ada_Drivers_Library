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

--  This spec has been automatically generated from MKL36Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Periodic Interrupt Timer
package NRF_SVD.PIT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Freeze
   type MCR_FRZ_Field is
     (
      --  Timers continue to run in Debug mode.
      MCR_FRZ_Field_0,
      --  Timers are stopped in Debug mode.
      MCR_FRZ_Field_1)
     with Size => 1;
   for MCR_FRZ_Field use
     (MCR_FRZ_Field_0 => 0,
      MCR_FRZ_Field_1 => 1);

   --  Module Disable - (PIT section)
   type MCR_MDIS_Field is
     (
      --  Clock for standard PIT timers is enabled.
      MCR_MDIS_Field_0,
      --  Clock for standard PIT timers is disabled.
      MCR_MDIS_Field_1)
     with Size => 1;
   for MCR_MDIS_Field use
     (MCR_MDIS_Field_0 => 0,
      MCR_MDIS_Field_1 => 1);

   --  PIT Module Control Register
   type PIT_MCR_Register is record
      --  Freeze
      FRZ           : MCR_FRZ_Field := NRF_SVD.PIT.MCR_FRZ_Field_0;
      --  Module Disable - (PIT section)
      MDIS          : MCR_MDIS_Field := NRF_SVD.PIT.MCR_MDIS_Field_1;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIT_MCR_Register use record
      FRZ           at 0 range 0 .. 0;
      MDIS          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Timer Enable
   type TCTRL0_TEN_Field is
     (
      --  Timer n is disabled.
      TCTRL0_TEN_Field_0,
      --  Timer n is enabled.
      TCTRL0_TEN_Field_1)
     with Size => 1;
   for TCTRL0_TEN_Field use
     (TCTRL0_TEN_Field_0 => 0,
      TCTRL0_TEN_Field_1 => 1);

   --  Timer Interrupt Enable
   type TCTRL0_TIE_Field is
     (
      --  Interrupt requests from Timer n are disabled.
      TCTRL0_TIE_Field_0,
      --  Interrupt will be requested whenever TIF is set.
      TCTRL0_TIE_Field_1)
     with Size => 1;
   for TCTRL0_TIE_Field use
     (TCTRL0_TIE_Field_0 => 0,
      TCTRL0_TIE_Field_1 => 1);

   --  Chain Mode
   type TCTRL0_CHN_Field is
     (
      --  Timer is not chained.
      TCTRL0_CHN_Field_0,
      --  Timer is chained to previous timer. For example, for Channel 2, if
      --  this field is set, Timer 2 is chained to Timer 1.
      TCTRL0_CHN_Field_1)
     with Size => 1;
   for TCTRL0_CHN_Field use
     (TCTRL0_CHN_Field_0 => 0,
      TCTRL0_CHN_Field_1 => 1);

   --  Timer Control Register
   type TCTRL_Register is record
      --  Timer Enable
      TEN           : TCTRL0_TEN_Field := NRF_SVD.PIT.TCTRL0_TEN_Field_0;
      --  Timer Interrupt Enable
      TIE           : TCTRL0_TIE_Field := NRF_SVD.PIT.TCTRL0_TIE_Field_0;
      --  Chain Mode
      CHN           : TCTRL0_CHN_Field := NRF_SVD.PIT.TCTRL0_CHN_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TCTRL_Register use record
      TEN           at 0 range 0 .. 0;
      TIE           at 0 range 1 .. 1;
      CHN           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Timer Interrupt Flag
   type TFLG0_TIF_Field is
     (
      --  Timeout has not yet occurred.
      TFLG0_TIF_Field_0,
      --  Timeout has occurred.
      TFLG0_TIF_Field_1)
     with Size => 1;
   for TFLG0_TIF_Field use
     (TFLG0_TIF_Field_0 => 0,
      TFLG0_TIF_Field_1 => 1);

   --  Timer Flag Register
   type TFLG_Register is record
      --  Timer Interrupt Flag
      TIF           : TFLG0_TIF_Field := NRF_SVD.PIT.TFLG0_TIF_Field_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFLG_Register use record
      TIF           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Periodic Interrupt Timer
   type PIT_Peripheral is record
      --  PIT Module Control Register
      MCR     : aliased PIT_MCR_Register;
      --  PIT Upper Lifetime Timer Register
      LTMR64H : aliased HAL.UInt32;
      --  PIT Lower Lifetime Timer Register
      LTMR64L : aliased HAL.UInt32;
      --  Timer Load Value Register
      LDVAL0  : aliased HAL.UInt32;
      --  Current Timer Value Register
      CVAL0   : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL0  : aliased TCTRL_Register;
      --  Timer Flag Register
      TFLG0   : aliased TFLG_Register;
      --  Timer Load Value Register
      LDVAL1  : aliased HAL.UInt32;
      --  Current Timer Value Register
      CVAL1   : aliased HAL.UInt32;
      --  Timer Control Register
      TCTRL1  : aliased TCTRL_Register;
      --  Timer Flag Register
      TFLG1   : aliased TFLG_Register;
   end record
     with Volatile;

   for PIT_Peripheral use record
      MCR     at 16#0# range 0 .. 31;
      LTMR64H at 16#E0# range 0 .. 31;
      LTMR64L at 16#E4# range 0 .. 31;
      LDVAL0  at 16#100# range 0 .. 31;
      CVAL0   at 16#104# range 0 .. 31;
      TCTRL0  at 16#108# range 0 .. 31;
      TFLG0   at 16#10C# range 0 .. 31;
      LDVAL1  at 16#110# range 0 .. 31;
      CVAL1   at 16#114# range 0 .. 31;
      TCTRL1  at 16#118# range 0 .. 31;
      TFLG1   at 16#11C# range 0 .. 31;
   end record;

   --  Periodic Interrupt Timer
   PIT_Periph : aliased PIT_Peripheral
     with Import, Address => PIT_Base;

end NRF_SVD.PIT;
