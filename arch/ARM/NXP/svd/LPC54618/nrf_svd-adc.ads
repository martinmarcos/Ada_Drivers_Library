--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54618.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_CLKDIV_Field is HAL.UInt8;

   --  Select clock mode.
   type CTRL_ASYNMODE_Field is
     (
      --  Synchronous mode. The ADC clock is derived from the system clock
      --  based on the divide value selected in the CLKDIV field. The ADC clock
      --  will be started in a controlled fashion in response to a trigger to
      --  eliminate any uncertainty in the launching of an ADC conversion in
      --  response to any synchronous (on-chip) trigger. In Synchronous mode
      --  with the SYNCBYPASS bit (in a sequence control register) set,
      --  sampling of the ADC input and start of conversion will initiate 2
      --  system clocks after the leading edge of a (synchronous) trigger
      --  pulse.
      Synchronous_Mode,
      --  Asynchronous mode. The ADC clock is based on the output of the ADC
      --  clock divider ADCCLKSEL in the SYSCON block.
      Asynchronous_Mode)
     with Size => 1;
   for CTRL_ASYNMODE_Field use
     (Synchronous_Mode => 0,
      Asynchronous_Mode => 1);

   --  The number of bits of ADC resolution. Accuracy can be reduced to achieve
   --  higher conversion rates. A single conversion (including one conversion
   --  in a burst or sequence) requires the selected number of bits of
   --  resolution plus 3 ADC clocks. This field must only be altered when the
   --  ADC is fully idle. Changing it during any kind of ADC operation may have
   --  unpredictable results. ADC clock frequencies for various resolutions
   --  must not exceed: - 5x the system clock rate for 12-bit resolution - 4.3x
   --  the system clock rate for 10-bit resolution - 3.6x the system clock for
   --  8-bit resolution - 3x the bus clock rate for 6-bit resolution
   type CTRL_RESOL_Field is
     (
      --  6-bit resolution. An ADC conversion requires 9 ADC clocks, plus any
      --  clocks specified by the TSAMP field.
      Resolution_6_Bit,
      --  8-bit resolution. An ADC conversion requires 11 ADC clocks, plus any
      --  clocks specified by the TSAMP field.
      Resolution_8_Bit,
      --  10-bit resolution. An ADC conversion requires 13 ADC clocks, plus any
      --  clocks specified by the TSAMP field.
      Resolution_10_Bit,
      --  12-bit resolution. An ADC conversion requires 15 ADC clocks, plus any
      --  clocks specified by the TSAMP field.
      Resolution_12_Bit)
     with Size => 2;
   for CTRL_RESOL_Field use
     (Resolution_6_Bit => 0,
      Resolution_8_Bit => 1,
      Resolution_10_Bit => 2,
      Resolution_12_Bit => 3);

   --  Bypass Calibration. This bit may be set to avoid the need to calibrate
   --  if offset error is not a concern in the application.
   type CTRL_BYPASSCAL_Field is
     (
      --  Calibrate. The stored calibration value will be applied to the ADC
      --  during conversions to compensated for offset error. A calibration
      --  cycle must be performed each time the chip is powered-up.
      --  Re-calibration may be warranted periodically - especially if
      --  operating conditions have changed.
      Calibrate,
      --  Bypass calibration. Calibration is not utilized. Less time is
      --  required when enabling the ADC - particularly following chip
      --  power-up. Attempts to launch a calibration cycle are blocked when
      --  this bit is set.
      Bypass_Calibration)
     with Size => 1;
   for CTRL_BYPASSCAL_Field use
     (Calibrate => 0,
      Bypass_Calibration => 1);

   subtype CTRL_TSAMP_Field is HAL.UInt3;

   --  ADC Control register. Contains the clock divide value, resolution
   --  selection, sampling time selection, and mode controls.
   type CTRL_Register is record
      --  In synchronous mode only, the system clock is divided by this value
      --  plus one to produce the clock for the ADC converter, which should be
      --  less than or equal to 72 MHz. Typically, software should program the
      --  smallest value in this field that yields this maximum clock rate or
      --  slightly less, but in certain cases (such as a high-impedance analog
      --  source) a slower clock may be desirable. This field is ignored in the
      --  asynchronous operating mode.
      CLKDIV         : CTRL_CLKDIV_Field := 16#0#;
      --  Select clock mode.
      ASYNMODE       : CTRL_ASYNMODE_Field := NRF_SVD.ADC.Synchronous_Mode;
      --  The number of bits of ADC resolution. Accuracy can be reduced to
      --  achieve higher conversion rates. A single conversion (including one
      --  conversion in a burst or sequence) requires the selected number of
      --  bits of resolution plus 3 ADC clocks. This field must only be altered
      --  when the ADC is fully idle. Changing it during any kind of ADC
      --  operation may have unpredictable results. ADC clock frequencies for
      --  various resolutions must not exceed: - 5x the system clock rate for
      --  12-bit resolution - 4.3x the system clock rate for 10-bit resolution
      --  - 3.6x the system clock for 8-bit resolution - 3x the bus clock rate
      --  for 6-bit resolution
      RESOL          : CTRL_RESOL_Field := NRF_SVD.ADC.Resolution_12_Bit;
      --  Bypass Calibration. This bit may be set to avoid the need to
      --  calibrate if offset error is not a concern in the application.
      BYPASSCAL      : CTRL_BYPASSCAL_Field := NRF_SVD.ADC.Calibrate;
      --  Sample Time. The default sampling period (TSAMP = '000') at the start
      --  of each conversion is 2.5 ADC clock periods. Depending on a variety
      --  of factors, including operating conditions and the output impedance
      --  of the analog source, longer sampling times may be required. See
      --  Section 28.7.10. The TSAMP field specifies the number of additional
      --  ADC clock cycles, from zero to seven, by which the sample period will
      --  be extended. The total conversion time will increase by the same
      --  number of clocks. 000 - The sample period will be the default 2.5 ADC
      --  clocks. A complete conversion with 12-bits of accuracy will require
      --  15 clocks. 001- The sample period will be extended by one ADC clock
      --  to a total of 3.5 clock periods. A complete 12-bit conversion will
      --  require 16 clocks. 010 - The sample period will be extended by two
      --  clocks to 4.5 ADC clock cycles. A complete 12-bit conversion will
      --  require 17 ADC clocks. 111 - The sample period will be extended by
      --  seven clocks to 9.5 ADC clock cycles. A complete 12-bit conversion
      --  will require 22 ADC clocks.
      TSAMP          : CTRL_TSAMP_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      CLKDIV         at 0 range 0 .. 7;
      ASYNMODE       at 0 range 8 .. 8;
      RESOL          at 0 range 9 .. 10;
      BYPASSCAL      at 0 range 11 .. 11;
      TSAMP          at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Selects the input source for channel 0. All other values are reserved.
   type INSEL_SEL_Field is
     (
      --  ADC0_IN0 function.
      Adc0_In0,
      --  Internal temperature sensor.
      Temperature_Sensor)
     with Size => 2;
   for INSEL_SEL_Field use
     (Adc0_In0 => 0,
      Temperature_Sensor => 3);

   --  Input Select. Allows selection of the temperature sensor as an alternate
   --  input to ADC channel 0.
   type INSEL_Register is record
      --  Selects the input source for channel 0. All other values are
      --  reserved.
      SEL           : INSEL_SEL_Field := NRF_SVD.ADC.Adc0_In0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INSEL_Register use record
      SEL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SEQ_CTRL_CHANNELS_Field is HAL.UInt12;
   subtype SEQ_CTRL_TRIGGER_Field is HAL.UInt6;

   --  Select the polarity of the selected input trigger for this conversion
   --  sequence. In order to avoid generating a spurious trigger, it is
   --  recommended writing to this field only when SEQA_ENA (bit 31) is low. It
   --  is safe to change this field and set bit 31 in the same write.
   type SEQ_CTRL_TRIGPOL_Field is
     (
      --  Negative edge. A negative edge launches the conversion sequence on
      --  the selected trigger input.
      Negative_Edge,
      --  Positive edge. A positive edge launches the conversion sequence on
      --  the selected trigger input.
      Positive_Edge)
     with Size => 1;
   for SEQ_CTRL_TRIGPOL_Field use
     (Negative_Edge => 0,
      Positive_Edge => 1);

   --  Setting this bit allows the hardware trigger input to bypass
   --  synchronization flip-flop stages and therefore shorten the time between
   --  the trigger input signal and the start of a conversion. There are
   --  slightly different criteria for whether or not this bit can be set
   --  depending on the clock operating mode: Synchronous mode (the ASYNMODE in
   --  the CTRL register = 0): Synchronization may be bypassed (this bit may be
   --  set) if the selected trigger source is already synchronous with the main
   --  system clock (eg. coming from an on-chip, system-clock-based timer).
   --  Whether this bit is set or not, a trigger pulse must be maintained for
   --  at least one system clock period. Asynchronous mode (the ASYNMODE in the
   --  CTRL register = 1): Synchronization may be bypassed (this bit may be
   --  set) if it is certain that the duration of a trigger input pulse will be
   --  at least one cycle of the ADC clock (regardless of whether the trigger
   --  comes from and on-chip or off-chip source). If this bit is NOT set, the
   --  trigger pulse must at least be maintained for one system clock period.
   type SEQ_CTRL_SYNCBYPASS_Field is
     (
      --  Enable trigger synchronization. The hardware trigger bypass is not
      --  enabled.
      Enable_Trigger_Synch,
      --  Bypass trigger synchronization. The hardware trigger bypass is
      --  enabled.
      Bypass_Trigger_Synch)
     with Size => 1;
   for SEQ_CTRL_SYNCBYPASS_Field use
     (Enable_Trigger_Synch => 0,
      Bypass_Trigger_Synch => 1);

   --  Set priority for sequence A.
   type SEQ_CTRL_LOWPRIO_Field is
     (
      --  Low priority. Any B trigger which occurs while an A conversion
      --  sequence is active will be ignored and lost.
      Low_Priority,
      --  High priority. Setting this bit to a 1 will permit any enabled B
      --  sequence trigger (including a B sequence software start) to
      --  immediately interrupt sequence A and launch a B sequence in it's
      --  place. The conversion currently in progress will be terminated. The A
      --  sequence that was interrupted will automatically resume after the B
      --  sequence completes. The channel whose conversion was terminated will
      --  be re-sampled and the conversion sequence will resume from that
      --  point.
      High_Priority)
     with Size => 1;
   for SEQ_CTRL_LOWPRIO_Field use
     (Low_Priority => 0,
      High_Priority => 1);

   --  Indicates whether the primary method for retrieving conversion results
   --  for this sequence will be accomplished via reading the global data
   --  register (SEQA_GDAT) at the end of each conversion, or the individual
   --  channel result registers at the end of the entire sequence. Impacts when
   --  conversion-complete interrupt/DMA trigger for sequence-A will be
   --  generated and which overrun conditions contribute to an overrun
   --  interrupt as described below.
   type SEQ_CTRL_MODE_Field is
     (
      --  End of conversion. The sequence A interrupt/DMA trigger will be set
      --  at the end of each individual ADC conversion performed under sequence
      --  A. This flag will mirror the DATAVALID bit in the SEQA_GDAT register.
      --  The OVERRUN bit in the SEQA_GDAT register will contribute to
      --  generation of an overrun interrupt/DMA trigger if enabled.
      End_Of_Conversion,
      --  End of sequence. The sequence A interrupt/DMA trigger will be set
      --  when the entire set of sequence-A conversions completes. This flag
      --  will need to be explicitly cleared by software or by the DMA-clear
      --  signal in this mode. The OVERRUN bit in the SEQA_GDAT register will
      --  NOT contribute to generation of an overrun interrupt/DMA trigger
      --  since it is assumed this register may not be utilized in this mode.
      End_Of_Sequence)
     with Size => 1;
   for SEQ_CTRL_MODE_Field use
     (End_Of_Conversion => 0,
      End_Of_Sequence => 1);

   --  Sequence Enable. In order to avoid spuriously triggering the sequence,
   --  care should be taken to only set the SEQn_ENA bit when the selected
   --  trigger input is in its INACTIVE state (as defined by the TRIGPOL bit).
   --  If this condition is not met, the sequence will be triggered immediately
   --  upon being enabled. In order to avoid spuriously triggering the
   --  sequence, care should be taken to only set the SEQn_ENA bit when the
   --  selected trigger input is in its INACTIVE state (as defined by the
   --  TRIGPOL bit). If this condition is not met, the sequence will be
   --  triggered immediately upon being enabled.
   type SEQ_CTRL_SEQ_ENA_Field is
     (
      --  Disabled. Sequence n is disabled. Sequence n triggers are ignored. If
      --  this bit is cleared while sequence n is in progress, the sequence
      --  will be halted at the end of the current conversion. After the
      --  sequence is re-enabled, a new trigger will be required to restart the
      --  sequence beginning with the next enabled channel.
      Disabled,
      --  Enabled. Sequence n is enabled.
      Enabled)
     with Size => 1;
   for SEQ_CTRL_SEQ_ENA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  ADC Conversion Sequence-n control register: Controls triggering and
   --  channel selection for conversion sequence-n. Also specifies interrupt
   --  mode for sequence-n.
   type SEQ_CTRL_Register is record
      --  Selects which one or more of the ADC channels will be sampled and
      --  converted when this sequence is launched. A 1 in any bit of this
      --  field will cause the corresponding channel to be included in the
      --  conversion sequence, where bit 0 corresponds to channel 0, bit 1 to
      --  channel 1 and so forth. When this conversion sequence is triggered,
      --  either by a hardware trigger or via software command, ADC conversions
      --  will be performed on each enabled channel, in sequence, beginning
      --  with the lowest-ordered channel. This field can ONLY be changed while
      --  SEQA_ENA (bit 31) is LOW. It is allowed to change this field and set
      --  bit 31 in the same write.
      CHANNELS       : SEQ_CTRL_CHANNELS_Field := 16#0#;
      --  Selects which of the available hardware trigger sources will cause
      --  this conversion sequence to be initiated. Program the trigger input
      --  number in this field. See Table 476. In order to avoid generating a
      --  spurious trigger, it is recommended writing to this field only when
      --  SEQA_ENA (bit 31) is low. It is safe to change this field and set bit
      --  31 in the same write.
      TRIGGER        : SEQ_CTRL_TRIGGER_Field := 16#0#;
      --  Select the polarity of the selected input trigger for this conversion
      --  sequence. In order to avoid generating a spurious trigger, it is
      --  recommended writing to this field only when SEQA_ENA (bit 31) is low.
      --  It is safe to change this field and set bit 31 in the same write.
      TRIGPOL        : SEQ_CTRL_TRIGPOL_Field := NRF_SVD.ADC.Negative_Edge;
      --  Setting this bit allows the hardware trigger input to bypass
      --  synchronization flip-flop stages and therefore shorten the time
      --  between the trigger input signal and the start of a conversion. There
      --  are slightly different criteria for whether or not this bit can be
      --  set depending on the clock operating mode: Synchronous mode (the
      --  ASYNMODE in the CTRL register = 0): Synchronization may be bypassed
      --  (this bit may be set) if the selected trigger source is already
      --  synchronous with the main system clock (eg. coming from an on-chip,
      --  system-clock-based timer). Whether this bit is set or not, a trigger
      --  pulse must be maintained for at least one system clock period.
      --  Asynchronous mode (the ASYNMODE in the CTRL register = 1):
      --  Synchronization may be bypassed (this bit may be set) if it is
      --  certain that the duration of a trigger input pulse will be at least
      --  one cycle of the ADC clock (regardless of whether the trigger comes
      --  from and on-chip or off-chip source). If this bit is NOT set, the
      --  trigger pulse must at least be maintained for one system clock
      --  period.
      SYNCBYPASS     : SEQ_CTRL_SYNCBYPASS_Field :=
                        NRF_SVD.ADC.Enable_Trigger_Synch;
      --  unspecified
      Reserved_20_25 : HAL.UInt6 := 16#0#;
      --  Writing a 1 to this field will launch one pass through this
      --  conversion sequence. The behavior will be identical to a sequence
      --  triggered by a hardware trigger. Do not write 1 to this bit if the
      --  BURST bit is set. This bit is only set to a 1 momentarily when
      --  written to launch a conversion sequence. It will consequently always
      --  read back as a zero.
      START          : Boolean := False;
      --  Writing a 1 to this bit will cause this conversion sequence to be
      --  continuously cycled through. Other sequence A triggers will be
      --  ignored while this bit is set. Repeated conversions can be halted by
      --  clearing this bit. The sequence currently in progress will be
      --  completed before conversions are terminated. Note that a new sequence
      --  could begin just before BURST is cleared.
      BURST          : Boolean := False;
      --  When this bit is set, a hardware trigger or a write to the START bit
      --  will launch a single conversion on the next channel in the sequence
      --  instead of the default response of launching an entire sequence of
      --  conversions. Once all of the channels comprising a sequence have been
      --  converted, a subsequent trigger will repeat the sequence beginning
      --  with the first enabled channel. Interrupt generation will still occur
      --  either after each individual conversion or at the end of the entire
      --  sequence, depending on the state of the MODE bit.
      SINGLESTEP     : Boolean := False;
      --  Set priority for sequence A.
      LOWPRIO        : SEQ_CTRL_LOWPRIO_Field := NRF_SVD.ADC.Low_Priority;
      --  Indicates whether the primary method for retrieving conversion
      --  results for this sequence will be accomplished via reading the global
      --  data register (SEQA_GDAT) at the end of each conversion, or the
      --  individual channel result registers at the end of the entire
      --  sequence. Impacts when conversion-complete interrupt/DMA trigger for
      --  sequence-A will be generated and which overrun conditions contribute
      --  to an overrun interrupt as described below.
      MODE           : SEQ_CTRL_MODE_Field := NRF_SVD.ADC.End_Of_Conversion;
      --  Sequence Enable. In order to avoid spuriously triggering the
      --  sequence, care should be taken to only set the SEQn_ENA bit when the
      --  selected trigger input is in its INACTIVE state (as defined by the
      --  TRIGPOL bit). If this condition is not met, the sequence will be
      --  triggered immediately upon being enabled. In order to avoid
      --  spuriously triggering the sequence, care should be taken to only set
      --  the SEQn_ENA bit when the selected trigger input is in its INACTIVE
      --  state (as defined by the TRIGPOL bit). If this condition is not met,
      --  the sequence will be triggered immediately upon being enabled.
      SEQ_ENA        : SEQ_CTRL_SEQ_ENA_Field := NRF_SVD.ADC.Disabled;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ_CTRL_Register use record
      CHANNELS       at 0 range 0 .. 11;
      TRIGGER        at 0 range 12 .. 17;
      TRIGPOL        at 0 range 18 .. 18;
      SYNCBYPASS     at 0 range 19 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      START          at 0 range 26 .. 26;
      BURST          at 0 range 27 .. 27;
      SINGLESTEP     at 0 range 28 .. 28;
      LOWPRIO        at 0 range 29 .. 29;
      MODE           at 0 range 30 .. 30;
      SEQ_ENA        at 0 range 31 .. 31;
   end record;

   --  ADC Conversion Sequence-n control register: Controls triggering and
   --  channel selection for conversion sequence-n. Also specifies interrupt
   --  mode for sequence-n.
   type SEQ_CTRL_Registers is array (0 .. 1) of SEQ_CTRL_Register
     with Volatile;

   subtype SEQ_GDAT_RESULT_Field is HAL.UInt12;
   subtype SEQ_GDAT_THCMPRANGE_Field is HAL.UInt2;
   subtype SEQ_GDAT_THCMPCROSS_Field is HAL.UInt2;
   subtype SEQ_GDAT_CHN_Field is HAL.UInt4;

   --  ADC Sequence-n Global Data register. This register contains the result
   --  of the most recent ADC conversion performed under sequence-n.
   type SEQ_GDAT_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. This field contains the 12-bit ADC conversion result from
      --  the most recent conversion performed under conversion sequence
      --  associated with this register. The result is a binary fraction
      --  representing the voltage on the currently-selected input channel as
      --  it falls within the range of VREFP to VREFN. Zero in the field
      --  indicates that the voltage on the input pin was less than, equal to,
      --  or close to that on VREFN, while 0xFFF indicates that the voltage on
      --  the input was close to, equal to, or greater than that on VREFP.
      --  DATAVALID = 1 indicates that this result has not yet been read.
      RESULT         : SEQ_GDAT_RESULT_Field;
      --  Read-only. Indicates whether the result of the last conversion
      --  performed was above, below or within the range established by the
      --  designated threshold comparison registers (THRn_LOW and THRn_HIGH).
      THCMPRANGE     : SEQ_GDAT_THCMPRANGE_Field;
      --  Read-only. Indicates whether the result of the last conversion
      --  performed represented a crossing of the threshold level established
      --  by the designated LOW threshold comparison register (THRn_LOW) and,
      --  if so, in what direction the crossing occurred.
      THCMPCROSS     : SEQ_GDAT_THCMPCROSS_Field;
      --  unspecified
      Reserved_20_25 : HAL.UInt6;
      --  Read-only. These bits contain the channel from which the RESULT bits
      --  were converted (e.g. 0000 identifies channel 0, 0001 channel 1,
      --  etc.).
      CHN            : SEQ_GDAT_CHN_Field;
      --  Read-only. This bit is set if a new conversion result is loaded into
      --  the RESULT field before a previous result has been read - i.e. while
      --  the DATAVALID bit is set. This bit is cleared, along with the
      --  DATAVALID bit, whenever this register is read. This bit will
      --  contribute to an overrun interrupt/DMA trigger if the MODE bit (in
      --  SEQAA_CTRL) for the corresponding sequence is set to '0' (and if the
      --  overrun interrupt is enabled).
      OVERRUN        : Boolean;
      --  Read-only. This bit is set to '1' at the end of each conversion when
      --  a new result is loaded into the RESULT field. It is cleared whenever
      --  this register is read. This bit will cause a conversion-complete
      --  interrupt for the corresponding sequence if the MODE bit (in
      --  SEQA_CTRL) for that sequence is set to 0 (and if the interrupt is
      --  enabled).
      DATAVALID      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ_GDAT_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RESULT         at 0 range 4 .. 15;
      THCMPRANGE     at 0 range 16 .. 17;
      THCMPCROSS     at 0 range 18 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      CHN            at 0 range 26 .. 29;
      OVERRUN        at 0 range 30 .. 30;
      DATAVALID      at 0 range 31 .. 31;
   end record;

   --  ADC Sequence-n Global Data register. This register contains the result
   --  of the most recent ADC conversion performed under sequence-n.
   type SEQ_GDAT_Registers is array (0 .. 1) of SEQ_GDAT_Register
     with Volatile;

   subtype DAT_RESULT_Field is HAL.UInt12;
   subtype DAT_THCMPRANGE_Field is HAL.UInt2;
   subtype DAT_THCMPCROSS_Field is HAL.UInt2;
   subtype DAT_CHANNEL_Field is HAL.UInt4;

   --  ADC Channel 0 Data register. This register contains the result of the
   --  most recent conversion completed on channel 0.
   type DAT_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. This field contains the 12-bit ADC conversion result from
      --  the last conversion performed on this channel. This will be a binary
      --  fraction representing the voltage on the AD0[n] pin, as it falls
      --  within the range of VREFP to VREFN. Zero in the field indicates that
      --  the voltage on the input pin was less than, equal to, or close to
      --  that on VREFN, while 0xFFF indicates that the voltage on the input
      --  was close to, equal to, or greater than that on VREFP.
      RESULT         : DAT_RESULT_Field;
      --  Read-only. Threshold Range Comparison result. 0x0 = In Range: The
      --  last completed conversion was greater than or equal to the value
      --  programmed into the designated LOW threshold register (THRn_LOW) but
      --  less than or equal to the value programmed into the designated HIGH
      --  threshold register (THRn_HIGH). 0x1 = Below Range: The last completed
      --  conversion on was less than the value programmed into the designated
      --  LOW threshold register (THRn_LOW). 0x2 = Above Range: The last
      --  completed conversion was greater than the value programmed into the
      --  designated HIGH threshold register (THRn_HIGH). 0x3 = Reserved.
      THCMPRANGE     : DAT_THCMPRANGE_Field;
      --  Read-only. Threshold Crossing Comparison result. 0x0 = No threshold
      --  Crossing detected: The most recent completed conversion on this
      --  channel had the same relationship (above or below) to the threshold
      --  value established by the designated LOW threshold register (THRn_LOW)
      --  as did the previous conversion on this channel. 0x1 = Reserved. 0x2 =
      --  Downward Threshold Crossing Detected. Indicates that a threshold
      --  crossing in the downward direction has occurred - i.e. the previous
      --  sample on this channel was above the threshold value established by
      --  the designated LOW threshold register (THRn_LOW) and the current
      --  sample is below that threshold. 0x3 = Upward Threshold Crossing
      --  Detected. Indicates that a threshold crossing in the upward direction
      --  has occurred - i.e. the previous sample on this channel was below the
      --  threshold value established by the designated LOW threshold register
      --  (THRn_LOW) and the current sample is above that threshold.
      THCMPCROSS     : DAT_THCMPCROSS_Field;
      --  unspecified
      Reserved_20_25 : HAL.UInt6;
      --  Read-only. This field is hard-coded to contain the channel number
      --  that this particular register relates to (i.e. this field will
      --  contain 0b0000 for the DAT0 register, 0b0001 for the DAT1 register,
      --  etc)
      CHANNEL        : DAT_CHANNEL_Field;
      --  Read-only. This bit will be set to a 1 if a new conversion on this
      --  channel completes and overwrites the previous contents of the RESULT
      --  field before it has been read - i.e. while the DONE bit is set. This
      --  bit is cleared, along with the DONE bit, whenever this register is
      --  read or when the data related to this channel is read from either of
      --  the global SEQn_GDAT registers. This bit (in any of the 12 registers)
      --  will cause an overrun interrupt/DMA trigger to be asserted if the
      --  overrun interrupt is enabled. While it is allowed to include the same
      --  channels in both conversion sequences, doing so may cause erratic
      --  behavior of the DONE and OVERRUN bits in the data registers
      --  associated with any of the channels that are shared between the two
      --  sequences. Any erratic OVERRUN behavior will also affect overrun
      --  interrupt generation, if enabled.
      OVERRUN        : Boolean;
      --  Read-only. This bit is set to 1 when an ADC conversion on this
      --  channel completes. This bit is cleared whenever this register is read
      --  or when the data related to this channel is read from either of the
      --  global SEQn_GDAT registers. While it is allowed to include the same
      --  channels in both conversion sequences, doing so may cause erratic
      --  behavior of the DONE and OVERRUN bits in the data registers
      --  associated with any of the channels that are shared between the two
      --  sequences. Any erratic OVERRUN behavior will also affect overrun
      --  interrupt generation, if enabled.
      DATAVALID      : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAT_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RESULT         at 0 range 4 .. 15;
      THCMPRANGE     at 0 range 16 .. 17;
      THCMPCROSS     at 0 range 18 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      CHANNEL        at 0 range 26 .. 29;
      OVERRUN        at 0 range 30 .. 30;
      DATAVALID      at 0 range 31 .. 31;
   end record;

   --  ADC Channel 0 Data register. This register contains the result of the
   --  most recent conversion completed on channel 0.
   type DAT_Registers is array (0 .. 11) of DAT_Register
     with Volatile;

   subtype THR0_LOW_THRLOW_Field is HAL.UInt12;

   --  ADC Low Compare Threshold register 0: Contains the lower threshold level
   --  for automatic threshold comparison for any channels linked to threshold
   --  pair 0.
   type THR0_LOW_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Low threshold value against which ADC results will be compared
      THRLOW         : THR0_LOW_THRLOW_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR0_LOW_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      THRLOW         at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype THR1_LOW_THRLOW_Field is HAL.UInt12;

   --  ADC Low Compare Threshold register 1: Contains the lower threshold level
   --  for automatic threshold comparison for any channels linked to threshold
   --  pair 1.
   type THR1_LOW_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Low threshold value against which ADC results will be compared
      THRLOW         : THR1_LOW_THRLOW_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR1_LOW_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      THRLOW         at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype THR0_HIGH_THRHIGH_Field is HAL.UInt12;

   --  ADC High Compare Threshold register 0: Contains the upper threshold
   --  level for automatic threshold comparison for any channels linked to
   --  threshold pair 0.
   type THR0_HIGH_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  High threshold value against which ADC results will be compared
      THRHIGH        : THR0_HIGH_THRHIGH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR0_HIGH_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      THRHIGH        at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype THR1_HIGH_THRHIGH_Field is HAL.UInt12;

   --  ADC High Compare Threshold register 1: Contains the upper threshold
   --  level for automatic threshold comparison for any channels linked to
   --  threshold pair 1.
   type THR1_HIGH_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  High threshold value against which ADC results will be compared
      THRHIGH        : THR1_HIGH_THRHIGH_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for THR1_HIGH_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      THRHIGH        at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Threshold select for channel 0.
   type CHAN_THRSEL_CH0_THRSEL_Field is
     (
      --  Threshold 0. Results for this channel will be compared against the
      --  threshold levels indicated in the THR0_LOW and THR0_HIGH registers.
      Threshold0,
      --  Threshold 1. Results for this channel will be compared against the
      --  threshold levels indicated in the THR1_LOW and THR1_HIGH registers.
      Threshold1)
     with Size => 1;
   for CHAN_THRSEL_CH0_THRSEL_Field use
     (Threshold0 => 0,
      Threshold1 => 1);

   --  ADC Channel-Threshold Select register. Specifies which set of threshold
   --  compare registers are to be used for each channel
   type CHAN_THRSEL_Register is record
      --  Threshold select for channel 0.
      CH0_THRSEL     : CHAN_THRSEL_CH0_THRSEL_Field := NRF_SVD.ADC.Threshold0;
      --  Threshold select for channel 1. See description for channel 0.
      CH1_THRSEL     : Boolean := False;
      --  Threshold select for channel 2. See description for channel 0.
      CH2_THRSEL     : Boolean := False;
      --  Threshold select for channel 3. See description for channel 0.
      CH3_THRSEL     : Boolean := False;
      --  Threshold select for channel 4. See description for channel 0.
      CH4_THRSEL     : Boolean := False;
      --  Threshold select for channel 5. See description for channel 0.
      CH5_THRSEL     : Boolean := False;
      --  Threshold select for channel 6. See description for channel 0.
      CH6_THRSEL     : Boolean := False;
      --  Threshold select for channel 7. See description for channel 0.
      CH7_THRSEL     : Boolean := False;
      --  Threshold select for channel 8. See description for channel 0.
      CH8_THRSEL     : Boolean := False;
      --  Threshold select for channel 9. See description for channel 0.
      CH9_THRSEL     : Boolean := False;
      --  Threshold select for channel 10. See description for channel 0.
      CH10_THRSEL    : Boolean := False;
      --  Threshold select for channel 11. See description for channel 0.
      CH11_THRSEL    : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHAN_THRSEL_Register use record
      CH0_THRSEL     at 0 range 0 .. 0;
      CH1_THRSEL     at 0 range 1 .. 1;
      CH2_THRSEL     at 0 range 2 .. 2;
      CH3_THRSEL     at 0 range 3 .. 3;
      CH4_THRSEL     at 0 range 4 .. 4;
      CH5_THRSEL     at 0 range 5 .. 5;
      CH6_THRSEL     at 0 range 6 .. 6;
      CH7_THRSEL     at 0 range 7 .. 7;
      CH8_THRSEL     at 0 range 8 .. 8;
      CH9_THRSEL     at 0 range 9 .. 9;
      CH10_THRSEL    at 0 range 10 .. 10;
      CH11_THRSEL    at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Sequence A interrupt enable.
   type INTEN_SEQA_INTEN_Field is
     (
      --  Disabled. The sequence A interrupt/DMA trigger is disabled.
      Disabled,
      --  Enabled. The sequence A interrupt/DMA trigger is enabled and will be
      --  asserted either upon completion of each individual conversion
      --  performed as part of sequence A, or upon completion of the entire A
      --  sequence of conversions, depending on the MODE bit in the SEQA_CTRL
      --  register.
      Enabled)
     with Size => 1;
   for INTEN_SEQA_INTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Sequence B interrupt enable.
   type INTEN_SEQB_INTEN_Field is
     (
      --  Disabled. The sequence B interrupt/DMA trigger is disabled.
      Disabled,
      --  Enabled. The sequence B interrupt/DMA trigger is enabled and will be
      --  asserted either upon completion of each individual conversion
      --  performed as part of sequence B, or upon completion of the entire B
      --  sequence of conversions, depending on the MODE bit in the SEQB_CTRL
      --  register.
      Enabled)
     with Size => 1;
   for INTEN_SEQB_INTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Overrun interrupt enable.
   type INTEN_OVR_INTEN_Field is
     (
      --  Disabled. The overrun interrupt is disabled.
      Disabled,
      --  Enabled. The overrun interrupt is enabled. Detection of an overrun
      --  condition on any of the 12 channel data registers will cause an
      --  overrun interrupt/DMA trigger. In addition, if the MODE bit for a
      --  particular sequence is 0, then an overrun in the global data register
      --  for that sequence will also cause this interrupt/DMA trigger to be
      --  asserted.
      Enabled)
     with Size => 1;
   for INTEN_OVR_INTEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Threshold comparison interrupt enable for channel 0.
   type INTEN_ADCMPINTEN0_Field is
     (
      --  Disabled.
      Disabled,
      --  Outside threshold.
      Outside_Threshold,
      --  Crossing threshold.
      Crossing_Threshold)
     with Size => 2;
   for INTEN_ADCMPINTEN0_Field use
     (Disabled => 0,
      Outside_Threshold => 1,
      Crossing_Threshold => 2);

   --  INTEN_ADCMPINTEN array element
   subtype INTEN_ADCMPINTEN_Element is HAL.UInt2;

   --  INTEN_ADCMPINTEN array
   type INTEN_ADCMPINTEN_Field_Array is array (1 .. 11)
     of INTEN_ADCMPINTEN_Element
     with Component_Size => 2, Size => 22;

   --  Type definition for INTEN_ADCMPINTEN
   type INTEN_ADCMPINTEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADCMPINTEN as a value
            Val : HAL.UInt22;
         when True =>
            --  ADCMPINTEN as an array
            Arr : INTEN_ADCMPINTEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for INTEN_ADCMPINTEN_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  ADC Interrupt Enable register. This register contains enable bits that
   --  enable the sequence-A, sequence-B, threshold compare and data overrun
   --  interrupts to be generated.
   type INTEN_Register is record
      --  Sequence A interrupt enable.
      SEQA_INTEN     : INTEN_SEQA_INTEN_Field := NRF_SVD.ADC.Disabled;
      --  Sequence B interrupt enable.
      SEQB_INTEN     : INTEN_SEQB_INTEN_Field := NRF_SVD.ADC.Disabled;
      --  Overrun interrupt enable.
      OVR_INTEN      : INTEN_OVR_INTEN_Field := NRF_SVD.ADC.Disabled;
      --  Threshold comparison interrupt enable for channel 0.
      ADCMPINTEN0    : INTEN_ADCMPINTEN0_Field := NRF_SVD.ADC.Disabled;
      --  Channel 1 threshold comparison interrupt enable. See description for
      --  channel 0.
      ADCMPINTEN     : INTEN_ADCMPINTEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      SEQA_INTEN     at 0 range 0 .. 0;
      SEQB_INTEN     at 0 range 1 .. 1;
      OVR_INTEN      at 0 range 2 .. 2;
      ADCMPINTEN0    at 0 range 3 .. 4;
      ADCMPINTEN     at 0 range 5 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  FLAGS_THCMP array
   type FLAGS_THCMP_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for FLAGS_THCMP
   type FLAGS_THCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  THCMP as a value
            Val : HAL.UInt12;
         when True =>
            --  THCMP as an array
            Arr : FLAGS_THCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for FLAGS_THCMP_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  FLAGS_OVERRUN array
   type FLAGS_OVERRUN_Field_Array is array (0 .. 11) of Boolean
     with Component_Size => 1, Size => 12;

   --  Type definition for FLAGS_OVERRUN
   type FLAGS_OVERRUN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVERRUN as a value
            Val : HAL.UInt12;
         when True =>
            --  OVERRUN as an array
            Arr : FLAGS_OVERRUN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for FLAGS_OVERRUN_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  ADC Flags register. Contains the four interrupt/DMA trigger flags and
   --  the individual component overrun and threshold-compare flags. (The
   --  overrun bits replicate information stored in the result registers).
   type FLAGS_Register is record
      --  Threshold comparison event on Channel 0. Set to 1 upon either an
      --  out-of-range result or a threshold-crossing result if enabled to do
      --  so in the INTEN register. This bit is cleared by writing a 1.
      THCMP          : FLAGS_THCMP_Field := (As_Array => False, Val => 16#0#);
      --  Read-only. Mirrors the OVERRRUN status flag from the result register
      --  for ADC channel 0
      OVERRUN        : FLAGS_OVERRUN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Read-only. Mirrors the global OVERRUN status flag in the SEQA_GDAT
      --  register
      SEQA_OVR       : Boolean := False;
      --  Read-only. Mirrors the global OVERRUN status flag in the SEQB_GDAT
      --  register
      SEQB_OVR       : Boolean := False;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Read-only. Sequence A interrupt/DMA trigger. If the MODE bit in the
      --  SEQA_CTRL register is 0, this flag will mirror the DATAVALID bit in
      --  the sequence A global data register (SEQA_GDAT), which is set at the
      --  end of every ADC conversion performed as part of sequence A. It will
      --  be cleared automatically when the SEQA_GDAT register is read. If the
      --  MODE bit in the SEQA_CTRL register is 1, this flag will be set upon
      --  completion of an entire A sequence. In this case it must be cleared
      --  by writing a 1 to this SEQA_INT bit. This interrupt must be enabled
      --  in the INTEN register.
      SEQA_INT       : Boolean := False;
      --  Read-only. Sequence A interrupt/DMA trigger. If the MODE bit in the
      --  SEQB_CTRL register is 0, this flag will mirror the DATAVALID bit in
      --  the sequence A global data register (SEQB_GDAT), which is set at the
      --  end of every ADC conversion performed as part of sequence B. It will
      --  be cleared automatically when the SEQB_GDAT register is read. If the
      --  MODE bit in the SEQB_CTRL register is 1, this flag will be set upon
      --  completion of an entire B sequence. In this case it must be cleared
      --  by writing a 1 to this SEQB_INT bit. This interrupt must be enabled
      --  in the INTEN register.
      SEQB_INT       : Boolean := False;
      --  Read-only. Threshold Comparison Interrupt. This bit will be set if
      --  any of the THCMP flags in the lower bits of this register are set to
      --  1 (due to an enabled out-of-range or threshold-crossing event on any
      --  channel). Each type of threshold comparison interrupt on each channel
      --  must be individually enabled in the INTEN register to cause this
      --  interrupt. This bit will be cleared when all of the individual
      --  threshold flags are cleared via writing 1s to those bits.
      THCMP_INT      : Boolean := False;
      --  Read-only. Overrun Interrupt flag. Any overrun bit in any of the
      --  individual channel data registers will cause this interrupt. In
      --  addition, if the MODE bit in either of the SEQn_CTRL registers is 0
      --  then the OVERRUN bit in the corresponding SEQn_GDAT register will
      --  also cause this interrupt. This interrupt must be enabled in the
      --  INTEN register. This bit will be cleared when all of the individual
      --  overrun bits have been cleared via reading the corresponding data
      --  registers.
      OVR_INT        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLAGS_Register use record
      THCMP          at 0 range 0 .. 11;
      OVERRUN        at 0 range 12 .. 23;
      SEQA_OVR       at 0 range 24 .. 24;
      SEQB_OVR       at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      SEQA_INT       at 0 range 28 .. 28;
      SEQB_INT       at 0 range 29 .. 29;
      THCMP_INT      at 0 range 30 .. 30;
      OVR_INT        at 0 range 31 .. 31;
   end record;

   --  ADC Startup register.
   type STARTUP_Register is record
      --  ADC Enable bit. This bit can only be set to a 1 by software. It is
      --  cleared automatically whenever the ADC is powered down. This bit must
      --  not be set until at least 10 microseconds after the ADC is powered up
      --  (typically by altering a system-level ADC power control bit).
      ADC_ENA       : Boolean := False;
      --  ADC Initialization. After enabling the ADC (setting the ADC_ENA bit),
      --  the API routine will EITHER set this bit or the CALIB bit in the
      --  CALIB register, depending on whether or not calibration is required.
      --  Setting this bit will launch the 'dummy' conversion cycle that is
      --  required if a calibration is not performed. It will also reload the
      --  stored calibration value from a previous calibration unless the
      --  BYPASSCAL bit is set. This bit should only be set AFTER the ADC_ENA
      --  bit is set and after the CALIREQD bit is tested to determine whether
      --  a calibration or an ADC dummy conversion cycle is required. It should
      --  not be set during the same write that sets the ADC_ENA bit. This bit
      --  can only be set to a '1' by software. It is cleared automatically
      --  when the 'dummy' conversion cycle completes.
      ADC_INIT      : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTUP_Register use record
      ADC_ENA       at 0 range 0 .. 0;
      ADC_INIT      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CALIB_CALVALUE_Field is HAL.UInt7;

   --  ADC Calibration register.
   type CALIB_Register is record
      --  Calibration request. Setting this bit will launch an ADC calibration
      --  cycle. This bit can only be set to a '1' by software. It is cleared
      --  automatically when the calibration cycle completes.
      CALIB         : Boolean := False;
      --  Calibration required. This read-only bit indicates if calibration is
      --  required when enabling the ADC. CALREQD will be '1' if no calibration
      --  has been run since the chip was powered-up and if the BYPASSCAL bit
      --  in the CTRL register is low. Software will test this bit to determine
      --  whether to initiate a calibration cycle or whether to set the
      --  ADC_INIT bit (in the STARTUP register) to launch the ADC
      --  initialization process which includes a 'dummy' conversion cycle.
      --  Note: A 'dummy' conversion cycle requires approximately 6 ADC clocks
      --  as opposed to 81 clocks required for calibration.
      CALREQD       : Boolean := True;
      --  Calibration Value. This read-only field displays the calibration
      --  value established during last calibration cycle. This value is not
      --  typically of any use to the user.
      CALVALUE      : CALIB_CALVALUE_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALIB_Register use record
      CALIB         at 0 range 0 .. 0;
      CALREQD       at 0 range 1 .. 1;
      CALVALUE      at 0 range 2 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x 12-bit ADC controller (ADC)
   type ADC0_Peripheral is record
      --  ADC Control register. Contains the clock divide value, resolution
      --  selection, sampling time selection, and mode controls.
      CTRL        : aliased CTRL_Register;
      --  Input Select. Allows selection of the temperature sensor as an
      --  alternate input to ADC channel 0.
      INSEL       : aliased INSEL_Register;
      --  ADC Conversion Sequence-n control register: Controls triggering and
      --  channel selection for conversion sequence-n. Also specifies interrupt
      --  mode for sequence-n.
      SEQ_CTRL    : aliased SEQ_CTRL_Registers;
      --  ADC Sequence-n Global Data register. This register contains the
      --  result of the most recent ADC conversion performed under sequence-n.
      SEQ_GDAT    : aliased SEQ_GDAT_Registers;
      --  ADC Channel 0 Data register. This register contains the result of the
      --  most recent conversion completed on channel 0.
      DAT         : aliased DAT_Registers;
      --  ADC Low Compare Threshold register 0: Contains the lower threshold
      --  level for automatic threshold comparison for any channels linked to
      --  threshold pair 0.
      THR0_LOW    : aliased THR0_LOW_Register;
      --  ADC Low Compare Threshold register 1: Contains the lower threshold
      --  level for automatic threshold comparison for any channels linked to
      --  threshold pair 1.
      THR1_LOW    : aliased THR1_LOW_Register;
      --  ADC High Compare Threshold register 0: Contains the upper threshold
      --  level for automatic threshold comparison for any channels linked to
      --  threshold pair 0.
      THR0_HIGH   : aliased THR0_HIGH_Register;
      --  ADC High Compare Threshold register 1: Contains the upper threshold
      --  level for automatic threshold comparison for any channels linked to
      --  threshold pair 1.
      THR1_HIGH   : aliased THR1_HIGH_Register;
      --  ADC Channel-Threshold Select register. Specifies which set of
      --  threshold compare registers are to be used for each channel
      CHAN_THRSEL : aliased CHAN_THRSEL_Register;
      --  ADC Interrupt Enable register. This register contains enable bits
      --  that enable the sequence-A, sequence-B, threshold compare and data
      --  overrun interrupts to be generated.
      INTEN       : aliased INTEN_Register;
      --  ADC Flags register. Contains the four interrupt/DMA trigger flags and
      --  the individual component overrun and threshold-compare flags. (The
      --  overrun bits replicate information stored in the result registers).
      FLAGS       : aliased FLAGS_Register;
      --  ADC Startup register.
      STARTUP     : aliased STARTUP_Register;
      --  ADC Calibration register.
      CALIB       : aliased CALIB_Register;
   end record
     with Volatile;

   for ADC0_Peripheral use record
      CTRL        at 16#0# range 0 .. 31;
      INSEL       at 16#4# range 0 .. 31;
      SEQ_CTRL    at 16#8# range 0 .. 63;
      SEQ_GDAT    at 16#10# range 0 .. 63;
      DAT         at 16#20# range 0 .. 383;
      THR0_LOW    at 16#50# range 0 .. 31;
      THR1_LOW    at 16#54# range 0 .. 31;
      THR0_HIGH   at 16#58# range 0 .. 31;
      THR1_HIGH   at 16#5C# range 0 .. 31;
      CHAN_THRSEL at 16#60# range 0 .. 31;
      INTEN       at 16#64# range 0 .. 31;
      FLAGS       at 16#68# range 0 .. 31;
      STARTUP     at 16#6C# range 0 .. 31;
      CALIB       at 16#70# range 0 .. 31;
   end record;

   --  LPC5411x 12-bit ADC controller (ADC)
   ADC0_Periph : aliased ADC0_Peripheral
     with Import, Address => System'To_Address (16#400A0000#);

end NRF_SVD.ADC;
