--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PMU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PMU_REG_1P1_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_1P1_OUTPUT_TRG_Field is
     (
      --  0.8V
      Output_Trg_4,
      --  1.1V
      Output_Trg_16)
     with Size => 5;
   for REG_1P1_OUTPUT_TRG_Field use
     (Output_Trg_4 => 4,
      Output_Trg_16 => 16);

   --  Selects the source for the reference voltage of the weak 1p1 regulator.
   type REG_1P1_SELREF_WEAK_LINREG_Field is
     (
      --  Weak-linreg output tracks low-power-bandgap voltage
      Selref_Weak_Linreg_0,
      --  Weak-linreg output tracks VDD_SOC_CAP voltage
      Selref_Weak_Linreg_1)
     with Size => 1;
   for REG_1P1_SELREF_WEAK_LINREG_Field use
     (Selref_Weak_Linreg_0 => 0,
      Selref_Weak_Linreg_1 => 1);

   --  Regulator 1P1 Register
   type PMU_REG_1P1_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_1P1_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_1P1_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD1P1          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD1P1          : Boolean := False;
      --  Enables the weak 1p1 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  Selects the source for the reference voltage of the weak 1p1
      --  regulator.
      SELREF_WEAK_LINREG : REG_1P1_SELREF_WEAK_LINREG_Field :=
                            NRF_SVD.PMU.Selref_Weak_Linreg_0;
      --  unspecified
      Reserved_20_31     : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_1P1_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD1P1          at 0 range 16 .. 16;
      OK_VDD1P1          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      SELREF_WEAK_LINREG at 0 range 19 .. 19;
      Reserved_20_31     at 0 range 20 .. 31;
   end record;

   subtype PMU_REG_1P1_SET_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_1P1_SET_OUTPUT_TRG_Field is
     (
      --  0.8V
      Output_Trg_4,
      --  1.1V
      Output_Trg_16)
     with Size => 5;
   for REG_1P1_SET_OUTPUT_TRG_Field use
     (Output_Trg_4 => 4,
      Output_Trg_16 => 16);

   --  Selects the source for the reference voltage of the weak 1p1 regulator.
   type REG_1P1_SET_SELREF_WEAK_LINREG_Field is
     (
      --  Weak-linreg output tracks low-power-bandgap voltage
      Selref_Weak_Linreg_0,
      --  Weak-linreg output tracks VDD_SOC_CAP voltage
      Selref_Weak_Linreg_1)
     with Size => 1;
   for REG_1P1_SET_SELREF_WEAK_LINREG_Field use
     (Selref_Weak_Linreg_0 => 0,
      Selref_Weak_Linreg_1 => 1);

   --  Regulator 1P1 Register
   type PMU_REG_1P1_SET_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_1P1_SET_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_1P1_SET_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD1P1          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD1P1          : Boolean := False;
      --  Enables the weak 1p1 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  Selects the source for the reference voltage of the weak 1p1
      --  regulator.
      SELREF_WEAK_LINREG : REG_1P1_SET_SELREF_WEAK_LINREG_Field :=
                            NRF_SVD.PMU.Selref_Weak_Linreg_0;
      --  unspecified
      Reserved_20_31     : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_1P1_SET_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD1P1          at 0 range 16 .. 16;
      OK_VDD1P1          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      SELREF_WEAK_LINREG at 0 range 19 .. 19;
      Reserved_20_31     at 0 range 20 .. 31;
   end record;

   subtype PMU_REG_1P1_CLR_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_1P1_CLR_OUTPUT_TRG_Field is
     (
      --  0.8V
      Output_Trg_4,
      --  1.1V
      Output_Trg_16)
     with Size => 5;
   for REG_1P1_CLR_OUTPUT_TRG_Field use
     (Output_Trg_4 => 4,
      Output_Trg_16 => 16);

   --  Selects the source for the reference voltage of the weak 1p1 regulator.
   type REG_1P1_CLR_SELREF_WEAK_LINREG_Field is
     (
      --  Weak-linreg output tracks low-power-bandgap voltage
      Selref_Weak_Linreg_0,
      --  Weak-linreg output tracks VDD_SOC_CAP voltage
      Selref_Weak_Linreg_1)
     with Size => 1;
   for REG_1P1_CLR_SELREF_WEAK_LINREG_Field use
     (Selref_Weak_Linreg_0 => 0,
      Selref_Weak_Linreg_1 => 1);

   --  Regulator 1P1 Register
   type PMU_REG_1P1_CLR_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_1P1_CLR_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_1P1_CLR_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD1P1          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD1P1          : Boolean := False;
      --  Enables the weak 1p1 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  Selects the source for the reference voltage of the weak 1p1
      --  regulator.
      SELREF_WEAK_LINREG : REG_1P1_CLR_SELREF_WEAK_LINREG_Field :=
                            NRF_SVD.PMU.Selref_Weak_Linreg_0;
      --  unspecified
      Reserved_20_31     : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_1P1_CLR_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD1P1          at 0 range 16 .. 16;
      OK_VDD1P1          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      SELREF_WEAK_LINREG at 0 range 19 .. 19;
      Reserved_20_31     at 0 range 20 .. 31;
   end record;

   subtype PMU_REG_1P1_TOG_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_1P1_TOG_OUTPUT_TRG_Field is
     (
      --  0.8V
      Output_Trg_4,
      --  1.1V
      Output_Trg_16)
     with Size => 5;
   for REG_1P1_TOG_OUTPUT_TRG_Field use
     (Output_Trg_4 => 4,
      Output_Trg_16 => 16);

   --  Selects the source for the reference voltage of the weak 1p1 regulator.
   type REG_1P1_TOG_SELREF_WEAK_LINREG_Field is
     (
      --  Weak-linreg output tracks low-power-bandgap voltage
      Selref_Weak_Linreg_0,
      --  Weak-linreg output tracks VDD_SOC_CAP voltage
      Selref_Weak_Linreg_1)
     with Size => 1;
   for REG_1P1_TOG_SELREF_WEAK_LINREG_Field use
     (Selref_Weak_Linreg_0 => 0,
      Selref_Weak_Linreg_1 => 1);

   --  Regulator 1P1 Register
   type PMU_REG_1P1_TOG_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_1P1_TOG_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_1P1_TOG_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD1P1          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD1P1          : Boolean := False;
      --  Enables the weak 1p1 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  Selects the source for the reference voltage of the weak 1p1
      --  regulator.
      SELREF_WEAK_LINREG : REG_1P1_TOG_SELREF_WEAK_LINREG_Field :=
                            NRF_SVD.PMU.Selref_Weak_Linreg_0;
      --  unspecified
      Reserved_20_31     : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_1P1_TOG_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD1P1          at 0 range 16 .. 16;
      OK_VDD1P1          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      SELREF_WEAK_LINREG at 0 range 19 .. 19;
      Reserved_20_31     at 0 range 20 .. 31;
   end record;

   subtype PMU_REG_3P0_BO_OFFSET_Field is HAL.UInt3;

   --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
   --  USB_OTG2_VBUS
   type REG_3P0_VBUS_SEL_Field is
     (
      --  Utilize VBUS OTG2 power
      Usb_Otg2_Vbus,
      --  Utilize VBUS OTG1 power
      Usb_Otg1_Vbus)
     with Size => 1;
   for REG_3P0_VBUS_SEL_Field use
     (Usb_Otg2_Vbus => 0,
      Usb_Otg1_Vbus => 1);

   --  Control bits to adjust the regulator output voltage
   type REG_3P0_OUTPUT_TRG_Field is
     (
      --  2.625V
      Output_Trg_0,
      --  3.000V
      Output_Trg_15,
      --  3.400V
      Output_Trg_31)
     with Size => 5;
   for REG_3P0_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_15 => 15,
      Output_Trg_31 => 31);

   --  Regulator 3P0 Register
   type PMU_REG_3P0_Register is record
      --  Control bit to enable the regulator output to be set by the
      --  programmed target voltage setting and internal bandgap reference
      ENABLE_LINREG  : Boolean := False;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO      : Boolean := False;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT  : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET      : PMU_REG_3P0_BO_OFFSET_Field := 16#7#;
      --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
      --  USB_OTG2_VBUS
      VBUS_SEL       : REG_3P0_VBUS_SEL_Field := NRF_SVD.PMU.Usb_Otg2_Vbus;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG     : REG_3P0_OUTPUT_TRG_Field := NRF_SVD.PMU.Output_Trg_15;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD3P0      : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD3P0      : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_3P0_Register use record
      ENABLE_LINREG  at 0 range 0 .. 0;
      ENABLE_BO      at 0 range 1 .. 1;
      ENABLE_ILIMIT  at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BO_OFFSET      at 0 range 4 .. 6;
      VBUS_SEL       at 0 range 7 .. 7;
      OUTPUT_TRG     at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BO_VDD3P0      at 0 range 16 .. 16;
      OK_VDD3P0      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PMU_REG_3P0_SET_BO_OFFSET_Field is HAL.UInt3;

   --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
   --  USB_OTG2_VBUS
   type REG_3P0_SET_VBUS_SEL_Field is
     (
      --  Utilize VBUS OTG2 power
      Usb_Otg2_Vbus,
      --  Utilize VBUS OTG1 power
      Usb_Otg1_Vbus)
     with Size => 1;
   for REG_3P0_SET_VBUS_SEL_Field use
     (Usb_Otg2_Vbus => 0,
      Usb_Otg1_Vbus => 1);

   --  Control bits to adjust the regulator output voltage
   type REG_3P0_SET_OUTPUT_TRG_Field is
     (
      --  2.625V
      Output_Trg_0,
      --  3.000V
      Output_Trg_15,
      --  3.400V
      Output_Trg_31)
     with Size => 5;
   for REG_3P0_SET_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_15 => 15,
      Output_Trg_31 => 31);

   --  Regulator 3P0 Register
   type PMU_REG_3P0_SET_Register is record
      --  Control bit to enable the regulator output to be set by the
      --  programmed target voltage setting and internal bandgap reference
      ENABLE_LINREG  : Boolean := False;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO      : Boolean := False;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT  : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET      : PMU_REG_3P0_SET_BO_OFFSET_Field := 16#7#;
      --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
      --  USB_OTG2_VBUS
      VBUS_SEL       : REG_3P0_SET_VBUS_SEL_Field :=
                        NRF_SVD.PMU.Usb_Otg2_Vbus;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG     : REG_3P0_SET_OUTPUT_TRG_Field :=
                        NRF_SVD.PMU.Output_Trg_15;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD3P0      : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD3P0      : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_3P0_SET_Register use record
      ENABLE_LINREG  at 0 range 0 .. 0;
      ENABLE_BO      at 0 range 1 .. 1;
      ENABLE_ILIMIT  at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BO_OFFSET      at 0 range 4 .. 6;
      VBUS_SEL       at 0 range 7 .. 7;
      OUTPUT_TRG     at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BO_VDD3P0      at 0 range 16 .. 16;
      OK_VDD3P0      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PMU_REG_3P0_CLR_BO_OFFSET_Field is HAL.UInt3;

   --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
   --  USB_OTG2_VBUS
   type REG_3P0_CLR_VBUS_SEL_Field is
     (
      --  Utilize VBUS OTG2 power
      Usb_Otg2_Vbus,
      --  Utilize VBUS OTG1 power
      Usb_Otg1_Vbus)
     with Size => 1;
   for REG_3P0_CLR_VBUS_SEL_Field use
     (Usb_Otg2_Vbus => 0,
      Usb_Otg1_Vbus => 1);

   --  Control bits to adjust the regulator output voltage
   type REG_3P0_CLR_OUTPUT_TRG_Field is
     (
      --  2.625V
      Output_Trg_0,
      --  3.000V
      Output_Trg_15,
      --  3.400V
      Output_Trg_31)
     with Size => 5;
   for REG_3P0_CLR_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_15 => 15,
      Output_Trg_31 => 31);

   --  Regulator 3P0 Register
   type PMU_REG_3P0_CLR_Register is record
      --  Control bit to enable the regulator output to be set by the
      --  programmed target voltage setting and internal bandgap reference
      ENABLE_LINREG  : Boolean := False;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO      : Boolean := False;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT  : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET      : PMU_REG_3P0_CLR_BO_OFFSET_Field := 16#7#;
      --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
      --  USB_OTG2_VBUS
      VBUS_SEL       : REG_3P0_CLR_VBUS_SEL_Field :=
                        NRF_SVD.PMU.Usb_Otg2_Vbus;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG     : REG_3P0_CLR_OUTPUT_TRG_Field :=
                        NRF_SVD.PMU.Output_Trg_15;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD3P0      : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD3P0      : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_3P0_CLR_Register use record
      ENABLE_LINREG  at 0 range 0 .. 0;
      ENABLE_BO      at 0 range 1 .. 1;
      ENABLE_ILIMIT  at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BO_OFFSET      at 0 range 4 .. 6;
      VBUS_SEL       at 0 range 7 .. 7;
      OUTPUT_TRG     at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BO_VDD3P0      at 0 range 16 .. 16;
      OK_VDD3P0      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PMU_REG_3P0_TOG_BO_OFFSET_Field is HAL.UInt3;

   --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
   --  USB_OTG2_VBUS
   type REG_3P0_TOG_VBUS_SEL_Field is
     (
      --  Utilize VBUS OTG2 power
      Usb_Otg2_Vbus,
      --  Utilize VBUS OTG1 power
      Usb_Otg1_Vbus)
     with Size => 1;
   for REG_3P0_TOG_VBUS_SEL_Field use
     (Usb_Otg2_Vbus => 0,
      Usb_Otg1_Vbus => 1);

   --  Control bits to adjust the regulator output voltage
   type REG_3P0_TOG_OUTPUT_TRG_Field is
     (
      --  2.625V
      Output_Trg_0,
      --  3.000V
      Output_Trg_15,
      --  3.400V
      Output_Trg_31)
     with Size => 5;
   for REG_3P0_TOG_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_15 => 15,
      Output_Trg_31 => 31);

   --  Regulator 3P0 Register
   type PMU_REG_3P0_TOG_Register is record
      --  Control bit to enable the regulator output to be set by the
      --  programmed target voltage setting and internal bandgap reference
      ENABLE_LINREG  : Boolean := False;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO      : Boolean := False;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT  : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET      : PMU_REG_3P0_TOG_BO_OFFSET_Field := 16#7#;
      --  Select input voltage source for LDO_3P0 from either USB_OTG1_VBUS or
      --  USB_OTG2_VBUS
      VBUS_SEL       : REG_3P0_TOG_VBUS_SEL_Field :=
                        NRF_SVD.PMU.Usb_Otg2_Vbus;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG     : REG_3P0_TOG_OUTPUT_TRG_Field :=
                        NRF_SVD.PMU.Output_Trg_15;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD3P0      : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD3P0      : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_3P0_TOG_Register use record
      ENABLE_LINREG  at 0 range 0 .. 0;
      ENABLE_BO      at 0 range 1 .. 1;
      ENABLE_ILIMIT  at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BO_OFFSET      at 0 range 4 .. 6;
      VBUS_SEL       at 0 range 7 .. 7;
      OUTPUT_TRG     at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      BO_VDD3P0      at 0 range 16 .. 16;
      OK_VDD3P0      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PMU_REG_2P5_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_2P5_OUTPUT_TRG_Field is
     (
      --  2.10V
      Output_Trg_0,
      --  2.50V
      Output_Trg_16,
      --  2.875V
      Output_Trg_31)
     with Size => 5;
   for REG_2P5_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_16 => 16,
      Output_Trg_31 => 31);

   --  Regulator 2P5 Register
   type PMU_REG_2P5_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_2P5_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_2P5_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD2P5          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD2P5          : Boolean := False;
      --  Enables the weak 2p5 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  unspecified
      Reserved_19_31     : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_2P5_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD2P5          at 0 range 16 .. 16;
      OK_VDD2P5          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      Reserved_19_31     at 0 range 19 .. 31;
   end record;

   subtype PMU_REG_2P5_SET_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_2P5_SET_OUTPUT_TRG_Field is
     (
      --  2.10V
      Output_Trg_0,
      --  2.50V
      Output_Trg_16,
      --  2.875V
      Output_Trg_31)
     with Size => 5;
   for REG_2P5_SET_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_16 => 16,
      Output_Trg_31 => 31);

   --  Regulator 2P5 Register
   type PMU_REG_2P5_SET_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_2P5_SET_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_2P5_SET_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD2P5          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD2P5          : Boolean := False;
      --  Enables the weak 2p5 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  unspecified
      Reserved_19_31     : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_2P5_SET_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD2P5          at 0 range 16 .. 16;
      OK_VDD2P5          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      Reserved_19_31     at 0 range 19 .. 31;
   end record;

   subtype PMU_REG_2P5_CLR_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_2P5_CLR_OUTPUT_TRG_Field is
     (
      --  2.10V
      Output_Trg_0,
      --  2.50V
      Output_Trg_16,
      --  2.875V
      Output_Trg_31)
     with Size => 5;
   for REG_2P5_CLR_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_16 => 16,
      Output_Trg_31 => 31);

   --  Regulator 2P5 Register
   type PMU_REG_2P5_CLR_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_2P5_CLR_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_2P5_CLR_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD2P5          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD2P5          : Boolean := False;
      --  Enables the weak 2p5 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  unspecified
      Reserved_19_31     : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_2P5_CLR_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD2P5          at 0 range 16 .. 16;
      OK_VDD2P5          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      Reserved_19_31     at 0 range 19 .. 31;
   end record;

   subtype PMU_REG_2P5_TOG_BO_OFFSET_Field is HAL.UInt3;

   --  Control bits to adjust the regulator output voltage
   type REG_2P5_TOG_OUTPUT_TRG_Field is
     (
      --  2.10V
      Output_Trg_0,
      --  2.50V
      Output_Trg_16,
      --  2.875V
      Output_Trg_31)
     with Size => 5;
   for REG_2P5_TOG_OUTPUT_TRG_Field use
     (Output_Trg_0 => 0,
      Output_Trg_16 => 16,
      Output_Trg_31 => 31);

   --  Regulator 2P5 Register
   type PMU_REG_2P5_TOG_Register is record
      --  Control bit to enable the regulator output.
      ENABLE_LINREG      : Boolean := True;
      --  Control bit to enable the brownout circuitry in the regulator.
      ENABLE_BO          : Boolean := True;
      --  Control bit to enable the current-limit circuitry in the regulator.
      ENABLE_ILIMIT      : Boolean := False;
      --  Control bit to enable the pull-down circuitry in the regulator
      ENABLE_PULLDOWN    : Boolean := False;
      --  Control bits to adjust the regulator brownout offset voltage in 25mV
      --  steps
      BO_OFFSET          : PMU_REG_2P5_TOG_BO_OFFSET_Field := 16#7#;
      --  unspecified
      Reserved_7_7       : HAL.Bit := 16#0#;
      --  Control bits to adjust the regulator output voltage
      OUTPUT_TRG         : REG_2P5_TOG_OUTPUT_TRG_Field :=
                            NRF_SVD.PMU.Output_Trg_16;
      --  unspecified
      Reserved_13_15     : HAL.UInt3 := 16#0#;
      --  Read-only. Status bit that signals when a brownout is detected on the
      --  regulator output.
      BO_VDD2P5          : Boolean := False;
      --  Read-only. Status bit that signals when the regulator output is ok. 1
      --  = regulator output > brownout target
      OK_VDD2P5          : Boolean := False;
      --  Enables the weak 2p5 regulator
      ENABLE_WEAK_LINREG : Boolean := False;
      --  unspecified
      Reserved_19_31     : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_2P5_TOG_Register use record
      ENABLE_LINREG      at 0 range 0 .. 0;
      ENABLE_BO          at 0 range 1 .. 1;
      ENABLE_ILIMIT      at 0 range 2 .. 2;
      ENABLE_PULLDOWN    at 0 range 3 .. 3;
      BO_OFFSET          at 0 range 4 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      OUTPUT_TRG         at 0 range 8 .. 12;
      Reserved_13_15     at 0 range 13 .. 15;
      BO_VDD2P5          at 0 range 16 .. 16;
      OK_VDD2P5          at 0 range 17 .. 17;
      ENABLE_WEAK_LINREG at 0 range 18 .. 18;
      Reserved_19_31     at 0 range 19 .. 31;
   end record;

   --  This field defines the target voltage for the ARM core power domain
   type REG_CORE_REG0_TARG_Field is
     (
      --  Power gated off
      Reg0_Targ_0,
      --  Target core voltage = 0.725V
      Reg0_Targ_1,
      --  Target core voltage = 0.750V
      Reg0_Targ_2,
      --  Target core voltage = 0.775V
      Reg0_Targ_3,
      --  Target core voltage = 1.100V
      Reg0_Targ_16,
      --  Reset value for the field
      Reg_Core_Reg0_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg0_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg0_Targ_31)
     with Size => 5;
   for REG_CORE_REG0_TARG_Field use
     (Reg0_Targ_0 => 0,
      Reg0_Targ_1 => 1,
      Reg0_Targ_2 => 2,
      Reg0_Targ_3 => 3,
      Reg0_Targ_16 => 16,
      Reg_Core_Reg0_Targ_Field_Reset => 18,
      Reg0_Targ_30 => 30,
      Reg0_Targ_31 => 31);

   --  This field defines the target voltage for the SOC power domain
   type REG_CORE_REG2_TARG_Field is
     (
      --  Power gated off
      Reg2_Targ_0,
      --  Target core voltage = 0.725V
      Reg2_Targ_1,
      --  Target core voltage = 0.750V
      Reg2_Targ_2,
      --  Target core voltage = 0.775V
      Reg2_Targ_3,
      --  Target core voltage = 1.100V
      Reg2_Targ_16,
      --  Reset value for the field
      Reg_Core_Reg2_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg2_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg2_Targ_31)
     with Size => 5;
   for REG_CORE_REG2_TARG_Field use
     (Reg2_Targ_0 => 0,
      Reg2_Targ_1 => 1,
      Reg2_Targ_2 => 2,
      Reg2_Targ_3 => 3,
      Reg2_Targ_16 => 16,
      Reg_Core_Reg2_Targ_Field_Reset => 18,
      Reg2_Targ_30 => 30,
      Reg2_Targ_31 => 31);

   --  Regulator voltage ramp rate.
   type REG_CORE_RAMP_RATE_Field is
     (
      --  Fast
      Ramp_Rate_0,
      --  Medium Fast
      Ramp_Rate_1,
      --  Medium Slow
      Ramp_Rate_2,
      --  Slow
      Ramp_Rate_3)
     with Size => 2;
   for REG_CORE_RAMP_RATE_Field use
     (Ramp_Rate_0 => 0,
      Ramp_Rate_1 => 1,
      Ramp_Rate_2 => 2,
      Ramp_Rate_3 => 3);

   --  Digital Regulator Core Register
   type PMU_REG_CORE_Register is record
      --  This field defines the target voltage for the ARM core power domain
      REG0_TARG      : REG_CORE_REG0_TARG_Field :=
                        Reg_Core_Reg0_Targ_Field_Reset;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#100#;
      --  This field defines the target voltage for the SOC power domain
      REG2_TARG      : REG_CORE_REG2_TARG_Field :=
                        Reg_Core_Reg2_Targ_Field_Reset;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#0#;
      --  Regulator voltage ramp rate.
      RAMP_RATE      : REG_CORE_RAMP_RATE_Field := NRF_SVD.PMU.Ramp_Rate_0;
      --  If set, increases the gate drive on power gating FETs to reduce
      --  leakage in the off state
      FET_ODRIVE     : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_CORE_Register use record
      REG0_TARG      at 0 range 0 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      REG2_TARG      at 0 range 18 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      RAMP_RATE      at 0 range 27 .. 28;
      FET_ODRIVE     at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  This field defines the target voltage for the ARM core power domain
   type REG_CORE_SET_REG0_TARG_Field is
     (
      --  Power gated off
      Reg0_Targ_0,
      --  Target core voltage = 0.725V
      Reg0_Targ_1,
      --  Target core voltage = 0.750V
      Reg0_Targ_2,
      --  Target core voltage = 0.775V
      Reg0_Targ_3,
      --  Target core voltage = 1.100V
      Reg0_Targ_16,
      --  Reset value for the field
      Reg_Core_Set_Reg0_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg0_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg0_Targ_31)
     with Size => 5;
   for REG_CORE_SET_REG0_TARG_Field use
     (Reg0_Targ_0 => 0,
      Reg0_Targ_1 => 1,
      Reg0_Targ_2 => 2,
      Reg0_Targ_3 => 3,
      Reg0_Targ_16 => 16,
      Reg_Core_Set_Reg0_Targ_Field_Reset => 18,
      Reg0_Targ_30 => 30,
      Reg0_Targ_31 => 31);

   --  This field defines the target voltage for the SOC power domain
   type REG_CORE_SET_REG2_TARG_Field is
     (
      --  Power gated off
      Reg2_Targ_0,
      --  Target core voltage = 0.725V
      Reg2_Targ_1,
      --  Target core voltage = 0.750V
      Reg2_Targ_2,
      --  Target core voltage = 0.775V
      Reg2_Targ_3,
      --  Target core voltage = 1.100V
      Reg2_Targ_16,
      --  Reset value for the field
      Reg_Core_Set_Reg2_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg2_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg2_Targ_31)
     with Size => 5;
   for REG_CORE_SET_REG2_TARG_Field use
     (Reg2_Targ_0 => 0,
      Reg2_Targ_1 => 1,
      Reg2_Targ_2 => 2,
      Reg2_Targ_3 => 3,
      Reg2_Targ_16 => 16,
      Reg_Core_Set_Reg2_Targ_Field_Reset => 18,
      Reg2_Targ_30 => 30,
      Reg2_Targ_31 => 31);

   --  Regulator voltage ramp rate.
   type REG_CORE_SET_RAMP_RATE_Field is
     (
      --  Fast
      Ramp_Rate_0,
      --  Medium Fast
      Ramp_Rate_1,
      --  Medium Slow
      Ramp_Rate_2,
      --  Slow
      Ramp_Rate_3)
     with Size => 2;
   for REG_CORE_SET_RAMP_RATE_Field use
     (Ramp_Rate_0 => 0,
      Ramp_Rate_1 => 1,
      Ramp_Rate_2 => 2,
      Ramp_Rate_3 => 3);

   --  Digital Regulator Core Register
   type PMU_REG_CORE_SET_Register is record
      --  This field defines the target voltage for the ARM core power domain
      REG0_TARG      : REG_CORE_SET_REG0_TARG_Field :=
                        Reg_Core_Set_Reg0_Targ_Field_Reset;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#100#;
      --  This field defines the target voltage for the SOC power domain
      REG2_TARG      : REG_CORE_SET_REG2_TARG_Field :=
                        Reg_Core_Set_Reg2_Targ_Field_Reset;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#0#;
      --  Regulator voltage ramp rate.
      RAMP_RATE      : REG_CORE_SET_RAMP_RATE_Field :=
                        NRF_SVD.PMU.Ramp_Rate_0;
      --  If set, increases the gate drive on power gating FETs to reduce
      --  leakage in the off state
      FET_ODRIVE     : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_CORE_SET_Register use record
      REG0_TARG      at 0 range 0 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      REG2_TARG      at 0 range 18 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      RAMP_RATE      at 0 range 27 .. 28;
      FET_ODRIVE     at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  This field defines the target voltage for the ARM core power domain
   type REG_CORE_CLR_REG0_TARG_Field is
     (
      --  Power gated off
      Reg0_Targ_0,
      --  Target core voltage = 0.725V
      Reg0_Targ_1,
      --  Target core voltage = 0.750V
      Reg0_Targ_2,
      --  Target core voltage = 0.775V
      Reg0_Targ_3,
      --  Target core voltage = 1.100V
      Reg0_Targ_16,
      --  Reset value for the field
      Reg_Core_Clr_Reg0_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg0_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg0_Targ_31)
     with Size => 5;
   for REG_CORE_CLR_REG0_TARG_Field use
     (Reg0_Targ_0 => 0,
      Reg0_Targ_1 => 1,
      Reg0_Targ_2 => 2,
      Reg0_Targ_3 => 3,
      Reg0_Targ_16 => 16,
      Reg_Core_Clr_Reg0_Targ_Field_Reset => 18,
      Reg0_Targ_30 => 30,
      Reg0_Targ_31 => 31);

   --  This field defines the target voltage for the SOC power domain
   type REG_CORE_CLR_REG2_TARG_Field is
     (
      --  Power gated off
      Reg2_Targ_0,
      --  Target core voltage = 0.725V
      Reg2_Targ_1,
      --  Target core voltage = 0.750V
      Reg2_Targ_2,
      --  Target core voltage = 0.775V
      Reg2_Targ_3,
      --  Target core voltage = 1.100V
      Reg2_Targ_16,
      --  Reset value for the field
      Reg_Core_Clr_Reg2_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg2_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg2_Targ_31)
     with Size => 5;
   for REG_CORE_CLR_REG2_TARG_Field use
     (Reg2_Targ_0 => 0,
      Reg2_Targ_1 => 1,
      Reg2_Targ_2 => 2,
      Reg2_Targ_3 => 3,
      Reg2_Targ_16 => 16,
      Reg_Core_Clr_Reg2_Targ_Field_Reset => 18,
      Reg2_Targ_30 => 30,
      Reg2_Targ_31 => 31);

   --  Regulator voltage ramp rate.
   type REG_CORE_CLR_RAMP_RATE_Field is
     (
      --  Fast
      Ramp_Rate_0,
      --  Medium Fast
      Ramp_Rate_1,
      --  Medium Slow
      Ramp_Rate_2,
      --  Slow
      Ramp_Rate_3)
     with Size => 2;
   for REG_CORE_CLR_RAMP_RATE_Field use
     (Ramp_Rate_0 => 0,
      Ramp_Rate_1 => 1,
      Ramp_Rate_2 => 2,
      Ramp_Rate_3 => 3);

   --  Digital Regulator Core Register
   type PMU_REG_CORE_CLR_Register is record
      --  This field defines the target voltage for the ARM core power domain
      REG0_TARG      : REG_CORE_CLR_REG0_TARG_Field :=
                        Reg_Core_Clr_Reg0_Targ_Field_Reset;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#100#;
      --  This field defines the target voltage for the SOC power domain
      REG2_TARG      : REG_CORE_CLR_REG2_TARG_Field :=
                        Reg_Core_Clr_Reg2_Targ_Field_Reset;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#0#;
      --  Regulator voltage ramp rate.
      RAMP_RATE      : REG_CORE_CLR_RAMP_RATE_Field :=
                        NRF_SVD.PMU.Ramp_Rate_0;
      --  If set, increases the gate drive on power gating FETs to reduce
      --  leakage in the off state
      FET_ODRIVE     : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_CORE_CLR_Register use record
      REG0_TARG      at 0 range 0 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      REG2_TARG      at 0 range 18 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      RAMP_RATE      at 0 range 27 .. 28;
      FET_ODRIVE     at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  This field defines the target voltage for the ARM core power domain
   type REG_CORE_TOG_REG0_TARG_Field is
     (
      --  Power gated off
      Reg0_Targ_0,
      --  Target core voltage = 0.725V
      Reg0_Targ_1,
      --  Target core voltage = 0.750V
      Reg0_Targ_2,
      --  Target core voltage = 0.775V
      Reg0_Targ_3,
      --  Target core voltage = 1.100V
      Reg0_Targ_16,
      --  Reset value for the field
      Reg_Core_Tog_Reg0_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg0_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg0_Targ_31)
     with Size => 5;
   for REG_CORE_TOG_REG0_TARG_Field use
     (Reg0_Targ_0 => 0,
      Reg0_Targ_1 => 1,
      Reg0_Targ_2 => 2,
      Reg0_Targ_3 => 3,
      Reg0_Targ_16 => 16,
      Reg_Core_Tog_Reg0_Targ_Field_Reset => 18,
      Reg0_Targ_30 => 30,
      Reg0_Targ_31 => 31);

   --  This field defines the target voltage for the SOC power domain
   type REG_CORE_TOG_REG2_TARG_Field is
     (
      --  Power gated off
      Reg2_Targ_0,
      --  Target core voltage = 0.725V
      Reg2_Targ_1,
      --  Target core voltage = 0.750V
      Reg2_Targ_2,
      --  Target core voltage = 0.775V
      Reg2_Targ_3,
      --  Target core voltage = 1.100V
      Reg2_Targ_16,
      --  Reset value for the field
      Reg_Core_Tog_Reg2_Targ_Field_Reset,
      --  Target core voltage = 1.450V
      Reg2_Targ_30,
      --  Power FET switched full on. No regulation.
      Reg2_Targ_31)
     with Size => 5;
   for REG_CORE_TOG_REG2_TARG_Field use
     (Reg2_Targ_0 => 0,
      Reg2_Targ_1 => 1,
      Reg2_Targ_2 => 2,
      Reg2_Targ_3 => 3,
      Reg2_Targ_16 => 16,
      Reg_Core_Tog_Reg2_Targ_Field_Reset => 18,
      Reg2_Targ_30 => 30,
      Reg2_Targ_31 => 31);

   --  Regulator voltage ramp rate.
   type REG_CORE_TOG_RAMP_RATE_Field is
     (
      --  Fast
      Ramp_Rate_0,
      --  Medium Fast
      Ramp_Rate_1,
      --  Medium Slow
      Ramp_Rate_2,
      --  Slow
      Ramp_Rate_3)
     with Size => 2;
   for REG_CORE_TOG_RAMP_RATE_Field use
     (Ramp_Rate_0 => 0,
      Ramp_Rate_1 => 1,
      Ramp_Rate_2 => 2,
      Ramp_Rate_3 => 3);

   --  Digital Regulator Core Register
   type PMU_REG_CORE_TOG_Register is record
      --  This field defines the target voltage for the ARM core power domain
      REG0_TARG      : REG_CORE_TOG_REG0_TARG_Field :=
                        Reg_Core_Tog_Reg0_Targ_Field_Reset;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#100#;
      --  This field defines the target voltage for the SOC power domain
      REG2_TARG      : REG_CORE_TOG_REG2_TARG_Field :=
                        Reg_Core_Tog_Reg2_Targ_Field_Reset;
      --  unspecified
      Reserved_23_26 : HAL.UInt4 := 16#0#;
      --  Regulator voltage ramp rate.
      RAMP_RATE      : REG_CORE_TOG_RAMP_RATE_Field :=
                        NRF_SVD.PMU.Ramp_Rate_0;
      --  If set, increases the gate drive on power gating FETs to reduce
      --  leakage in the off state
      FET_ODRIVE     : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_REG_CORE_TOG_Register use record
      REG0_TARG      at 0 range 0 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      REG2_TARG      at 0 range 18 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      RAMP_RATE      at 0 range 27 .. 28;
      FET_ODRIVE     at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  no description available
   type MISC0_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.
   type MISC0_STOP_MODE_CONFIG_Field is
     (
      --  SUSPEND (DSM)
      Stop_Mode_Config_0,
      --  Analog regulators are ON.
      Standby,
      --  STOP (lower power)
      Stop_Mode_Config_2,
      --  STOP (very lower power)
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Standby => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's.
   type MISC0_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type PMU_MISC0_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.PMU.Reftop_Selfbiasoff_0;
      --  no description available
      REFTOP_VBGADJ      : MISC0_REFTOP_VBGADJ_Field :=
                            NRF_SVD.PMU.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable.
      --  1 - Stable.
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.PMU.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.PMU.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_OSC_I_Field := NRF_SVD.PMU.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_CLKGATE_CTRL_Field :=
                            NRF_SVD.PMU.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_CLKGATE_DELAY_Field :=
                            NRF_SVD.PMU.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.PMU.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_VID_PLL_PREDIV_Field :=
                            NRF_SVD.PMU.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC0_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_SET_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_SET_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  no description available
   type MISC0_SET_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_SET_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.
   type MISC0_SET_STOP_MODE_CONFIG_Field is
     (
      --  SUSPEND (DSM)
      Stop_Mode_Config_0,
      --  Analog regulators are ON.
      Standby,
      --  STOP (lower power)
      Stop_Mode_Config_2,
      --  STOP (very lower power)
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_SET_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Standby => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_SET_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_SET_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_SET_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_SET_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_SET_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_SET_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_SET_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_SET_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_SET_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_SET_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's.
   type MISC0_SET_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_SET_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type PMU_MISC0_SET_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_SET_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.PMU.Reftop_Selfbiasoff_0;
      --  no description available
      REFTOP_VBGADJ      : MISC0_SET_REFTOP_VBGADJ_Field :=
                            NRF_SVD.PMU.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable.
      --  1 - Stable.
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_SET_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.PMU.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_SET_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.PMU.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_SET_OSC_I_Field := NRF_SVD.PMU.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_SET_CLKGATE_CTRL_Field :=
                            NRF_SVD.PMU.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_SET_CLKGATE_DELAY_Field :=
                            NRF_SVD.PMU.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_SET_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.PMU.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_SET_VID_PLL_PREDIV_Field :=
                            NRF_SVD.PMU.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC0_SET_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_CLR_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_CLR_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  no description available
   type MISC0_CLR_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_CLR_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.
   type MISC0_CLR_STOP_MODE_CONFIG_Field is
     (
      --  SUSPEND (DSM)
      Stop_Mode_Config_0,
      --  Analog regulators are ON.
      Standby,
      --  STOP (lower power)
      Stop_Mode_Config_2,
      --  STOP (very lower power)
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_CLR_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Standby => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_CLR_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_CLR_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_CLR_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_CLR_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_CLR_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_CLR_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_CLR_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_CLR_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_CLR_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_CLR_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's.
   type MISC0_CLR_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_CLR_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type PMU_MISC0_CLR_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_CLR_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.PMU.Reftop_Selfbiasoff_0;
      --  no description available
      REFTOP_VBGADJ      : MISC0_CLR_REFTOP_VBGADJ_Field :=
                            NRF_SVD.PMU.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable.
      --  1 - Stable.
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_CLR_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.PMU.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_CLR_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.PMU.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_CLR_OSC_I_Field := NRF_SVD.PMU.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_CLR_CLKGATE_CTRL_Field :=
                            NRF_SVD.PMU.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_CLR_CLKGATE_DELAY_Field :=
                            NRF_SVD.PMU.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_CLR_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.PMU.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_CLR_VID_PLL_PREDIV_Field :=
                            NRF_SVD.PMU.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC0_CLR_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  Control bit to disable the self-bias circuit in the analog bandgap
   type MISC0_TOG_REFTOP_SELFBIASOFF_Field is
     (
      --  Uses coarse bias currents for startup
      Reftop_Selfbiasoff_0,
      --  Uses bandgap-based bias currents for best performance.
      Reftop_Selfbiasoff_1)
     with Size => 1;
   for MISC0_TOG_REFTOP_SELFBIASOFF_Field use
     (Reftop_Selfbiasoff_0 => 0,
      Reftop_Selfbiasoff_1 => 1);

   --  no description available
   type MISC0_TOG_REFTOP_VBGADJ_Field is
     (
      --  Nominal VBG
      Reftop_Vbgadj_0,
      --  VBG+0.78%
      Reftop_Vbgadj_1,
      --  VBG+1.56%
      Reftop_Vbgadj_2,
      --  VBG+2.34%
      Reftop_Vbgadj_3,
      --  VBG-0.78%
      Reftop_Vbgadj_4,
      --  VBG-1.56%
      Reftop_Vbgadj_5,
      --  VBG-2.34%
      Reftop_Vbgadj_6,
      --  VBG-3.12%
      Reftop_Vbgadj_7)
     with Size => 3;
   for MISC0_TOG_REFTOP_VBGADJ_Field use
     (Reftop_Vbgadj_0 => 0,
      Reftop_Vbgadj_1 => 1,
      Reftop_Vbgadj_2 => 2,
      Reftop_Vbgadj_3 => 3,
      Reftop_Vbgadj_4 => 4,
      Reftop_Vbgadj_5 => 5,
      Reftop_Vbgadj_6 => 6,
      Reftop_Vbgadj_7 => 7);

   --  Configure the analog behavior in stop mode.
   type MISC0_TOG_STOP_MODE_CONFIG_Field is
     (
      --  SUSPEND (DSM)
      Stop_Mode_Config_0,
      --  Analog regulators are ON.
      Standby,
      --  STOP (lower power)
      Stop_Mode_Config_2,
      --  STOP (very lower power)
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_TOG_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Standby => 1,
      Stop_Mode_Config_2 => 2,
      Stop_Mode_Config_3 => 3);

   --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
   type MISC0_TOG_DISCON_HIGH_SNVS_Field is
     (
      --  Turn on the switch
      Discon_High_Snvs_0,
      --  Turn off the switch
      Discon_High_Snvs_1)
     with Size => 1;
   for MISC0_TOG_DISCON_HIGH_SNVS_Field use
     (Discon_High_Snvs_0 => 0,
      Discon_High_Snvs_1 => 1);

   --  This field determines the bias current in the 24MHz oscillator
   type MISC0_TOG_OSC_I_Field is
     (
      --  Nominal
      Nominal,
      --  Decrease current by 12.5%
      Minus_12_5_Percent,
      --  Decrease current by 25.0%
      Minus_25_Percent,
      --  Decrease current by 37.5%
      Minus_37_5_Percent)
     with Size => 2;
   for MISC0_TOG_OSC_I_Field use
     (Nominal => 0,
      Minus_12_5_Percent => 1,
      Minus_25_Percent => 2,
      Minus_37_5_Percent => 3);

   --  This bit allows disabling the clock gate (always ungated) for the xtal
   --  24MHz clock that clocks the digital logic in the analog block
   type MISC0_TOG_CLKGATE_CTRL_Field is
     (
      --  Allow the logic to automatically gate the clock when the XTAL is
      --  powered down.
      Allow_Auto_Gate,
      --  Prevent the logic from ever gating off the clock.
      No_Auto_Gate)
     with Size => 1;
   for MISC0_TOG_CLKGATE_CTRL_Field use
     (Allow_Auto_Gate => 0,
      No_Auto_Gate => 1);

   --  This field specifies the delay between powering up the XTAL 24MHz clock
   --  and releasing the clock to the digital logic inside the analog block
   type MISC0_TOG_CLKGATE_DELAY_Field is
     (
      --  0.5ms
      Clkgate_Delay_0,
      --  1.0ms
      Clkgate_Delay_1,
      --  2.0ms
      Clkgate_Delay_2,
      --  3.0ms
      Clkgate_Delay_3,
      --  4.0ms
      Clkgate_Delay_4,
      --  5.0ms
      Clkgate_Delay_5,
      --  6.0ms
      Clkgate_Delay_6,
      --  7.0ms
      Clkgate_Delay_7)
     with Size => 3;
   for MISC0_TOG_CLKGATE_DELAY_Field use
     (Clkgate_Delay_0 => 0,
      Clkgate_Delay_1 => 1,
      Clkgate_Delay_2 => 2,
      Clkgate_Delay_3 => 3,
      Clkgate_Delay_4 => 4,
      Clkgate_Delay_5 => 5,
      Clkgate_Delay_6 => 6,
      Clkgate_Delay_7 => 7);

   --  This field indicates which chip source is being used for the rtc clock.
   type MISC0_TOG_RTC_XTAL_SOURCE_Field is
     (
      --  Internal ring oscillator
      Rtc_Xtal_Source_0,
      --  RTC_XTAL
      Rtc_Xtal_Source_1)
     with Size => 1;
   for MISC0_TOG_RTC_XTAL_SOURCE_Field use
     (Rtc_Xtal_Source_0 => 0,
      Rtc_Xtal_Source_1 => 1);

   --  Predivider for the source clock of the PLL's.
   type MISC0_TOG_VID_PLL_PREDIV_Field is
     (
      --  Divide by 1
      Vid_Pll_Prediv_0,
      --  Divide by 2
      Vid_Pll_Prediv_1)
     with Size => 1;
   for MISC0_TOG_VID_PLL_PREDIV_Field use
     (Vid_Pll_Prediv_0 => 0,
      Vid_Pll_Prediv_1 => 1);

   --  Miscellaneous Register 0
   type PMU_MISC0_TOG_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_TOG_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.PMU.Reftop_Selfbiasoff_0;
      --  no description available
      REFTOP_VBGADJ      : MISC0_TOG_REFTOP_VBGADJ_Field :=
                            NRF_SVD.PMU.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable.
      --  1 - Stable.
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_TOG_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.PMU.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_TOG_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.PMU.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_TOG_OSC_I_Field := NRF_SVD.PMU.Nominal;
      --  Read-only. Status bit that signals that the output of the 24-MHz
      --  crystal oscillator is stable
      OSC_XTALOK         : Boolean := False;
      --  This bit enables the detector that signals when the 24MHz crystal
      --  oscillator is stable
      OSC_XTALOK_EN      : Boolean := False;
      --  unspecified
      Reserved_17_24     : HAL.UInt8 := 16#0#;
      --  This bit allows disabling the clock gate (always ungated) for the
      --  xtal 24MHz clock that clocks the digital logic in the analog block
      CLKGATE_CTRL       : MISC0_TOG_CLKGATE_CTRL_Field :=
                            NRF_SVD.PMU.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_TOG_CLKGATE_DELAY_Field :=
                            NRF_SVD.PMU.Clkgate_Delay_1;
      --  Read-only. This field indicates which chip source is being used for
      --  the rtc clock.
      RTC_XTAL_SOURCE    : MISC0_TOG_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.PMU.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true.
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_TOG_VID_PLL_PREDIV_Field :=
                            NRF_SVD.PMU.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC0_TOG_Register use record
      REFTOP_PWD         at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      REFTOP_SELFBIASOFF at 0 range 3 .. 3;
      REFTOP_VBGADJ      at 0 range 4 .. 6;
      REFTOP_VBGUP       at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      STOP_MODE_CONFIG   at 0 range 10 .. 11;
      DISCON_HIGH_SNVS   at 0 range 12 .. 12;
      OSC_I              at 0 range 13 .. 14;
      OSC_XTALOK         at 0 range 15 .. 15;
      OSC_XTALOK_EN      at 0 range 16 .. 16;
      Reserved_17_24     at 0 range 17 .. 24;
      CLKGATE_CTRL       at 0 range 25 .. 25;
      CLKGATE_DELAY      at 0 range 26 .. 28;
      RTC_XTAL_SOURCE    at 0 range 29 .. 29;
      XTAL_24M_PWD       at 0 range 30 .. 30;
      VID_PLL_PREDIV     at 0 range 31 .. 31;
   end record;

   --  This field selects the clk to be routed to anaclk1/1b.Not related to
   --  PMU.
   type MISC1_LVDS1_CLK_SEL_Field is
     (
      --  Arm PLL
      Arm_Pll,
      --  System PLL
      Sys_Pll,
      --  ref_pfd4_clk == pll2_pfd0_clk
      Pfd4,
      --  ref_pfd5_clk == pll2_pfd1_clk
      Pfd5,
      --  ref_pfd6_clk == pll2_pfd2_clk
      Pfd6,
      --  ref_pfd7_clk == pll2_pfd3_clk
      Pfd7,
      --  Audio PLL
      Audio_Pll,
      --  Video PLL
      Video_Pll,
      --  ethernet ref clock (ENET_PLL)
      Ethernet_Ref,
      --  USB1 PLL clock
      Usb1_Pll,
      --  USB2 PLL clock
      Usb2_Pll,
      --  ref_pfd0_clk == pll3_pfd0_clk
      Pfd0,
      --  ref_pfd1_clk == pll3_pfd1_clk
      Pfd1,
      --  ref_pfd2_clk == pll3_pfd2_clk
      Pfd2,
      --  ref_pfd3_clk == pll3_pfd3_clk
      Pfd3,
      --  xtal (24M)
      Xtal)
     with Size => 5;
   for MISC1_LVDS1_CLK_SEL_Field use
     (Arm_Pll => 0,
      Sys_Pll => 1,
      Pfd4 => 2,
      Pfd5 => 3,
      Pfd6 => 4,
      Pfd7 => 5,
      Audio_Pll => 6,
      Video_Pll => 7,
      Ethernet_Ref => 9,
      Usb1_Pll => 12,
      Usb2_Pll => 13,
      Pfd0 => 14,
      Pfd1 => 15,
      Pfd2 => 16,
      Pfd3 => 17,
      Xtal => 18);

   --  Miscellaneous Register 1
   type PMU_MISC1_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.Not related to
      --  PMU.
      LVDS1_CLK_SEL       : MISC1_LVDS1_CLK_SEL_Field := NRF_SVD.PMU.Arm_Pll;
      --  unspecified
      Reserved_5_9        : HAL.UInt5 := 16#0#;
      --  This enables the LVDS output buffer for anaclk1/1b
      LVDSCLK1_OBEN       : Boolean := False;
      --  unspecified
      Reserved_11_11      : HAL.Bit := 16#0#;
      --  This enables the LVDS input buffer for anaclk1/1b
      LVDSCLK1_IBEN       : Boolean := False;
      --  unspecified
      Reserved_13_15      : HAL.UInt3 := 16#0#;
      --  This enables a feature that will clkgate (reset) all PFD_480 clocks
      --  anytime the USB1_PLL_480 is unlocked or powered off
      PFD_480_AUTOGATE_EN : Boolean := False;
      --  This enables a feature that will clkgate (reset) all PFD_528 clocks
      --  anytime the PLL_528 is unlocked or powered off
      PFD_528_AUTOGATE_EN : Boolean := False;
      --  unspecified
      Reserved_18_26      : HAL.UInt9 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor panic interrupt asserts for a panic high temperature
      IRQ_TEMPPANIC       : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor low interrupt asserts for low temperature
      IRQ_TEMPLOW         : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor high interrupt asserts for high temperature
      IRQ_TEMPHIGH        : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  analog regulator brownout interrupts assert
      IRQ_ANA_BO          : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  digital regulator brownout interrupts assert
      IRQ_DIG_BO          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC1_Register use record
      LVDS1_CLK_SEL       at 0 range 0 .. 4;
      Reserved_5_9        at 0 range 5 .. 9;
      LVDSCLK1_OBEN       at 0 range 10 .. 10;
      Reserved_11_11      at 0 range 11 .. 11;
      LVDSCLK1_IBEN       at 0 range 12 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      PFD_480_AUTOGATE_EN at 0 range 16 .. 16;
      PFD_528_AUTOGATE_EN at 0 range 17 .. 17;
      Reserved_18_26      at 0 range 18 .. 26;
      IRQ_TEMPPANIC       at 0 range 27 .. 27;
      IRQ_TEMPLOW         at 0 range 28 .. 28;
      IRQ_TEMPHIGH        at 0 range 29 .. 29;
      IRQ_ANA_BO          at 0 range 30 .. 30;
      IRQ_DIG_BO          at 0 range 31 .. 31;
   end record;

   --  This field selects the clk to be routed to anaclk1/1b.Not related to
   --  PMU.
   type MISC1_SET_LVDS1_CLK_SEL_Field is
     (
      --  Arm PLL
      Arm_Pll,
      --  System PLL
      Sys_Pll,
      --  ref_pfd4_clk == pll2_pfd0_clk
      Pfd4,
      --  ref_pfd5_clk == pll2_pfd1_clk
      Pfd5,
      --  ref_pfd6_clk == pll2_pfd2_clk
      Pfd6,
      --  ref_pfd7_clk == pll2_pfd3_clk
      Pfd7,
      --  Audio PLL
      Audio_Pll,
      --  Video PLL
      Video_Pll,
      --  ethernet ref clock (ENET_PLL)
      Ethernet_Ref,
      --  USB1 PLL clock
      Usb1_Pll,
      --  USB2 PLL clock
      Usb2_Pll,
      --  ref_pfd0_clk == pll3_pfd0_clk
      Pfd0,
      --  ref_pfd1_clk == pll3_pfd1_clk
      Pfd1,
      --  ref_pfd2_clk == pll3_pfd2_clk
      Pfd2,
      --  ref_pfd3_clk == pll3_pfd3_clk
      Pfd3,
      --  xtal (24M)
      Xtal)
     with Size => 5;
   for MISC1_SET_LVDS1_CLK_SEL_Field use
     (Arm_Pll => 0,
      Sys_Pll => 1,
      Pfd4 => 2,
      Pfd5 => 3,
      Pfd6 => 4,
      Pfd7 => 5,
      Audio_Pll => 6,
      Video_Pll => 7,
      Ethernet_Ref => 9,
      Usb1_Pll => 12,
      Usb2_Pll => 13,
      Pfd0 => 14,
      Pfd1 => 15,
      Pfd2 => 16,
      Pfd3 => 17,
      Xtal => 18);

   --  Miscellaneous Register 1
   type PMU_MISC1_SET_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.Not related to
      --  PMU.
      LVDS1_CLK_SEL       : MISC1_SET_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.PMU.Arm_Pll;
      --  unspecified
      Reserved_5_9        : HAL.UInt5 := 16#0#;
      --  This enables the LVDS output buffer for anaclk1/1b
      LVDSCLK1_OBEN       : Boolean := False;
      --  unspecified
      Reserved_11_11      : HAL.Bit := 16#0#;
      --  This enables the LVDS input buffer for anaclk1/1b
      LVDSCLK1_IBEN       : Boolean := False;
      --  unspecified
      Reserved_13_15      : HAL.UInt3 := 16#0#;
      --  This enables a feature that will clkgate (reset) all PFD_480 clocks
      --  anytime the USB1_PLL_480 is unlocked or powered off
      PFD_480_AUTOGATE_EN : Boolean := False;
      --  This enables a feature that will clkgate (reset) all PFD_528 clocks
      --  anytime the PLL_528 is unlocked or powered off
      PFD_528_AUTOGATE_EN : Boolean := False;
      --  unspecified
      Reserved_18_26      : HAL.UInt9 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor panic interrupt asserts for a panic high temperature
      IRQ_TEMPPANIC       : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor low interrupt asserts for low temperature
      IRQ_TEMPLOW         : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor high interrupt asserts for high temperature
      IRQ_TEMPHIGH        : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  analog regulator brownout interrupts assert
      IRQ_ANA_BO          : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  digital regulator brownout interrupts assert
      IRQ_DIG_BO          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC1_SET_Register use record
      LVDS1_CLK_SEL       at 0 range 0 .. 4;
      Reserved_5_9        at 0 range 5 .. 9;
      LVDSCLK1_OBEN       at 0 range 10 .. 10;
      Reserved_11_11      at 0 range 11 .. 11;
      LVDSCLK1_IBEN       at 0 range 12 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      PFD_480_AUTOGATE_EN at 0 range 16 .. 16;
      PFD_528_AUTOGATE_EN at 0 range 17 .. 17;
      Reserved_18_26      at 0 range 18 .. 26;
      IRQ_TEMPPANIC       at 0 range 27 .. 27;
      IRQ_TEMPLOW         at 0 range 28 .. 28;
      IRQ_TEMPHIGH        at 0 range 29 .. 29;
      IRQ_ANA_BO          at 0 range 30 .. 30;
      IRQ_DIG_BO          at 0 range 31 .. 31;
   end record;

   --  This field selects the clk to be routed to anaclk1/1b.Not related to
   --  PMU.
   type MISC1_CLR_LVDS1_CLK_SEL_Field is
     (
      --  Arm PLL
      Arm_Pll,
      --  System PLL
      Sys_Pll,
      --  ref_pfd4_clk == pll2_pfd0_clk
      Pfd4,
      --  ref_pfd5_clk == pll2_pfd1_clk
      Pfd5,
      --  ref_pfd6_clk == pll2_pfd2_clk
      Pfd6,
      --  ref_pfd7_clk == pll2_pfd3_clk
      Pfd7,
      --  Audio PLL
      Audio_Pll,
      --  Video PLL
      Video_Pll,
      --  ethernet ref clock (ENET_PLL)
      Ethernet_Ref,
      --  USB1 PLL clock
      Usb1_Pll,
      --  USB2 PLL clock
      Usb2_Pll,
      --  ref_pfd0_clk == pll3_pfd0_clk
      Pfd0,
      --  ref_pfd1_clk == pll3_pfd1_clk
      Pfd1,
      --  ref_pfd2_clk == pll3_pfd2_clk
      Pfd2,
      --  ref_pfd3_clk == pll3_pfd3_clk
      Pfd3,
      --  xtal (24M)
      Xtal)
     with Size => 5;
   for MISC1_CLR_LVDS1_CLK_SEL_Field use
     (Arm_Pll => 0,
      Sys_Pll => 1,
      Pfd4 => 2,
      Pfd5 => 3,
      Pfd6 => 4,
      Pfd7 => 5,
      Audio_Pll => 6,
      Video_Pll => 7,
      Ethernet_Ref => 9,
      Usb1_Pll => 12,
      Usb2_Pll => 13,
      Pfd0 => 14,
      Pfd1 => 15,
      Pfd2 => 16,
      Pfd3 => 17,
      Xtal => 18);

   --  Miscellaneous Register 1
   type PMU_MISC1_CLR_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.Not related to
      --  PMU.
      LVDS1_CLK_SEL       : MISC1_CLR_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.PMU.Arm_Pll;
      --  unspecified
      Reserved_5_9        : HAL.UInt5 := 16#0#;
      --  This enables the LVDS output buffer for anaclk1/1b
      LVDSCLK1_OBEN       : Boolean := False;
      --  unspecified
      Reserved_11_11      : HAL.Bit := 16#0#;
      --  This enables the LVDS input buffer for anaclk1/1b
      LVDSCLK1_IBEN       : Boolean := False;
      --  unspecified
      Reserved_13_15      : HAL.UInt3 := 16#0#;
      --  This enables a feature that will clkgate (reset) all PFD_480 clocks
      --  anytime the USB1_PLL_480 is unlocked or powered off
      PFD_480_AUTOGATE_EN : Boolean := False;
      --  This enables a feature that will clkgate (reset) all PFD_528 clocks
      --  anytime the PLL_528 is unlocked or powered off
      PFD_528_AUTOGATE_EN : Boolean := False;
      --  unspecified
      Reserved_18_26      : HAL.UInt9 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor panic interrupt asserts for a panic high temperature
      IRQ_TEMPPANIC       : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor low interrupt asserts for low temperature
      IRQ_TEMPLOW         : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor high interrupt asserts for high temperature
      IRQ_TEMPHIGH        : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  analog regulator brownout interrupts assert
      IRQ_ANA_BO          : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  digital regulator brownout interrupts assert
      IRQ_DIG_BO          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC1_CLR_Register use record
      LVDS1_CLK_SEL       at 0 range 0 .. 4;
      Reserved_5_9        at 0 range 5 .. 9;
      LVDSCLK1_OBEN       at 0 range 10 .. 10;
      Reserved_11_11      at 0 range 11 .. 11;
      LVDSCLK1_IBEN       at 0 range 12 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      PFD_480_AUTOGATE_EN at 0 range 16 .. 16;
      PFD_528_AUTOGATE_EN at 0 range 17 .. 17;
      Reserved_18_26      at 0 range 18 .. 26;
      IRQ_TEMPPANIC       at 0 range 27 .. 27;
      IRQ_TEMPLOW         at 0 range 28 .. 28;
      IRQ_TEMPHIGH        at 0 range 29 .. 29;
      IRQ_ANA_BO          at 0 range 30 .. 30;
      IRQ_DIG_BO          at 0 range 31 .. 31;
   end record;

   --  This field selects the clk to be routed to anaclk1/1b.Not related to
   --  PMU.
   type MISC1_TOG_LVDS1_CLK_SEL_Field is
     (
      --  Arm PLL
      Arm_Pll,
      --  System PLL
      Sys_Pll,
      --  ref_pfd4_clk == pll2_pfd0_clk
      Pfd4,
      --  ref_pfd5_clk == pll2_pfd1_clk
      Pfd5,
      --  ref_pfd6_clk == pll2_pfd2_clk
      Pfd6,
      --  ref_pfd7_clk == pll2_pfd3_clk
      Pfd7,
      --  Audio PLL
      Audio_Pll,
      --  Video PLL
      Video_Pll,
      --  ethernet ref clock (ENET_PLL)
      Ethernet_Ref,
      --  USB1 PLL clock
      Usb1_Pll,
      --  USB2 PLL clock
      Usb2_Pll,
      --  ref_pfd0_clk == pll3_pfd0_clk
      Pfd0,
      --  ref_pfd1_clk == pll3_pfd1_clk
      Pfd1,
      --  ref_pfd2_clk == pll3_pfd2_clk
      Pfd2,
      --  ref_pfd3_clk == pll3_pfd3_clk
      Pfd3,
      --  xtal (24M)
      Xtal)
     with Size => 5;
   for MISC1_TOG_LVDS1_CLK_SEL_Field use
     (Arm_Pll => 0,
      Sys_Pll => 1,
      Pfd4 => 2,
      Pfd5 => 3,
      Pfd6 => 4,
      Pfd7 => 5,
      Audio_Pll => 6,
      Video_Pll => 7,
      Ethernet_Ref => 9,
      Usb1_Pll => 12,
      Usb2_Pll => 13,
      Pfd0 => 14,
      Pfd1 => 15,
      Pfd2 => 16,
      Pfd3 => 17,
      Xtal => 18);

   --  Miscellaneous Register 1
   type PMU_MISC1_TOG_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.Not related to
      --  PMU.
      LVDS1_CLK_SEL       : MISC1_TOG_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.PMU.Arm_Pll;
      --  unspecified
      Reserved_5_9        : HAL.UInt5 := 16#0#;
      --  This enables the LVDS output buffer for anaclk1/1b
      LVDSCLK1_OBEN       : Boolean := False;
      --  unspecified
      Reserved_11_11      : HAL.Bit := 16#0#;
      --  This enables the LVDS input buffer for anaclk1/1b
      LVDSCLK1_IBEN       : Boolean := False;
      --  unspecified
      Reserved_13_15      : HAL.UInt3 := 16#0#;
      --  This enables a feature that will clkgate (reset) all PFD_480 clocks
      --  anytime the USB1_PLL_480 is unlocked or powered off
      PFD_480_AUTOGATE_EN : Boolean := False;
      --  This enables a feature that will clkgate (reset) all PFD_528 clocks
      --  anytime the PLL_528 is unlocked or powered off
      PFD_528_AUTOGATE_EN : Boolean := False;
      --  unspecified
      Reserved_18_26      : HAL.UInt9 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor panic interrupt asserts for a panic high temperature
      IRQ_TEMPPANIC       : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor low interrupt asserts for low temperature
      IRQ_TEMPLOW         : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when the temperature
      --  sensor high interrupt asserts for high temperature
      IRQ_TEMPHIGH        : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  analog regulator brownout interrupts assert
      IRQ_ANA_BO          : Boolean := False;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. This status bit is set to one when when any of the
      --  digital regulator brownout interrupts assert
      IRQ_DIG_BO          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC1_TOG_Register use record
      LVDS1_CLK_SEL       at 0 range 0 .. 4;
      Reserved_5_9        at 0 range 5 .. 9;
      LVDSCLK1_OBEN       at 0 range 10 .. 10;
      Reserved_11_11      at 0 range 11 .. 11;
      LVDSCLK1_IBEN       at 0 range 12 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      PFD_480_AUTOGATE_EN at 0 range 16 .. 16;
      PFD_528_AUTOGATE_EN at 0 range 17 .. 17;
      Reserved_18_26      at 0 range 18 .. 26;
      IRQ_TEMPPANIC       at 0 range 27 .. 27;
      IRQ_TEMPLOW         at 0 range 28 .. 28;
      IRQ_TEMPHIGH        at 0 range 29 .. 29;
      IRQ_ANA_BO          at 0 range 30 .. 30;
      IRQ_DIG_BO          at 0 range 31 .. 31;
   end record;

   --  This field defines the brown out voltage offset for the CORE power
   --  domain
   type MISC2_REG0_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg0_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg0_Bo_Offset_7)
     with Size => 3;
   for MISC2_REG0_BO_OFFSET_Field use
     (Reg0_Bo_Offset_4 => 4,
      Reg0_Bo_Offset_7 => 7);

   --  Reg0 brownout status bit.
   type MISC2_REG0_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Reg0_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg0_Bo_Status_1)
     with Size => 1;
   for MISC2_REG0_BO_STATUS_Field use
     (Misc2_Reg0_Bo_Status_Field_Reset => 0,
      Reg0_Bo_Status_1 => 1);

   --  LSB of Post-divider for Audio PLL
   type MISC2_AUDIO_DIV_LSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Lsb_0,
      --  divide by 2
      Audio_Div_Lsb_1)
     with Size => 1;
   for MISC2_AUDIO_DIV_LSB_Field use
     (Audio_Div_Lsb_0 => 0,
      Audio_Div_Lsb_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_REG2_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg2_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg2_Bo_Offset_7)
     with Size => 3;
   for MISC2_REG2_BO_OFFSET_Field use
     (Reg2_Bo_Offset_4 => 4,
      Reg2_Bo_Offset_7 => 7);

   --  MSB of Post-divider for Audio PLL
   type MISC2_AUDIO_DIV_MSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Msb_0,
      --  divide by 2
      Audio_Div_Msb_1)
     with Size => 1;
   for MISC2_AUDIO_DIV_MSB_Field use
     (Audio_Div_Msb_0 => 0,
      Audio_Div_Msb_1 => 1);

   --  Number of clock periods (24MHz clock).
   type MISC2_REG0_STEP_TIME_Field is
     (
      --  64
      MISC2_REG0_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_REG0_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_REG0_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_REG0_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_REG0_STEP_TIME_Field use
     (MISC2_REG0_STEP_TIME_Field_64_Clocks => 0,
      MISC2_REG0_STEP_TIME_Field_128_Clocks => 1,
      MISC2_REG0_STEP_TIME_Field_256_Clocks => 2,
      MISC2_REG0_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).
   type MISC2_REG2_STEP_TIME_Field is
     (
      --  64
      MISC2_REG2_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_REG2_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_REG2_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_REG2_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_REG2_STEP_TIME_Field use
     (MISC2_REG2_STEP_TIME_Field_64_Clocks => 0,
      MISC2_REG2_STEP_TIME_Field_128_Clocks => 1,
      MISC2_REG2_STEP_TIME_Field_256_Clocks => 2,
      MISC2_REG2_STEP_TIME_Field_512_Clocks => 3);

   --  Post-divider for video
   type MISC2_VIDEO_DIV_Field is
     (
      --  divide by 1 (Default)
      Video_Div_0,
      --  divide by 2
      Video_Div_1,
      --  divide by 1
      Video_Div_2,
      --  divide by 4
      Video_Div_3)
     with Size => 2;
   for MISC2_VIDEO_DIV_Field use
     (Video_Div_0 => 0,
      Video_Div_1 => 1,
      Video_Div_2 => 2,
      Video_Div_3 => 3);

   --  Miscellaneous Control Register
   type PMU_MISC2_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_REG0_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.
      REG0_BO_STATUS : MISC2_REG0_BO_STATUS_Field :=
                        Misc2_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG0_ENABLE_BO : Boolean := True;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Default value of "0"
      PLL3_disable   : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#27#;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_REG2_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).
      REG0_STEP_TIME : MISC2_REG0_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_REG0_STEP_TIME_Field_64_Clocks;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Number of clock periods (24MHz clock).
      REG2_STEP_TIME : MISC2_REG2_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_VIDEO_DIV_Field := NRF_SVD.PMU.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC2_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      REG2_STEP_TIME at 0 range 28 .. 29;
      VIDEO_DIV      at 0 range 30 .. 31;
   end record;

   --  This field defines the brown out voltage offset for the CORE power
   --  domain
   type MISC2_SET_REG0_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg0_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg0_Bo_Offset_7)
     with Size => 3;
   for MISC2_SET_REG0_BO_OFFSET_Field use
     (Reg0_Bo_Offset_4 => 4,
      Reg0_Bo_Offset_7 => 7);

   --  Reg0 brownout status bit.
   type MISC2_SET_REG0_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Set_Reg0_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg0_Bo_Status_1)
     with Size => 1;
   for MISC2_SET_REG0_BO_STATUS_Field use
     (Misc2_Set_Reg0_Bo_Status_Field_Reset => 0,
      Reg0_Bo_Status_1 => 1);

   --  LSB of Post-divider for Audio PLL
   type MISC2_SET_AUDIO_DIV_LSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Lsb_0,
      --  divide by 2
      Audio_Div_Lsb_1)
     with Size => 1;
   for MISC2_SET_AUDIO_DIV_LSB_Field use
     (Audio_Div_Lsb_0 => 0,
      Audio_Div_Lsb_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_SET_REG2_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg2_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg2_Bo_Offset_7)
     with Size => 3;
   for MISC2_SET_REG2_BO_OFFSET_Field use
     (Reg2_Bo_Offset_4 => 4,
      Reg2_Bo_Offset_7 => 7);

   --  MSB of Post-divider for Audio PLL
   type MISC2_SET_AUDIO_DIV_MSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Msb_0,
      --  divide by 2
      Audio_Div_Msb_1)
     with Size => 1;
   for MISC2_SET_AUDIO_DIV_MSB_Field use
     (Audio_Div_Msb_0 => 0,
      Audio_Div_Msb_1 => 1);

   --  Number of clock periods (24MHz clock).
   type MISC2_SET_REG0_STEP_TIME_Field is
     (
      --  64
      MISC2_SET_REG0_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_SET_REG0_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_SET_REG0_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_SET_REG0_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_SET_REG0_STEP_TIME_Field use
     (MISC2_SET_REG0_STEP_TIME_Field_64_Clocks => 0,
      MISC2_SET_REG0_STEP_TIME_Field_128_Clocks => 1,
      MISC2_SET_REG0_STEP_TIME_Field_256_Clocks => 2,
      MISC2_SET_REG0_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).
   type MISC2_SET_REG2_STEP_TIME_Field is
     (
      --  64
      MISC2_SET_REG2_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_SET_REG2_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_SET_REG2_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_SET_REG2_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_SET_REG2_STEP_TIME_Field use
     (MISC2_SET_REG2_STEP_TIME_Field_64_Clocks => 0,
      MISC2_SET_REG2_STEP_TIME_Field_128_Clocks => 1,
      MISC2_SET_REG2_STEP_TIME_Field_256_Clocks => 2,
      MISC2_SET_REG2_STEP_TIME_Field_512_Clocks => 3);

   --  Post-divider for video
   type MISC2_SET_VIDEO_DIV_Field is
     (
      --  divide by 1 (Default)
      Video_Div_0,
      --  divide by 2
      Video_Div_1,
      --  divide by 1
      Video_Div_2,
      --  divide by 4
      Video_Div_3)
     with Size => 2;
   for MISC2_SET_VIDEO_DIV_Field use
     (Video_Div_0 => 0,
      Video_Div_1 => 1,
      Video_Div_2 => 2,
      Video_Div_3 => 3);

   --  Miscellaneous Control Register
   type PMU_MISC2_SET_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_SET_REG0_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.
      REG0_BO_STATUS : MISC2_SET_REG0_BO_STATUS_Field :=
                        Misc2_Set_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG0_ENABLE_BO : Boolean := True;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Default value of "0"
      PLL3_disable   : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#27#;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_SET_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_SET_REG2_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_SET_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).
      REG0_STEP_TIME : MISC2_SET_REG0_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_SET_REG0_STEP_TIME_Field_64_Clocks;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Number of clock periods (24MHz clock).
      REG2_STEP_TIME : MISC2_SET_REG2_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_SET_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_SET_VIDEO_DIV_Field := NRF_SVD.PMU.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC2_SET_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      REG2_STEP_TIME at 0 range 28 .. 29;
      VIDEO_DIV      at 0 range 30 .. 31;
   end record;

   --  This field defines the brown out voltage offset for the CORE power
   --  domain
   type MISC2_CLR_REG0_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg0_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg0_Bo_Offset_7)
     with Size => 3;
   for MISC2_CLR_REG0_BO_OFFSET_Field use
     (Reg0_Bo_Offset_4 => 4,
      Reg0_Bo_Offset_7 => 7);

   --  Reg0 brownout status bit.
   type MISC2_CLR_REG0_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Clr_Reg0_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg0_Bo_Status_1)
     with Size => 1;
   for MISC2_CLR_REG0_BO_STATUS_Field use
     (Misc2_Clr_Reg0_Bo_Status_Field_Reset => 0,
      Reg0_Bo_Status_1 => 1);

   --  LSB of Post-divider for Audio PLL
   type MISC2_CLR_AUDIO_DIV_LSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Lsb_0,
      --  divide by 2
      Audio_Div_Lsb_1)
     with Size => 1;
   for MISC2_CLR_AUDIO_DIV_LSB_Field use
     (Audio_Div_Lsb_0 => 0,
      Audio_Div_Lsb_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_CLR_REG2_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg2_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg2_Bo_Offset_7)
     with Size => 3;
   for MISC2_CLR_REG2_BO_OFFSET_Field use
     (Reg2_Bo_Offset_4 => 4,
      Reg2_Bo_Offset_7 => 7);

   --  MSB of Post-divider for Audio PLL
   type MISC2_CLR_AUDIO_DIV_MSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Msb_0,
      --  divide by 2
      Audio_Div_Msb_1)
     with Size => 1;
   for MISC2_CLR_AUDIO_DIV_MSB_Field use
     (Audio_Div_Msb_0 => 0,
      Audio_Div_Msb_1 => 1);

   --  Number of clock periods (24MHz clock).
   type MISC2_CLR_REG0_STEP_TIME_Field is
     (
      --  64
      MISC2_CLR_REG0_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_CLR_REG0_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_CLR_REG0_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_CLR_REG0_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_CLR_REG0_STEP_TIME_Field use
     (MISC2_CLR_REG0_STEP_TIME_Field_64_Clocks => 0,
      MISC2_CLR_REG0_STEP_TIME_Field_128_Clocks => 1,
      MISC2_CLR_REG0_STEP_TIME_Field_256_Clocks => 2,
      MISC2_CLR_REG0_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).
   type MISC2_CLR_REG2_STEP_TIME_Field is
     (
      --  64
      MISC2_CLR_REG2_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_CLR_REG2_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_CLR_REG2_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_CLR_REG2_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_CLR_REG2_STEP_TIME_Field use
     (MISC2_CLR_REG2_STEP_TIME_Field_64_Clocks => 0,
      MISC2_CLR_REG2_STEP_TIME_Field_128_Clocks => 1,
      MISC2_CLR_REG2_STEP_TIME_Field_256_Clocks => 2,
      MISC2_CLR_REG2_STEP_TIME_Field_512_Clocks => 3);

   --  Post-divider for video
   type MISC2_CLR_VIDEO_DIV_Field is
     (
      --  divide by 1 (Default)
      Video_Div_0,
      --  divide by 2
      Video_Div_1,
      --  divide by 1
      Video_Div_2,
      --  divide by 4
      Video_Div_3)
     with Size => 2;
   for MISC2_CLR_VIDEO_DIV_Field use
     (Video_Div_0 => 0,
      Video_Div_1 => 1,
      Video_Div_2 => 2,
      Video_Div_3 => 3);

   --  Miscellaneous Control Register
   type PMU_MISC2_CLR_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_CLR_REG0_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.
      REG0_BO_STATUS : MISC2_CLR_REG0_BO_STATUS_Field :=
                        Misc2_Clr_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG0_ENABLE_BO : Boolean := True;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Default value of "0"
      PLL3_disable   : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#27#;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_CLR_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_CLR_REG2_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_CLR_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).
      REG0_STEP_TIME : MISC2_CLR_REG0_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_CLR_REG0_STEP_TIME_Field_64_Clocks;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Number of clock periods (24MHz clock).
      REG2_STEP_TIME : MISC2_CLR_REG2_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_CLR_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_CLR_VIDEO_DIV_Field := NRF_SVD.PMU.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC2_CLR_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      REG2_STEP_TIME at 0 range 28 .. 29;
      VIDEO_DIV      at 0 range 30 .. 31;
   end record;

   --  This field defines the brown out voltage offset for the CORE power
   --  domain
   type MISC2_TOG_REG0_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg0_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg0_Bo_Offset_7)
     with Size => 3;
   for MISC2_TOG_REG0_BO_OFFSET_Field use
     (Reg0_Bo_Offset_4 => 4,
      Reg0_Bo_Offset_7 => 7);

   --  Reg0 brownout status bit.
   type MISC2_TOG_REG0_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Tog_Reg0_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg0_Bo_Status_1)
     with Size => 1;
   for MISC2_TOG_REG0_BO_STATUS_Field use
     (Misc2_Tog_Reg0_Bo_Status_Field_Reset => 0,
      Reg0_Bo_Status_1 => 1);

   --  LSB of Post-divider for Audio PLL
   type MISC2_TOG_AUDIO_DIV_LSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Lsb_0,
      --  divide by 2
      Audio_Div_Lsb_1)
     with Size => 1;
   for MISC2_TOG_AUDIO_DIV_LSB_Field use
     (Audio_Div_Lsb_0 => 0,
      Audio_Div_Lsb_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_TOG_REG2_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg2_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg2_Bo_Offset_7)
     with Size => 3;
   for MISC2_TOG_REG2_BO_OFFSET_Field use
     (Reg2_Bo_Offset_4 => 4,
      Reg2_Bo_Offset_7 => 7);

   --  MSB of Post-divider for Audio PLL
   type MISC2_TOG_AUDIO_DIV_MSB_Field is
     (
      --  divide by 1 (Default)
      Audio_Div_Msb_0,
      --  divide by 2
      Audio_Div_Msb_1)
     with Size => 1;
   for MISC2_TOG_AUDIO_DIV_MSB_Field use
     (Audio_Div_Msb_0 => 0,
      Audio_Div_Msb_1 => 1);

   --  Number of clock periods (24MHz clock).
   type MISC2_TOG_REG0_STEP_TIME_Field is
     (
      --  64
      MISC2_TOG_REG0_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_TOG_REG0_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_TOG_REG0_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_TOG_REG0_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_TOG_REG0_STEP_TIME_Field use
     (MISC2_TOG_REG0_STEP_TIME_Field_64_Clocks => 0,
      MISC2_TOG_REG0_STEP_TIME_Field_128_Clocks => 1,
      MISC2_TOG_REG0_STEP_TIME_Field_256_Clocks => 2,
      MISC2_TOG_REG0_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).
   type MISC2_TOG_REG2_STEP_TIME_Field is
     (
      --  64
      MISC2_TOG_REG2_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_TOG_REG2_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_TOG_REG2_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_TOG_REG2_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_TOG_REG2_STEP_TIME_Field use
     (MISC2_TOG_REG2_STEP_TIME_Field_64_Clocks => 0,
      MISC2_TOG_REG2_STEP_TIME_Field_128_Clocks => 1,
      MISC2_TOG_REG2_STEP_TIME_Field_256_Clocks => 2,
      MISC2_TOG_REG2_STEP_TIME_Field_512_Clocks => 3);

   --  Post-divider for video
   type MISC2_TOG_VIDEO_DIV_Field is
     (
      --  divide by 1 (Default)
      Video_Div_0,
      --  divide by 2
      Video_Div_1,
      --  divide by 1
      Video_Div_2,
      --  divide by 4
      Video_Div_3)
     with Size => 2;
   for MISC2_TOG_VIDEO_DIV_Field use
     (Video_Div_0 => 0,
      Video_Div_1 => 1,
      Video_Div_2 => 2,
      Video_Div_3 => 3);

   --  Miscellaneous Control Register
   type PMU_MISC2_TOG_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_TOG_REG0_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.
      REG0_BO_STATUS : MISC2_TOG_REG0_BO_STATUS_Field :=
                        Misc2_Tog_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG0_ENABLE_BO : Boolean := True;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Default value of "0"
      PLL3_disable   : Boolean := False;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#27#;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_TOG_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_TOG_REG2_BO_OFFSET_Field :=
                        NRF_SVD.PMU.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_TOG_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.PMU.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).
      REG0_STEP_TIME : MISC2_TOG_REG0_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_TOG_REG0_STEP_TIME_Field_64_Clocks;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Number of clock periods (24MHz clock).
      REG2_STEP_TIME : MISC2_TOG_REG2_STEP_TIME_Field :=
                        NRF_SVD.PMU.MISC2_TOG_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_TOG_VIDEO_DIV_Field := NRF_SVD.PMU.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PMU_MISC2_TOG_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      REG2_STEP_TIME at 0 range 28 .. 29;
      VIDEO_DIV      at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PMU
   type PMU_Peripheral is record
      --  Regulator 1P1 Register
      REG_1P1      : aliased PMU_REG_1P1_Register;
      --  Regulator 1P1 Register
      REG_1P1_SET  : aliased PMU_REG_1P1_SET_Register;
      --  Regulator 1P1 Register
      REG_1P1_CLR  : aliased PMU_REG_1P1_CLR_Register;
      --  Regulator 1P1 Register
      REG_1P1_TOG  : aliased PMU_REG_1P1_TOG_Register;
      --  Regulator 3P0 Register
      REG_3P0      : aliased PMU_REG_3P0_Register;
      --  Regulator 3P0 Register
      REG_3P0_SET  : aliased PMU_REG_3P0_SET_Register;
      --  Regulator 3P0 Register
      REG_3P0_CLR  : aliased PMU_REG_3P0_CLR_Register;
      --  Regulator 3P0 Register
      REG_3P0_TOG  : aliased PMU_REG_3P0_TOG_Register;
      --  Regulator 2P5 Register
      REG_2P5      : aliased PMU_REG_2P5_Register;
      --  Regulator 2P5 Register
      REG_2P5_SET  : aliased PMU_REG_2P5_SET_Register;
      --  Regulator 2P5 Register
      REG_2P5_CLR  : aliased PMU_REG_2P5_CLR_Register;
      --  Regulator 2P5 Register
      REG_2P5_TOG  : aliased PMU_REG_2P5_TOG_Register;
      --  Digital Regulator Core Register
      REG_CORE     : aliased PMU_REG_CORE_Register;
      --  Digital Regulator Core Register
      REG_CORE_SET : aliased PMU_REG_CORE_SET_Register;
      --  Digital Regulator Core Register
      REG_CORE_CLR : aliased PMU_REG_CORE_CLR_Register;
      --  Digital Regulator Core Register
      REG_CORE_TOG : aliased PMU_REG_CORE_TOG_Register;
      --  Miscellaneous Register 0
      MISC0        : aliased PMU_MISC0_Register;
      --  Miscellaneous Register 0
      MISC0_SET    : aliased PMU_MISC0_SET_Register;
      --  Miscellaneous Register 0
      MISC0_CLR    : aliased PMU_MISC0_CLR_Register;
      --  Miscellaneous Register 0
      MISC0_TOG    : aliased PMU_MISC0_TOG_Register;
      --  Miscellaneous Register 1
      MISC1        : aliased PMU_MISC1_Register;
      --  Miscellaneous Register 1
      MISC1_SET    : aliased PMU_MISC1_SET_Register;
      --  Miscellaneous Register 1
      MISC1_CLR    : aliased PMU_MISC1_CLR_Register;
      --  Miscellaneous Register 1
      MISC1_TOG    : aliased PMU_MISC1_TOG_Register;
      --  Miscellaneous Control Register
      MISC2        : aliased PMU_MISC2_Register;
      --  Miscellaneous Control Register
      MISC2_SET    : aliased PMU_MISC2_SET_Register;
      --  Miscellaneous Control Register
      MISC2_CLR    : aliased PMU_MISC2_CLR_Register;
      --  Miscellaneous Control Register
      MISC2_TOG    : aliased PMU_MISC2_TOG_Register;
   end record
     with Volatile;

   for PMU_Peripheral use record
      REG_1P1      at 16#110# range 0 .. 31;
      REG_1P1_SET  at 16#114# range 0 .. 31;
      REG_1P1_CLR  at 16#118# range 0 .. 31;
      REG_1P1_TOG  at 16#11C# range 0 .. 31;
      REG_3P0      at 16#120# range 0 .. 31;
      REG_3P0_SET  at 16#124# range 0 .. 31;
      REG_3P0_CLR  at 16#128# range 0 .. 31;
      REG_3P0_TOG  at 16#12C# range 0 .. 31;
      REG_2P5      at 16#130# range 0 .. 31;
      REG_2P5_SET  at 16#134# range 0 .. 31;
      REG_2P5_CLR  at 16#138# range 0 .. 31;
      REG_2P5_TOG  at 16#13C# range 0 .. 31;
      REG_CORE     at 16#140# range 0 .. 31;
      REG_CORE_SET at 16#144# range 0 .. 31;
      REG_CORE_CLR at 16#148# range 0 .. 31;
      REG_CORE_TOG at 16#14C# range 0 .. 31;
      MISC0        at 16#150# range 0 .. 31;
      MISC0_SET    at 16#154# range 0 .. 31;
      MISC0_CLR    at 16#158# range 0 .. 31;
      MISC0_TOG    at 16#15C# range 0 .. 31;
      MISC1        at 16#160# range 0 .. 31;
      MISC1_SET    at 16#164# range 0 .. 31;
      MISC1_CLR    at 16#168# range 0 .. 31;
      MISC1_TOG    at 16#16C# range 0 .. 31;
      MISC2        at 16#170# range 0 .. 31;
      MISC2_SET    at 16#174# range 0 .. 31;
      MISC2_CLR    at 16#178# range 0 .. 31;
      MISC2_TOG    at 16#17C# range 0 .. 31;
   end record;

   --  PMU
   PMU_Periph : aliased PMU_Peripheral
     with Import, Address => System'To_Address (16#400D8000#);

end NRF_SVD.PMU;
