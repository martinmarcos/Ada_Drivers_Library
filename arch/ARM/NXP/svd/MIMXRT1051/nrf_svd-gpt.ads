--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPT Enable
   type CR_EN_Field is
     (
      --  GPT is disabled.
      En_0,
      --  GPT is enabled.
      En_1)
     with Size => 1;
   for CR_EN_Field use
     (En_0 => 0,
      En_1 => 1);

   --  GPT Enable mode
   type CR_ENMOD_Field is
     (
      --  GPT counter will retain its value when it is disabled.
      Enmod_0,
      --  GPT counter value is reset to 0 when it is disabled.
      Enmod_1)
     with Size => 1;
   for CR_ENMOD_Field use
     (Enmod_0 => 0,
      Enmod_1 => 1);

   --  GPT debug mode enable
   type CR_DBGEN_Field is
     (
      --  GPT is disabled in debug mode.
      Dbgen_0,
      --  GPT is enabled in debug mode.
      Dbgen_1)
     with Size => 1;
   for CR_DBGEN_Field use
     (Dbgen_0 => 0,
      Dbgen_1 => 1);

   --  GPT Wait Mode enable
   type CR_WAITEN_Field is
     (
      --  GPT is disabled in wait mode.
      Waiten_0,
      --  GPT is enabled in wait mode.
      Waiten_1)
     with Size => 1;
   for CR_WAITEN_Field use
     (Waiten_0 => 0,
      Waiten_1 => 1);

   --  GPT Doze Mode Enable
   type CR_DOZEEN_Field is
     (
      --  GPT is disabled in doze mode.
      Dozeen_0,
      --  GPT is enabled in doze mode.
      Dozeen_1)
     with Size => 1;
   for CR_DOZEEN_Field use
     (Dozeen_0 => 0,
      Dozeen_1 => 1);

   --  GPT Stop Mode enable
   type CR_STOPEN_Field is
     (
      --  GPT is disabled in Stop mode.
      Stopen_0,
      --  GPT is enabled in Stop mode.
      Stopen_1)
     with Size => 1;
   for CR_STOPEN_Field use
     (Stopen_0 => 0,
      Stopen_1 => 1);

   --  Clock Source select
   type CR_CLKSRC_Field is
     (
      --  No clock
      Clksrc_0,
      --  Peripheral Clock (ipg_clk)
      Clksrc_1,
      --  High Frequency Reference Clock (ipg_clk_highfreq)
      Clksrc_2,
      --  External Clock
      Clksrc_3,
      --  Low Frequency Reference Clock (ipg_clk_32k)
      Clksrc_4,
      --  Crystal oscillator as Reference Clock (ipg_clk_24M)
      Clksrc_5)
     with Size => 3;
   for CR_CLKSRC_Field use
     (Clksrc_0 => 0,
      Clksrc_1 => 1,
      Clksrc_2 => 2,
      Clksrc_3 => 3,
      Clksrc_4 => 4,
      Clksrc_5 => 5);

   --  Free-Run or Restart mode
   type CR_FRR_Field is
     (
      --  Restart mode
      Frr_0,
      --  Free-Run mode
      Frr_1)
     with Size => 1;
   for CR_FRR_Field use
     (Frr_0 => 0,
      Frr_1 => 1);

   --  Enable 24 MHz clock input from crystal
   type CR_EN_24M_Field is
     (
      --  24M clock disabled
      En_24M_0,
      --  24M clock enabled
      En_24M_1)
     with Size => 1;
   for CR_EN_24M_Field use
     (En_24M_0 => 0,
      En_24M_1 => 1);

   --  Software reset
   type CR_SWR_Field is
     (
      --  GPT is not in reset state
      Swr_0,
      --  GPT is in reset state
      Swr_1)
     with Size => 1;
   for CR_SWR_Field use
     (Swr_0 => 0,
      Swr_1 => 1);

   subtype GPT1_CR_IM1_Field is HAL.UInt2;

   --  IM2 (bits 19-18, Input Capture Channel 2 operating mode) IM1 (bits
   --  17-16, Input Capture Channel 1 operating mode) The IMn bit field
   --  determines the transition on the input pin (for Input capture channel
   --  n), which will trigger a capture event
   type CR_IM2_Field is
     (
      --  capture disabled
      Im2_0,
      --  capture on rising edge only
      Im2_1,
      --  capture on falling edge only
      Im2_2,
      --  capture on both edges
      Im2_3)
     with Size => 2;
   for CR_IM2_Field use
     (Im2_0 => 0,
      Im2_1 => 1,
      Im2_2 => 2,
      Im2_3 => 3);

   --  GPT1_CR_OM array element
   subtype GPT1_CR_OM_Element is HAL.UInt3;

   --  GPT1_CR_OM array
   type GPT1_CR_OM_Field_Array is array (1 .. 2) of GPT1_CR_OM_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for GPT1_CR_OM
   type GPT1_CR_OM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OM as a value
            Val : HAL.UInt6;
         when True =>
            --  OM as an array
            Arr : GPT1_CR_OM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for GPT1_CR_OM_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  OM3 (bits 28-26) controls the Output Compare Channel 3 operating mode
   type CR_OM3_Field is
     (
      --  Output disconnected. No response on pin.
      Om3_0,
      --  Toggle output pin
      Om3_1,
      --  Clear output pin
      Om3_2,
      --  Set output pin
      Om3_3,
      --  Generate an active low pulse (that is one input clock wide) on the
      --  output pin.
      Om3_400,
      --  Generate an active low pulse (that is one input clock wide) on the
      --  output pin.
      Om3_401,
      --  Generate an active low pulse (that is one input clock wide) on the
      --  output pin.
      Om3_410,
      --  Generate an active low pulse (that is one input clock wide) on the
      --  output pin.
      Om3_411)
     with Size => 3;
   for CR_OM3_Field use
     (Om3_0 => 0,
      Om3_1 => 1,
      Om3_2 => 2,
      Om3_3 => 3,
      Om3_400 => 4,
      Om3_401 => 5,
      Om3_410 => 6,
      Om3_411 => 7);

   --  GPT1_CR_FO array
   type GPT1_CR_FO_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for GPT1_CR_FO
   type GPT1_CR_FO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FO as a value
            Val : HAL.UInt2;
         when True =>
            --  FO as an array
            Arr : GPT1_CR_FO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for GPT1_CR_FO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FO3 Force Output Compare Channel 3 FO2 Force Output Compare Channel 2
   --  FO1 Force Output Compare Channel 1 The FOn bit causes the pin action
   --  programmed for the timer Output Compare n pin (according to the OMn bits
   --  in this register)
   type CR_FO3_Field is
     (
      --  Writing a 0 has no effect.
      Fo3_0,
      --  Causes the programmed pin action on the timer Output Compare n pin;
      --  the OFn flag is not set.
      Fo3_1)
     with Size => 1;
   for CR_FO3_Field use
     (Fo3_0 => 0,
      Fo3_1 => 1);

   --  GPT Control Register
   type GPT1_CR_Register is record
      --  GPT Enable
      EN             : CR_EN_Field := NRF_SVD.GPT.En_0;
      --  GPT Enable mode
      ENMOD          : CR_ENMOD_Field := NRF_SVD.GPT.Enmod_0;
      --  GPT debug mode enable
      DBGEN          : CR_DBGEN_Field := NRF_SVD.GPT.Dbgen_0;
      --  GPT Wait Mode enable
      WAITEN         : CR_WAITEN_Field := NRF_SVD.GPT.Waiten_0;
      --  GPT Doze Mode Enable
      DOZEEN         : CR_DOZEEN_Field := NRF_SVD.GPT.Dozeen_0;
      --  GPT Stop Mode enable
      STOPEN         : CR_STOPEN_Field := NRF_SVD.GPT.Stopen_0;
      --  Clock Source select
      CLKSRC         : CR_CLKSRC_Field := NRF_SVD.GPT.Clksrc_0;
      --  Free-Run or Restart mode
      FRR            : CR_FRR_Field := NRF_SVD.GPT.Frr_0;
      --  Enable 24 MHz clock input from crystal
      EN_24M         : CR_EN_24M_Field := NRF_SVD.GPT.En_24M_0;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Software reset
      SWR            : CR_SWR_Field := NRF_SVD.GPT.Swr_0;
      --  See IM2
      IM1            : GPT1_CR_IM1_Field := 16#0#;
      --  IM2 (bits 19-18, Input Capture Channel 2 operating mode) IM1 (bits
      --  17-16, Input Capture Channel 1 operating mode) The IMn bit field
      --  determines the transition on the input pin (for Input capture channel
      --  n), which will trigger a capture event
      IM2            : CR_IM2_Field := NRF_SVD.GPT.Im2_0;
      --  See OM3
      OM             : GPT1_CR_OM_Field := (As_Array => False, Val => 16#0#);
      --  OM3 (bits 28-26) controls the Output Compare Channel 3 operating mode
      OM3            : CR_OM3_Field := NRF_SVD.GPT.Om3_0;
      --  Write-only. See F03
      FO             : GPT1_CR_FO_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. FO3 Force Output Compare Channel 3 FO2 Force Output
      --  Compare Channel 2 FO1 Force Output Compare Channel 1 The FOn bit
      --  causes the pin action programmed for the timer Output Compare n pin
      --  (according to the OMn bits in this register)
      FO3            : CR_FO3_Field := NRF_SVD.GPT.Fo3_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPT1_CR_Register use record
      EN             at 0 range 0 .. 0;
      ENMOD          at 0 range 1 .. 1;
      DBGEN          at 0 range 2 .. 2;
      WAITEN         at 0 range 3 .. 3;
      DOZEEN         at 0 range 4 .. 4;
      STOPEN         at 0 range 5 .. 5;
      CLKSRC         at 0 range 6 .. 8;
      FRR            at 0 range 9 .. 9;
      EN_24M         at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      SWR            at 0 range 15 .. 15;
      IM1            at 0 range 16 .. 17;
      IM2            at 0 range 18 .. 19;
      OM             at 0 range 20 .. 25;
      OM3            at 0 range 26 .. 28;
      FO             at 0 range 29 .. 30;
      FO3            at 0 range 31 .. 31;
   end record;

   --  Prescaler bits
   type PR_PRESCALER_Field is
     (
      --  Divide by 1
      Prescaler_0,
      --  Divide by 2
      Prescaler_1,
      --  Divide by 4096
      Prescaler_4095)
     with Size => 12;
   for PR_PRESCALER_Field use
     (Prescaler_0 => 0,
      Prescaler_1 => 1,
      Prescaler_4095 => 4095);

   --  Prescaler bits
   type PR_PRESCALER24M_Field is
     (
      --  Divide by 1
      Prescaler24M_0,
      --  Divide by 2
      Prescaler24M_1,
      --  Divide by 16
      Prescaler24M_15)
     with Size => 4;
   for PR_PRESCALER24M_Field use
     (Prescaler24M_0 => 0,
      Prescaler24M_1 => 1,
      Prescaler24M_15 => 15);

   --  GPT Prescaler Register
   type GPT1_PR_Register is record
      --  Prescaler bits
      PRESCALER      : PR_PRESCALER_Field := NRF_SVD.GPT.Prescaler_0;
      --  Prescaler bits
      PRESCALER24M   : PR_PRESCALER24M_Field := NRF_SVD.GPT.Prescaler24M_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPT1_PR_Register use record
      PRESCALER      at 0 range 0 .. 11;
      PRESCALER24M   at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  GPT1_SR_OF array
   type GPT1_SR_OF_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for GPT1_SR_OF
   type GPT1_SR_OF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OF as a value
            Val : HAL.UInt2;
         when True =>
            --  OF as an array
            Arr : GPT1_SR_OF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for GPT1_SR_OF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  OF3 Output Compare 3 Flag OF2 Output Compare 2 Flag OF1 Output Compare 1
   --  Flag The OFn bit indicates that a compare event has occurred on Output
   --  Compare channel n
   type SR_OF3_Field is
     (
      --  Compare event has not occurred.
      Of3_0,
      --  Compare event has occurred.
      Of3_1)
     with Size => 1;
   for SR_OF3_Field use
     (Of3_0 => 0,
      Of3_1 => 1);

   --  IF2 Input capture 2 Flag IF1 Input capture 1 Flag The IFn bit indicates
   --  that a capture event has occurred on Input Capture channel n
   type SR_IF2_Field is
     (
      --  Capture event has not occurred.
      If2_0,
      --  Capture event has occurred.
      If2_1)
     with Size => 1;
   for SR_IF2_Field use
     (If2_0 => 0,
      If2_1 => 1);

   --  Rollover Flag
   type SR_ROV_Field is
     (
      --  Rollover has not occurred.
      Rov_0,
      --  Rollover has occurred.
      Rov_1)
     with Size => 1;
   for SR_ROV_Field use
     (Rov_0 => 0,
      Rov_1 => 1);

   --  GPT Status Register
   type GPT1_SR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. See OF3
      OF_k          : GPT1_SR_OF_Field := (As_Array => False, Val => 16#0#);
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. OF3 Output Compare 3 Flag OF2 Output Compare 2 Flag OF1
      --  Output Compare 1 Flag The OFn bit indicates that a compare event has
      --  occurred on Output Compare channel n
      OF3           : SR_OF3_Field := NRF_SVD.GPT.Of3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. See IF2
      IF1           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. IF2 Input capture 2 Flag IF1 Input capture 1 Flag The
      --  IFn bit indicates that a capture event has occurred on Input Capture
      --  channel n
      IF2           : SR_IF2_Field := NRF_SVD.GPT.If2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Rollover Flag
      ROV           : SR_ROV_Field := NRF_SVD.GPT.Rov_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPT1_SR_Register use record
      OF_k          at 0 range 0 .. 1;
      OF3           at 0 range 2 .. 2;
      IF1           at 0 range 3 .. 3;
      IF2           at 0 range 4 .. 4;
      ROV           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  OF3IE Output Compare 3 Interrupt Enable OF2IE Output Compare 2 Interrupt
   --  Enable OF1IE Output Compare 1 Interrupt Enable The OFnIE bit controls
   --  the Output Compare Channel n interrupt
   type IR_OF3IE_Field is
     (
      --  Output Compare Channel n interrupt is disabled.
      Of3Ie_0,
      --  Output Compare Channel n interrupt is enabled.
      Of3Ie_1)
     with Size => 1;
   for IR_OF3IE_Field use
     (Of3Ie_0 => 0,
      Of3Ie_1 => 1);

   --  IF2IE Input capture 2 Interrupt Enable IF1IE Input capture 1 Interrupt
   --  Enable The IFnIE bit controls the IFnIE Input Capture n Interrupt Enable
   type IR_IF2IE_Field is
     (
      --  IF2IE Input Capture n Interrupt Enable is disabled.
      If2Ie_0,
      --  IF2IE Input Capture n Interrupt Enable is enabled.
      If2Ie_1)
     with Size => 1;
   for IR_IF2IE_Field use
     (If2Ie_0 => 0,
      If2Ie_1 => 1);

   --  Rollover Interrupt Enable. The ROVIE bit controls the Rollover
   --  interrupt.
   type IR_ROVIE_Field is
     (
      --  Rollover interrupt is disabled.
      Rovie_0,
      --  Rollover interrupt enabled.
      Rovie_1)
     with Size => 1;
   for IR_ROVIE_Field use
     (Rovie_0 => 0,
      Rovie_1 => 1);

   --  GPT Interrupt Register
   type GPT1_IR_Register is record
      --  See OF3IE
      OF1IE         : Boolean := False;
      --  See OF3IE
      OF2IE         : Boolean := False;
      --  OF3IE Output Compare 3 Interrupt Enable OF2IE Output Compare 2
      --  Interrupt Enable OF1IE Output Compare 1 Interrupt Enable The OFnIE
      --  bit controls the Output Compare Channel n interrupt
      OF3IE         : IR_OF3IE_Field := NRF_SVD.GPT.Of3Ie_0;
      --  See IF2IE
      IF1IE         : Boolean := False;
      --  IF2IE Input capture 2 Interrupt Enable IF1IE Input capture 1
      --  Interrupt Enable The IFnIE bit controls the IFnIE Input Capture n
      --  Interrupt Enable
      IF2IE         : IR_IF2IE_Field := NRF_SVD.GPT.If2Ie_0;
      --  Rollover Interrupt Enable. The ROVIE bit controls the Rollover
      --  interrupt.
      ROVIE         : IR_ROVIE_Field := NRF_SVD.GPT.Rovie_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPT1_IR_Register use record
      OF1IE         at 0 range 0 .. 0;
      OF2IE         at 0 range 1 .. 1;
      OF3IE         at 0 range 2 .. 2;
      IF1IE         at 0 range 3 .. 3;
      IF2IE         at 0 range 4 .. 4;
      ROVIE         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPT
   type GPT_Peripheral is record
      --  GPT Control Register
      CR   : aliased GPT1_CR_Register;
      --  GPT Prescaler Register
      PR   : aliased GPT1_PR_Register;
      --  GPT Status Register
      SR   : aliased GPT1_SR_Register;
      --  GPT Interrupt Register
      IR   : aliased GPT1_IR_Register;
      --  GPT Output Compare Register 1
      OCR1 : aliased HAL.UInt32;
      --  GPT Output Compare Register 2
      OCR2 : aliased HAL.UInt32;
      --  GPT Output Compare Register 3
      OCR3 : aliased HAL.UInt32;
      --  GPT Input Capture Register 1
      ICR1 : aliased HAL.UInt32;
      --  GPT Input Capture Register 2
      ICR2 : aliased HAL.UInt32;
      --  GPT Counter Register
      CNT  : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPT_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      PR   at 16#4# range 0 .. 31;
      SR   at 16#8# range 0 .. 31;
      IR   at 16#C# range 0 .. 31;
      OCR1 at 16#10# range 0 .. 31;
      OCR2 at 16#14# range 0 .. 31;
      OCR3 at 16#18# range 0 .. 31;
      ICR1 at 16#1C# range 0 .. 31;
      ICR2 at 16#20# range 0 .. 31;
      CNT  at 16#24# range 0 .. 31;
   end record;

   --  GPT
   GPT1_Periph : aliased GPT_Peripheral
     with Import, Address => System'To_Address (16#401EC000#);

   --  GPT
   GPT2_Periph : aliased GPT_Peripheral
     with Import, Address => System'To_Address (16#401F0000#);

end NRF_SVD.GPT;
