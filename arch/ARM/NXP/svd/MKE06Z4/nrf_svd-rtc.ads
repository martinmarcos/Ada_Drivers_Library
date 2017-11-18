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

--  This spec has been automatically generated from MKE06Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Real-time counter
package NRF_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Real-Time Counter Output
   type SC_RTCO_Field is
     (
      --  Real-time counter output disabled.
      SC_RTCO_Field_0,
      --  Real-time counter output enabled.
      SC_RTCO_Field_1)
     with Size => 1;
   for SC_RTCO_Field use
     (SC_RTCO_Field_0 => 0,
      SC_RTCO_Field_1 => 1);

   --  Real-Time Interrupt Enable
   type SC_RTIE_Field is
     (
      --  Real-time interrupt requests are disabled. Use software polling.
      SC_RTIE_Field_0,
      --  Real-time interrupt requests are enabled.
      SC_RTIE_Field_1)
     with Size => 1;
   for SC_RTIE_Field use
     (SC_RTIE_Field_0 => 0,
      SC_RTIE_Field_1 => 1);

   --  Real-Time Interrupt Flag
   type SC_RTIF_Field is
     (
      --  RTC counter has not reached the value in the RTC modulo register.
      SC_RTIF_Field_0,
      --  RTC counter has reached the value in the RTC modulo register.
      SC_RTIF_Field_1)
     with Size => 1;
   for SC_RTIF_Field use
     (SC_RTIF_Field_0 => 0,
      SC_RTIF_Field_1 => 1);

   --  Real-Time Clock Prescaler Select
   type SC_RTCPS_Field is
     (
      --  Off
      SC_RTCPS_Field_000,
      --  If RTCLKS = x0, it is 1; if RTCLKS = x1, it is 128.
      SC_RTCPS_Field_001,
      --  If RTCLKS = x0, it is 2; if RTCLKS = x1, it is 256.
      SC_RTCPS_Field_010,
      --  If RTCLKS = x0, it is 4; if RTCLKS = x1, it is 512.
      SC_RTCPS_Field_011,
      --  If RTCLKS = x0, it is 8; if RTCLKS = x1, it is 1024.
      SC_RTCPS_Field_100,
      --  If RTCLKS = x0, it is 16; if RTCLKS = x1, it is 2048.
      SC_RTCPS_Field_101,
      --  If RTCLKS = x0, it is 32; if RTCLKS = x1, it is 100.
      SC_RTCPS_Field_110,
      --  If RTCLKS = x0, it is 64; if RTCLKS = x1, it is 1000.
      SC_RTCPS_Field_111)
     with Size => 3;
   for SC_RTCPS_Field use
     (SC_RTCPS_Field_000 => 0,
      SC_RTCPS_Field_001 => 1,
      SC_RTCPS_Field_010 => 2,
      SC_RTCPS_Field_011 => 3,
      SC_RTCPS_Field_100 => 4,
      SC_RTCPS_Field_101 => 5,
      SC_RTCPS_Field_110 => 6,
      SC_RTCPS_Field_111 => 7);

   --  Real-Time Clock Source Select
   type SC_RTCLKS_Field is
     (
      --  External clock source.
      SC_RTCLKS_Field_00,
      --  Real-time clock source is 1 kHz (LPOCLK).
      SC_RTCLKS_Field_01,
      --  Internal reference clock (ICSIRCLK).
      SC_RTCLKS_Field_10,
      --  Bus clock.
      SC_RTCLKS_Field_11)
     with Size => 2;
   for SC_RTCLKS_Field use
     (SC_RTCLKS_Field_00 => 0,
      SC_RTCLKS_Field_01 => 1,
      SC_RTCLKS_Field_10 => 2,
      SC_RTCLKS_Field_11 => 3);

   --  RTC Status and Control Register
   type RTC_SC_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Real-Time Counter Output
      RTCO           : SC_RTCO_Field := NRF_SVD.RTC.SC_RTCO_Field_0;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Real-Time Interrupt Enable
      RTIE           : SC_RTIE_Field := NRF_SVD.RTC.SC_RTIE_Field_0;
      --  Real-Time Interrupt Flag
      RTIF           : SC_RTIF_Field := NRF_SVD.RTC.SC_RTIF_Field_0;
      --  Real-Time Clock Prescaler Select
      RTCPS          : SC_RTCPS_Field := NRF_SVD.RTC.SC_RTCPS_Field_000;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#0#;
      --  Real-Time Clock Source Select
      RTCLKS         : SC_RTCLKS_Field := NRF_SVD.RTC.SC_RTCLKS_Field_00;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SC_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RTCO           at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RTIE           at 0 range 6 .. 6;
      RTIF           at 0 range 7 .. 7;
      RTCPS          at 0 range 8 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      RTCLKS         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_MOD_MOD_Field is HAL.UInt16;

   --  RTC Modulo Register
   type RTC_MOD_Register is record
      --  RTC Modulo
      MOD_k          : RTC_MOD_MOD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MOD_Register use record
      MOD_k          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_CNT_CNT_Field is HAL.UInt16;

   --  RTC Counter Register
   type RTC_CNT_Register is record
      --  Read-only. RTC Count
      CNT            : RTC_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time counter
   type RTC_Peripheral is record
      --  RTC Status and Control Register
      SC    : aliased RTC_SC_Register;
      --  RTC Modulo Register
      MOD_k : aliased RTC_MOD_Register;
      --  RTC Counter Register
      CNT   : aliased RTC_CNT_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      SC    at 16#0# range 0 .. 31;
      MOD_k at 16#4# range 0 .. 31;
      CNT   at 16#8# range 0 .. 31;
   end record;

   --  Real-time counter
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end NRF_SVD.RTC;
