--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Auto Measure
   type BASIC_SETTING_AUTO_MEASURE_Field is
     (
      --  Disable Auto Measure
      Auto_Measure_0,
      --  Auto Measure
      Auto_Measure_1)
     with Size => 1;
   for BASIC_SETTING_AUTO_MEASURE_Field use
     (Auto_Measure_0 => 0,
      Auto_Measure_1 => 1);

   --  4/5 Wire detection
   type BASIC_SETTING_4_5_WIRE_Field is
     (
      --  4-Wire Detection Mode
      BASIC_SETTING_4_5_WIRE_Field_4_5_Wire_0,
      --  5-Wire Detection Mode
      BASIC_SETTING_4_5_WIRE_Field_4_5_Wire_1)
     with Size => 1;
   for BASIC_SETTING_4_5_WIRE_Field use
     (BASIC_SETTING_4_5_WIRE_Field_4_5_Wire_0 => 0,
      BASIC_SETTING_4_5_WIRE_Field_4_5_Wire_1 => 1);

   subtype TSC_BASIC_SETTING_MEASURE_DELAY_TIME_Field is HAL.UInt24;

   --  PS Input Buffer Address
   type TSC_BASIC_SETTING_Register is record
      --  Auto Measure
      AUTO_MEASURE                        : BASIC_SETTING_AUTO_MEASURE_Field :=
                                             NRF_SVD.TSC.Auto_Measure_0;
      --  unspecified
      Reserved_1_3                        : HAL.UInt3 := 16#0#;
      --  4/5 Wire detection
      TSC_BASIC_SETTING_Register_4_5_WIRE : BASIC_SETTING_4_5_WIRE_Field :=
                                             NRF_SVD.TSC.BASIC_SETTING_4_5_WIRE_Field_4_5_Wire_0;
      --  unspecified
      Reserved_5_7                        : HAL.UInt3 := 16#0#;
      --  Measure Delay Time
      MEASURE_DELAY_TIME                  : TSC_BASIC_SETTING_MEASURE_DELAY_TIME_Field :=
                                             16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_BASIC_SETTING_Register use record
      AUTO_MEASURE                        at 0 range 0 .. 0;
      Reserved_1_3                        at 0 range 1 .. 3;
      TSC_BASIC_SETTING_Register_4_5_WIRE at 0 range 4 .. 4;
      Reserved_5_7                        at 0 range 5 .. 7;
      MEASURE_DELAY_TIME                  at 0 range 8 .. 31;
   end record;

   --  Start Measure
   type FLOW_CONTROL_START_MEASURE_Field is
     (
      --  Do not start measure for now
      Start_Measure_0,
      --  Start measure the X/Y coordinate value
      Start_Measure_1)
     with Size => 1;
   for FLOW_CONTROL_START_MEASURE_Field use
     (Start_Measure_0 => 0,
      Start_Measure_1 => 1);

   --  Drop Measure
   type FLOW_CONTROL_DROP_MEASURE_Field is
     (
      --  Do not drop measure for now
      Drop_Measure_0,
      --  Drop the measure and controller return to idle status
      Drop_Measure_1)
     with Size => 1;
   for FLOW_CONTROL_DROP_MEASURE_Field use
     (Drop_Measure_0 => 0,
      Drop_Measure_1 => 1);

   --  Start Sense
   type FLOW_CONTROL_START_SENSE_Field is
     (
      --  Stay at idle status
      Start_Sense_0,
      --  Start sense detection and (if auto_measure set to 1) measure after
      --  detect a touch
      Start_Sense_1)
     with Size => 1;
   for FLOW_CONTROL_START_SENSE_Field use
     (Start_Sense_0 => 0,
      Start_Sense_1 => 1);

   --  This bit is for SW disable registers
   type FLOW_CONTROL_DISABLE_Field is
     (
      --  Leave HW state machine control
      Disable_0,
      --  SW set to idle status
      Disable_1)
     with Size => 1;
   for FLOW_CONTROL_DISABLE_Field use
     (Disable_0 => 0,
      Disable_1 => 1);

   --  Flow Control
   type TSC_FLOW_CONTROL_Register is record
      --  Soft Reset
      SW_RST         : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Start Measure
      START_MEASURE  : FLOW_CONTROL_START_MEASURE_Field :=
                        NRF_SVD.TSC.Start_Measure_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Drop Measure
      DROP_MEASURE   : FLOW_CONTROL_DROP_MEASURE_Field :=
                        NRF_SVD.TSC.Drop_Measure_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Start Sense
      START_SENSE    : FLOW_CONTROL_START_SENSE_Field :=
                        NRF_SVD.TSC.Start_Sense_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  This bit is for SW disable registers
      DISABLE        : FLOW_CONTROL_DISABLE_Field := NRF_SVD.TSC.Disable_0;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_FLOW_CONTROL_Register use record
      SW_RST         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      START_MEASURE  at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DROP_MEASURE   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      START_SENSE    at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DISABLE        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TSC_MEASEURE_VALUE_Y_VALUE_Field is HAL.UInt12;
   subtype TSC_MEASEURE_VALUE_X_VALUE_Field is HAL.UInt12;

   --  Measure Value
   type TSC_MEASEURE_VALUE_Register is record
      --  Read-only. Y Value
      Y_VALUE        : TSC_MEASEURE_VALUE_Y_VALUE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. X Value
      X_VALUE        : TSC_MEASEURE_VALUE_X_VALUE_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_MEASEURE_VALUE_Register use record
      Y_VALUE        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      X_VALUE        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Measure Interrupt Enable
   type INT_EN_MEASURE_INT_EN_Field is
     (
      --  Disable measure
      Measure_Int_En_0)
     with Size => 1;
   for INT_EN_MEASURE_INT_EN_Field use
     (Measure_Int_En_0 => 0);

   --  Detect Interrupt Enable
   type INT_EN_DETECT_INT_EN_Field is
     (
      --  Disable detect interrupt
      Detect_Int_En_0,
      --  Enable detect interrupt
      Detect_Int_En_1)
     with Size => 1;
   for INT_EN_DETECT_INT_EN_Field use
     (Detect_Int_En_0 => 0,
      Detect_Int_En_1 => 1);

   --  Idle Software Interrupt Enable
   type INT_EN_IDLE_SW_INT_EN_Field is
     (
      --  Disable idle software interrupt
      Idle_Sw_Int_En_0,
      --  Enable idle software interrupt
      Idle_Sw_Int_En_1)
     with Size => 1;
   for INT_EN_IDLE_SW_INT_EN_Field use
     (Idle_Sw_Int_En_0 => 0,
      Idle_Sw_Int_En_1 => 1);

   --  Interrupt Enable
   type TSC_INT_EN_Register is record
      --  Measure Interrupt Enable
      MEASURE_INT_EN : INT_EN_MEASURE_INT_EN_Field :=
                        NRF_SVD.TSC.Measure_Int_En_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Detect Interrupt Enable
      DETECT_INT_EN  : INT_EN_DETECT_INT_EN_Field :=
                        NRF_SVD.TSC.Detect_Int_En_0;
      --  unspecified
      Reserved_5_11  : HAL.UInt7 := 16#0#;
      --  Idle Software Interrupt Enable
      IDLE_SW_INT_EN : INT_EN_IDLE_SW_INT_EN_Field :=
                        NRF_SVD.TSC.Idle_Sw_Int_En_0;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_INT_EN_Register use record
      MEASURE_INT_EN at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DETECT_INT_EN  at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      IDLE_SW_INT_EN at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Detect Signal Enable
   type INT_SIG_EN_DETECT_SIG_EN_Field is
     (
      --  Disable detect signal
      Detect_Sig_En_0,
      --  Enable detect signal
      Detect_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_DETECT_SIG_EN_Field use
     (Detect_Sig_En_0 => 0,
      Detect_Sig_En_1 => 1);

   --  Valid Signal Enable
   type INT_SIG_EN_VALID_SIG_EN_Field is
     (
      --  Disable valid signal
      Valid_Sig_En_0,
      --  Enable valid signal
      Valid_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_VALID_SIG_EN_Field use
     (Valid_Sig_En_0 => 0,
      Valid_Sig_En_1 => 1);

   --  Idle Software Signal Enable
   type INT_SIG_EN_IDLE_SW_SIG_EN_Field is
     (
      --  Disable idle software signal
      Idle_Sw_Sig_En_0,
      --  Enable idle software signal
      Idle_Sw_Sig_En_1)
     with Size => 1;
   for INT_SIG_EN_IDLE_SW_SIG_EN_Field use
     (Idle_Sw_Sig_En_0 => 0,
      Idle_Sw_Sig_En_1 => 1);

   --  Interrupt Signal Enable
   type TSC_INT_SIG_EN_Register is record
      --  Measure Signal Enable
      MEASURE_SIG_EN : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Detect Signal Enable
      DETECT_SIG_EN  : INT_SIG_EN_DETECT_SIG_EN_Field :=
                        NRF_SVD.TSC.Detect_Sig_En_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Valid Signal Enable
      VALID_SIG_EN   : INT_SIG_EN_VALID_SIG_EN_Field :=
                        NRF_SVD.TSC.Valid_Sig_En_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Idle Software Signal Enable
      IDLE_SW_SIG_EN : INT_SIG_EN_IDLE_SW_SIG_EN_Field :=
                        NRF_SVD.TSC.Idle_Sw_Sig_En_0;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_INT_SIG_EN_Register use record
      MEASURE_SIG_EN at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DETECT_SIG_EN  at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VALID_SIG_EN   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      IDLE_SW_SIG_EN at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Measure Signal
   type INT_STATUS_MEASURE_Field is
     (
      --  Does not exist a measure signal
      Measure_0,
      --  Exist a measure signal
      Measure_1)
     with Size => 1;
   for INT_STATUS_MEASURE_Field use
     (Measure_0 => 0,
      Measure_1 => 1);

   --  Detect Signal
   type INT_STATUS_DETECT_Field is
     (
      --  Does not exist a detect signal
      Detect_0,
      --  Exist detect signal
      Detect_1)
     with Size => 1;
   for INT_STATUS_DETECT_Field use
     (Detect_0 => 0,
      Detect_1 => 1);

   --  Valid Signal
   type INT_STATUS_VALID_Field is
     (
      --  There is no touch detected after measurement, indicates that the
      --  measured value is not valid
      Valid_0,
      --  There is touch detection after measurement, indicates that the
      --  measure is valid
      Valid_1)
     with Size => 1;
   for INT_STATUS_VALID_Field use
     (Valid_0 => 0,
      Valid_1 => 1);

   --  Idle Software
   type INT_STATUS_IDLE_SW_Field is
     (
      --  Haven't return to idle status
      Idle_Sw_0,
      --  Already return to idle status
      Idle_Sw_1)
     with Size => 1;
   for INT_STATUS_IDLE_SW_Field use
     (Idle_Sw_0 => 0,
      Idle_Sw_1 => 1);

   --  Intterrupt Status
   type TSC_INT_STATUS_Register is record
      --  Measure Signal
      MEASURE        : INT_STATUS_MEASURE_Field := NRF_SVD.TSC.Measure_0;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Detect Signal
      DETECT         : INT_STATUS_DETECT_Field := NRF_SVD.TSC.Detect_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Valid Signal
      VALID          : INT_STATUS_VALID_Field := NRF_SVD.TSC.Valid_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Idle Software
      IDLE_SW        : INT_STATUS_IDLE_SW_Field := NRF_SVD.TSC.Idle_Sw_0;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_INT_STATUS_Register use record
      MEASURE        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DETECT         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VALID          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      IDLE_SW        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype TSC_DEBUG_MODE_ADC_CONV_VALUE_Field is HAL.UInt12;
   subtype TSC_DEBUG_MODE_EXT_HWTS_Field is HAL.UInt5;

   --  Trigger
   type DEBUG_MODE_TRIGGER_Field is
     (
      --  No hardware trigger signal
      Trigger_0,
      --  Hardware trigger signal, the signal must last at least 1 ips clock
      --  period
      Trigger_1)
     with Size => 1;
   for DEBUG_MODE_TRIGGER_Field use
     (Trigger_0 => 0,
      Trigger_1 => 1);

   --  ADC Coco Clear
   type DEBUG_MODE_ADC_COCO_CLEAR_Field is
     (
      --  No ADC COCO clear
      Adc_Coco_Clear_0,
      --  Set ADC COCO clear
      Adc_Coco_Clear_1)
     with Size => 1;
   for DEBUG_MODE_ADC_COCO_CLEAR_Field use
     (Adc_Coco_Clear_0 => 0,
      Adc_Coco_Clear_1 => 1);

   --  ADC COCO Clear Disable
   type DEBUG_MODE_ADC_COCO_CLEAR_DISABLE_Field is
     (
      --  Allow TSC hardware generates ADC COCO clear
      Adc_Coco_Clear_Disable_0,
      --  Prevent TSC from generate ADC COCO clear signal
      Adc_Coco_Clear_Disable_1)
     with Size => 1;
   for DEBUG_MODE_ADC_COCO_CLEAR_DISABLE_Field use
     (Adc_Coco_Clear_Disable_0 => 0,
      Adc_Coco_Clear_Disable_1 => 1);

   --  Debug Enable
   type DEBUG_MODE_DEBUG_EN_Field is
     (
      --  Enable debug mode
      Debug_En_0,
      --  Disable debug mode
      Debug_En_1)
     with Size => 1;
   for DEBUG_MODE_DEBUG_EN_Field use
     (Debug_En_0 => 0,
      Debug_En_1 => 1);

   --  no description available
   type TSC_DEBUG_MODE_Register is record
      --  Read-only. ADC Conversion Value
      ADC_CONV_VALUE         : TSC_DEBUG_MODE_ADC_CONV_VALUE_Field := 16#0#;
      --  Read-only. ADC COCO Signal
      ADC_COCO               : Boolean := False;
      --  unspecified
      Reserved_13_15         : HAL.UInt3 := 16#0#;
      --  Hardware Trigger Select Signal
      EXT_HWTS               : TSC_DEBUG_MODE_EXT_HWTS_Field := 16#0#;
      --  unspecified
      Reserved_21_23         : HAL.UInt3 := 16#0#;
      --  Trigger
      TRIGGER                : DEBUG_MODE_TRIGGER_Field :=
                                NRF_SVD.TSC.Trigger_0;
      --  ADC Coco Clear
      ADC_COCO_CLEAR         : DEBUG_MODE_ADC_COCO_CLEAR_Field :=
                                NRF_SVD.TSC.Adc_Coco_Clear_0;
      --  ADC COCO Clear Disable
      ADC_COCO_CLEAR_DISABLE : DEBUG_MODE_ADC_COCO_CLEAR_DISABLE_Field :=
                                NRF_SVD.TSC.Adc_Coco_Clear_Disable_0;
      --  unspecified
      Reserved_27_27         : HAL.Bit := 16#0#;
      --  Debug Enable
      DEBUG_EN               : DEBUG_MODE_DEBUG_EN_Field :=
                                NRF_SVD.TSC.Debug_En_0;
      --  unspecified
      Reserved_29_31         : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_DEBUG_MODE_Register use record
      ADC_CONV_VALUE         at 0 range 0 .. 11;
      ADC_COCO               at 0 range 12 .. 12;
      Reserved_13_15         at 0 range 13 .. 15;
      EXT_HWTS               at 0 range 16 .. 20;
      Reserved_21_23         at 0 range 21 .. 23;
      TRIGGER                at 0 range 24 .. 24;
      ADC_COCO_CLEAR         at 0 range 25 .. 25;
      ADC_COCO_CLEAR_DISABLE at 0 range 26 .. 26;
      Reserved_27_27         at 0 range 27 .. 27;
      DEBUG_EN               at 0 range 28 .. 28;
      Reserved_29_31         at 0 range 29 .. 31;
   end record;

   --  XPUL Wire Pull Down Switch
   type DEBUG_MODE2_XPUL_PULL_DOWN_Field is
     (
      --  Close the switch
      Xpul_Pull_Down_0,
      --  Open up the switch
      Xpul_Pull_Down_1)
     with Size => 1;
   for DEBUG_MODE2_XPUL_PULL_DOWN_Field use
     (Xpul_Pull_Down_0 => 0,
      Xpul_Pull_Down_1 => 1);

   --  XPUL Wire Pull Up Switch
   type DEBUG_MODE2_XPUL_PULL_UP_Field is
     (
      --  Close the switch
      Xpul_Pull_Up_0,
      --  Open up the switch
      Xpul_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_XPUL_PULL_UP_Field use
     (Xpul_Pull_Up_0 => 0,
      Xpul_Pull_Up_1 => 1);

   --  XPUL Wire 200K Pull Up Switch
   type DEBUG_MODE2_XPUL_200K_PULL_UP_Field is
     (
      --  Close the switch
      Xpul_200K_Pull_Up_0,
      --  Open up the switch
      Xpul_200K_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_XPUL_200K_PULL_UP_Field use
     (Xpul_200K_Pull_Up_0 => 0,
      Xpul_200K_Pull_Up_1 => 1);

   --  XNUR Wire Pull Down Switch
   type DEBUG_MODE2_XNUR_PULL_DOWN_Field is
     (
      --  Close the switch
      Xnur_Pull_Down_0,
      --  Open up the switch
      Xnur_Pull_Down_1)
     with Size => 1;
   for DEBUG_MODE2_XNUR_PULL_DOWN_Field use
     (Xnur_Pull_Down_0 => 0,
      Xnur_Pull_Down_1 => 1);

   --  XNUR Wire Pull Up Switch
   type DEBUG_MODE2_XNUR_PULL_UP_Field is
     (
      --  Close the switch
      Xnur_Pull_Up_0,
      --  Open up the switch
      Xnur_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_XNUR_PULL_UP_Field use
     (Xnur_Pull_Up_0 => 0,
      Xnur_Pull_Up_1 => 1);

   --  XNUR Wire 200K Pull Up Switch
   type DEBUG_MODE2_XNUR_200K_PULL_UP_Field is
     (
      --  Close the switch
      Xnur_200K_Pull_Up_0,
      --  Open up the switch
      Xnur_200K_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_XNUR_200K_PULL_UP_Field use
     (Xnur_200K_Pull_Up_0 => 0,
      Xnur_200K_Pull_Up_1 => 1);

   --  YPLL Wire Pull Down Switch
   type DEBUG_MODE2_YPLL_PULL_DOWN_Field is
     (
      --  Close the switch
      Ypll_Pull_Down_0,
      --  Open up the switch
      Ypll_Pull_Down_1)
     with Size => 1;
   for DEBUG_MODE2_YPLL_PULL_DOWN_Field use
     (Ypll_Pull_Down_0 => 0,
      Ypll_Pull_Down_1 => 1);

   --  YPLL Wire Pull Up Switch
   type DEBUG_MODE2_YPLL_PULL_UP_Field is
     (
      --  Close the switch
      Ypll_Pull_Up_0,
      --  Open the switch
      Ypll_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_YPLL_PULL_UP_Field use
     (Ypll_Pull_Up_0 => 0,
      Ypll_Pull_Up_1 => 1);

   --  YPLL Wire 200K Pull Up Switch
   type DEBUG_MODE2_YPLL_200K_PULL_UP_Field is
     (
      --  Close the switch
      Ypll_200K_Pull_Up_0,
      --  Open up the switch
      Ypll_200K_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_YPLL_200K_PULL_UP_Field use
     (Ypll_200K_Pull_Up_0 => 0,
      Ypll_200K_Pull_Up_1 => 1);

   --  YNLR Wire Pull Down Switch
   type DEBUG_MODE2_YNLR_PULL_DOWN_Field is
     (
      --  Close the switch
      Ynlr_Pull_Down_0,
      --  Open up the switch
      Ynlr_Pull_Down_1)
     with Size => 1;
   for DEBUG_MODE2_YNLR_PULL_DOWN_Field use
     (Ynlr_Pull_Down_0 => 0,
      Ynlr_Pull_Down_1 => 1);

   --  YNLR Wire Pull Up Switch
   type DEBUG_MODE2_YNLR_PULL_UP_Field is
     (
      --  Close the switch
      Ynlr_Pull_Up_0,
      --  Open up the switch
      Ynlr_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_YNLR_PULL_UP_Field use
     (Ynlr_Pull_Up_0 => 0,
      Ynlr_Pull_Up_1 => 1);

   --  YNLR Wire 200K Pull Up Switch
   type DEBUG_MODE2_YNLR_200K_PULL_UP_Field is
     (
      --  Close the switch
      Ynlr_200K_Pull_Up_0,
      --  Open up the switch
      Ynlr_200K_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_YNLR_200K_PULL_UP_Field use
     (Ynlr_200K_Pull_Up_0 => 0,
      Ynlr_200K_Pull_Up_1 => 1);

   --  Wiper Wire Pull Down Switch
   type DEBUG_MODE2_WIPER_PULL_DOWN_Field is
     (
      --  Close the switch
      Wiper_Pull_Down_0,
      --  Open up the switch
      Wiper_Pull_Down_1)
     with Size => 1;
   for DEBUG_MODE2_WIPER_PULL_DOWN_Field use
     (Wiper_Pull_Down_0 => 0,
      Wiper_Pull_Down_1 => 1);

   --  Wiper Wire Pull Up Switch
   type DEBUG_MODE2_WIPER_PULL_UP_Field is
     (
      --  Close the switch
      Wiper_Pull_Up_0,
      --  Open up the switch
      Wiper_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_WIPER_PULL_UP_Field use
     (Wiper_Pull_Up_0 => 0,
      Wiper_Pull_Up_1 => 1);

   --  Wiper Wire 200K Pull Up Switch
   type DEBUG_MODE2_WIPER_200K_PULL_UP_Field is
     (
      --  Close the switch
      Wiper_200K_Pull_Up_0,
      --  Open up the switch
      Wiper_200K_Pull_Up_1)
     with Size => 1;
   for DEBUG_MODE2_WIPER_200K_PULL_UP_Field use
     (Wiper_200K_Pull_Up_0 => 0,
      Wiper_200K_Pull_Up_1 => 1);

   --  Detect Four Wire
   type DEBUG_MODE2_DETECT_FOUR_WIRE_Field is
     (
      --  No detect signal
      Detect_Four_Wire_0,
      --  Yes, there is a detect on the touch screen.
      Detect_Four_Wire_1)
     with Size => 1;
   for DEBUG_MODE2_DETECT_FOUR_WIRE_Field use
     (Detect_Four_Wire_0 => 0,
      Detect_Four_Wire_1 => 1);

   --  Detect Five Wire
   type DEBUG_MODE2_DETECT_FIVE_WIRE_Field is
     (
      --  No detect signal
      Detect_Five_Wire_0,
      --  Yes, there is a detect on the touch screen.
      Detect_Five_Wire_1)
     with Size => 1;
   for DEBUG_MODE2_DETECT_FIVE_WIRE_Field use
     (Detect_Five_Wire_0 => 0,
      Detect_Five_Wire_1 => 1);

   --  State Machine
   type DEBUG_MODE2_STATE_MACHINE_Field is
     (
      --  Idle
      State_Machine_0,
      --  Pre-charge
      State_Machine_1,
      --  Detect
      State_Machine_2,
      --  X-measure
      State_Machine_3,
      --  Y-measure
      State_Machine_4,
      --  Pre-charge
      State_Machine_5,
      --  Detect
      State_Machine_6)
     with Size => 3;
   for DEBUG_MODE2_STATE_MACHINE_Field use
     (State_Machine_0 => 0,
      State_Machine_1 => 1,
      State_Machine_2 => 2,
      State_Machine_3 => 3,
      State_Machine_4 => 4,
      State_Machine_5 => 5,
      State_Machine_6 => 6);

   --  Intermediate State
   type DEBUG_MODE2_INTERMEDIATE_Field is
     (
      --  Not in intermedia
      Intermediate_0,
      --  Intermedia
      Intermediate_1)
     with Size => 1;
   for DEBUG_MODE2_INTERMEDIATE_Field use
     (Intermediate_0 => 0,
      Intermediate_1 => 1);

   --  Detect Enable Four Wire
   type DEBUG_MODE2_DETECT_ENABLE_FOUR_WIRE_Field is
     (
      --  Do not read four wire detect value, read default value from analogue
      Detect_Enable_Four_Wire_0,
      --  Read four wire detect status from analogue
      Detect_Enable_Four_Wire_1)
     with Size => 1;
   for DEBUG_MODE2_DETECT_ENABLE_FOUR_WIRE_Field use
     (Detect_Enable_Four_Wire_0 => 0,
      Detect_Enable_Four_Wire_1 => 1);

   --  Detect Enable Five Wire
   type DEBUG_MODE2_DETECT_ENABLE_FIVE_WIRE_Field is
     (
      --  Do not read five wire detect value, read default value from analogue
      Detect_Enable_Five_Wire_0,
      --  Read five wire detect status from analogue
      Detect_Enable_Five_Wire_1)
     with Size => 1;
   for DEBUG_MODE2_DETECT_ENABLE_FIVE_WIRE_Field use
     (Detect_Enable_Five_Wire_0 => 0,
      Detect_Enable_Five_Wire_1 => 1);

   --  This field indicates glitch threshold
   type DEBUG_MODE2_DE_GLITCH_Field is
     (
      --  Normal function: 0x1fff ipg clock cycles; Low power mode: 0x9 low
      --  power clock cycles
      De_Glitch_0,
      --  Normal function: 0xfff ipg clock cycles; Low power mode: :0x7 low
      --  power clock cycles
      De_Glitch_1,
      --  Normal function: 0x7ff ipg clock cycles; Low power mode:0x5 low power
      --  clock cycles
      De_Glitch_2,
      --  Normal function: 0x3 ipg clock cycles; Low power mode:0x3 low power
      --  clock cycles
      De_Glitch_3)
     with Size => 2;
   for DEBUG_MODE2_DE_GLITCH_Field use
     (De_Glitch_0 => 0,
      De_Glitch_1 => 1,
      De_Glitch_2 => 2,
      De_Glitch_3 => 3);

   --  no description available
   type TSC_DEBUG_MODE2_Register is record
      --  XPUL Wire Pull Down Switch
      XPUL_PULL_DOWN          : DEBUG_MODE2_XPUL_PULL_DOWN_Field :=
                                 NRF_SVD.TSC.Xpul_Pull_Down_0;
      --  XPUL Wire Pull Up Switch
      XPUL_PULL_UP            : DEBUG_MODE2_XPUL_PULL_UP_Field :=
                                 NRF_SVD.TSC.Xpul_Pull_Up_0;
      --  XPUL Wire 200K Pull Up Switch
      XPUL_200K_PULL_UP       : DEBUG_MODE2_XPUL_200K_PULL_UP_Field :=
                                 NRF_SVD.TSC.Xpul_200K_Pull_Up_0;
      --  XNUR Wire Pull Down Switch
      XNUR_PULL_DOWN          : DEBUG_MODE2_XNUR_PULL_DOWN_Field :=
                                 NRF_SVD.TSC.Xnur_Pull_Down_0;
      --  XNUR Wire Pull Up Switch
      XNUR_PULL_UP            : DEBUG_MODE2_XNUR_PULL_UP_Field :=
                                 NRF_SVD.TSC.Xnur_Pull_Up_0;
      --  XNUR Wire 200K Pull Up Switch
      XNUR_200K_PULL_UP       : DEBUG_MODE2_XNUR_200K_PULL_UP_Field :=
                                 NRF_SVD.TSC.Xnur_200K_Pull_Up_0;
      --  YPLL Wire Pull Down Switch
      YPLL_PULL_DOWN          : DEBUG_MODE2_YPLL_PULL_DOWN_Field :=
                                 NRF_SVD.TSC.Ypll_Pull_Down_0;
      --  YPLL Wire Pull Up Switch
      YPLL_PULL_UP            : DEBUG_MODE2_YPLL_PULL_UP_Field :=
                                 NRF_SVD.TSC.Ypll_Pull_Up_0;
      --  YPLL Wire 200K Pull Up Switch
      YPLL_200K_PULL_UP       : DEBUG_MODE2_YPLL_200K_PULL_UP_Field :=
                                 NRF_SVD.TSC.Ypll_200K_Pull_Up_0;
      --  YNLR Wire Pull Down Switch
      YNLR_PULL_DOWN          : DEBUG_MODE2_YNLR_PULL_DOWN_Field :=
                                 NRF_SVD.TSC.Ynlr_Pull_Down_0;
      --  YNLR Wire Pull Up Switch
      YNLR_PULL_UP            : DEBUG_MODE2_YNLR_PULL_UP_Field :=
                                 NRF_SVD.TSC.Ynlr_Pull_Up_0;
      --  YNLR Wire 200K Pull Up Switch
      YNLR_200K_PULL_UP       : DEBUG_MODE2_YNLR_200K_PULL_UP_Field :=
                                 NRF_SVD.TSC.Ynlr_200K_Pull_Up_0;
      --  Wiper Wire Pull Down Switch
      WIPER_PULL_DOWN         : DEBUG_MODE2_WIPER_PULL_DOWN_Field :=
                                 NRF_SVD.TSC.Wiper_Pull_Down_0;
      --  Wiper Wire Pull Up Switch
      WIPER_PULL_UP           : DEBUG_MODE2_WIPER_PULL_UP_Field :=
                                 NRF_SVD.TSC.Wiper_Pull_Up_0;
      --  Wiper Wire 200K Pull Up Switch
      WIPER_200K_PULL_UP      : DEBUG_MODE2_WIPER_200K_PULL_UP_Field :=
                                 NRF_SVD.TSC.Wiper_200K_Pull_Up_0;
      --  unspecified
      Reserved_15_15          : HAL.Bit := 16#0#;
      --  Read-only. Detect Four Wire
      DETECT_FOUR_WIRE        : DEBUG_MODE2_DETECT_FOUR_WIRE_Field :=
                                 NRF_SVD.TSC.Detect_Four_Wire_0;
      --  Read-only. Detect Five Wire
      DETECT_FIVE_WIRE        : DEBUG_MODE2_DETECT_FIVE_WIRE_Field :=
                                 NRF_SVD.TSC.Detect_Five_Wire_0;
      --  unspecified
      Reserved_18_19          : HAL.UInt2 := 16#0#;
      --  Read-only. State Machine
      STATE_MACHINE           : DEBUG_MODE2_STATE_MACHINE_Field :=
                                 NRF_SVD.TSC.State_Machine_0;
      --  Read-only. Intermediate State
      INTERMEDIATE            : DEBUG_MODE2_INTERMEDIATE_Field :=
                                 NRF_SVD.TSC.Intermediate_0;
      --  Detect Enable Four Wire
      DETECT_ENABLE_FOUR_WIRE : DEBUG_MODE2_DETECT_ENABLE_FOUR_WIRE_Field :=
                                 NRF_SVD.TSC.Detect_Enable_Four_Wire_0;
      --  unspecified
      Reserved_25_27          : HAL.UInt3 := 16#0#;
      --  Detect Enable Five Wire
      DETECT_ENABLE_FIVE_WIRE : DEBUG_MODE2_DETECT_ENABLE_FIVE_WIRE_Field :=
                                 NRF_SVD.TSC.Detect_Enable_Five_Wire_0;
      --  Read-only. This field indicates glitch threshold
      DE_GLITCH               : DEBUG_MODE2_DE_GLITCH_Field :=
                                 NRF_SVD.TSC.De_Glitch_0;
      --  unspecified
      Reserved_31_31          : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSC_DEBUG_MODE2_Register use record
      XPUL_PULL_DOWN          at 0 range 0 .. 0;
      XPUL_PULL_UP            at 0 range 1 .. 1;
      XPUL_200K_PULL_UP       at 0 range 2 .. 2;
      XNUR_PULL_DOWN          at 0 range 3 .. 3;
      XNUR_PULL_UP            at 0 range 4 .. 4;
      XNUR_200K_PULL_UP       at 0 range 5 .. 5;
      YPLL_PULL_DOWN          at 0 range 6 .. 6;
      YPLL_PULL_UP            at 0 range 7 .. 7;
      YPLL_200K_PULL_UP       at 0 range 8 .. 8;
      YNLR_PULL_DOWN          at 0 range 9 .. 9;
      YNLR_PULL_UP            at 0 range 10 .. 10;
      YNLR_200K_PULL_UP       at 0 range 11 .. 11;
      WIPER_PULL_DOWN         at 0 range 12 .. 12;
      WIPER_PULL_UP           at 0 range 13 .. 13;
      WIPER_200K_PULL_UP      at 0 range 14 .. 14;
      Reserved_15_15          at 0 range 15 .. 15;
      DETECT_FOUR_WIRE        at 0 range 16 .. 16;
      DETECT_FIVE_WIRE        at 0 range 17 .. 17;
      Reserved_18_19          at 0 range 18 .. 19;
      STATE_MACHINE           at 0 range 20 .. 22;
      INTERMEDIATE            at 0 range 23 .. 23;
      DETECT_ENABLE_FOUR_WIRE at 0 range 24 .. 24;
      Reserved_25_27          at 0 range 25 .. 27;
      DETECT_ENABLE_FIVE_WIRE at 0 range 28 .. 28;
      DE_GLITCH               at 0 range 29 .. 30;
      Reserved_31_31          at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Touch Screen Controller
   type TSC_Peripheral is record
      --  PS Input Buffer Address
      BASIC_SETTING        : aliased TSC_BASIC_SETTING_Register;
      --  PS Input Buffer Address
      PS_INPUT_BUFFER_ADDR : aliased HAL.UInt32;
      --  Flow Control
      FLOW_CONTROL         : aliased TSC_FLOW_CONTROL_Register;
      --  Measure Value
      MEASEURE_VALUE       : aliased TSC_MEASEURE_VALUE_Register;
      --  Interrupt Enable
      INT_EN               : aliased TSC_INT_EN_Register;
      --  Interrupt Signal Enable
      INT_SIG_EN           : aliased TSC_INT_SIG_EN_Register;
      --  Intterrupt Status
      INT_STATUS           : aliased TSC_INT_STATUS_Register;
      --  no description available
      DEBUG_MODE           : aliased TSC_DEBUG_MODE_Register;
      --  no description available
      DEBUG_MODE2          : aliased TSC_DEBUG_MODE2_Register;
   end record
     with Volatile;

   for TSC_Peripheral use record
      BASIC_SETTING        at 16#0# range 0 .. 31;
      PS_INPUT_BUFFER_ADDR at 16#10# range 0 .. 31;
      FLOW_CONTROL         at 16#20# range 0 .. 31;
      MEASEURE_VALUE       at 16#30# range 0 .. 31;
      INT_EN               at 16#40# range 0 .. 31;
      INT_SIG_EN           at 16#50# range 0 .. 31;
      INT_STATUS           at 16#60# range 0 .. 31;
      DEBUG_MODE           at 16#70# range 0 .. 31;
      DEBUG_MODE2          at 16#80# range 0 .. 31;
   end record;

   --  Touch Screen Controller
   TSC_Periph : aliased TSC_Peripheral
     with Import, Address => System'To_Address (16#400E0000#);

end NRF_SVD.TSC;
