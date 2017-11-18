--  This spec has been automatically generated from XMC1400.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable Out of Range Comparator 0
   type ORCCTRL_ENORC0_Field is
     (
      --  Out of range comparator disabled.
      VALUE1,
      --  Out of range comparator enabled.
      VALUE2)
     with Size => 1;
   for ORCCTRL_ENORC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ORCCTRL_ENORC array
   type ORCCTRL_ENORC_Field_Array is array (0 .. 7) of ORCCTRL_ENORC0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for ORCCTRL_ENORC
   type ORCCTRL_ENORC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENORC as a value
            Val : HAL.UInt8;
         when True =>
            --  ENORC as an array
            Arr : ORCCTRL_ENORC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ORCCTRL_ENORC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Out of Range Comparator Flag 0
   type ORCCTRL_CNF0_Field is
     (
      --  Falling edge trigger out of range event register.
      VALUE1,
      --  Rising edge trigger out of range event register.
      VALUE2)
     with Size => 1;
   for ORCCTRL_CNF0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ORCCTRL_CNF array
   type ORCCTRL_CNF_Field_Array is array (0 .. 7) of ORCCTRL_CNF0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for ORCCTRL_CNF
   type ORCCTRL_CNF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CNF as a value
            Val : HAL.UInt8;
         when True =>
            --  CNF as an array
            Arr : ORCCTRL_CNF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ORCCTRL_CNF_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Out Of Range Comparator Control Register
   type ORCCTRL_Register is record
      --  Enable Out of Range Comparator 0
      ENORC          : ORCCTRL_ENORC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Out of Range Comparator Flag 0
      CNF            : ORCCTRL_CNF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ORCCTRL_Register use record
      ENORC          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CNF            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Comparator enable
   type ANACMP0_CMP_EN_Field is
     (
      --  Comparator is disabled
      VALUE1,
      --  Comparator is enabled
      VALUE2)
     with Size => 1;
   for ANACMP0_CMP_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Disables comparator filter
   type ANACMP0_CMP_FLT_OFF_Field is
     (
      --  filter is active
      VALUE1,
      --  filter is switched off (to prevent a filter delay)
      VALUE2)
     with Size => 1;
   for ANACMP0_CMP_FLT_OFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Inverted Comparator output
   type ANACMP0_CMP_INV_OUT_Field is
     (
      --  no inversion of comparator signal
      VALUE1,
      --  comparator signal is inverted
      VALUE2)
     with Size => 1;
   for ANACMP0_CMP_INV_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator hysteresis adjust
   type ANACMP0_CMP_HYST_ADJ_Field is
     (
      --  Comparator hysteresis is switched off
      VALUE1,
      --  Hysteresis_typ = 10mV
      VALUE2,
      --  Hysteresis_typ = 15mV
      VALUE3,
      --  Hysteresis_typ = 20mV
      VALUE4)
     with Size => 2;
   for ANACMP0_CMP_HYST_ADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Connect ACMP0.INN to ACMP1.INP
   type ANACMP0_ACMP0_SEL_Field is
     (
      --  ACMP0.INN is not connected
      VALUE1,
      --  ACMP0.INN is connected to ACMP1.INP
      VALUE2)
     with Size => 1;
   for ANACMP0_ACMP0_SEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Low Power Mode
   type ANACMP0_CMP_LPWR_Field is
     (
      --  High Power Mode
      VALUE1,
      --  Low Power Mode
      VALUE2)
     with Size => 1;
   for ANACMP0_CMP_LPWR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator output monitor bit
   type ANACMP0_CMP_OUT_Field is
     (
      --  state "Vminus > Vplus"
      VALUE1,
      --  state "Vminus < Vplus"
      VALUE2)
     with Size => 1;
   for ANACMP0_CMP_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Analog Comparator 0 Control Register
   type ANACMP0_Register is record
      --  Comparator enable
      CMP_EN        : ANACMP0_CMP_EN_Field := NRF_SVD.SCU.VALUE1;
      --  Disables comparator filter
      CMP_FLT_OFF   : ANACMP0_CMP_FLT_OFF_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Inverted Comparator output
      CMP_INV_OUT   : ANACMP0_CMP_INV_OUT_Field := NRF_SVD.SCU.VALUE1;
      --  Comparator hysteresis adjust
      CMP_HYST_ADJ  : ANACMP0_CMP_HYST_ADJ_Field := NRF_SVD.SCU.VALUE3;
      --  Connect ACMP0.INN to ACMP1.INP
      ACMP0_SEL     : ANACMP0_ACMP0_SEL_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Low Power Mode
      CMP_LPWR      : ANACMP0_CMP_LPWR_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_9_14 : HAL.UInt6 := 16#0#;
      --  Read-only. Comparator output monitor bit
      CMP_OUT       : ANACMP0_CMP_OUT_Field := NRF_SVD.SCU.VALUE1;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANACMP0_Register use record
      CMP_EN        at 0 range 0 .. 0;
      CMP_FLT_OFF   at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CMP_INV_OUT   at 0 range 3 .. 3;
      CMP_HYST_ADJ  at 0 range 4 .. 5;
      ACMP0_SEL     at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      CMP_LPWR      at 0 range 8 .. 8;
      Reserved_9_14 at 0 range 9 .. 14;
      CMP_OUT       at 0 range 15 .. 15;
   end record;

   --  Comparator enable
   type ANACMP1_CMP_EN_Field is
     (
      --  Comparator is disabled
      VALUE1,
      --  Comparator is enabled
      VALUE2)
     with Size => 1;
   for ANACMP1_CMP_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Disables comparator filter
   type ANACMP1_CMP_FLT_OFF_Field is
     (
      --  filter is active
      VALUE1,
      --  filter is switched off (to prevent a filter delay)
      VALUE2)
     with Size => 1;
   for ANACMP1_CMP_FLT_OFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Inverted Comparator output
   type ANACMP1_CMP_INV_OUT_Field is
     (
      --  no inversion of comparator signal
      VALUE1,
      --  comparator signal is inverted
      VALUE2)
     with Size => 1;
   for ANACMP1_CMP_INV_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator hysteresis adjust
   type ANACMP1_CMP_HYST_ADJ_Field is
     (
      --  Comparator hysteresis is switched off
      VALUE1,
      --  Hysteresis_typ = 10mV
      VALUE2,
      --  Hysteresis_typ = 15mV
      VALUE3,
      --  Hysteresis_typ = 20mV
      VALUE4)
     with Size => 2;
   for ANACMP1_CMP_HYST_ADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Resistor Divider is enabled and Reference Voltage is applied to ACMP1
   type ANACMP1_REF_DIV_EN_Field is
     (
      --  no resistor is connected
      VALUE1,
      --  the divider resistor is enabled and the voltage is applied to
      --  ACMP1.INP
      VALUE2)
     with Size => 1;
   for ANACMP1_REF_DIV_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator output monitor bit
   type ANACMP1_CMP_OUT_Field is
     (
      --  state "Vminus > Vplus"
      VALUE1,
      --  state "Vminus < Vplus"
      VALUE2)
     with Size => 1;
   for ANACMP1_CMP_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Analog Comparator 1 Control Register
   type ANACMP1_Register is record
      --  Comparator enable
      CMP_EN        : ANACMP1_CMP_EN_Field := NRF_SVD.SCU.VALUE1;
      --  Disables comparator filter
      CMP_FLT_OFF   : ANACMP1_CMP_FLT_OFF_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Inverted Comparator output
      CMP_INV_OUT   : ANACMP1_CMP_INV_OUT_Field := NRF_SVD.SCU.VALUE1;
      --  Comparator hysteresis adjust
      CMP_HYST_ADJ  : ANACMP1_CMP_HYST_ADJ_Field := NRF_SVD.SCU.VALUE3;
      --  Resistor Divider is enabled and Reference Voltage is applied to ACMP1
      REF_DIV_EN    : ANACMP1_REF_DIV_EN_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_7_14 : HAL.UInt8 := 16#0#;
      --  Read-only. Comparator output monitor bit
      CMP_OUT       : ANACMP1_CMP_OUT_Field := NRF_SVD.SCU.VALUE1;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANACMP1_Register use record
      CMP_EN        at 0 range 0 .. 0;
      CMP_FLT_OFF   at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CMP_INV_OUT   at 0 range 3 .. 3;
      CMP_HYST_ADJ  at 0 range 4 .. 5;
      REF_DIV_EN    at 0 range 6 .. 6;
      Reserved_7_14 at 0 range 7 .. 14;
      CMP_OUT       at 0 range 15 .. 15;
   end record;

   --  Comparator enable
   type ANACMP2_CMP_EN_Field is
     (
      --  Comparator is disabled
      VALUE1,
      --  Comparator is enabled
      VALUE2)
     with Size => 1;
   for ANACMP2_CMP_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Disables comparator filter
   type ANACMP2_CMP_FLT_OFF_Field is
     (
      --  filter is active
      VALUE1,
      --  filter is switched off (to prevent a filter delay)
      VALUE2)
     with Size => 1;
   for ANACMP2_CMP_FLT_OFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Inverted Comparator output
   type ANACMP2_CMP_INV_OUT_Field is
     (
      --  no inversion of comparator signal
      VALUE1,
      --  comparator signal is inverted
      VALUE2)
     with Size => 1;
   for ANACMP2_CMP_INV_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator hysteresis adjust
   type ANACMP2_CMP_HYST_ADJ_Field is
     (
      --  Comparator hysteresis is switched off
      VALUE1,
      --  Hysteresis_typ = 10mV
      VALUE2,
      --  Hysteresis_typ = 15mV
      VALUE3,
      --  Hysteresis_typ = 20mV
      VALUE4)
     with Size => 2;
   for ANACMP2_CMP_HYST_ADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Connect ACMP2.INP to ACMP1.INP
   type ANACMP2_ACMP2_SEL_Field is
     (
      --  ACMP2.INP is not connected
      VALUE1,
      --  ACMP2.INP is connected to ACMP1.INP
      VALUE2)
     with Size => 1;
   for ANACMP2_ACMP2_SEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator output monitor bit
   type ANACMP2_CMP_OUT_Field is
     (
      --  state "Vminus > Vplus"
      VALUE1,
      --  state "Vminus < Vplus"
      VALUE2)
     with Size => 1;
   for ANACMP2_CMP_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Analog Comparator 2 Control Register
   type ANACMP2_Register is record
      --  Comparator enable
      CMP_EN        : ANACMP2_CMP_EN_Field := NRF_SVD.SCU.VALUE1;
      --  Disables comparator filter
      CMP_FLT_OFF   : ANACMP2_CMP_FLT_OFF_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Inverted Comparator output
      CMP_INV_OUT   : ANACMP2_CMP_INV_OUT_Field := NRF_SVD.SCU.VALUE1;
      --  Comparator hysteresis adjust
      CMP_HYST_ADJ  : ANACMP2_CMP_HYST_ADJ_Field := NRF_SVD.SCU.VALUE3;
      --  Connect ACMP2.INP to ACMP1.INP
      ACMP2_SEL     : ANACMP2_ACMP2_SEL_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_7_14 : HAL.UInt8 := 16#0#;
      --  Read-only. Comparator output monitor bit
      CMP_OUT       : ANACMP2_CMP_OUT_Field := NRF_SVD.SCU.VALUE1;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANACMP2_Register use record
      CMP_EN        at 0 range 0 .. 0;
      CMP_FLT_OFF   at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CMP_INV_OUT   at 0 range 3 .. 3;
      CMP_HYST_ADJ  at 0 range 4 .. 5;
      ACMP2_SEL     at 0 range 6 .. 6;
      Reserved_7_14 at 0 range 7 .. 14;
      CMP_OUT       at 0 range 15 .. 15;
   end record;

   --  Comparator enable
   type ANACMP3_CMP_EN_Field is
     (
      --  Comparator is disabled
      VALUE1,
      --  Comparator is enabled
      VALUE2)
     with Size => 1;
   for ANACMP3_CMP_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Disables comparator filter
   type ANACMP3_CMP_FLT_OFF_Field is
     (
      --  filter is active
      VALUE1,
      --  filter is switched off (to prevent a filter delay)
      VALUE2)
     with Size => 1;
   for ANACMP3_CMP_FLT_OFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Inverted Comparator output
   type ANACMP3_CMP_INV_OUT_Field is
     (
      --  no inversion of comparator signal
      VALUE1,
      --  comparator signal is inverted
      VALUE2)
     with Size => 1;
   for ANACMP3_CMP_INV_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator hysteresis adjust
   type ANACMP3_CMP_HYST_ADJ_Field is
     (
      --  Comparator hysteresis is switched off
      VALUE1,
      --  Hysteresis_typ = 10mV
      VALUE2,
      --  Hysteresis_typ = 15mV
      VALUE3,
      --  Hysteresis_typ = 20mV
      VALUE4)
     with Size => 2;
   for ANACMP3_CMP_HYST_ADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Connect ACMP3.INP to ACMP1.INP
   type ANACMP3_ACMP3_SEL_Field is
     (
      --  ACMP3.INP is not connected
      VALUE1,
      --  ACMP3.INP is connected to ACMP1.INP
      VALUE2)
     with Size => 1;
   for ANACMP3_ACMP3_SEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Comparator output monitor bit
   type ANACMP3_CMP_OUT_Field is
     (
      --  state "Vminus > Vplus"
      VALUE1,
      --  state "Vminus < Vplus"
      VALUE2)
     with Size => 1;
   for ANACMP3_CMP_OUT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Analog Comparator 3 Control Register
   type ANACMP3_Register is record
      --  Comparator enable
      CMP_EN        : ANACMP3_CMP_EN_Field := NRF_SVD.SCU.VALUE1;
      --  Disables comparator filter
      CMP_FLT_OFF   : ANACMP3_CMP_FLT_OFF_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Inverted Comparator output
      CMP_INV_OUT   : ANACMP3_CMP_INV_OUT_Field := NRF_SVD.SCU.VALUE1;
      --  Comparator hysteresis adjust
      CMP_HYST_ADJ  : ANACMP3_CMP_HYST_ADJ_Field := NRF_SVD.SCU.VALUE3;
      --  Connect ACMP3.INP to ACMP1.INP
      ACMP3_SEL     : ANACMP3_ACMP3_SEL_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_7_14 : HAL.UInt8 := 16#0#;
      --  Read-only. Comparator output monitor bit
      CMP_OUT       : ANACMP3_CMP_OUT_Field := NRF_SVD.SCU.VALUE1;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANACMP3_Register use record
      CMP_EN        at 0 range 0 .. 0;
      CMP_FLT_OFF   at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CMP_INV_OUT   at 0 range 3 .. 3;
      CMP_HYST_ADJ  at 0 range 4 .. 5;
      ACMP3_SEL     at 0 range 6 .. 6;
      Reserved_7_14 at 0 range 7 .. 14;
      CMP_OUT       at 0 range 15 .. 15;
   end record;

   --  Temperature sensor enable
   type ANATSECTRL_TSE_EN_Field is
     (
      --  Temperature sensor is disabled
      VALUE1,
      --  Temperature sensor is switched on
      VALUE2)
     with Size => 1;
   for ANATSECTRL_TSE_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Temperature Sensor Control Register
   type ANATSECTRL_Register is record
      --  Temperature sensor enable
      TSE_EN        : ANATSECTRL_TSE_EN_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANATSECTRL_Register use record
      TSE_EN        at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  VDEL Range Select
   type ANAVDEL_VDEL_SELECT_Field is
     (
      --  2.25V
      VALUE1,
      --  3.0V
      VALUE2,
      --  4.4V
      VALUE3)
     with Size => 2;
   for ANAVDEL_VDEL_SELECT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  VDEL Timing Setting
   type ANAVDEL_VDEL_TIM_ADJ_Field is
     (
      --  typ 1us - slowest response time
      VALUE1,
      --  typ 500n
      VALUE2,
      --  typ 250n
      VALUE3,
      --  no delay - fastest response time.
      VALUE4)
     with Size => 2;
   for ANAVDEL_VDEL_TIM_ADJ_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  VDEL unit Enable
   type ANAVDEL_VDEL_EN_Field is
     (
      --  VDEL is disabled
      VALUE1,
      --  VDEL is active
      VALUE2)
     with Size => 1;
   for ANAVDEL_VDEL_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Voltage Detector Control Register
   type ANAVDEL_Register is record
      --  VDEL Range Select
      VDEL_SELECT   : ANAVDEL_VDEL_SELECT_Field := NRF_SVD.SCU.VALUE1;
      --  VDEL Timing Setting
      VDEL_TIM_ADJ  : ANAVDEL_VDEL_TIM_ADJ_Field := NRF_SVD.SCU.VALUE4;
      --  VDEL unit Enable
      VDEL_EN       : ANAVDEL_VDEL_EN_Field := NRF_SVD.SCU.VALUE2;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANAVDEL_Register use record
      VDEL_SELECT   at 0 range 0 .. 1;
      VDEL_TIM_ADJ  at 0 range 2 .. 3;
      VDEL_EN       at 0 range 4 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   --  ADJL Offset register
   type ANAOFFSET_ADJL_OFFSET_Field is
     (
      --  - 3.xx%, typ.
      VALUE1,
      --  DCO1 ADJL value is reduced by 1 step (DCO_ADJL - 1).
      VALUE2,
      --  0, DCO_ADJL is not changed, default
      VALUE3,
      --  DCO1 ADJL value is increased by 1 step (DCO_ADJL + 1)
      VALUE4,
      --  + 3.xx%, typ.
      VALUE5)
     with Size => 7;
   for ANAOFFSET_ADJL_OFFSET_Field use
     (VALUE1 => 0,
      VALUE2 => 63,
      VALUE3 => 64,
      VALUE4 => 65,
      VALUE5 => 127);

   --  DCO1 Offset Register
   type ANAOFFSET_Register is record
      --  ADJL Offset register
      ADJL_OFFSET   : ANAOFFSET_ADJL_OFFSET_Field := NRF_SVD.SCU.VALUE3;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANAOFFSET_Register use record
      ADJL_OFFSET   at 0 range 0 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   --  Counter target value, which defines the update cycle
   type ANASYNC1_SYNC_PRELOAD_Field is
     (
      --  Reset value for the field
      Anasync1_Sync_Preload_Field_Reset,
      --  Longest integration time = best accuracy
      VALUE1)
     with Size => 14;
   for ANASYNC1_SYNC_PRELOAD_Field use
     (Anasync1_Sync_Preload_Field_Reset => 2930,
      VALUE1 => 8191);

   --  DCO1 synchronization feature enable
   type ANASYNC1_SYNC_DCO_EN_Field is
     (
      --  No DCO1 synchronization via an external clock source. This option is
      --  used for the DCO1 calibration using the temperature sensor.
      VALUE1,
      --  DCO1 gets synchronized via an external clock source.
      VALUE2)
     with Size => 1;
   for ANASYNC1_SYNC_DCO_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Oscillator Source select
   type ANASYNC1_XTAL_SEL_Field is
     (
      --  OSC_LP is selected
      VALUE1,
      --  OSC_HP is selected
      VALUE2)
     with Size => 1;
   for ANASYNC1_XTAL_SEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DCO1 Sync Control Register 1
   type ANASYNC1_Register is record
      --  Counter target value, which defines the update cycle
      SYNC_PRELOAD : ANASYNC1_SYNC_PRELOAD_Field :=
                      Anasync1_Sync_Preload_Field_Reset;
      --  DCO1 synchronization feature enable
      SYNC_DCO_EN  : ANASYNC1_SYNC_DCO_EN_Field := NRF_SVD.SCU.VALUE1;
      --  Oscillator Source select
      XTAL_SEL     : ANASYNC1_XTAL_SEL_Field := NRF_SVD.SCU.VALUE1;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANASYNC1_Register use record
      SYNC_PRELOAD at 0 range 0 .. 13;
      SYNC_DCO_EN  at 0 range 14 .. 14;
      XTAL_SEL     at 0 range 15 .. 15;
   end record;

   --  Prescaler value
   type ANASYNC2_PRESCALER_Field is
     (
      --  Bypass: Internal sync counter frequency = crystal frequency
      VALUE1,
      --  DIV1: Internal sync counter feed freq. = crystal frequency/1
      VALUE2,
      --  DIV2: Internal sync counter feed freq. = crystal frequency/2
      VALUE3,
      --  Maximum divider value (for best accuracy, but slowest response)
      VALUE4)
     with Size => 11;
   for ANASYNC2_PRESCALER_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 2047);

   --  DCO1 frequency reached its target value
   type ANASYNC2_SYNC_READY_Field is
     (
      --  Actual DCO1 frequency is out of targe
      VALUE1,
      --  DCO1 is synchronized to the XTAL frequency
      VALUE2)
     with Size => 1;
   for ANASYNC2_SYNC_READY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  DCO1 Sync Control Register 2
   type ANASYNC2_Register is record
      --  Prescaler value
      PRESCALER      : ANASYNC2_PRESCALER_Field := NRF_SVD.SCU.VALUE3;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Read-only. DCO1 frequency reached its target value
      SYNC_READY     : ANASYNC2_SYNC_READY_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANASYNC2_Register use record
      PRESCALER      at 0 range 0 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SYNC_READY     at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  OSC_LP Oscillator Mode
   type ANAOSCLPCTRL_MODE_Field is
     (
      --  Oscillator is enabled and in operation mode (OSC mode)
      VALUE1,
      --  Oscillator is enabled, shaper is bypassed
      VALUE2,
      --  Oscillator is in power down mode
      VALUE3,
      --  Oscillator is in power down mode , Pad can be used in GPIO mode
      VALUE4)
     with Size => 2;
   for ANAOSCLPCTRL_MODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  OSC_LP Control Register
   type ANAOSCLPCTRL_Register is record
      --  OSC_LP Oscillator Mode
      MODE          : ANAOSCLPCTRL_MODE_Field := NRF_SVD.SCU.VALUE4;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANAOSCLPCTRL_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   --  Shaper Bypass Mode
   type ANAOSCHPCTRL_SHBY_Field is
     (
      --  The shaper is not bypassed
      VALUE1,
      --  The shaper is bypassed
      VALUE2)
     with Size => 1;
   for ANAOSCHPCTRL_SHBY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  OSC_HP Oscillator Gain Selection
   type ANAOSCHPCTRL_GAINSEL_Field is
     (
      --  Gain control is configured for frequencies from 4 MHz to y1 MHz
      VALUE1,
      --  Gain control is configured for frequencies from 4 MHz to y2 MHz
      VALUE2,
      --  Gain control is configured for frequencies from 4 MHz to 20 MHz
      VALUE3)
     with Size => 2;
   for ANAOSCHPCTRL_GAINSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  OSC_HP Oscillator Mode
   type ANAOSCHPCTRL_MODE_Field is
     (
      --  Oscillator is enabled and in active power mode with shaper enabled
      --  (OSC mode)
      VALUE1,
      --  Oscillator in power down mode with shaper enabled (External Clock
      --  Input Mode).
      VALUE2,
      --  Oscillator is enabled with shaper disabled. No clock output is
      --  available unless the shaper is bypass (SHBY=1)
      VALUE3,
      --  Oscillator is in power down mode with shaper disabled. Pad can be
      --  used in GPIO mode.
      VALUE4)
     with Size => 2;
   for ANAOSCHPCTRL_MODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Shaper Hystersis Mode
   type ANAOSCHPCTRL_HYSCTRL_Field is
     (
      --  External clock frequency < 20MHz.
      VALUE1,
      --  External clock frequency > 20MHz
      VALUE2)
     with Size => 1;
   for ANAOSCHPCTRL_HYSCTRL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  OSC_HP Control Register
   type ANAOSCHPCTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Shaper Bypass Mode
      SHBY          : ANAOSCHPCTRL_SHBY_Field := NRF_SVD.SCU.VALUE1;
      --  OSC_HP Oscillator Gain Selection
      GAINSEL       : ANAOSCHPCTRL_GAINSEL_Field := NRF_SVD.SCU.VALUE3;
      --  OSC_HP Oscillator Mode
      MODE          : ANAOSCHPCTRL_MODE_Field := NRF_SVD.SCU.VALUE4;
      --  Shaper Hystersis Mode
      HYSCTRL       : ANAOSCHPCTRL_HYSCTRL_Field := NRF_SVD.SCU.VALUE1;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ANAOSCHPCTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SHBY          at 0 range 1 .. 1;
      GAINSEL       at 0 range 2 .. 3;
      MODE          at 0 range 4 .. 5;
      HYSCTRL       at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Unit
   type COMPARATOR_Peripheral is record
      --  Out Of Range Comparator Control Register
      ORCCTRL : aliased ORCCTRL_Register;
      --  Analog Comparator 0 Control Register
      ANACMP0 : aliased ANACMP0_Register;
      --  Analog Comparator 1 Control Register
      ANACMP1 : aliased ANACMP1_Register;
      --  Analog Comparator 2 Control Register
      ANACMP2 : aliased ANACMP2_Register;
      --  Analog Comparator 3 Control Register
      ANACMP3 : aliased ANACMP3_Register;
   end record
     with Volatile;

   for COMPARATOR_Peripheral use record
      ORCCTRL at 16#0# range 0 .. 31;
      ANACMP0 at 16#B5C# range 0 .. 15;
      ANACMP1 at 16#B60# range 0 .. 15;
      ANACMP2 at 16#B64# range 0 .. 15;
      ANACMP3 at 16#B68# range 0 .. 15;
   end record;

   --  System Control Unit
   COMPARATOR_Periph : aliased COMPARATOR_Peripheral
     with Import, Address => System'To_Address (16#40010500#);

   --  System Control Unit
   type SCU_ANALOG_Peripheral is record
      --  Temperature Sensor Control Register
      ANATSECTRL   : aliased ANATSECTRL_Register;
      --  Temperature Sensor High Temperature Interrupt Register
      ANATSEIH     : aliased HAL.UInt16;
      --  Temperature Sensor Low Temperature Interrupt Register
      ANATSEIL     : aliased HAL.UInt16;
      --  Temperature Sensor Counter2 Monitor Register
      ANATSEMON    : aliased HAL.UInt16;
      --  Voltage Detector Control Register
      ANAVDEL      : aliased ANAVDEL_Register;
      --  DCO1 Offset Register
      ANAOFFSET    : aliased ANAOFFSET_Register;
      --  DCO1 Sync Control Register 1
      ANASYNC1     : aliased ANASYNC1_Register;
      --  DCO1 Sync Control Register 2
      ANASYNC2     : aliased ANASYNC2_Register;
      --  OSC_LP Control Register
      ANAOSCLPCTRL : aliased ANAOSCLPCTRL_Register;
      --  OSC_HP Control Register
      ANAOSCHPCTRL : aliased ANAOSCHPCTRL_Register;
   end record
     with Volatile;

   for SCU_ANALOG_Peripheral use record
      ANATSECTRL   at 16#24# range 0 .. 15;
      ANATSEIH     at 16#30# range 0 .. 15;
      ANATSEIL     at 16#34# range 0 .. 15;
      ANATSEMON    at 16#40# range 0 .. 15;
      ANAVDEL      at 16#50# range 0 .. 15;
      ANAOFFSET    at 16#6C# range 0 .. 15;
      ANASYNC1     at 16#78# range 0 .. 15;
      ANASYNC2     at 16#7C# range 0 .. 15;
      ANAOSCLPCTRL at 16#8C# range 0 .. 15;
      ANAOSCHPCTRL at 16#90# range 0 .. 15;
   end record;

   --  System Control Unit
   SCU_ANALOG_Periph : aliased SCU_ANALOG_Peripheral
     with Import, Address => System'To_Address (16#40011000#);

end NRF_SVD.SCU;
