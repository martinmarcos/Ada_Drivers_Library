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

--  Watchdog timer
package NRF_SVD.WDOG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Stop Enable
   type CS1_STOP_Field is
     (
      --  Watchdog disabled in chip stop mode.
      CS1_STOP_Field_0,
      --  Watchdog enabled in chip stop mode.
      CS1_STOP_Field_1)
     with Size => 1;
   for CS1_STOP_Field use
     (CS1_STOP_Field_0 => 0,
      CS1_STOP_Field_1 => 1);

   --  Wait Enable
   type CS1_WAIT_Field is
     (
      --  Watchdog disabled in chip wait mode.
      CS1_WAIT_Field_0,
      --  Watchdog enabled in chip wait mode.
      CS1_WAIT_Field_1)
     with Size => 1;
   for CS1_WAIT_Field use
     (CS1_WAIT_Field_0 => 0,
      CS1_WAIT_Field_1 => 1);

   --  Debug Enable
   type CS1_DBG_Field is
     (
      --  Watchdog disabled in chip debug mode.
      CS1_DBG_Field_0,
      --  Watchdog enabled in chip debug mode.
      CS1_DBG_Field_1)
     with Size => 1;
   for CS1_DBG_Field use
     (CS1_DBG_Field_0 => 0,
      CS1_DBG_Field_1 => 1);

   --  Watchdog Test
   type CS1_TST_Field is
     (
      --  Watchdog test mode disabled.
      CS1_TST_Field_00,
      --  Watchdog user mode enabled. (Watchdog test mode disabled.) After
      --  testing the watchdog, software should use this setting to indicate
      --  that the watchdog is functioning normally in user mode.
      CS1_TST_Field_01,
      --  Watchdog test mode enabled, only the low byte is used. WDOG_CNTL is
      --  compared with WDOG_TOVALL.
      CS1_TST_Field_10,
      --  Watchdog test mode enabled, only the high byte is used. WDOG_CNTH is
      --  compared with WDOG_TOVALH.
      CS1_TST_Field_11)
     with Size => 2;
   for CS1_TST_Field use
     (CS1_TST_Field_00 => 0,
      CS1_TST_Field_01 => 1,
      CS1_TST_Field_10 => 2,
      CS1_TST_Field_11 => 3);

   --  Allow updates
   type CS1_UPDATE_Field is
     (
      --  Updates not allowed. After the initial configuration, the watchdog
      --  cannot be later modified without forcing a reset.
      CS1_UPDATE_Field_0,
      --  Updates allowed. Software can modify the watchdog configuration
      --  registers within 128 bus clocks after performing the unlock write
      --  sequence.
      CS1_UPDATE_Field_1)
     with Size => 1;
   for CS1_UPDATE_Field use
     (CS1_UPDATE_Field_0 => 0,
      CS1_UPDATE_Field_1 => 1);

   --  Watchdog Interrupt
   type CS1_INT_Field is
     (
      --  Watchdog interrupts are disabled. Watchdog resets are not delayed.
      CS1_INT_Field_0,
      --  Watchdog interrupts are enabled. Watchdog resets are delayed by 128
      --  bus clocks.
      CS1_INT_Field_1)
     with Size => 1;
   for CS1_INT_Field use
     (CS1_INT_Field_0 => 0,
      CS1_INT_Field_1 => 1);

   --  Watchdog Enable
   type CS1_EN_Field is
     (
      --  Watchdog disabled.
      CS1_EN_Field_0,
      --  Watchdog enabled.
      CS1_EN_Field_1)
     with Size => 1;
   for CS1_EN_Field use
     (CS1_EN_Field_0 => 0,
      CS1_EN_Field_1 => 1);

   --  Watchdog Control and Status Register 1
   type WDOG_CS1_Register is record
      --  Stop Enable
      STOP   : CS1_STOP_Field := NRF_SVD.WDOG.CS1_STOP_Field_0;
      --  Wait Enable
      WAIT   : CS1_WAIT_Field := NRF_SVD.WDOG.CS1_WAIT_Field_0;
      --  Debug Enable
      DBG    : CS1_DBG_Field := NRF_SVD.WDOG.CS1_DBG_Field_0;
      --  Watchdog Test
      TST    : CS1_TST_Field := NRF_SVD.WDOG.CS1_TST_Field_00;
      --  Allow updates
      UPDATE : CS1_UPDATE_Field := NRF_SVD.WDOG.CS1_UPDATE_Field_0;
      --  Watchdog Interrupt
      INT    : CS1_INT_Field := NRF_SVD.WDOG.CS1_INT_Field_0;
      --  Watchdog Enable
      EN     : CS1_EN_Field := NRF_SVD.WDOG.CS1_EN_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOG_CS1_Register use record
      STOP   at 0 range 0 .. 0;
      WAIT   at 0 range 1 .. 1;
      DBG    at 0 range 2 .. 2;
      TST    at 0 range 3 .. 4;
      UPDATE at 0 range 5 .. 5;
      INT    at 0 range 6 .. 6;
      EN     at 0 range 7 .. 7;
   end record;

   --  Watchdog Clock
   type CS2_CLK_Field is
     (
      --  Bus clock.
      CS2_CLK_Field_00,
      --  1 kHz internal low-power oscillator (LPOCLK).
      CS2_CLK_Field_01,
      --  32 kHz internal oscillator (ICSIRCLK).
      CS2_CLK_Field_10,
      --  External clock source.
      CS2_CLK_Field_11)
     with Size => 2;
   for CS2_CLK_Field use
     (CS2_CLK_Field_00 => 0,
      CS2_CLK_Field_01 => 1,
      CS2_CLK_Field_10 => 2,
      CS2_CLK_Field_11 => 3);

   --  Watchdog Prescalar
   type CS2_PRES_Field is
     (
      --  256 prescalar disabled.
      CS2_PRES_Field_0,
      --  256 prescalar enabled.
      CS2_PRES_Field_1)
     with Size => 1;
   for CS2_PRES_Field use
     (CS2_PRES_Field_0 => 0,
      CS2_PRES_Field_1 => 1);

   --  Watchdog Interrupt Flag
   type CS2_FLG_Field is
     (
      --  No interrupt occurred.
      CS2_FLG_Field_0,
      --  An interrupt occurred.
      CS2_FLG_Field_1)
     with Size => 1;
   for CS2_FLG_Field use
     (CS2_FLG_Field_0 => 0,
      CS2_FLG_Field_1 => 1);

   --  Watchdog Window
   type CS2_WIN_Field is
     (
      --  Window mode disabled.
      CS2_WIN_Field_0,
      --  Window mode enabled.
      CS2_WIN_Field_1)
     with Size => 1;
   for CS2_WIN_Field use
     (CS2_WIN_Field_0 => 0,
      CS2_WIN_Field_1 => 1);

   --  Watchdog Control and Status Register 2
   type WDOG_CS2_Register is record
      --  Watchdog Clock
      CLK          : CS2_CLK_Field := NRF_SVD.WDOG.CS2_CLK_Field_01;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Watchdog Prescalar
      PRES         : CS2_PRES_Field := NRF_SVD.WDOG.CS2_PRES_Field_0;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Watchdog Interrupt Flag
      FLG          : CS2_FLG_Field := NRF_SVD.WDOG.CS2_FLG_Field_0;
      --  Watchdog Window
      WIN          : CS2_WIN_Field := NRF_SVD.WDOG.CS2_WIN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for WDOG_CS2_Register use record
      CLK          at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      PRES         at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      FLG          at 0 range 6 .. 6;
      WIN          at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Watchdog timer
   type WDOG_Peripheral is record
      --  Watchdog Control and Status Register 1
      CS1    : aliased WDOG_CS1_Register;
      --  Watchdog Control and Status Register 2
      CS2    : aliased WDOG_CS2_Register;
      --  Watchdog Counter Register: High
      CNTH   : aliased HAL.UInt8;
      --  Watchdog Counter Register: Low
      CNTL   : aliased HAL.UInt8;
      --  Watchdog Timeout Value Register: High
      TOVALH : aliased HAL.UInt8;
      --  Watchdog Timeout Value Register: Low
      TOVALL : aliased HAL.UInt8;
      --  Watchdog Window Register: High
      WINH   : aliased HAL.UInt8;
      --  Watchdog Window Register: Low
      WINL   : aliased HAL.UInt8;
   end record
     with Volatile;

   for WDOG_Peripheral use record
      CS1    at 16#0# range 0 .. 7;
      CS2    at 16#1# range 0 .. 7;
      CNTH   at 16#2# range 0 .. 7;
      CNTL   at 16#3# range 0 .. 7;
      TOVALH at 16#4# range 0 .. 7;
      TOVALL at 16#5# range 0 .. 7;
      WINH   at 16#6# range 0 .. 7;
      WINL   at 16#7# range 0 .. 7;
   end record;

   --  Watchdog timer
   WDOG_Periph : aliased WDOG_Peripheral
     with Import, Address => WDOG_Base;

end NRF_SVD.WDOG;
