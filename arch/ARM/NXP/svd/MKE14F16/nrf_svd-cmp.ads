--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Comparator hard block hysteresis control. See chip data sheet to get the
   --  actual hystersis value with each level
   type C0_HYSTCTR_Field is
     (
      --  The hard block output has level 0 hysteresis internally.
      Hystctr_0,
      --  The hard block output has level 1 hysteresis internally.
      Hystctr_1,
      --  The hard block output has level 2 hysteresis internally.
      Hystctr_2,
      --  The hard block output has level 3 hysteresis internally.
      Hystctr_3)
     with Size => 2;
   for C0_HYSTCTR_Field use
     (Hystctr_0 => 0,
      Hystctr_1 => 1,
      Hystctr_2 => 2,
      Hystctr_3 => 3);

   --  Comparator hard block offset control. See chip data sheet to get the
   --  actual offset value with each level
   type C0_OFFSET_Field is
     (
      --  The comparator hard block output has level 0 offset internally.
      Offset_0,
      --  The comparator hard block output has level 1 offset internally.
      Offset_1)
     with Size => 1;
   for C0_OFFSET_Field use
     (Offset_0 => 0,
      Offset_1 => 1);

   --  Filter Sample Count
   type C0_FILTER_CNT_Field is
     (
      --  Filter is disabled. If SE = 1, then COUT is a logic zero (this is not
      --  a legal state, and is not recommended). If SE = 0, COUT = COUTA.
      Filter_Cnt_0,
      --  1 consecutive sample must agree (comparator output is simply
      --  sampled).
      Filter_Cnt_1,
      --  2 consecutive samples must agree.
      Filter_Cnt_2,
      --  3 consecutive samples must agree.
      Filter_Cnt_3,
      --  4 consecutive samples must agree.
      Filter_Cnt_4,
      --  5 consecutive samples must agree.
      Filter_Cnt_5,
      --  6 consecutive samples must agree.
      Filter_Cnt_6,
      --  7 consecutive samples must agree.
      Filter_Cnt_7)
     with Size => 3;
   for C0_FILTER_CNT_Field use
     (Filter_Cnt_0 => 0,
      Filter_Cnt_1 => 1,
      Filter_Cnt_2 => 2,
      Filter_Cnt_3 => 3,
      Filter_Cnt_4 => 4,
      Filter_Cnt_5 => 5,
      Filter_Cnt_6 => 6,
      Filter_Cnt_7 => 7);

   --  Comparator Module Enable
   type C0_EN_Field is
     (
      --  Analog Comparator is disabled.
      En_0,
      --  Analog Comparator is enabled.
      En_1)
     with Size => 1;
   for C0_EN_Field use
     (En_0 => 0,
      En_1 => 1);

   --  Comparator Output Pin Enable
   type C0_OPE_Field is
     (
      --  When OPE is 0, the comparator output (after window/filter settings
      --  dependent on software configuration) is not available to a packaged
      --  pin.
      Ope_0,
      --  When OPE is 1, and if the software has configured the comparator to
      --  own a packaged pin, the comparator is available in a packaged pin.
      Ope_1)
     with Size => 1;
   for C0_OPE_Field use
     (Ope_0 => 0,
      Ope_1 => 1);

   --  Comparator Output Select
   type C0_COS_Field is
     (
      --  Set CMPO to equal COUT (filtered comparator output).
      Cos_0,
      --  Set CMPO to equal COUTA (unfiltered comparator output).
      Cos_1)
     with Size => 1;
   for C0_COS_Field use
     (Cos_0 => 0,
      Cos_1 => 1);

   --  Comparator invert
   type C0_INVT_Field is
     (
      --  Does not invert the comparator output.
      Invt_0,
      --  Inverts the comparator output.
      Invt_1)
     with Size => 1;
   for C0_INVT_Field use
     (Invt_0 => 0,
      Invt_1 => 1);

   --  Power Mode Select
   type C0_PMODE_Field is
     (
      --  Low Speed (LS) comparison mode is selected.
      Pmode_0,
      --  High Speed (HS) comparison mode is selected, in VLPx mode, or Stop
      --  mode switched to Low Speed (LS) mode.
      Pmode_1)
     with Size => 1;
   for C0_PMODE_Field use
     (Pmode_0 => 0,
      Pmode_1 => 1);

   --  Windowing Enable
   type C0_WE_Field is
     (
      --  Windowing mode is not selected.
      We_0,
      --  Windowing mode is selected.
      We_1)
     with Size => 1;
   for C0_WE_Field use
     (We_0 => 0,
      We_1 => 1);

   --  Sample Enable
   type C0_SE_Field is
     (
      --  Sampling mode is not selected.
      Se_0,
      --  Sampling mode is selected.
      Se_1)
     with Size => 1;
   for C0_SE_Field use
     (Se_0 => 0,
      Se_1 => 1);

   subtype CMP0_C0_FPR_Field is HAL.UInt8;

   --  Analog Comparator Flag Falling
   type C0_CFF_Field is
     (
      --  A falling edge has not been detected on COUT.
      Cff_0,
      --  A falling edge on COUT has occurred.
      Cff_1)
     with Size => 1;
   for C0_CFF_Field use
     (Cff_0 => 0,
      Cff_1 => 1);

   --  Analog Comparator Flag Rising
   type C0_CFR_Field is
     (
      --  A rising edge has not been detected on COUT.
      Cfr_0,
      --  A rising edge on COUT has occurred.
      Cfr_1)
     with Size => 1;
   for C0_CFR_Field use
     (Cfr_0 => 0,
      Cfr_1 => 1);

   --  Comparator Interrupt Enable Falling
   type C0_IEF_Field is
     (
      --  Interrupt is disabled.
      Ief_0,
      --  Interrupt is enabled.
      Ief_1)
     with Size => 1;
   for C0_IEF_Field use
     (Ief_0 => 0,
      Ief_1 => 1);

   --  Comparator Interrupt Enable Rising
   type C0_IER_Field is
     (
      --  Interrupt is disabled.
      Ier_0,
      --  Interrupt is enabled.
      Ier_1)
     with Size => 1;
   for C0_IER_Field use
     (Ier_0 => 0,
      Ier_1 => 1);

   --  DMA Enable
   type C0_DMAEN_Field is
     (
      --  DMA is disabled.
      Dmaen_0,
      --  DMA is enabled.
      Dmaen_1)
     with Size => 1;
   for C0_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  CMP Control Register 0
   type CMP0_C0_Register is record
      --  Comparator hard block hysteresis control. See chip data sheet to get
      --  the actual hystersis value with each level
      HYSTCTR        : C0_HYSTCTR_Field := NRF_SVD.CMP.Hystctr_0;
      --  Comparator hard block offset control. See chip data sheet to get the
      --  actual offset value with each level
      OFFSET         : C0_OFFSET_Field := NRF_SVD.CMP.Offset_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Filter Sample Count
      FILTER_CNT     : C0_FILTER_CNT_Field := NRF_SVD.CMP.Filter_Cnt_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Comparator Module Enable
      EN             : C0_EN_Field := NRF_SVD.CMP.En_0;
      --  Comparator Output Pin Enable
      OPE            : C0_OPE_Field := NRF_SVD.CMP.Ope_0;
      --  Comparator Output Select
      COS            : C0_COS_Field := NRF_SVD.CMP.Cos_0;
      --  Comparator invert
      INVT           : C0_INVT_Field := NRF_SVD.CMP.Invt_0;
      --  Power Mode Select
      PMODE          : C0_PMODE_Field := NRF_SVD.CMP.Pmode_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Windowing Enable
      WE             : C0_WE_Field := NRF_SVD.CMP.We_0;
      --  Sample Enable
      SE             : C0_SE_Field := NRF_SVD.CMP.Se_0;
      --  Filter Sample Period
      FPR            : CMP0_C0_FPR_Field := 16#0#;
      --  Read-only. Analog Comparator Output
      COUT           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog Comparator Flag Falling
      CFF            : C0_CFF_Field := NRF_SVD.CMP.Cff_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog Comparator Flag Rising
      CFR            : C0_CFR_Field := NRF_SVD.CMP.Cfr_0;
      --  Comparator Interrupt Enable Falling
      IEF            : C0_IEF_Field := NRF_SVD.CMP.Ief_0;
      --  Comparator Interrupt Enable Rising
      IER            : C0_IER_Field := NRF_SVD.CMP.Ier_0;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  DMA Enable
      DMAEN          : C0_DMAEN_Field := NRF_SVD.CMP.Dmaen_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP0_C0_Register use record
      HYSTCTR        at 0 range 0 .. 1;
      OFFSET         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FILTER_CNT     at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EN             at 0 range 8 .. 8;
      OPE            at 0 range 9 .. 9;
      COS            at 0 range 10 .. 10;
      INVT           at 0 range 11 .. 11;
      PMODE          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      WE             at 0 range 14 .. 14;
      SE             at 0 range 15 .. 15;
      FPR            at 0 range 16 .. 23;
      COUT           at 0 range 24 .. 24;
      CFF            at 0 range 25 .. 25;
      CFR            at 0 range 26 .. 26;
      IEF            at 0 range 27 .. 27;
      IER            at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DMAEN          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CMP0_C1_VOSEL_Field is HAL.UInt8;

   --  Minus Input MUX Control
   type C1_MSEL_Field is
     (
      --  IN0
      Msel_0,
      --  IN1
      Msel_1,
      --  IN2
      Msel_2,
      --  IN3
      Msel_3,
      --  IN4
      Msel_4,
      --  IN5
      Msel_5,
      --  IN6
      Msel_6,
      --  IN7
      Msel_7)
     with Size => 3;
   for C1_MSEL_Field use
     (Msel_0 => 0,
      Msel_1 => 1,
      Msel_2 => 2,
      Msel_3 => 3,
      Msel_4 => 4,
      Msel_5 => 5,
      Msel_6 => 6,
      Msel_7 => 7);

   --  Plus Input MUX Control
   type C1_PSEL_Field is
     (
      --  IN0
      Psel_0,
      --  IN1
      Psel_1,
      --  IN2
      Psel_2,
      --  IN3
      Psel_3,
      --  IN4
      Psel_4,
      --  IN5
      Psel_5,
      --  IN6
      Psel_6,
      --  IN7
      Psel_7)
     with Size => 3;
   for C1_PSEL_Field use
     (Psel_0 => 0,
      Psel_1 => 1,
      Psel_2 => 2,
      Psel_3 => 3,
      Psel_4 => 4,
      Psel_5 => 5,
      Psel_6 => 6,
      Psel_7 => 7);

   --  Supply Voltage Reference Source Select
   type C1_VRSEL_Field is
     (
      --  Vin1 is selected as resistor ladder network supply reference Vin.
      Vrsel_0,
      --  Vin2 is selected as resistor ladder network supply reference Vin.
      Vrsel_1)
     with Size => 1;
   for C1_VRSEL_Field use
     (Vrsel_0 => 0,
      Vrsel_1 => 1);

   --  DAC Enable
   type C1_DACEN_Field is
     (
      --  DAC is disabled.
      Dacen_0,
      --  DAC is enabled.
      Dacen_1)
     with Size => 1;
   for C1_DACEN_Field use
     (Dacen_0 => 0,
      Dacen_1 => 1);

   --  CMP0_C1_CHN array
   type CMP0_C1_CHN_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for CMP0_C1_CHN
   type CMP0_C1_CHN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHN as a value
            Val : HAL.UInt8;
         when True =>
            --  CHN as an array
            Arr : CMP0_C1_CHN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CMP0_C1_CHN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Selection of the input to the negative port of the comparator
   type C1_INNSEL_Field is
     (
      --  IN0, from the 8-bit DAC output
      Innsel_0,
      --  IN1, from the analog 8-1 mux
      Innsel_1)
     with Size => 2;
   for C1_INNSEL_Field use
     (Innsel_0 => 0,
      Innsel_1 => 1);

   --  Selection of the input to the positive port of the comparator
   type C1_INPSEL_Field is
     (
      --  IN0, from the 8-bit DAC output
      Inpsel_0,
      --  IN1, from the analog 8-1 mux
      Inpsel_1)
     with Size => 2;
   for C1_INPSEL_Field use
     (Inpsel_0 => 0,
      Inpsel_1 => 1);

   --  CMP Control Register 1
   type CMP0_C1_Register is record
      --  DAC Output Voltage Select
      VOSEL          : CMP0_C1_VOSEL_Field := 16#0#;
      --  Minus Input MUX Control
      MSEL           : C1_MSEL_Field := NRF_SVD.CMP.Msel_0;
      --  Plus Input MUX Control
      PSEL           : C1_PSEL_Field := NRF_SVD.CMP.Psel_0;
      --  Supply Voltage Reference Source Select
      VRSEL          : C1_VRSEL_Field := NRF_SVD.CMP.Vrsel_0;
      --  DAC Enable
      DACEN          : C1_DACEN_Field := NRF_SVD.CMP.Dacen_0;
      --  Channel 0 input enable
      CHN            : CMP0_C1_CHN_Field := (As_Array => False, Val => 16#0#);
      --  Selection of the input to the negative port of the comparator
      INNSEL         : C1_INNSEL_Field := NRF_SVD.CMP.Innsel_0;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Selection of the input to the positive port of the comparator
      INPSEL         : C1_INPSEL_Field := NRF_SVD.CMP.Inpsel_0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP0_C1_Register use record
      VOSEL          at 0 range 0 .. 7;
      MSEL           at 0 range 8 .. 10;
      PSEL           at 0 range 11 .. 13;
      VRSEL          at 0 range 14 .. 14;
      DACEN          at 0 range 15 .. 15;
      CHN            at 0 range 16 .. 23;
      INNSEL         at 0 range 24 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      INPSEL         at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CMP0_C2_ACOn_Field is HAL.UInt8;

   --  Comparator and DAC initialization delay modulus.
   type C2_INITMOD_Field is
     (
      --  The modulus is set to 64(same with 111111).
      Initmod_0)
     with Size => 6;
   for C2_INITMOD_Field use
     (Initmod_0 => 0);

   --  Number of sample clocks
   type C2_NSAM_Field is
     (
      --  The comparison result is sampled as soon as the active channel is
      --  scanned in one round-robin clock.
      Nsam_0,
      --  The sampling takes place 1 round-robin clock cycle after the next
      --  cycle of the round-robin clock.
      Nsam_1,
      --  The sampling takes place 2 round-robin clock cycles after the next
      --  cycle of the round-robin clock.
      Nsam_2,
      --  The sampling takes place 3 round-robin clock cycles after the next
      --  cycle of the round-robin clock.
      Nsam_3)
     with Size => 2;
   for C2_NSAM_Field use
     (Nsam_0 => 0,
      Nsam_1 => 1,
      Nsam_2 => 2,
      Nsam_3 => 3);

   --  Fixed channel selection
   type C2_FXMXCH_Field is
     (
      --  Channel 0 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_0,
      --  Channel 1 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_1,
      --  Channel 2 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_2,
      --  Channel 3 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_3,
      --  Channel 4 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_4,
      --  Channel 5 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_5,
      --  Channel 6 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_6,
      --  Channel 7 is selected as the fixed reference input for the fixed mux
      --  port.
      Fxmxch_7)
     with Size => 3;
   for C2_FXMXCH_Field use
     (Fxmxch_0 => 0,
      Fxmxch_1 => 1,
      Fxmxch_2 => 2,
      Fxmxch_3 => 3,
      Fxmxch_4 => 4,
      Fxmxch_5 => 5,
      Fxmxch_6 => 6,
      Fxmxch_7 => 7);

   --  Fixed MUX Port
   type C2_FXMP_Field is
     (
      --  The Plus port is fixed. Only the inputs to the Minus port are swept
      --  in each round.
      Fxmp_0,
      --  The Minus port is fixed. Only the inputs to the Plus port are swept
      --  in each round.
      Fxmp_1)
     with Size => 1;
   for C2_FXMP_Field use
     (Fxmp_0 => 0,
      Fxmp_1 => 1);

   --  Round-Robin interrupt enable
   type C2_RRIE_Field is
     (
      --  The round-robin interrupt is disabled.
      Rrie_0,
      --  The round-robin interrupt is enabled when a comparison result changes
      --  from the last sample.
      Rrie_1)
     with Size => 1;
   for C2_RRIE_Field use
     (Rrie_0 => 0,
      Rrie_1 => 1);

   --  Round-Robin Enable
   type C2_RRE_Field is
     (
      --  Round-robin operation is disabled.
      Rre_0,
      --  Round-robin operation is enabled.
      Rre_1)
     with Size => 1;
   for C2_RRE_Field use
     (Rre_0 => 0,
      Rre_1 => 1);

   --  CMP Control Register 2
   type CMP0_C2_Register is record
      --  The result of the input comparison for channel n
      ACOn           : CMP0_C2_ACOn_Field := 16#0#;
      --  Comparator and DAC initialization delay modulus.
      INITMOD        : C2_INITMOD_Field := NRF_SVD.CMP.Initmod_0;
      --  Number of sample clocks
      NSAM           : C2_NSAM_Field := NRF_SVD.CMP.Nsam_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 0 input changed flag
      CH0F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 1 input changed flag
      CH1F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 2 input changed flag
      CH2F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 3 input changed flag
      CH3F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 4 input changed flag
      CH4F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 5 input changed flag
      CH5F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 6 input changed flag
      CH6F           : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Channel 7 input changed flag
      CH7F           : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Fixed channel selection
      FXMXCH         : C2_FXMXCH_Field := NRF_SVD.CMP.Fxmxch_0;
      --  unspecified
      Reserved_28_28 : HAL.Bit := 16#0#;
      --  Fixed MUX Port
      FXMP           : C2_FXMP_Field := NRF_SVD.CMP.Fxmp_0;
      --  Round-Robin interrupt enable
      RRIE           : C2_RRIE_Field := NRF_SVD.CMP.Rrie_0;
      --  Round-Robin Enable
      RRE            : C2_RRE_Field := NRF_SVD.CMP.Rre_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP0_C2_Register use record
      ACOn           at 0 range 0 .. 7;
      INITMOD        at 0 range 8 .. 13;
      NSAM           at 0 range 14 .. 15;
      CH0F           at 0 range 16 .. 16;
      CH1F           at 0 range 17 .. 17;
      CH2F           at 0 range 18 .. 18;
      CH3F           at 0 range 19 .. 19;
      CH4F           at 0 range 20 .. 20;
      CH5F           at 0 range 21 .. 21;
      CH6F           at 0 range 22 .. 22;
      CH7F           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      FXMXCH         at 0 range 25 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      FXMP           at 0 range 29 .. 29;
      RRIE           at 0 range 30 .. 30;
      RRE            at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   type CMP_Peripheral is record
      --  CMP Control Register 0
      C0 : aliased CMP0_C0_Register;
      --  CMP Control Register 1
      C1 : aliased CMP0_C1_Register;
      --  CMP Control Register 2
      C2 : aliased CMP0_C2_Register;
   end record
     with Volatile;

   for CMP_Peripheral use record
      C0 at 16#0# range 0 .. 31;
      C1 at 16#4# range 0 .. 31;
      C2 at 16#8# range 0 .. 31;
   end record;

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP0_Periph : aliased CMP_Peripheral
     with Import, Address => System'To_Address (16#40073000#);

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP1_Periph : aliased CMP_Peripheral
     with Import, Address => System'To_Address (16#40074000#);

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP2_Periph : aliased CMP_Peripheral
     with Import, Address => System'To_Address (16#40075000#);

end NRF_SVD.CMP;
