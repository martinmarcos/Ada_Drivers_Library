--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54113.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Software reset control
   type CTRL_SWRESET_Field is
     (
      --  Not in reset. The RTC is not held in reset. This bit must be cleared
      --  prior to configuring or initiating any operation of the RTC.
      Not_In_Reset,
      --  In reset. The RTC is held in reset. All register bits within the RTC
      --  will be forced to their reset value except the OFD bit. This bit must
      --  be cleared before writing to any register in the RTC - including
      --  writes to set any of the other bits within this register. Do not
      --  attempt to write to any bits of this register at the same time that
      --  the reset bit is being cleared.
      In_Reset)
     with Size => 1;
   for CTRL_SWRESET_Field use
     (Not_In_Reset => 0,
      In_Reset => 1);

   --  RTC 1 Hz timer alarm flag status.
   type CTRL_ALARM1HZ_Field is
     (
      --  No match. No match has occurred on the 1 Hz RTC timer. Writing a 0
      --  has no effect.
      No_Match,
      --  Match. A match condition has occurred on the 1 Hz RTC timer. This
      --  flag generates an RTC alarm interrupt request RTC_ALARM which can
      --  also wake up the part from any low power mode. Writing a 1 clears
      --  this bit.
      Match)
     with Size => 1;
   for CTRL_ALARM1HZ_Field use
     (No_Match => 0,
      Match => 1);

   --  RTC 1 kHz timer wake-up flag status.
   type CTRL_WAKE1KHZ_Field is
     (
      --  Run. The RTC 1 kHz timer is running. Writing a 0 has no effect.
      Run,
      --  Time-out. The 1 kHz high-resolution/wake-up timer has timed out. This
      --  flag generates an RTC wake-up interrupt request RTC-WAKE which can
      --  also wake up the part from any low power mode. Writing a 1 clears
      --  this bit.
      Timeout)
     with Size => 1;
   for CTRL_WAKE1KHZ_Field use
     (Run => 0,
      Timeout => 1);

   --  RTC 1 Hz timer alarm enable for Deep power-down.
   type CTRL_ALARMDPD_EN_Field is
     (
      --  Disable. A match on the 1 Hz RTC timer will not bring the part out of
      --  Deep power-down mode.
      Disable,
      --  Enable. A match on the 1 Hz RTC timer bring the part out of Deep
      --  power-down mode.
      Enable)
     with Size => 1;
   for CTRL_ALARMDPD_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  RTC 1 kHz timer wake-up enable for Deep power-down.
   type CTRL_WAKEDPD_EN_Field is
     (
      --  Disable. A match on the 1 kHz RTC timer will not bring the part out
      --  of Deep power-down mode.
      Disable,
      --  Enable. A match on the 1 kHz RTC timer bring the part out of Deep
      --  power-down mode.
      Enable)
     with Size => 1;
   for CTRL_WAKEDPD_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  RTC 1 kHz clock enable. This bit can be set to 0 to conserve power if
   --  the 1 kHz timer is not used. This bit has no effect when the RTC is
   --  disabled (bit 7 of this register is 0).
   type CTRL_RTC1KHZ_EN_Field is
     (
      --  Disable. A match on the 1 kHz RTC timer will not bring the part out
      --  of Deep power-down mode.
      Disable,
      --  Enable. The 1 kHz RTC timer is enabled.
      Enable)
     with Size => 1;
   for CTRL_RTC1KHZ_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  RTC enable.
   type CTRL_RTC_EN_Field is
     (
      --  Disable. The RTC 1 Hz and 1 kHz clocks are shut down and the RTC
      --  operation is disabled. This bit should be 0 when writing to load a
      --  value in the RTC counter register.
      Disable,
      --  Enable. The 1 Hz RTC clock is running and RTC operation is enabled.
      --  This bit must be set to initiate operation of the RTC. The first
      --  clock to the RTC counter occurs 1 s after this bit is set. To also
      --  enable the high-resolution, 1 kHz clock, set bit 6 in this register.
      Enable)
     with Size => 1;
   for CTRL_RTC_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  RTC oscillator power-down control.
   type CTRL_RTC_OSC_PD_Field is
     (
      --  See RTC_OSC_BYPASS
      Power_Up,
      --  RTC oscillator is powered-down.
      Powered_Down)
     with Size => 1;
   for CTRL_RTC_OSC_PD_Field use
     (Power_Up => 0,
      Powered_Down => 1);

   --  RTC oscillator bypass control.
   type CTRL_RTC_OSC_BYPASS_Field is
     (
      --  RTC oscillator is in normal crystal oscillation mode.
      Normal,
      --  RTC oscillator is bypassed. RTCXIN may be driven by an external
      --  clock.
      Bypassed)
     with Size => 1;
   for CTRL_RTC_OSC_BYPASS_Field use
     (Normal => 0,
      Bypassed => 1);

   --  RTC control register
   type CTRL_Register is record
      --  Software reset control
      SWRESET        : CTRL_SWRESET_Field := NRF_SVD.RTC.In_Reset;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  RTC 1 Hz timer alarm flag status.
      ALARM1HZ       : CTRL_ALARM1HZ_Field := NRF_SVD.RTC.No_Match;
      --  RTC 1 kHz timer wake-up flag status.
      WAKE1KHZ       : CTRL_WAKE1KHZ_Field := NRF_SVD.RTC.Run;
      --  RTC 1 Hz timer alarm enable for Deep power-down.
      ALARMDPD_EN    : CTRL_ALARMDPD_EN_Field := NRF_SVD.RTC.Disable;
      --  RTC 1 kHz timer wake-up enable for Deep power-down.
      WAKEDPD_EN     : CTRL_WAKEDPD_EN_Field := NRF_SVD.RTC.Disable;
      --  RTC 1 kHz clock enable. This bit can be set to 0 to conserve power if
      --  the 1 kHz timer is not used. This bit has no effect when the RTC is
      --  disabled (bit 7 of this register is 0).
      RTC1KHZ_EN     : CTRL_RTC1KHZ_EN_Field := NRF_SVD.RTC.Disable;
      --  RTC enable.
      RTC_EN         : CTRL_RTC_EN_Field := NRF_SVD.RTC.Disable;
      --  RTC oscillator power-down control.
      RTC_OSC_PD     : CTRL_RTC_OSC_PD_Field := NRF_SVD.RTC.Power_Up;
      --  RTC oscillator bypass control.
      RTC_OSC_BYPASS : CTRL_RTC_OSC_BYPASS_Field := NRF_SVD.RTC.Normal;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SWRESET        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      ALARM1HZ       at 0 range 2 .. 2;
      WAKE1KHZ       at 0 range 3 .. 3;
      ALARMDPD_EN    at 0 range 4 .. 4;
      WAKEDPD_EN     at 0 range 5 .. 5;
      RTC1KHZ_EN     at 0 range 6 .. 6;
      RTC_EN         at 0 range 7 .. 7;
      RTC_OSC_PD     at 0 range 8 .. 8;
      RTC_OSC_BYPASS at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype WAKE_VAL_Field is HAL.UInt16;

   --  High-resolution/wake-up timer control register
   type WAKE_Register is record
      --  A read reflects the current value of the high-resolution/wake-up
      --  timer. A write pre-loads a start count value into the wake-up timer
      --  and initializes a count-down sequence. Do not write to this register
      --  while counting is in progress.
      VAL            : WAKE_VAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAKE_Register use record
      VAL            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x Real-Time Clock (RTC)
   type RTC_Peripheral is record
      --  RTC control register
      CTRL  : aliased CTRL_Register;
      --  RTC match register
      MATCH : aliased HAL.UInt32;
      --  RTC counter register
      COUNT : aliased HAL.UInt32;
      --  High-resolution/wake-up timer control register
      WAKE  : aliased WAKE_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      CTRL  at 16#0# range 0 .. 31;
      MATCH at 16#4# range 0 .. 31;
      COUNT at 16#8# range 0 .. 31;
      WAKE  at 16#C# range 0 .. 31;
   end record;

   --  LPC5411x Real-Time Clock (RTC)
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => System'To_Address (16#4002C000#);

end NRF_SVD.RTC;
