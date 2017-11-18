--

--  This spec has been automatically generated from SN32F100.svd

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

   subtype SET1_LB_H_Field is HAL.UInt8;

   --  Offset:0x540 ADC Setting 1 Register
   type SET1_Register is record
      --  AGC Control Low bound setting : High byte
      LB_H          : SET1_LB_H_Field := 16#40#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET1_Register use record
      LB_H          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET2_LB_L_Field is HAL.UInt8;

   --  Offset:0x550 ADC Setting 2 Register
   type SET2_Register is record
      --  AGC Control Low bound setting : Low byte
      LB_L          : SET2_LB_L_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET2_Register use record
      LB_L          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET3_HB_H_Field is HAL.UInt8;

   --  Offset:0x560 ADC Setting 3 Register
   type SET3_Register is record
      --  AGC Control High bound setting : High byte
      HB_H          : SET3_HB_H_Field := 16#60#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET3_Register use record
      HB_H          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET4_HB_L_Field is HAL.UInt8;

   --  Offset:0x570 ADC Setting 4 Register
   type SET4_Register is record
      --  AGC Control High bound setting : Low byte
      HB_L          : SET4_HB_L_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET4_Register use record
      HB_L          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AGC Control Gain update period at normal mode
   type SET5_NOR_POD_Field is
     (
      SET5_NOR_POD_Field_1/Fs X 2^0,
      SET5_NOR_POD_Field_1/Fs X 2^1,
      SET5_NOR_POD_Field_1/Fs X 2^2,
      SET5_NOR_POD_Field_1/Fs X 2^3,
      SET5_NOR_POD_Field_1/Fs X 2^4,
      SET5_NOR_POD_Field_1/Fs X 2^5,
      SET5_NOR_POD_Field_1/Fs X 2^6,
      SET5_NOR_POD_Field_1/Fs X 2^7,
      SET5_NOR_POD_Field_1/Fs X 2^8,
      SET5_NOR_POD_Field_1/Fs X 2^9,
      SET5_NOR_POD_Field_1/Fs X 2^10,
      SET5_NOR_POD_Field_1/Fs X 2^11,
      SET5_NOR_POD_Field_1/Fs X 2^12,
      SET5_NOR_POD_Field_1/Fs X 2^13,
      SET5_NOR_POD_Field_1/Fs X 2^14,
      SET5_NOR_POD_Field_1/Fs X 2^15)
     with Size => 4;
   for SET5_NOR_POD_Field use
     (SET5_NOR_POD_Field_1/Fs X 2^0 => 0,
      SET5_NOR_POD_Field_1/Fs X 2^1 => 1,
      SET5_NOR_POD_Field_1/Fs X 2^2 => 2,
      SET5_NOR_POD_Field_1/Fs X 2^3 => 3,
      SET5_NOR_POD_Field_1/Fs X 2^4 => 4,
      SET5_NOR_POD_Field_1/Fs X 2^5 => 5,
      SET5_NOR_POD_Field_1/Fs X 2^6 => 6,
      SET5_NOR_POD_Field_1/Fs X 2^7 => 7,
      SET5_NOR_POD_Field_1/Fs X 2^8 => 8,
      SET5_NOR_POD_Field_1/Fs X 2^9 => 9,
      SET5_NOR_POD_Field_1/Fs X 2^10 => 10,
      SET5_NOR_POD_Field_1/Fs X 2^11 => 11,
      SET5_NOR_POD_Field_1/Fs X 2^12 => 12,
      SET5_NOR_POD_Field_1/Fs X 2^13 => 13,
      SET5_NOR_POD_Field_1/Fs X 2^14 => 14,
      SET5_NOR_POD_Field_1/Fs X 2^15 => 15);

   --  Offset:0x580 ADC Setting 5 Register
   type SET5_Register is record
      --  AGC Control Gain update period at normal mode
      NOR_POD       : SET5_NOR_POD_Field :=
                       NRF_SVD.ADC.SET5_NOR_POD_Field_1/Fs X 2^5;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET5_Register use record
      NOR_POD       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  AGC Control Gain update period at mute mode
   type SET6_MUTE_POD_Field is
     (
      SET6_MUTE_POD_Field_1/Fs X 2^0,
      SET6_MUTE_POD_Field_1/Fs X 2^1,
      SET6_MUTE_POD_Field_1/Fs X 2^2,
      SET6_MUTE_POD_Field_1/Fs X 2^3,
      SET6_MUTE_POD_Field_1/Fs X 2^4,
      SET6_MUTE_POD_Field_1/Fs X 2^5,
      SET6_MUTE_POD_Field_1/Fs X 2^6,
      SET6_MUTE_POD_Field_1/Fs X 2^7,
      SET6_MUTE_POD_Field_1/Fs X 2^8,
      SET6_MUTE_POD_Field_1/Fs X 2^9,
      SET6_MUTE_POD_Field_1/Fs X 2^10,
      SET6_MUTE_POD_Field_1/Fs X 2^11,
      SET6_MUTE_POD_Field_1/Fs X 2^12,
      SET6_MUTE_POD_Field_1/Fs X 2^13,
      SET6_MUTE_POD_Field_1/Fs X 2^14,
      SET6_MUTE_POD_Field_1/Fs X 2^15)
     with Size => 4;
   for SET6_MUTE_POD_Field use
     (SET6_MUTE_POD_Field_1/Fs X 2^0 => 0,
      SET6_MUTE_POD_Field_1/Fs X 2^1 => 1,
      SET6_MUTE_POD_Field_1/Fs X 2^2 => 2,
      SET6_MUTE_POD_Field_1/Fs X 2^3 => 3,
      SET6_MUTE_POD_Field_1/Fs X 2^4 => 4,
      SET6_MUTE_POD_Field_1/Fs X 2^5 => 5,
      SET6_MUTE_POD_Field_1/Fs X 2^6 => 6,
      SET6_MUTE_POD_Field_1/Fs X 2^7 => 7,
      SET6_MUTE_POD_Field_1/Fs X 2^8 => 8,
      SET6_MUTE_POD_Field_1/Fs X 2^9 => 9,
      SET6_MUTE_POD_Field_1/Fs X 2^10 => 10,
      SET6_MUTE_POD_Field_1/Fs X 2^11 => 11,
      SET6_MUTE_POD_Field_1/Fs X 2^12 => 12,
      SET6_MUTE_POD_Field_1/Fs X 2^13 => 13,
      SET6_MUTE_POD_Field_1/Fs X 2^14 => 14,
      SET6_MUTE_POD_Field_1/Fs X 2^15 => 15);

   --  Offset:0x590 ADC Setting 6 Register
   type SET6_Register is record
      --  AGC Control Gain update period at mute mode
      MUTE_POD      : SET6_MUTE_POD_Field :=
                       NRF_SVD.ADC.SET6_MUTE_POD_Field_1/Fs X 2^11;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET6_Register use record
      MUTE_POD      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SET7_SEARCH_TH_H_Field is HAL.UInt8;

   --  Offset:0x5A0 ADC Setting 7 Register
   type SET7_Register is record
      --  AGC Control Threshold for activating : High byte
      SEARCH_TH_H   : SET7_SEARCH_TH_H_Field := 16#3#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET7_Register use record
      SEARCH_TH_H   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET8_SEARCH_TH_L_Field is HAL.UInt8;

   --  Offset:0x5B0 ADC Setting 8 Register
   type SET8_Register is record
      --  AGC Control Threshold for activating : Low byte
      SEARCH_TH_L   : SET8_SEARCH_TH_L_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET8_Register use record
      SEARCH_TH_L   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET9_MUTE_TH_H_Field is HAL.UInt8;

   --  Offset:0x5C0 ADC Setting 9 Register
   type SET9_Register is record
      --  AGC Control Threshold for inactivating : High byte
      MUTE_TH_H     : SET9_MUTE_TH_H_Field := 16#10#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET9_Register use record
      MUTE_TH_H     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET10_MUTE_TH_L_Field is HAL.UInt8;

   --  Offset:0x5D0 ADC Setting 10 Register
   type SET10_Register is record
      --  AGC Control Threshold for inactivating : Low byte
      MUTE_TH_L     : SET10_MUTE_TH_L_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET10_Register use record
      MUTE_TH_L     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  AGC Control Period for inactivating
   type SET11_MUTE_CAL_POD_Field is
     (
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^0,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^1,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^2,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^3,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^4,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^5,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^6,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^7,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^8,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^9,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^10,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^11,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^12,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^13,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^14,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^15)
     with Size => 4;
   for SET11_MUTE_CAL_POD_Field use
     (SET11_MUTE_CAL_POD_Field_256/Fs X 2^0 => 0,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^1 => 1,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^2 => 2,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^3 => 3,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^4 => 4,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^5 => 5,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^6 => 6,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^7 => 7,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^8 => 8,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^9 => 9,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^10 => 10,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^11 => 11,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^12 => 12,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^13 => 13,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^14 => 14,
      SET11_MUTE_CAL_POD_Field_256/Fs X 2^15 => 15);

   --  Offset:0x5E0 ADC Setting 11 Register
   type SET11_Register is record
      --  AGC Control Period for inactivating
      MUTE_CAL_POD  : SET11_MUTE_CAL_POD_Field :=
                       NRF_SVD.ADC.SET11_MUTE_CAL_POD_Field_256/Fs X 2^9;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET11_Register use record
      MUTE_CAL_POD  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SET12_SAT_TH_Field is HAL.UInt4;

   --  Offset:0x5F0 ADC Setting 12 Register
   type SET12_Register is record
      --  AGC Control Threshold for ADC saturation
      SAT_TH        : SET12_SAT_TH_Field := 16#3#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET12_Register use record
      SAT_TH        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  AGC Control Period for ADC saturation
   type SET13_SAT_POD_Field is
     (
      SET13_SAT_POD_Field_1/Fs X 2^0,
      SET13_SAT_POD_Field_1/Fs X 2^1,
      SET13_SAT_POD_Field_1/Fs X 2^2,
      SET13_SAT_POD_Field_1/Fs X 2^3,
      SET13_SAT_POD_Field_1/Fs X 2^4,
      SET13_SAT_POD_Field_1/Fs X 2^5,
      SET13_SAT_POD_Field_1/Fs X 2^6,
      SET13_SAT_POD_Field_1/Fs X 2^7,
      SET13_SAT_POD_Field_1/Fs X 2^8,
      SET13_SAT_POD_Field_1/Fs X 2^9,
      SET13_SAT_POD_Field_1/Fs X 2^10,
      SET13_SAT_POD_Field_1/Fs X 2^11,
      SET13_SAT_POD_Field_1/Fs X 2^12,
      SET13_SAT_POD_Field_1/Fs X 2^13,
      SET13_SAT_POD_Field_1/Fs X 2^14,
      SET13_SAT_POD_Field_1/Fs X 2^15)
     with Size => 4;
   for SET13_SAT_POD_Field use
     (SET13_SAT_POD_Field_1/Fs X 2^0 => 0,
      SET13_SAT_POD_Field_1/Fs X 2^1 => 1,
      SET13_SAT_POD_Field_1/Fs X 2^2 => 2,
      SET13_SAT_POD_Field_1/Fs X 2^3 => 3,
      SET13_SAT_POD_Field_1/Fs X 2^4 => 4,
      SET13_SAT_POD_Field_1/Fs X 2^5 => 5,
      SET13_SAT_POD_Field_1/Fs X 2^6 => 6,
      SET13_SAT_POD_Field_1/Fs X 2^7 => 7,
      SET13_SAT_POD_Field_1/Fs X 2^8 => 8,
      SET13_SAT_POD_Field_1/Fs X 2^9 => 9,
      SET13_SAT_POD_Field_1/Fs X 2^10 => 10,
      SET13_SAT_POD_Field_1/Fs X 2^11 => 11,
      SET13_SAT_POD_Field_1/Fs X 2^12 => 12,
      SET13_SAT_POD_Field_1/Fs X 2^13 => 13,
      SET13_SAT_POD_Field_1/Fs X 2^14 => 14,
      SET13_SAT_POD_Field_1/Fs X 2^15 => 15);

   --  Offset:0x600 ADC Setting 13 Register
   type SET13_Register is record
      --  AGC Control Period for ADC saturation
      SAT_POD       : SET13_SAT_POD_Field :=
                       NRF_SVD.ADC.SET13_SAT_POD_Field_1/Fs X 2^10;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET13_Register use record
      SAT_POD       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SET14_PGA_SET_VAL_Field is HAL.UInt5;

   --  AGC Control Boost setting value at normal mode
   type SET14_BOOST_SET_VAL_Field is
     (
      SET14_BOOST_SET_VAL_Field_+0DB,
      SET14_BOOST_SET_VAL_Field_+12DB,
      SET14_BOOST_SET_VAL_Field_+20DB,
      SET14_BOOST_SET_VAL_Field_+30DB)
     with Size => 2;
   for SET14_BOOST_SET_VAL_Field use
     (SET14_BOOST_SET_VAL_Field_+0DB => 0,
      SET14_BOOST_SET_VAL_Field_+12DB => 1,
      SET14_BOOST_SET_VAL_Field_+20DB => 2,
      SET14_BOOST_SET_VAL_Field_+30DB => 3);

   --  AGC Control function
   type SET14_AGC_OFF_Field is
     (
      Enable,
      Disable)
     with Size => 1;
   for SET14_AGC_OFF_Field use
     (Enable => 0,
      Disable => 1);

   --  Offset:0x610 ADC Setting 14 Register
   type SET14_Register is record
      --  AGC Control PGA setting value at normal mode(1.5dB/step)
      PGA_SET_VAL   : SET14_PGA_SET_VAL_Field := 16#10#;
      --  AGC Control Boost setting value at normal mode
      BOOST_SET_VAL : SET14_BOOST_SET_VAL_Field :=
                       NRF_SVD.ADC.SET14_BOOST_SET_VAL_Field_+30DB;
      --  AGC Control function
      AGC_OFF       : SET14_AGC_OFF_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET14_Register use record
      PGA_SET_VAL   at 0 range 0 .. 4;
      BOOST_SET_VAL at 0 range 5 .. 6;
      AGC_OFF       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  World length of DAI
   type SET15_IWL_Field is
     (
      SET15_IWL_Field_16-BITS,
      SET15_IWL_Field_18-BITS,
      SET15_IWL_Field_20-BITS,
      SET15_IWL_Field_24-BITS)
     with Size => 2;
   for SET15_IWL_Field use
     (SET15_IWL_Field_16-BITS => 0,
      SET15_IWL_Field_18-BITS => 1,
      SET15_IWL_Field_20-BITS => 2,
      SET15_IWL_Field_24-BITS => 3);

   --  Digital Audio Interface Control
   type SET15_ACTIVE_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET15_ACTIVE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x620 ADC Setting 15 Register
   type SET15_Register is record
      --  World length of DAI
      IWL           : SET15_IWL_Field := NRF_SVD.ADC.SET15_IWL_Field_24-BITS;
      --  Digital Audio Interface Control
      ACTIVE        : SET15_ACTIVE_Field := NRF_SVD.ADC.Enable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET15_Register use record
      IWL           at 0 range 0 .. 1;
      ACTIVE        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SET16_PGA_Field is HAL.UInt5;

   --  Boost setting value
   type SET16_BOOST_Field is
     (
      SET16_BOOST_Field_+0DB,
      SET16_BOOST_Field_+12DB,
      SET16_BOOST_Field_+20DB,
      SET16_BOOST_Field_+30DB)
     with Size => 2;
   for SET16_BOOST_Field use
     (SET16_BOOST_Field_+0DB => 0,
      SET16_BOOST_Field_+12DB => 1,
      SET16_BOOST_Field_+20DB => 2,
      SET16_BOOST_Field_+30DB => 3);

   --  Offset:0x630 ADC Setting 16 Register
   type SET16_Register is record
      --  PGA setting value(1.5dB/step)
      PGA           : SET16_PGA_Field := 16#9#;
      --  Boost setting value
      BOOST         : SET16_BOOST_Field := NRF_SVD.ADC.SET16_BOOST_Field_+0DB;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET16_Register use record
      PGA           at 0 range 0 .. 4;
      BOOST         at 0 range 5 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Digital volume attenuation control at mute mode
   type SET18_MUTE_CTRL_Field is
     (
      SET18_MUTE_CTRL_Field_0DB,
      SET18_MUTE_CTRL_Field_-3DB,
      SET18_MUTE_CTRL_Field_-6DB,
      SET18_MUTE_CTRL_Field_-9DB,
      SET18_MUTE_CTRL_Field_-12DB,
      SET18_MUTE_CTRL_Field_-15DB,
      SET18_MUTE_CTRL_Field_-18DB,
      SET18_MUTE_CTRL_Field_-21DB,
      SET18_MUTE_CTRL_Field_-24DB,
      SET18_MUTE_CTRL_Field_-27DB,
      SET18_MUTE_CTRL_Field_-30DB,
      SET18_MUTE_CTRL_Field_-36DB,
      SET18_MUTE_CTRL_Field_-42DB,
      SET18_MUTE_CTRL_Field_-48DB,
      SET18_MUTE_CTRL_Field_-54DB,
      SET18_MUTE_CTRL_Field_-78DB)
     with Size => 4;
   for SET18_MUTE_CTRL_Field use
     (SET18_MUTE_CTRL_Field_0DB => 0,
      SET18_MUTE_CTRL_Field_-3DB => 1,
      SET18_MUTE_CTRL_Field_-6DB => 2,
      SET18_MUTE_CTRL_Field_-9DB => 3,
      SET18_MUTE_CTRL_Field_-12DB => 4,
      SET18_MUTE_CTRL_Field_-15DB => 5,
      SET18_MUTE_CTRL_Field_-18DB => 6,
      SET18_MUTE_CTRL_Field_-21DB => 7,
      SET18_MUTE_CTRL_Field_-24DB => 8,
      SET18_MUTE_CTRL_Field_-27DB => 9,
      SET18_MUTE_CTRL_Field_-30DB => 10,
      SET18_MUTE_CTRL_Field_-36DB => 11,
      SET18_MUTE_CTRL_Field_-42DB => 12,
      SET18_MUTE_CTRL_Field_-48DB => 13,
      SET18_MUTE_CTRL_Field_-54DB => 14,
      SET18_MUTE_CTRL_Field_-78DB => 15);

   --  Digital volume attenuation control at normal mode
   type SET18_VOL_CTRL_Field is
     (
      SET18_VOL_CTRL_Field_0DB,
      SET18_VOL_CTRL_Field_-3DB,
      SET18_VOL_CTRL_Field_-6DB,
      SET18_VOL_CTRL_Field_-9DB,
      SET18_VOL_CTRL_Field_-12DB,
      SET18_VOL_CTRL_Field_-15DB,
      SET18_VOL_CTRL_Field_-18DB,
      SET18_VOL_CTRL_Field_-21DB,
      SET18_VOL_CTRL_Field_-24DB,
      SET18_VOL_CTRL_Field_-27DB,
      SET18_VOL_CTRL_Field_-30DB,
      SET18_VOL_CTRL_Field_-36DB,
      SET18_VOL_CTRL_Field_-42DB,
      SET18_VOL_CTRL_Field_-48DB,
      SET18_VOL_CTRL_Field_-54DB,
      SET18_VOL_CTRL_Field_-78DB)
     with Size => 4;
   for SET18_VOL_CTRL_Field use
     (SET18_VOL_CTRL_Field_0DB => 0,
      SET18_VOL_CTRL_Field_-3DB => 1,
      SET18_VOL_CTRL_Field_-6DB => 2,
      SET18_VOL_CTRL_Field_-9DB => 3,
      SET18_VOL_CTRL_Field_-12DB => 4,
      SET18_VOL_CTRL_Field_-15DB => 5,
      SET18_VOL_CTRL_Field_-18DB => 6,
      SET18_VOL_CTRL_Field_-21DB => 7,
      SET18_VOL_CTRL_Field_-24DB => 8,
      SET18_VOL_CTRL_Field_-27DB => 9,
      SET18_VOL_CTRL_Field_-30DB => 10,
      SET18_VOL_CTRL_Field_-36DB => 11,
      SET18_VOL_CTRL_Field_-42DB => 12,
      SET18_VOL_CTRL_Field_-48DB => 13,
      SET18_VOL_CTRL_Field_-54DB => 14,
      SET18_VOL_CTRL_Field_-78DB => 15);

   --  Offset:0x650 ADC Setting 18 Register
   type SET18_Register is record
      --  Digital volume attenuation control at mute mode
      MUTE_CTRL     : SET18_MUTE_CTRL_Field :=
                       NRF_SVD.ADC.SET18_MUTE_CTRL_Field_0DB;
      --  Digital volume attenuation control at normal mode
      VOL_CTRL      : SET18_VOL_CTRL_Field :=
                       NRF_SVD.ADC.SET18_VOL_CTRL_Field_0DB;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET18_Register use record
      MUTE_CTRL     at 0 range 0 .. 3;
      VOL_CTRL      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SET19_PGA_MUTE_VAL_Field is HAL.UInt5;

   --  Boost setting value at mute mode
   type SET19_BOOST_MUTE_VAL_Field is
     (
      SET19_BOOST_MUTE_VAL_Field_+0DB,
      SET19_BOOST_MUTE_VAL_Field_+12DB,
      SET19_BOOST_MUTE_VAL_Field_+20DB,
      SET19_BOOST_MUTE_VAL_Field_+30DB)
     with Size => 2;
   for SET19_BOOST_MUTE_VAL_Field use
     (SET19_BOOST_MUTE_VAL_Field_+0DB => 0,
      SET19_BOOST_MUTE_VAL_Field_+12DB => 1,
      SET19_BOOST_MUTE_VAL_Field_+20DB => 2,
      SET19_BOOST_MUTE_VAL_Field_+30DB => 3);

   --  Offset:0x660 ADC Setting 19 Register
   type SET19_Register is record
      --  PGA setting value at mute mode(1.5dB/step)
      PGA_MUTE_VAL   : SET19_PGA_MUTE_VAL_Field := 16#10#;
      --  Boost setting value at mute mode
      BOOST_MUTE_VAL : SET19_BOOST_MUTE_VAL_Field :=
                        NRF_SVD.ADC.SET19_BOOST_MUTE_VAL_Field_+30DB;
      --  unspecified
      Reserved_7_31  : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET19_Register use record
      PGA_MUTE_VAL   at 0 range 0 .. 4;
      BOOST_MUTE_VAL at 0 range 5 .. 6;
      Reserved_7_31  at 0 range 7 .. 31;
   end record;

   --  Period for Digital volume attenuation at mute mode
   type SET20_VOL_MUTE_POD_L_Field is
     (
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^0,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^1,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^2,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^3,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^4,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^5,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^6,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^7,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^8,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^9,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^10,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^11,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^12,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^13,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^14,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^15)
     with Size => 4;
   for SET20_VOL_MUTE_POD_L_Field use
     (SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^0 => 0,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^1 => 1,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^2 => 2,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^3 => 3,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^4 => 4,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^5 => 5,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^6 => 6,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^7 => 7,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^8 => 8,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^9 => 9,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^10 => 10,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^11 => 11,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^12 => 12,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^13 => 13,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^14 => 14,
      SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^15 => 15);

   --  Period for Digital volume attenuation at normal mode
   type SET20_VOL_MUTE_POD_H_Field is
     (
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^0,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^1,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^2,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^3,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^4,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^5,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^6,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^7,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^8,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^9,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^10,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^11,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^12,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^13,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^14,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^15)
     with Size => 4;
   for SET20_VOL_MUTE_POD_H_Field use
     (SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^0 => 0,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^1 => 1,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^2 => 2,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^3 => 3,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^4 => 4,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^5 => 5,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^6 => 6,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^7 => 7,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^8 => 8,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^9 => 9,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^10 => 10,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^11 => 11,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^12 => 12,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^13 => 13,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^14 => 14,
      SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^15 => 15);

   --  Offset:0x670 ADC Setting 20 Register
   type SET20_Register is record
      --  Period for Digital volume attenuation at mute mode
      VOL_MUTE_POD_L : SET20_VOL_MUTE_POD_L_Field :=
                        NRF_SVD.ADC.SET20_VOL_MUTE_POD_L_Field_1/Fs X 2^2;
      --  Period for Digital volume attenuation at normal mode
      VOL_MUTE_POD_H : SET20_VOL_MUTE_POD_H_Field :=
                        NRF_SVD.ADC.SET20_VOL_MUTE_POD_H_Field_1/Fs X 2^1;
      --  unspecified
      Reserved_8_31  : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET20_Register use record
      VOL_MUTE_POD_L at 0 range 0 .. 3;
      VOL_MUTE_POD_H at 0 range 4 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  PGA power-on enable
   type SET21_PGA_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET21_PGA_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  MICBOOST power-on enable
   type SET21_MICBT_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET21_MICBT_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  ADC power-on enable
   type SET21_ADC_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET21_ADC_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x6B0 ADC Setting 21 Register
   type SET21_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4 := 16#1#;
      --  PGA power-on enable
      PGA_EN        : SET21_PGA_EN_Field := NRF_SVD.ADC.Disable;
      --  MICBOOST power-on enable
      MICBT_EN      : SET21_MICBT_EN_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  ADC power-on enable
      ADC_EN        : SET21_ADC_EN_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET21_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      PGA_EN        at 0 range 4 .. 4;
      MICBT_EN      at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      ADC_EN        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CKGEN enable
   type SET22_CK_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET22_CK_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Microphone bias enable
   type SET22_MICB_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET22_MICB_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  VREF circuit enable
   type SET22_VREF_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET22_VREF_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  IREF circuit enable
   type SET22_IREF_EN_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET22_IREF_EN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x6C0 ADC Setting 22 Register
   type SET22_Register is record
      --  CKGEN enable
      CK_EN         : SET22_CK_EN_Field := NRF_SVD.ADC.Disable;
      --  Microphone bias enable
      MICB_EN       : SET22_MICB_EN_Field := NRF_SVD.ADC.Disable;
      --  VREF circuit enable
      VREF_EN       : SET22_VREF_EN_Field := NRF_SVD.ADC.Disable;
      --  IREF circuit enable
      IREF_EN       : SET22_IREF_EN_Field := NRF_SVD.ADC.Disable;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET22_Register use record
      CK_EN         at 0 range 0 .. 0;
      MICB_EN       at 0 range 1 .. 1;
      VREF_EN       at 0 range 2 .. 2;
      IREF_EN       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Microphone input path to mixer enable
   type SET23_SEL_MIX_MIC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for SET23_SEL_MIX_MIC_Field use
     (Disable => 0,
      Enable => 1);

   --  P1.7/MIC_P and P1.8/MIC_N function selection
   type SET23_SEL_MIC_Field is
     (
      General PURPOSE Io,
      Microphone Differential INPUT)
     with Size => 1;
   for SET23_SEL_MIC_Field use
     (General PURPOSE Io => 0,
      Microphone Differential INPUT => 1);

   --  Microphone Bias Output select
   type SET23_SEL_MICB_Field is
     (
      SET23_SEL_MICB_Field_0.8*Va,
      SET23_SEL_MICB_Field_0.9*Va)
     with Size => 1;
   for SET23_SEL_MICB_Field use
     (SET23_SEL_MICB_Field_0.8*Va => 0,
      SET23_SEL_MICB_Field_0.9*Va => 1);

   --  Offset:0x6D0 ADC Setting 23 Register
   type SET23_Register is record
      --  Microphone input path to mixer enable
      SEL_MIX_MIC   : SET23_SEL_MIX_MIC_Field := NRF_SVD.ADC.Enable;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  P1.7/MIC_P and P1.8/MIC_N function selection
      SEL_MIC       : SET23_SEL_MIC_Field := NRF_SVD.ADC.General PURPOSE Io;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Microphone Bias Output select
      SEL_MICB      : SET23_SEL_MICB_Field :=
                       NRF_SVD.ADC.SET23_SEL_MICB_Field_0.8*Va;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET23_Register use record
      SEL_MIX_MIC   at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      SEL_MIC       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SEL_MICB      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SET24_PGA_AGC_Field is HAL.UInt5;
   subtype SET24_BOOST_AGC_Field is HAL.UInt2;

   --  Offset:0x6E0 ADC Setting 24 Register
   type SET24_Register is record
      --  Read-only. PGA setting value when AGC is on
      PGA_AGC       : SET24_PGA_AGC_Field;
      --  Read-only. Boost setting value when AGC is on
      BOOST_AGC     : SET24_BOOST_AGC_Field;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SET24_Register use record
      PGA_AGC       at 0 range 0 .. 4;
      BOOST_AGC     at 0 range 5 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Codec ADC Control Registers
   type SN_ADC_Peripheral is record
      --  Offset:0x540 ADC Setting 1 Register
      SET1  : aliased SET1_Register;
      --  Offset:0x550 ADC Setting 2 Register
      SET2  : aliased SET2_Register;
      --  Offset:0x560 ADC Setting 3 Register
      SET3  : aliased SET3_Register;
      --  Offset:0x570 ADC Setting 4 Register
      SET4  : aliased SET4_Register;
      --  Offset:0x580 ADC Setting 5 Register
      SET5  : aliased SET5_Register;
      --  Offset:0x590 ADC Setting 6 Register
      SET6  : aliased SET6_Register;
      --  Offset:0x5A0 ADC Setting 7 Register
      SET7  : aliased SET7_Register;
      --  Offset:0x5B0 ADC Setting 8 Register
      SET8  : aliased SET8_Register;
      --  Offset:0x5C0 ADC Setting 9 Register
      SET9  : aliased SET9_Register;
      --  Offset:0x5D0 ADC Setting 10 Register
      SET10 : aliased SET10_Register;
      --  Offset:0x5E0 ADC Setting 11 Register
      SET11 : aliased SET11_Register;
      --  Offset:0x5F0 ADC Setting 12 Register
      SET12 : aliased SET12_Register;
      --  Offset:0x600 ADC Setting 13 Register
      SET13 : aliased SET13_Register;
      --  Offset:0x610 ADC Setting 14 Register
      SET14 : aliased SET14_Register;
      --  Offset:0x620 ADC Setting 15 Register
      SET15 : aliased SET15_Register;
      --  Offset:0x630 ADC Setting 16 Register
      SET16 : aliased SET16_Register;
      --  Offset:0x650 ADC Setting 18 Register
      SET18 : aliased SET18_Register;
      --  Offset:0x660 ADC Setting 19 Register
      SET19 : aliased SET19_Register;
      --  Offset:0x670 ADC Setting 20 Register
      SET20 : aliased SET20_Register;
      --  Offset:0x6B0 ADC Setting 21 Register
      SET21 : aliased SET21_Register;
      --  Offset:0x6C0 ADC Setting 22 Register
      SET22 : aliased SET22_Register;
      --  Offset:0x6D0 ADC Setting 23 Register
      SET23 : aliased SET23_Register;
      --  Offset:0x6E0 ADC Setting 24 Register
      SET24 : aliased SET24_Register;
   end record
     with Volatile;

   for SN_ADC_Peripheral use record
      SET1  at 16#540# range 0 .. 31;
      SET2  at 16#550# range 0 .. 31;
      SET3  at 16#560# range 0 .. 31;
      SET4  at 16#570# range 0 .. 31;
      SET5  at 16#580# range 0 .. 31;
      SET6  at 16#590# range 0 .. 31;
      SET7  at 16#5A0# range 0 .. 31;
      SET8  at 16#5B0# range 0 .. 31;
      SET9  at 16#5C0# range 0 .. 31;
      SET10 at 16#5D0# range 0 .. 31;
      SET11 at 16#5E0# range 0 .. 31;
      SET12 at 16#5F0# range 0 .. 31;
      SET13 at 16#600# range 0 .. 31;
      SET14 at 16#610# range 0 .. 31;
      SET15 at 16#620# range 0 .. 31;
      SET16 at 16#630# range 0 .. 31;
      SET18 at 16#650# range 0 .. 31;
      SET19 at 16#660# range 0 .. 31;
      SET20 at 16#670# range 0 .. 31;
      SET21 at 16#6B0# range 0 .. 31;
      SET22 at 16#6C0# range 0 .. 31;
      SET23 at 16#6D0# range 0 .. 31;
      SET24 at 16#6E0# range 0 .. 31;
   end record;

   --  Codec ADC Control Registers
   SN_ADC_Periph : aliased SN_ADC_Peripheral
     with Import, Address => System'To_Address (16#40064000#);

end NRF_SVD.ADC;
