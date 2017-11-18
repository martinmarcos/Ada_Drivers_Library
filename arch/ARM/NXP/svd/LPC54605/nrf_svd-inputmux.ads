--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.INPUTMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SCT0_INMUX_INP_N_Field is HAL.UInt5;

   --  Trigger select register for DMA channel
   type SCT0_INMUX_Register is record
      --  Input number to SCT0 inputs 0 to 6..
      INP_N         : SCT0_INMUX_INP_N_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCT0_INMUX_Register use record
      INP_N         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Trigger select register for DMA channel
   type SCT0_INMUX_Registers is array (0 .. 6) of SCT0_INMUX_Register
     with Volatile;

   subtype PINTSEL_INTPIN_Field is HAL.UInt8;

   --  Pin interrupt select register
   type PINTSEL_Register is record
      --  Pin number select for pin interrupt or pattern match engine input.
      --  (PIO0_0 to PIO1_31 correspond to numbers 0 to 63).
      INTPIN        : PINTSEL_INTPIN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PINTSEL_Register use record
      INTPIN        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Pin interrupt select register
   type PINTSEL_Registers is array (0 .. 7) of PINTSEL_Register
     with Volatile;

   subtype DMA_ITRIG_INMUX_INP_Field is HAL.UInt5;

   --  Trigger select register for DMA channel
   type DMA_ITRIG_INMUX_Register is record
      --  Trigger input number (decimal value) for DMA channel n (n = 0 to 21).
      --  0 = ADC0 Sequence A interrupt 1 = ADC0 Sequence B interrupt 2 = SCT0
      --  DMA request 0 3 = SCT0 DMA request 1 4 = Timer CTIMER0 Match 0 5 =
      --  Timer CTIMER0 Match 1 6 = Timer CTIMER1 Match 0 7 = Timer CTIMER2
      --  Match 0 8 = Timer CTIMER2 Match 1 9 = Timer CTIMER3 Match 0 10 =
      --  Timer CTIMER4 Match 0 11 = Timer CTIMER4 Match 1 12 = Pin interrupt 0
      --  13 = Pin interrupt 1 14 = Pin interrupt 2 15 = Pin interrupt 3 16 =
      --  DMA output trigger mux 0 17 = DMA output trigger mux 1 18 = DMA
      --  output trigger mux 2 19 = DMA output trigger mux 3
      INP           : DMA_ITRIG_INMUX_INP_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_ITRIG_INMUX_Register use record
      INP           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Trigger select register for DMA channel
   type DMA_ITRIG_INMUX_Registers is array (0 .. 29)
     of DMA_ITRIG_INMUX_Register
     with Volatile;

   subtype DMA_OTRIG_INMUX_INP_Field is HAL.UInt5;

   --  DMA output trigger selection to become DMA trigger
   type DMA_OTRIG_INMUX_Register is record
      --  DMA trigger output number (decimal value) for DMA channel n (n = 0 to
      --  19).
      INP           : DMA_OTRIG_INMUX_INP_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_OTRIG_INMUX_Register use record
      INP           at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DMA output trigger selection to become DMA trigger
   type DMA_OTRIG_INMUX_Registers is array (0 .. 3)
     of DMA_OTRIG_INMUX_Register
     with Volatile;

   subtype FREQMEAS_REF_CLKIN_Field is HAL.UInt5;

   --  Selection for frequency measurement reference clock
   type FREQMEAS_REF_Register is record
      --  Clock source number (decimal value) for frequency measure function
      --  target clock: 0 = CLK_IN 1 = FRO 12 MHz oscillator 2 = Watchdog
      --  oscillator 3 = 32 kHz RTC oscillator 4 = Main clock (see Section
      --  4.5.23) 5 = PIO0_4 6 = PIO0_20 7 = PIO0_24 8 = PIO1_4
      CLKIN         : FREQMEAS_REF_CLKIN_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQMEAS_REF_Register use record
      CLKIN         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FREQMEAS_TARGET_CLKIN_Field is HAL.UInt5;

   --  Selection for frequency measurement target clock
   type FREQMEAS_TARGET_Register is record
      --  Clock source number (decimal value) for frequency measure function
      --  target clock: 0 = CLK_IN 1 = FRO 12 MHz oscillator 2 = Watchdog
      --  oscillator 3 = 32 kHz RTC oscillator 4 = Main clock (see Section
      --  4.5.23) 5 = PIO0_4 6 = PIO0_20 7 = PIO0_24 8 = PIO1_4
      CLKIN         : FREQMEAS_TARGET_CLKIN_Field := 16#1F#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQMEAS_TARGET_Register use record
      CLKIN         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x Input multiplexing (INPUT MUX)
   type INPUTMUX_Peripheral is record
      --  Trigger select register for DMA channel
      SCT0_INMUX      : aliased SCT0_INMUX_Registers;
      --  Pin interrupt select register
      PINTSEL         : aliased PINTSEL_Registers;
      --  Trigger select register for DMA channel
      DMA_ITRIG_INMUX : aliased DMA_ITRIG_INMUX_Registers;
      --  DMA output trigger selection to become DMA trigger
      DMA_OTRIG_INMUX : aliased DMA_OTRIG_INMUX_Registers;
      --  Selection for frequency measurement reference clock
      FREQMEAS_REF    : aliased FREQMEAS_REF_Register;
      --  Selection for frequency measurement target clock
      FREQMEAS_TARGET : aliased FREQMEAS_TARGET_Register;
   end record
     with Volatile;

   for INPUTMUX_Peripheral use record
      SCT0_INMUX      at 16#0# range 0 .. 223;
      PINTSEL         at 16#C0# range 0 .. 255;
      DMA_ITRIG_INMUX at 16#E0# range 0 .. 959;
      DMA_OTRIG_INMUX at 16#160# range 0 .. 127;
      FREQMEAS_REF    at 16#180# range 0 .. 31;
      FREQMEAS_TARGET at 16#184# range 0 .. 31;
   end record;

   --  LPC5411x Input multiplexing (INPUT MUX)
   INPUTMUX_Periph : aliased INPUTMUX_Peripheral
     with Import, Address => System'To_Address (16#40005000#);

end NRF_SVD.INPUTMUX;
