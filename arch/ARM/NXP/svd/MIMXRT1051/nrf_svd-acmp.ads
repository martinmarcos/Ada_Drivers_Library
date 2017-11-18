--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

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

   --  Comparator hard block hysteresis control
   type CR0_HYSTCTR_Field is
     (
      --  Level 0
      Hystctr_0,
      --  Level 1
      Hystctr_1,
      --  Level 2
      Hystctr_2,
      --  Level 3
      Hystctr_3)
     with Size => 2;
   for CR0_HYSTCTR_Field use
     (Hystctr_0 => 0,
      Hystctr_1 => 1,
      Hystctr_2 => 2,
      Hystctr_3 => 3);

   --  Filter Sample Count
   type CR0_FILTER_CNT_Field is
     (
      --  Filter is disabled. If SE = 1, then COUT is a logic 0. This is not a
      --  legal state, and is not recommended. If SE = 0, COUT = COUTA.
      Filter_Cnt_0,
      --  One sample must agree. The comparator output is simply sampled.
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
   for CR0_FILTER_CNT_Field use
     (Filter_Cnt_0 => 0,
      Filter_Cnt_1 => 1,
      Filter_Cnt_2 => 2,
      Filter_Cnt_3 => 3,
      Filter_Cnt_4 => 4,
      Filter_Cnt_5 => 5,
      Filter_Cnt_6 => 6,
      Filter_Cnt_7 => 7);

   --  CMP Control Register 0
   type CMP1_CR0_Register is record
      --  Comparator hard block hysteresis control
      HYSTCTR      : CR0_HYSTCTR_Field := NRF_SVD.ACMP.Hystctr_0;
      --  unspecified
      Reserved_2_3 : HAL.UInt2 := 16#0#;
      --  Filter Sample Count
      FILTER_CNT   : CR0_FILTER_CNT_Field := NRF_SVD.ACMP.Filter_Cnt_0;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CMP1_CR0_Register use record
      HYSTCTR      at 0 range 0 .. 1;
      Reserved_2_3 at 0 range 2 .. 3;
      FILTER_CNT   at 0 range 4 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  Comparator Module Enable
   type CR1_EN_Field is
     (
      --  Analog Comparator is disabled.
      En_0,
      --  Analog Comparator is enabled.
      En_1)
     with Size => 1;
   for CR1_EN_Field use
     (En_0 => 0,
      En_1 => 1);

   --  Comparator Output Pin Enable
   type CR1_OPE_Field is
     (
      --  CMPO is not available on the associated CMPO output pin. If the
      --  comparator does not own the pin, this field has no effect.
      Ope_0,
      --  CMPO is available on the associated CMPO output pin. The comparator
      --  output (CMPO) is driven out on the associated CMPO output pin if the
      --  comparator owns the pin. If the comparator does not own the field,
      --  this bit has no effect.
      Ope_1)
     with Size => 1;
   for CR1_OPE_Field use
     (Ope_0 => 0,
      Ope_1 => 1);

   --  Comparator Output Select
   type CR1_COS_Field is
     (
      --  Set the filtered comparator output (CMPO) to equal COUT.
      Cos_0,
      --  Set the unfiltered comparator output (CMPO) to equal COUTA.
      Cos_1)
     with Size => 1;
   for CR1_COS_Field use
     (Cos_0 => 0,
      Cos_1 => 1);

   --  Comparator INVERT
   type CR1_INV_Field is
     (
      --  Does not invert the comparator output.
      Inv_0,
      --  Inverts the comparator output.
      Inv_1)
     with Size => 1;
   for CR1_INV_Field use
     (Inv_0 => 0,
      Inv_1 => 1);

   --  Power Mode Select
   type CR1_PMODE_Field is
     (
      --  Low-Speed (LS) Comparison mode selected. In this mode, CMP has slower
      --  output propagation delay and lower current consumption.
      Pmode_0,
      --  High-Speed (HS) Comparison mode selected. In this mode, CMP has
      --  faster output propagation delay and higher current consumption.
      Pmode_1)
     with Size => 1;
   for CR1_PMODE_Field use
     (Pmode_0 => 0,
      Pmode_1 => 1);

   --  Windowing Enable
   type CR1_WE_Field is
     (
      --  Windowing mode is not selected.
      We_0,
      --  Windowing mode is selected.
      We_1)
     with Size => 1;
   for CR1_WE_Field use
     (We_0 => 0,
      We_1 => 1);

   --  Sample Enable
   type CR1_SE_Field is
     (
      --  Sampling mode is not selected.
      Se_0,
      --  Sampling mode is selected.
      Se_1)
     with Size => 1;
   for CR1_SE_Field use
     (Se_0 => 0,
      Se_1 => 1);

   --  CMP Control Register 1
   type CMP1_CR1_Register is record
      --  Comparator Module Enable
      EN           : CR1_EN_Field := NRF_SVD.ACMP.En_0;
      --  Comparator Output Pin Enable
      OPE          : CR1_OPE_Field := NRF_SVD.ACMP.Ope_0;
      --  Comparator Output Select
      COS          : CR1_COS_Field := NRF_SVD.ACMP.Cos_0;
      --  Comparator INVERT
      INV          : CR1_INV_Field := NRF_SVD.ACMP.Inv_0;
      --  Power Mode Select
      PMODE        : CR1_PMODE_Field := NRF_SVD.ACMP.Pmode_0;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  Windowing Enable
      WE           : CR1_WE_Field := NRF_SVD.ACMP.We_0;
      --  Sample Enable
      SE           : CR1_SE_Field := NRF_SVD.ACMP.Se_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CMP1_CR1_Register use record
      EN           at 0 range 0 .. 0;
      OPE          at 0 range 1 .. 1;
      COS          at 0 range 2 .. 2;
      INV          at 0 range 3 .. 3;
      PMODE        at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      WE           at 0 range 6 .. 6;
      SE           at 0 range 7 .. 7;
   end record;

   --  Analog Comparator Flag Falling
   type SCR_CFF_Field is
     (
      --  Falling-edge on COUT has not been detected.
      Cff_0,
      --  Falling-edge on COUT has occurred.
      Cff_1)
     with Size => 1;
   for SCR_CFF_Field use
     (Cff_0 => 0,
      Cff_1 => 1);

   --  Analog Comparator Flag Rising
   type SCR_CFR_Field is
     (
      --  Rising-edge on COUT has not been detected.
      Cfr_0,
      --  Rising-edge on COUT has occurred.
      Cfr_1)
     with Size => 1;
   for SCR_CFR_Field use
     (Cfr_0 => 0,
      Cfr_1 => 1);

   --  Comparator Interrupt Enable Falling
   type SCR_IEF_Field is
     (
      --  Interrupt is disabled.
      Ief_0,
      --  Interrupt is enabled.
      Ief_1)
     with Size => 1;
   for SCR_IEF_Field use
     (Ief_0 => 0,
      Ief_1 => 1);

   --  Comparator Interrupt Enable Rising
   type SCR_IER_Field is
     (
      --  Interrupt is disabled.
      Ier_0,
      --  Interrupt is enabled.
      Ier_1)
     with Size => 1;
   for SCR_IER_Field use
     (Ier_0 => 0,
      Ier_1 => 1);

   --  DMA Enable Control
   type SCR_DMAEN_Field is
     (
      --  DMA is disabled.
      Dmaen_0,
      --  DMA is enabled.
      Dmaen_1)
     with Size => 1;
   for SCR_DMAEN_Field use
     (Dmaen_0 => 0,
      Dmaen_1 => 1);

   --  CMP Status and Control Register
   type CMP1_SCR_Register is record
      --  Read-only. Analog Comparator Output
      COUT         : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog Comparator Flag Falling
      CFF          : SCR_CFF_Field := NRF_SVD.ACMP.Cff_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog Comparator Flag Rising
      CFR          : SCR_CFR_Field := NRF_SVD.ACMP.Cfr_0;
      --  Comparator Interrupt Enable Falling
      IEF          : SCR_IEF_Field := NRF_SVD.ACMP.Ief_0;
      --  Comparator Interrupt Enable Rising
      IER          : SCR_IER_Field := NRF_SVD.ACMP.Ier_0;
      --  unspecified
      Reserved_5_5 : HAL.Bit := 16#0#;
      --  DMA Enable Control
      DMAEN        : SCR_DMAEN_Field := NRF_SVD.ACMP.Dmaen_0;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CMP1_SCR_Register use record
      COUT         at 0 range 0 .. 0;
      CFF          at 0 range 1 .. 1;
      CFR          at 0 range 2 .. 2;
      IEF          at 0 range 3 .. 3;
      IER          at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      DMAEN        at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype CMP1_DACCR_VOSEL_Field is HAL.UInt6;

   --  Supply Voltage Reference Source Select
   type DACCR_VRSEL_Field is
     (
      --  Vin1 is selected as resistor ladder network supply reference.
      Vrsel_0,
      --  Vin2 is selected as resistor ladder network supply reference.
      Vrsel_1)
     with Size => 1;
   for DACCR_VRSEL_Field use
     (Vrsel_0 => 0,
      Vrsel_1 => 1);

   --  DAC Enable
   type DACCR_DACEN_Field is
     (
      --  DAC is disabled.
      Dacen_0,
      --  DAC is enabled.
      Dacen_1)
     with Size => 1;
   for DACCR_DACEN_Field use
     (Dacen_0 => 0,
      Dacen_1 => 1);

   --  DAC Control Register
   type CMP1_DACCR_Register is record
      --  DAC Output Voltage Select
      VOSEL : CMP1_DACCR_VOSEL_Field := 16#0#;
      --  Supply Voltage Reference Source Select
      VRSEL : DACCR_VRSEL_Field := NRF_SVD.ACMP.Vrsel_0;
      --  DAC Enable
      DACEN : DACCR_DACEN_Field := NRF_SVD.ACMP.Dacen_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CMP1_DACCR_Register use record
      VOSEL at 0 range 0 .. 5;
      VRSEL at 0 range 6 .. 6;
      DACEN at 0 range 7 .. 7;
   end record;

   --  Minus Input Mux Control
   type MUXCR_MSEL_Field is
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
   for MUXCR_MSEL_Field use
     (Msel_0 => 0,
      Msel_1 => 1,
      Msel_2 => 2,
      Msel_3 => 3,
      Msel_4 => 4,
      Msel_5 => 5,
      Msel_6 => 6,
      Msel_7 => 7);

   --  Plus Input Mux Control
   type MUXCR_PSEL_Field is
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
   for MUXCR_PSEL_Field use
     (Psel_0 => 0,
      Psel_1 => 1,
      Psel_2 => 2,
      Psel_3 => 3,
      Psel_4 => 4,
      Psel_5 => 5,
      Psel_6 => 6,
      Psel_7 => 7);

   --  MUX Control Register
   type CMP1_MUXCR_Register is record
      --  Minus Input Mux Control
      MSEL         : MUXCR_MSEL_Field := NRF_SVD.ACMP.Msel_0;
      --  Plus Input Mux Control
      PSEL         : MUXCR_PSEL_Field := NRF_SVD.ACMP.Psel_0;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CMP1_MUXCR_Register use record
      MSEL         at 0 range 0 .. 2;
      PSEL         at 0 range 3 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   type ACMP_Peripheral is record
      --  CMP Control Register 0
      CR0   : aliased CMP1_CR0_Register;
      --  CMP Control Register 1
      CR1   : aliased CMP1_CR1_Register;
      --  CMP Filter Period Register
      FPR   : aliased HAL.UInt8;
      --  CMP Status and Control Register
      SCR   : aliased CMP1_SCR_Register;
      --  DAC Control Register
      DACCR : aliased CMP1_DACCR_Register;
      --  MUX Control Register
      MUXCR : aliased CMP1_MUXCR_Register;
   end record
     with Volatile;

   for ACMP_Peripheral use record
      CR0   at 16#0# range 0 .. 7;
      CR1   at 16#1# range 0 .. 7;
      FPR   at 16#2# range 0 .. 7;
      SCR   at 16#3# range 0 .. 7;
      DACCR at 16#4# range 0 .. 7;
      MUXCR at 16#5# range 0 .. 7;
   end record;

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP1_Periph : aliased ACMP_Peripheral
     with Import, Address => System'To_Address (16#40094000#);

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP2_Periph : aliased ACMP_Peripheral
     with Import, Address => System'To_Address (16#40094008#);

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP3_Periph : aliased ACMP_Peripheral
     with Import, Address => System'To_Address (16#40094010#);

   --  High-Speed Comparator (CMP), Voltage Reference (VREF) Digital-to-Analog
   --  Converter (DAC), and Analog Mux (ANMUX)
   CMP4_Periph : aliased ACMP_Peripheral
     with Import, Address => System'To_Address (16#40094018#);

end NRF_SVD.ACMP;
