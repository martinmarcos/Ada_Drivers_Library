--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.KPP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Keypad Row Enable
   type KPCR_KRE_Field is
     (
      --  Row is not included in the keypad key press detect.
      Kre_0,
      --  Row is included in the keypad key press detect.
      Kre_1)
     with Size => 8;
   for KPCR_KRE_Field use
     (Kre_0 => 0,
      Kre_1 => 1);

   --  Keypad Column Strobe Open-Drain Enable
   type KPCR_KCO_Field is
     (
      --  Column strobe output is totem pole drive.
      Totem_Pole,
      --  Column strobe output is open drain.
      Open_Drain)
     with Size => 8;
   for KPCR_KCO_Field use
     (Totem_Pole => 0,
      Open_Drain => 1);

   --  Keypad Control Register
   type KPP_KPCR_Register is record
      --  Keypad Row Enable
      KRE : KPCR_KRE_Field := NRF_SVD.KPP.Kre_0;
      --  Keypad Column Strobe Open-Drain Enable
      KCO : KPCR_KCO_Field := NRF_SVD.KPP.Totem_Pole;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for KPP_KPCR_Register use record
      KRE at 0 range 0 .. 7;
      KCO at 0 range 8 .. 15;
   end record;

   --  Keypad Key Depress
   type KPSR_KPKD_Field is
     (
      --  No key presses detected
      Kpkd_0,
      --  A key has been depressed
      Kpkd_1)
     with Size => 1;
   for KPSR_KPKD_Field use
     (Kpkd_0 => 0,
      Kpkd_1 => 1);

   --  Keypad Key Release
   type KPSR_KPKR_Field is
     (
      --  No key release detected
      Kpkr_0,
      --  All keys have been released
      Kpkr_1)
     with Size => 1;
   for KPSR_KPKR_Field use
     (Kpkr_0 => 0,
      Kpkr_1 => 1);

   --  Key Depress Synchronizer Clear
   type KPSR_KDSC_Field is
     (
      --  No effect
      Kdsc_0,
      --  Set bits that clear the keypad depress synchronizer chain
      Kdsc_1)
     with Size => 1;
   for KPSR_KDSC_Field use
     (Kdsc_0 => 0,
      Kdsc_1 => 1);

   --  Key Release Synchronizer Set
   type KPSR_KRSS_Field is
     (
      --  No effect
      Krss_0,
      --  Set bits which sets keypad release synchronizer chain
      Krss_1)
     with Size => 1;
   for KPSR_KRSS_Field use
     (Krss_0 => 0,
      Krss_1 => 1);

   --  Keypad Key Depress Interrupt Enable
   type KPSR_KDIE_Field is
     (
      --  No interrupt request is generated when KPKD is set.
      Kdie_0,
      --  An interrupt request is generated when KPKD is set.
      Kdie_1)
     with Size => 1;
   for KPSR_KDIE_Field use
     (Kdie_0 => 0,
      Kdie_1 => 1);

   --  Keypad Release Interrupt Enable
   type KPSR_KRIE_Field is
     (
      --  No interrupt request is generated when KPKR is set.
      Krie_0,
      --  An interrupt request is generated when KPKR is set.
      Krie_1)
     with Size => 1;
   for KPSR_KRIE_Field use
     (Krie_0 => 0,
      Krie_1 => 1);

   --  Keypad Status Register
   type KPP_KPSR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Keypad Key Depress
      KPKD           : KPSR_KPKD_Field := NRF_SVD.KPP.Kpkd_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Keypad Key Release
      KPKR           : KPSR_KPKR_Field := NRF_SVD.KPP.Kpkr_0;
      --  Write-only. Key Depress Synchronizer Clear
      KDSC           : KPSR_KDSC_Field := NRF_SVD.KPP.Kdsc_0;
      --  Write-only. Key Release Synchronizer Set
      KRSS           : KPSR_KRSS_Field := NRF_SVD.KPP.Krss_0;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Keypad Key Depress Interrupt Enable
      KDIE           : KPSR_KDIE_Field := NRF_SVD.KPP.Kdie_0;
      --  Keypad Release Interrupt Enable
      KRIE           : KPSR_KRIE_Field := NRF_SVD.KPP.Krie_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for KPP_KPSR_Register use record
      KPKD           at 0 range 0 .. 0;
      KPKR           at 0 range 1 .. 1;
      KDSC           at 0 range 2 .. 2;
      KRSS           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      KDIE           at 0 range 8 .. 8;
      KRIE           at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  Keypad Row Data Direction
   type KDDR_KRDD_Field is
     (
      --  ROWn pin configured as an input.
      Input,
      --  ROWn pin configured as an output.
      Output)
     with Size => 8;
   for KDDR_KRDD_Field use
     (Input => 0,
      Output => 1);

   --  Keypad Column Data Direction Register
   type KDDR_KCDD_Field is
     (
      --  COLn pin is configured as an input.
      Input,
      --  COLn pin is configured as an output.
      Output)
     with Size => 8;
   for KDDR_KCDD_Field use
     (Input => 0,
      Output => 1);

   --  Keypad Data Direction Register
   type KPP_KDDR_Register is record
      --  Keypad Row Data Direction
      KRDD : KDDR_KRDD_Field := NRF_SVD.KPP.Input;
      --  Keypad Column Data Direction Register
      KCDD : KDDR_KCDD_Field := NRF_SVD.KPP.Input;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for KPP_KDDR_Register use record
      KRDD at 0 range 0 .. 7;
      KCDD at 0 range 8 .. 15;
   end record;

   subtype KPP_KPDR_KRD_Field is HAL.UInt8;
   subtype KPP_KPDR_KCD_Field is HAL.UInt8;

   --  Keypad Data Register
   type KPP_KPDR_Register is record
      --  Keypad Row Data
      KRD : KPP_KPDR_KRD_Field := 16#0#;
      --  Keypad Column Data
      KCD : KPP_KPDR_KCD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for KPP_KPDR_Register use record
      KRD at 0 range 0 .. 7;
      KCD at 0 range 8 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  KPP Registers
   type KPP_Peripheral is record
      --  Keypad Control Register
      KPCR : aliased KPP_KPCR_Register;
      --  Keypad Status Register
      KPSR : aliased KPP_KPSR_Register;
      --  Keypad Data Direction Register
      KDDR : aliased KPP_KDDR_Register;
      --  Keypad Data Register
      KPDR : aliased KPP_KPDR_Register;
   end record
     with Volatile;

   for KPP_Peripheral use record
      KPCR at 16#0# range 0 .. 15;
      KPSR at 16#2# range 0 .. 15;
      KDDR at 16#4# range 0 .. 15;
      KPDR at 16#6# range 0 .. 15;
   end record;

   --  KPP Registers
   KPP_Periph : aliased KPP_Peripheral
     with Import, Address => System'To_Address (16#401FC000#);

end NRF_SVD.KPP;
