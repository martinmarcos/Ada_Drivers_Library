--

--  This spec has been automatically generated from SN32F100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Data of Pn.0
   type DATA_DATA0_Field is
     (
      --  Pn.0 is 0
      DATA_DATA0_Field_0,
      --  Pn.0 is 1
      DATA_DATA0_Field_1)
     with Size => 1;
   for DATA_DATA0_Field use
     (DATA_DATA0_Field_0 => 0,
      DATA_DATA0_Field_1 => 1);

   --  Data of Pn.1
   type DATA_DATA1_Field is
     (
      --  Pn.1 is 0
      DATA_DATA1_Field_0,
      --  Pn.1 is 1
      DATA_DATA1_Field_1)
     with Size => 1;
   for DATA_DATA1_Field use
     (DATA_DATA1_Field_0 => 0,
      DATA_DATA1_Field_1 => 1);

   --  Data of Pn.2
   type DATA_DATA2_Field is
     (
      --  Pn.2 is 0
      DATA_DATA2_Field_0,
      --  Pn.2 is 1
      DATA_DATA2_Field_1)
     with Size => 1;
   for DATA_DATA2_Field use
     (DATA_DATA2_Field_0 => 0,
      DATA_DATA2_Field_1 => 1);

   --  Data of Pn.3
   type DATA_DATA3_Field is
     (
      --  Pn.3 is 0
      DATA_DATA3_Field_0,
      --  Pn.3 is 1
      DATA_DATA3_Field_1)
     with Size => 1;
   for DATA_DATA3_Field use
     (DATA_DATA3_Field_0 => 0,
      DATA_DATA3_Field_1 => 1);

   --  Data of Pn.4
   type DATA_DATA4_Field is
     (
      --  Pn.4 is 0
      DATA_DATA4_Field_0,
      --  Pn.4 is 1
      DATA_DATA4_Field_1)
     with Size => 1;
   for DATA_DATA4_Field use
     (DATA_DATA4_Field_0 => 0,
      DATA_DATA4_Field_1 => 1);

   --  Data of Pn.5
   type DATA_DATA5_Field is
     (
      --  Pn.5 is 0
      DATA_DATA5_Field_0,
      --  Pn.5 is 1
      DATA_DATA5_Field_1)
     with Size => 1;
   for DATA_DATA5_Field use
     (DATA_DATA5_Field_0 => 0,
      DATA_DATA5_Field_1 => 1);

   --  Data of Pn.6
   type DATA_DATA6_Field is
     (
      --  Pn.6 is 0
      DATA_DATA6_Field_0,
      --  Pn.6 is 1
      DATA_DATA6_Field_1)
     with Size => 1;
   for DATA_DATA6_Field use
     (DATA_DATA6_Field_0 => 0,
      DATA_DATA6_Field_1 => 1);

   --  Data of Pn.7
   type DATA_DATA7_Field is
     (
      --  Pn.7 is 0
      DATA_DATA7_Field_0,
      --  Pn.7 is 1
      DATA_DATA7_Field_1)
     with Size => 1;
   for DATA_DATA7_Field use
     (DATA_DATA7_Field_0 => 0,
      DATA_DATA7_Field_1 => 1);

   --  Data of Pn.8
   type DATA_DATA8_Field is
     (
      --  Pn.8 is 0
      DATA_DATA8_Field_0,
      --  Pn.8 is 1
      DATA_DATA8_Field_1)
     with Size => 1;
   for DATA_DATA8_Field use
     (DATA_DATA8_Field_0 => 0,
      DATA_DATA8_Field_1 => 1);

   --  Data of Pn.9
   type DATA_DATA9_Field is
     (
      --  Pn.9 is 0
      DATA_DATA9_Field_0,
      --  Pn.9 is 1
      DATA_DATA9_Field_1)
     with Size => 1;
   for DATA_DATA9_Field use
     (DATA_DATA9_Field_0 => 0,
      DATA_DATA9_Field_1 => 1);

   --  Data of Pn.10
   type DATA_DATA10_Field is
     (
      --  Pn.10 is 0
      DATA_DATA10_Field_0,
      --  Pn.10 is 1
      DATA_DATA10_Field_1)
     with Size => 1;
   for DATA_DATA10_Field use
     (DATA_DATA10_Field_0 => 0,
      DATA_DATA10_Field_1 => 1);

   --  Data of Pn.11
   type DATA_DATA11_Field is
     (
      --  Pn.11 is 0
      DATA_DATA11_Field_0,
      --  Pn.11 is 1
      DATA_DATA11_Field_1)
     with Size => 1;
   for DATA_DATA11_Field use
     (DATA_DATA11_Field_0 => 0,
      DATA_DATA11_Field_1 => 1);

   --  Data of Pn.12
   type DATA_DATA12_Field is
     (
      --  Pn.12 is 0
      DATA_DATA12_Field_0,
      --  Pn.12 is 1
      DATA_DATA12_Field_1)
     with Size => 1;
   for DATA_DATA12_Field use
     (DATA_DATA12_Field_0 => 0,
      DATA_DATA12_Field_1 => 1);

   --  Data of Pn.13
   type DATA_DATA13_Field is
     (
      --  Pn.13 is 0
      DATA_DATA13_Field_0,
      --  Pn.13 is 1
      DATA_DATA13_Field_1)
     with Size => 1;
   for DATA_DATA13_Field use
     (DATA_DATA13_Field_0 => 0,
      DATA_DATA13_Field_1 => 1);

   --  Data of Pn.14
   type DATA_DATA14_Field is
     (
      --  Pn.14 is 0
      DATA_DATA14_Field_0,
      --  Pn.14 is 1
      DATA_DATA14_Field_1)
     with Size => 1;
   for DATA_DATA14_Field use
     (DATA_DATA14_Field_0 => 0,
      DATA_DATA14_Field_1 => 1);

   --  Data of Pn.15
   type DATA_DATA15_Field is
     (
      --  Pn.15 is 0
      DATA_DATA15_Field_0,
      --  Pn.15 is 1
      DATA_DATA15_Field_1)
     with Size => 1;
   for DATA_DATA15_Field use
     (DATA_DATA15_Field_0 => 0,
      DATA_DATA15_Field_1 => 1);

   --  Offset:0x00 GPIO Port n Data Register
   type DATA_Register is record
      --  Data of Pn.0
      DATA0          : DATA_DATA0_Field := NRF_SVD.GPIO.DATA_DATA0_Field_0;
      --  Data of Pn.1
      DATA1          : DATA_DATA1_Field := NRF_SVD.GPIO.DATA_DATA1_Field_0;
      --  Data of Pn.2
      DATA2          : DATA_DATA2_Field := NRF_SVD.GPIO.DATA_DATA2_Field_0;
      --  Data of Pn.3
      DATA3          : DATA_DATA3_Field := NRF_SVD.GPIO.DATA_DATA3_Field_0;
      --  Data of Pn.4
      DATA4          : DATA_DATA4_Field := NRF_SVD.GPIO.DATA_DATA4_Field_0;
      --  Data of Pn.5
      DATA5          : DATA_DATA5_Field := NRF_SVD.GPIO.DATA_DATA5_Field_0;
      --  Data of Pn.6
      DATA6          : DATA_DATA6_Field := NRF_SVD.GPIO.DATA_DATA6_Field_0;
      --  Data of Pn.7
      DATA7          : DATA_DATA7_Field := NRF_SVD.GPIO.DATA_DATA7_Field_0;
      --  Data of Pn.8
      DATA8          : DATA_DATA8_Field := NRF_SVD.GPIO.DATA_DATA8_Field_0;
      --  Data of Pn.9
      DATA9          : DATA_DATA9_Field := NRF_SVD.GPIO.DATA_DATA9_Field_0;
      --  Data of Pn.10
      DATA10         : DATA_DATA10_Field := NRF_SVD.GPIO.DATA_DATA10_Field_0;
      --  Data of Pn.11
      DATA11         : DATA_DATA11_Field := NRF_SVD.GPIO.DATA_DATA11_Field_0;
      --  Data of Pn.12
      DATA12         : DATA_DATA12_Field := NRF_SVD.GPIO.DATA_DATA12_Field_0;
      --  Data of Pn.13
      DATA13         : DATA_DATA13_Field := NRF_SVD.GPIO.DATA_DATA13_Field_0;
      --  Data of Pn.14
      DATA14         : DATA_DATA14_Field := NRF_SVD.GPIO.DATA_DATA14_Field_0;
      --  Data of Pn.15
      DATA15         : DATA_DATA15_Field := NRF_SVD.GPIO.DATA_DATA15_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register use record
      DATA0          at 0 range 0 .. 0;
      DATA1          at 0 range 1 .. 1;
      DATA2          at 0 range 2 .. 2;
      DATA3          at 0 range 3 .. 3;
      DATA4          at 0 range 4 .. 4;
      DATA5          at 0 range 5 .. 5;
      DATA6          at 0 range 6 .. 6;
      DATA7          at 0 range 7 .. 7;
      DATA8          at 0 range 8 .. 8;
      DATA9          at 0 range 9 .. 9;
      DATA10         at 0 range 10 .. 10;
      DATA11         at 0 range 11 .. 11;
      DATA12         at 0 range 12 .. 12;
      DATA13         at 0 range 13 .. 13;
      DATA14         at 0 range 14 .. 14;
      DATA15         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Mode of Pn.0
   type MODE_MODE0_Field is
     (
      --  Pn.0 is Input pin
      I,
      --  Pn.0 is Output pin
      O)
     with Size => 1;
   for MODE_MODE0_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.1
   type MODE_MODE1_Field is
     (
      --  Pn.1 is Input pin
      I,
      --  Pn.1 is Output pin
      O)
     with Size => 1;
   for MODE_MODE1_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.2
   type MODE_MODE2_Field is
     (
      --  Pn.2 is Input pin
      I,
      --  Pn.2 is Output pin
      O)
     with Size => 1;
   for MODE_MODE2_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.3
   type MODE_MODE3_Field is
     (
      --  Pn.3 is Input pin
      I,
      --  Pn.3 is Output pin
      O)
     with Size => 1;
   for MODE_MODE3_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.4
   type MODE_MODE4_Field is
     (
      --  Pn.4 is Input pin
      I,
      --  Pn.4 is Output pin
      O)
     with Size => 1;
   for MODE_MODE4_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.5
   type MODE_MODE5_Field is
     (
      --  Pn.5 is Input pin
      I,
      --  Pn.5 is Output pin
      O)
     with Size => 1;
   for MODE_MODE5_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.6
   type MODE_MODE6_Field is
     (
      --  Pn.6 is Input pin
      I,
      --  Pn.6 is Output pin
      O)
     with Size => 1;
   for MODE_MODE6_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.7
   type MODE_MODE7_Field is
     (
      --  Pn.7 is Input pin
      I,
      --  Pn.7 is Output pin
      O)
     with Size => 1;
   for MODE_MODE7_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.8
   type MODE_MODE8_Field is
     (
      --  Pn.8 is Input pin
      I,
      --  Pn.8 is Output pin
      O)
     with Size => 1;
   for MODE_MODE8_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.9
   type MODE_MODE9_Field is
     (
      --  Pn.9 is Input pin
      I,
      --  Pn.9 is Output pin
      O)
     with Size => 1;
   for MODE_MODE9_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.10
   type MODE_MODE10_Field is
     (
      --  Pn.10 is Input pin
      I,
      --  Pn.10 is Output pin
      O)
     with Size => 1;
   for MODE_MODE10_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.11
   type MODE_MODE11_Field is
     (
      --  Pn.11 is Input pin
      I,
      --  Pn.11 is Output pin
      O)
     with Size => 1;
   for MODE_MODE11_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.12
   type MODE_MODE12_Field is
     (
      --  Pn.12 is Input pin
      I,
      --  Pn.12 is Output pin
      O)
     with Size => 1;
   for MODE_MODE12_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.13
   type MODE_MODE13_Field is
     (
      --  Pn.13 is Input pin
      I,
      --  Pn.13 is Output pin
      O)
     with Size => 1;
   for MODE_MODE13_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.14
   type MODE_MODE14_Field is
     (
      --  Pn.14 is Input pin
      I,
      --  Pn.14 is Output pin
      O)
     with Size => 1;
   for MODE_MODE14_Field use
     (I => 0,
      O => 1);

   --  Mode of Pn.15
   type MODE_MODE15_Field is
     (
      --  Pn.15 is Input pin
      I,
      --  Pn.15 is Output pin
      O)
     with Size => 1;
   for MODE_MODE15_Field use
     (I => 0,
      O => 1);

   --  Offset:0x04 GPIO Port n Mode Register
   type MODE_Register is record
      --  Mode of Pn.0
      MODE0          : MODE_MODE0_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.1
      MODE1          : MODE_MODE1_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.2
      MODE2          : MODE_MODE2_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.3
      MODE3          : MODE_MODE3_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.4
      MODE4          : MODE_MODE4_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.5
      MODE5          : MODE_MODE5_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.6
      MODE6          : MODE_MODE6_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.7
      MODE7          : MODE_MODE7_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.8
      MODE8          : MODE_MODE8_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.9
      MODE9          : MODE_MODE9_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.10
      MODE10         : MODE_MODE10_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.11
      MODE11         : MODE_MODE11_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.12
      MODE12         : MODE_MODE12_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.13
      MODE13         : MODE_MODE13_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.14
      MODE14         : MODE_MODE14_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.15
      MODE15         : MODE_MODE15_Field := NRF_SVD.GPIO.I;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      MODE0          at 0 range 0 .. 0;
      MODE1          at 0 range 1 .. 1;
      MODE2          at 0 range 2 .. 2;
      MODE3          at 0 range 3 .. 3;
      MODE4          at 0 range 4 .. 4;
      MODE5          at 0 range 5 .. 5;
      MODE6          at 0 range 6 .. 6;
      MODE7          at 0 range 7 .. 7;
      MODE8          at 0 range 8 .. 8;
      MODE9          at 0 range 9 .. 9;
      MODE10         at 0 range 10 .. 10;
      MODE11         at 0 range 11 .. 11;
      MODE12         at 0 range 12 .. 12;
      MODE13         at 0 range 13 .. 13;
      MODE14         at 0 range 14 .. 14;
      MODE15         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Configuration of Pn.0
   type CFG_CFG0_Field is
     (
      --  Enable pull-up resistor
      CFG_CFG0_Field_00,
      --  Enable pull-down resistor
      CFG_CFG0_Field_01,
      --  No pull-up/pull-down resistor enabled
      CFG_CFG0_Field_10,
      --  Repeater mode
      CFG_CFG0_Field_11)
     with Size => 2;
   for CFG_CFG0_Field use
     (CFG_CFG0_Field_00 => 0,
      CFG_CFG0_Field_01 => 1,
      CFG_CFG0_Field_10 => 2,
      CFG_CFG0_Field_11 => 3);

   --  CFG array
   type CFG_Field_Array is array (0 .. 15) of CFG_CFG0_Field
     with Component_Size => 2, Size => 32;

   --  Offset:0x08 GPIO Port n Configuration Register
   type CFG_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt32;
         when True =>
            --  CFG as an array
            Arr : CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Interrupt on Pn.0 is event or edge sensitive
   type IS_IS0_Field is
     (
      --  Interrupt on Pn.0 is edge sensitive
      Edge,
      --  Interrupt on Pn.0 is event sensitive
      Event)
     with Size => 1;
   for IS_IS0_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.1 is event or edge sensitive
   type IS_IS1_Field is
     (
      --  Interrupt on Pn.1 is edge sensitive
      Edge,
      --  Interrupt on Pn.1 is event sensitive
      Event)
     with Size => 1;
   for IS_IS1_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.2 is event or edge sensitive
   type IS_IS2_Field is
     (
      --  Interrupt on Pn.2 is edge sensitive
      Edge,
      --  Interrupt on Pn.2 is event sensitive
      Event)
     with Size => 1;
   for IS_IS2_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.3 is event or edge sensitive
   type IS_IS3_Field is
     (
      --  Interrupt on Pn.3 is edge sensitive
      Edge,
      --  Interrupt on Pn.3 is event sensitive
      Event)
     with Size => 1;
   for IS_IS3_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.4 is event or edge sensitive
   type IS_IS4_Field is
     (
      --  Interrupt on Pn.4 is edge sensitive
      Edge,
      --  Interrupt on Pn.4 is event sensitive
      Event)
     with Size => 1;
   for IS_IS4_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.5 is event or edge sensitive
   type IS_IS5_Field is
     (
      --  Interrupt on Pn.5 is edge sensitive
      Edge,
      --  Interrupt on Pn.5 is event sensitive
      Event)
     with Size => 1;
   for IS_IS5_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.6 is event or edge sensitive
   type IS_IS6_Field is
     (
      --  Interrupt on Pn.6 is edge sensitive
      Edge,
      --  Interrupt on Pn.6 is event sensitive
      Event)
     with Size => 1;
   for IS_IS6_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.7 is event or edge sensitive
   type IS_IS7_Field is
     (
      --  Interrupt on Pn.7 is edge sensitive
      Edge,
      --  Interrupt on Pn.7 is event sensitive
      Event)
     with Size => 1;
   for IS_IS7_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.8 is event or edge sensitive
   type IS_IS8_Field is
     (
      --  Interrupt on Pn.8 is edge sensitive
      Edge,
      --  Interrupt on Pn.8 is event sensitive
      Event)
     with Size => 1;
   for IS_IS8_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.9 is event or edge sensitive
   type IS_IS9_Field is
     (
      --  Interrupt on Pn.9 is edge sensitive
      Edge,
      --  Interrupt on Pn.9 is event sensitive
      Event)
     with Size => 1;
   for IS_IS9_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.10 is event or edge sensitive
   type IS_IS10_Field is
     (
      --  Interrupt on Pn.10 is edge sensitive
      Edge,
      --  Interrupt on Pn.10 is event sensitive
      Event)
     with Size => 1;
   for IS_IS10_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.11 is event or edge sensitive
   type IS_IS11_Field is
     (
      --  Interrupt on Pn.11 is edge sensitive
      Edge,
      --  Interrupt on Pn.11 is event sensitive
      Event)
     with Size => 1;
   for IS_IS11_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.12 is event or edge sensitive
   type IS_IS12_Field is
     (
      --  Interrupt on Pn.12 is edge sensitive
      Edge,
      --  Interrupt on Pn.12 is event sensitive
      Event)
     with Size => 1;
   for IS_IS12_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.13 is event or edge sensitive
   type IS_IS13_Field is
     (
      --  Interrupt on Pn.13 is edge sensitive
      Edge,
      --  Interrupt on Pn.13 is event sensitive
      Event)
     with Size => 1;
   for IS_IS13_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.14 is event or edge sensitive
   type IS_IS14_Field is
     (
      --  Interrupt on Pn.14 is edge sensitive
      Edge,
      --  Interrupt on Pn.14 is event sensitive
      Event)
     with Size => 1;
   for IS_IS14_Field use
     (Edge => 0,
      Event => 1);

   --  Interrupt on Pn.15 is event or edge sensitive
   type IS_IS15_Field is
     (
      --  Interrupt on Pn.15 is edge sensitive
      Edge,
      --  Interrupt on Pn.15 is event sensitive
      Event)
     with Size => 1;
   for IS_IS15_Field use
     (Edge => 0,
      Event => 1);

   --  Offset:0x0C GPIO Port n Interrupt Sense Register
   type IS_Register is record
      --  Interrupt on Pn.0 is event or edge sensitive
      IS0            : IS_IS0_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.1 is event or edge sensitive
      IS1            : IS_IS1_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.2 is event or edge sensitive
      IS2            : IS_IS2_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.3 is event or edge sensitive
      IS3            : IS_IS3_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.4 is event or edge sensitive
      IS4            : IS_IS4_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.5 is event or edge sensitive
      IS5            : IS_IS5_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.6 is event or edge sensitive
      IS6            : IS_IS6_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.7 is event or edge sensitive
      IS7            : IS_IS7_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.8 is event or edge sensitive
      IS8            : IS_IS8_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.9 is event or edge sensitive
      IS9            : IS_IS9_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.10 is event or edge sensitive
      IS10           : IS_IS10_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.11 is event or edge sensitive
      IS11           : IS_IS11_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.12 is event or edge sensitive
      IS12           : IS_IS12_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.13 is event or edge sensitive
      IS13           : IS_IS13_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.14 is event or edge sensitive
      IS14           : IS_IS14_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.15 is event or edge sensitive
      IS15           : IS_IS15_Field := NRF_SVD.GPIO.Edge;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IS_Register use record
      IS0            at 0 range 0 .. 0;
      IS1            at 0 range 1 .. 1;
      IS2            at 0 range 2 .. 2;
      IS3            at 0 range 3 .. 3;
      IS4            at 0 range 4 .. 4;
      IS5            at 0 range 5 .. 5;
      IS6            at 0 range 6 .. 6;
      IS7            at 0 range 7 .. 7;
      IS8            at 0 range 8 .. 8;
      IS9            at 0 range 9 .. 9;
      IS10           at 0 range 10 .. 10;
      IS11           at 0 range 11 .. 11;
      IS12           at 0 range 12 .. 12;
      IS13           at 0 range 13 .. 13;
      IS14           at 0 range 14 .. 14;
      IS15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt on Pn.0 is triggered ob both edges
   type IBS_IBS0_Field is
     (
      --  Interrupt on Pn.0 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.0 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS0_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.1 is triggered ob both edges
   type IBS_IBS1_Field is
     (
      --  Interrupt on Pn.1 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.1 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS1_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.2 is triggered ob both edges
   type IBS_IBS2_Field is
     (
      --  Interrupt on Pn.2 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.2 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS2_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.3 is triggered ob both edges
   type IBS_IBS3_Field is
     (
      --  Interrupt on Pn.3 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.3 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS3_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.4 is triggered ob both edges
   type IBS_IBS4_Field is
     (
      --  Interrupt on Pn.4 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.4 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS4_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.5 is triggered ob both edges
   type IBS_IBS5_Field is
     (
      --  Interrupt on Pn.5 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.5 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS5_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.6 is triggered ob both edges
   type IBS_IBS6_Field is
     (
      --  Interrupt on Pn.6 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.6 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS6_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.7 is triggered ob both edges
   type IBS_IBS7_Field is
     (
      --  Interrupt on Pn.7 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.7 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS7_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.8 is triggered ob both edges
   type IBS_IBS8_Field is
     (
      --  Interrupt on Pn.8 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.8 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS8_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.9 is triggered ob both edges
   type IBS_IBS9_Field is
     (
      --  Interrupt on Pn.9 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.9 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS9_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.10 is triggered ob both edges
   type IBS_IBS10_Field is
     (
      --  Interrupt on Pn.10 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.10 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS10_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.11 is triggered ob both edges
   type IBS_IBS11_Field is
     (
      --  Interrupt on Pn.11 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.11 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS11_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.12 is triggered ob both edges
   type IBS_IBS12_Field is
     (
      --  Interrupt on Pn.12 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.12 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS12_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.13 is triggered ob both edges
   type IBS_IBS13_Field is
     (
      --  Interrupt on Pn.13 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.13 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS13_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.14 is triggered ob both edges
   type IBS_IBS14_Field is
     (
      --  Interrupt on Pn.14 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.14 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS14_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Interrupt on Pn.15 is triggered ob both edges
   type IBS_IBS15_Field is
     (
      --  Interrupt on Pn.15 is controlled by GPIOn_IEV register
      Iev,
      --  Both edges on Pn.15 trigger an interrupt
      Both EDGE)
     with Size => 1;
   for IBS_IBS15_Field use
     (Iev => 0,
      Both EDGE => 1);

   --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
   type IBS_Register is record
      --  Interrupt on Pn.0 is triggered ob both edges
      IBS0           : IBS_IBS0_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.1 is triggered ob both edges
      IBS1           : IBS_IBS1_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.2 is triggered ob both edges
      IBS2           : IBS_IBS2_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.3 is triggered ob both edges
      IBS3           : IBS_IBS3_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.4 is triggered ob both edges
      IBS4           : IBS_IBS4_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.5 is triggered ob both edges
      IBS5           : IBS_IBS5_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.6 is triggered ob both edges
      IBS6           : IBS_IBS6_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.7 is triggered ob both edges
      IBS7           : IBS_IBS7_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.8 is triggered ob both edges
      IBS8           : IBS_IBS8_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.9 is triggered ob both edges
      IBS9           : IBS_IBS9_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.10 is triggered ob both edges
      IBS10          : IBS_IBS10_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.11 is triggered ob both edges
      IBS11          : IBS_IBS11_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.12 is triggered ob both edges
      IBS12          : IBS_IBS12_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.13 is triggered ob both edges
      IBS13          : IBS_IBS13_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.14 is triggered ob both edges
      IBS14          : IBS_IBS14_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.15 is triggered ob both edges
      IBS15          : IBS_IBS15_Field := NRF_SVD.GPIO.Iev;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IBS_Register use record
      IBS0           at 0 range 0 .. 0;
      IBS1           at 0 range 1 .. 1;
      IBS2           at 0 range 2 .. 2;
      IBS3           at 0 range 3 .. 3;
      IBS4           at 0 range 4 .. 4;
      IBS5           at 0 range 5 .. 5;
      IBS6           at 0 range 6 .. 6;
      IBS7           at 0 range 7 .. 7;
      IBS8           at 0 range 8 .. 8;
      IBS9           at 0 range 9 .. 9;
      IBS10          at 0 range 10 .. 10;
      IBS11          at 0 range 11 .. 11;
      IBS12          at 0 range 12 .. 12;
      IBS13          at 0 range 13 .. 13;
      IBS14          at 0 range 14 .. 14;
      IBS15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt trigged evnet on Pn.0
   type IEV_IEV0_Field is
     (
      --  Rising edge or High level on Pn.0 triggers an interrupt
      IEV_IEV0_Field_0,
      --  Falling edge or Low level on Pn.0 triggers an interrupt
      IEV_IEV0_Field_1)
     with Size => 1;
   for IEV_IEV0_Field use
     (IEV_IEV0_Field_0 => 0,
      IEV_IEV0_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.1
   type IEV_IEV1_Field is
     (
      --  Rising edge or High level on Pn.1 triggers an interrupt
      IEV_IEV1_Field_0,
      --  Falling edge or Low level on Pn.1 triggers an interrupt
      IEV_IEV1_Field_1)
     with Size => 1;
   for IEV_IEV1_Field use
     (IEV_IEV1_Field_0 => 0,
      IEV_IEV1_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.2
   type IEV_IEV2_Field is
     (
      --  Rising edge or High level on Pn.2 triggers an interrupt
      IEV_IEV2_Field_0,
      --  Falling edge or Low level on Pn.2 triggers an interrupt
      IEV_IEV2_Field_1)
     with Size => 1;
   for IEV_IEV2_Field use
     (IEV_IEV2_Field_0 => 0,
      IEV_IEV2_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.3
   type IEV_IEV3_Field is
     (
      --  Rising edge or High level on Pn.3 triggers an interrupt
      IEV_IEV3_Field_0,
      --  Falling edge or Low level on Pn.3 triggers an interrupt
      IEV_IEV3_Field_1)
     with Size => 1;
   for IEV_IEV3_Field use
     (IEV_IEV3_Field_0 => 0,
      IEV_IEV3_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.4
   type IEV_IEV4_Field is
     (
      --  Rising edge or High level on Pn.4 triggers an interrupt
      IEV_IEV4_Field_0,
      --  Falling edge or Low level on Pn.4 triggers an interrupt
      IEV_IEV4_Field_1)
     with Size => 1;
   for IEV_IEV4_Field use
     (IEV_IEV4_Field_0 => 0,
      IEV_IEV4_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.5
   type IEV_IEV5_Field is
     (
      --  Rising edge or High level on Pn.5 triggers an interrupt
      IEV_IEV5_Field_0,
      --  Falling edge or Low level on Pn.5 triggers an interrupt
      IEV_IEV5_Field_1)
     with Size => 1;
   for IEV_IEV5_Field use
     (IEV_IEV5_Field_0 => 0,
      IEV_IEV5_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.6
   type IEV_IEV6_Field is
     (
      --  Rising edge or High level on Pn.6 triggers an interrupt
      IEV_IEV6_Field_0,
      --  Falling edge or Low level on Pn.6 triggers an interrupt
      IEV_IEV6_Field_1)
     with Size => 1;
   for IEV_IEV6_Field use
     (IEV_IEV6_Field_0 => 0,
      IEV_IEV6_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.7
   type IEV_IEV7_Field is
     (
      --  Rising edge or High level on Pn.7 triggers an interrupt
      IEV_IEV7_Field_0,
      --  Falling edge or Low level on Pn.7 triggers an interrupt
      IEV_IEV7_Field_1)
     with Size => 1;
   for IEV_IEV7_Field use
     (IEV_IEV7_Field_0 => 0,
      IEV_IEV7_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.8
   type IEV_IEV8_Field is
     (
      --  Rising edge or High level on Pn.8 triggers an interrupt
      IEV_IEV8_Field_0,
      --  Falling edge or Low level on Pn.8 triggers an interrupt
      IEV_IEV8_Field_1)
     with Size => 1;
   for IEV_IEV8_Field use
     (IEV_IEV8_Field_0 => 0,
      IEV_IEV8_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.9
   type IEV_IEV9_Field is
     (
      --  Rising edge or High level on Pn.9 triggers an interrupt
      IEV_IEV9_Field_0,
      --  Falling edge or Low level on Pn.9 triggers an interrupt
      IEV_IEV9_Field_1)
     with Size => 1;
   for IEV_IEV9_Field use
     (IEV_IEV9_Field_0 => 0,
      IEV_IEV9_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.10
   type IEV_IEV10_Field is
     (
      --  Rising edge or High level on Pn.10 triggers an interrupt
      IEV_IEV10_Field_0,
      --  Falling edge or Low level on Pn.10 triggers an interrupt
      IEV_IEV10_Field_1)
     with Size => 1;
   for IEV_IEV10_Field use
     (IEV_IEV10_Field_0 => 0,
      IEV_IEV10_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.11
   type IEV_IEV11_Field is
     (
      --  Rising edge or High level on Pn.11 triggers an interrupt
      IEV_IEV11_Field_0,
      --  Falling edge or Low level on Pn.11 triggers an interrupt
      IEV_IEV11_Field_1)
     with Size => 1;
   for IEV_IEV11_Field use
     (IEV_IEV11_Field_0 => 0,
      IEV_IEV11_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.12
   type IEV_IEV12_Field is
     (
      --  Rising edge or High level on Pn.12 triggers an interrupt
      IEV_IEV12_Field_0,
      --  Falling edge or Low level on Pn.12 triggers an interrupt
      IEV_IEV12_Field_1)
     with Size => 1;
   for IEV_IEV12_Field use
     (IEV_IEV12_Field_0 => 0,
      IEV_IEV12_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.13
   type IEV_IEV13_Field is
     (
      --  Rising edge or High level on Pn.13 triggers an interrupt
      IEV_IEV13_Field_0,
      --  Falling edge or Low level on Pn.13 triggers an interrupt
      IEV_IEV13_Field_1)
     with Size => 1;
   for IEV_IEV13_Field use
     (IEV_IEV13_Field_0 => 0,
      IEV_IEV13_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.14
   type IEV_IEV14_Field is
     (
      --  Rising edge or High level on Pn.14 triggers an interrupt
      IEV_IEV14_Field_0,
      --  Falling edge or Low level on Pn.14 triggers an interrupt
      IEV_IEV14_Field_1)
     with Size => 1;
   for IEV_IEV14_Field use
     (IEV_IEV14_Field_0 => 0,
      IEV_IEV14_Field_1 => 1);

   --  Interrupt trigged evnet on Pn.15
   type IEV_IEV15_Field is
     (
      --  Rising edge or High level on Pn.15 triggers an interrupt
      IEV_IEV15_Field_0,
      --  Falling edge or Low level on Pn.15 triggers an interrupt
      IEV_IEV15_Field_1)
     with Size => 1;
   for IEV_IEV15_Field use
     (IEV_IEV15_Field_0 => 0,
      IEV_IEV15_Field_1 => 1);

   --  Offset:0x14 GPIO Port n Interrupt Event Register
   type IEV_Register is record
      --  Interrupt trigged evnet on Pn.0
      IEV0           : IEV_IEV0_Field := NRF_SVD.GPIO.IEV_IEV0_Field_0;
      --  Interrupt trigged evnet on Pn.1
      IEV1           : IEV_IEV1_Field := NRF_SVD.GPIO.IEV_IEV1_Field_0;
      --  Interrupt trigged evnet on Pn.2
      IEV2           : IEV_IEV2_Field := NRF_SVD.GPIO.IEV_IEV2_Field_0;
      --  Interrupt trigged evnet on Pn.3
      IEV3           : IEV_IEV3_Field := NRF_SVD.GPIO.IEV_IEV3_Field_0;
      --  Interrupt trigged evnet on Pn.4
      IEV4           : IEV_IEV4_Field := NRF_SVD.GPIO.IEV_IEV4_Field_0;
      --  Interrupt trigged evnet on Pn.5
      IEV5           : IEV_IEV5_Field := NRF_SVD.GPIO.IEV_IEV5_Field_0;
      --  Interrupt trigged evnet on Pn.6
      IEV6           : IEV_IEV6_Field := NRF_SVD.GPIO.IEV_IEV6_Field_0;
      --  Interrupt trigged evnet on Pn.7
      IEV7           : IEV_IEV7_Field := NRF_SVD.GPIO.IEV_IEV7_Field_0;
      --  Interrupt trigged evnet on Pn.8
      IEV8           : IEV_IEV8_Field := NRF_SVD.GPIO.IEV_IEV8_Field_0;
      --  Interrupt trigged evnet on Pn.9
      IEV9           : IEV_IEV9_Field := NRF_SVD.GPIO.IEV_IEV9_Field_0;
      --  Interrupt trigged evnet on Pn.10
      IEV10          : IEV_IEV10_Field := NRF_SVD.GPIO.IEV_IEV10_Field_0;
      --  Interrupt trigged evnet on Pn.11
      IEV11          : IEV_IEV11_Field := NRF_SVD.GPIO.IEV_IEV11_Field_0;
      --  Interrupt trigged evnet on Pn.12
      IEV12          : IEV_IEV12_Field := NRF_SVD.GPIO.IEV_IEV12_Field_0;
      --  Interrupt trigged evnet on Pn.13
      IEV13          : IEV_IEV13_Field := NRF_SVD.GPIO.IEV_IEV13_Field_0;
      --  Interrupt trigged evnet on Pn.14
      IEV14          : IEV_IEV14_Field := NRF_SVD.GPIO.IEV_IEV14_Field_0;
      --  Interrupt trigged evnet on Pn.15
      IEV15          : IEV_IEV15_Field := NRF_SVD.GPIO.IEV_IEV15_Field_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEV_Register use record
      IEV0           at 0 range 0 .. 0;
      IEV1           at 0 range 1 .. 1;
      IEV2           at 0 range 2 .. 2;
      IEV3           at 0 range 3 .. 3;
      IEV4           at 0 range 4 .. 4;
      IEV5           at 0 range 5 .. 5;
      IEV6           at 0 range 6 .. 6;
      IEV7           at 0 range 7 .. 7;
      IEV8           at 0 range 8 .. 8;
      IEV9           at 0 range 9 .. 9;
      IEV10          at 0 range 10 .. 10;
      IEV11          at 0 range 11 .. 11;
      IEV12          at 0 range 12 .. 12;
      IEV13          at 0 range 13 .. 13;
      IEV14          at 0 range 14 .. 14;
      IEV15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt on Pn.0 enable
   type IE_IE0_Field is
     (
      --  Disable interrupt on Pn.0
      Disable,
      --  Enable interrupt on Pn.0
      Enable)
     with Size => 1;
   for IE_IE0_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.1 enable
   type IE_IE1_Field is
     (
      --  Disable interrupt on Pn.1
      Disable,
      --  Enable interrupt on Pn.1
      Enable)
     with Size => 1;
   for IE_IE1_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.2 enable
   type IE_IE2_Field is
     (
      --  Disable interrupt on Pn.2
      Disable,
      --  Enable interrupt on Pn.2
      Enable)
     with Size => 1;
   for IE_IE2_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.3 enable
   type IE_IE3_Field is
     (
      --  Disable interrupt on Pn.3
      Disable,
      --  Enable interrupt on Pn.3
      Enable)
     with Size => 1;
   for IE_IE3_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.4 enable
   type IE_IE4_Field is
     (
      --  Disable interrupt on Pn.4
      Disable,
      --  Enable interrupt on Pn.4
      Enable)
     with Size => 1;
   for IE_IE4_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.5 enable
   type IE_IE5_Field is
     (
      --  Disable interrupt on Pn.5
      Disable,
      --  Enable interrupt on Pn.5
      Enable)
     with Size => 1;
   for IE_IE5_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.6 enable
   type IE_IE6_Field is
     (
      --  Disable interrupt on Pn.6
      Disable,
      --  Enable interrupt on Pn.6
      Enable)
     with Size => 1;
   for IE_IE6_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.7 enable
   type IE_IE7_Field is
     (
      --  Disable interrupt on Pn.7
      Disable,
      --  Enable interrupt on Pn.7
      Enable)
     with Size => 1;
   for IE_IE7_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.8 enable
   type IE_IE8_Field is
     (
      --  Disable interrupt on Pn.8
      Disable,
      --  Enable interrupt on Pn.8
      Enable)
     with Size => 1;
   for IE_IE8_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.9 enable
   type IE_IE9_Field is
     (
      --  Disable interrupt on Pn.9
      Disable,
      --  Enable interrupt on Pn.9
      Enable)
     with Size => 1;
   for IE_IE9_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.10 enable
   type IE_IE10_Field is
     (
      --  Disable interrupt on Pn.10
      Disable,
      --  Enable interrupt on Pn.10
      Enable)
     with Size => 1;
   for IE_IE10_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.11 enable
   type IE_IE11_Field is
     (
      --  Disable interrupt on Pn.11
      Disable,
      --  Enable interrupt on Pn.11
      Enable)
     with Size => 1;
   for IE_IE11_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.11 enable
   type IE_IE12_Field is
     (
      --  Disable interrupt on Pn.12
      Disable,
      --  Enable interrupt on Pn.12
      Enable)
     with Size => 1;
   for IE_IE12_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.13 enable
   type IE_IE13_Field is
     (
      --  Disable interrupt on Pn.13
      Disable,
      --  Enable interrupt on Pn.13
      Enable)
     with Size => 1;
   for IE_IE13_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.14 enable
   type IE_IE14_Field is
     (
      --  Disable interrupt on Pn.14
      Disable,
      --  Enable interrupt on Pn.14
      Enable)
     with Size => 1;
   for IE_IE14_Field use
     (Disable => 0,
      Enable => 1);

   --  Interrupt on Pn.15 enable
   type IE_IE15_Field is
     (
      --  Disable interrupt on Pn.15
      Disable,
      --  Enable interrupt on Pn.15
      Enable)
     with Size => 1;
   for IE_IE15_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x18 GPIO Port n Interrupt Enable Register
   type IE_Register is record
      --  Interrupt on Pn.0 enable
      IE0            : IE_IE0_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.1 enable
      IE1            : IE_IE1_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.2 enable
      IE2            : IE_IE2_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.3 enable
      IE3            : IE_IE3_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.4 enable
      IE4            : IE_IE4_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.5 enable
      IE5            : IE_IE5_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.6 enable
      IE6            : IE_IE6_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.7 enable
      IE7            : IE_IE7_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.8 enable
      IE8            : IE_IE8_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.9 enable
      IE9            : IE_IE9_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.10 enable
      IE10           : IE_IE10_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.11 enable
      IE11           : IE_IE11_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.11 enable
      IE12           : IE_IE12_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.13 enable
      IE13           : IE_IE13_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.14 enable
      IE14           : IE_IE14_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.15 enable
      IE15           : IE_IE15_Field := NRF_SVD.GPIO.Disable;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      IE0            at 0 range 0 .. 0;
      IE1            at 0 range 1 .. 1;
      IE2            at 0 range 2 .. 2;
      IE3            at 0 range 3 .. 3;
      IE4            at 0 range 4 .. 4;
      IE5            at 0 range 5 .. 5;
      IE6            at 0 range 6 .. 6;
      IE7            at 0 range 7 .. 7;
      IE8            at 0 range 8 .. 8;
      IE9            at 0 range 9 .. 9;
      IE10           at 0 range 10 .. 10;
      IE11           at 0 range 11 .. 11;
      IE12           at 0 range 12 .. 12;
      IE13           at 0 range 13 .. 13;
      IE14           at 0 range 14 .. 14;
      IE15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Pn.0 raw interrupt flag
   type RIS_IF0_Field is
     (
      --  No interrupt on Pn.0
      No INTERRUPT,
      --  Interrupt requirements met on Pn.0
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF0_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.1 raw interrupt flag
   type RIS_IF1_Field is
     (
      --  No interrupt on Pn.1
      No INTERRUPT,
      --  Interrupt requirements met on Pn.1
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF1_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.2 raw interrupt flag
   type RIS_IF2_Field is
     (
      --  No interrupt on Pn.2
      No INTERRUPT,
      --  Interrupt requirements met on Pn.2
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF2_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.3 raw interrupt flag
   type RIS_IF3_Field is
     (
      --  No interrupt on Pn.3
      No INTERRUPT,
      --  Interrupt requirements met on Pn.3
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF3_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.4 raw interrupt flag
   type RIS_IF4_Field is
     (
      --  No interrupt on Pn.4
      No INTERRUPT,
      --  Interrupt requirements met on Pn.4
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF4_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.5 raw interrupt flag
   type RIS_IF5_Field is
     (
      --  No interrupt on Pn.5
      No INTERRUPT,
      --  Interrupt requirements met on Pn.5
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF5_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.6 raw interrupt flag
   type RIS_IF6_Field is
     (
      --  No interrupt on Pn.6
      No INTERRUPT,
      --  Interrupt requirements met on Pn.6
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF6_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.7 raw interrupt flag
   type RIS_IF7_Field is
     (
      --  No interrupt on Pn.7
      No INTERRUPT,
      --  Interrupt requirements met on Pn.7
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF7_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.8 raw interrupt flag
   type RIS_IF8_Field is
     (
      --  No interrupt on Pn.8
      No INTERRUPT,
      --  Interrupt requirements met on Pn.8
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF8_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.9 raw interrupt flag
   type RIS_IF9_Field is
     (
      --  No interrupt on Pn.9
      No INTERRUPT,
      --  Interrupt requirements met on Pn.9
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF9_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.10 raw interrupt flag
   type RIS_IF10_Field is
     (
      --  No interrupt on Pn.10
      No INTERRUPT,
      --  Interrupt requirements met on Pn.10
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF10_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.11 raw interrupt flag
   type RIS_IF11_Field is
     (
      --  No interrupt on Pn.11
      No INTERRUPT,
      --  Interrupt requirements met on Pn.11
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF11_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.12 raw interrupt flag
   type RIS_IF12_Field is
     (
      --  No interrupt on Pn.12
      No INTERRUPT,
      --  Interrupt requirements met on Pn.12
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF12_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.13 raw interrupt flag
   type RIS_IF13_Field is
     (
      --  No interrupt on Pn.13
      No INTERRUPT,
      --  Interrupt requirements met on Pn.13
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF13_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.14 raw interrupt flag
   type RIS_IF14_Field is
     (
      --  No interrupt on Pn.14
      No INTERRUPT,
      --  Interrupt requirements met on Pn.14
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF14_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Pn.15 raw interrupt flag
   type RIS_IF15_Field is
     (
      --  No interrupt on Pn.15
      No INTERRUPT,
      --  Interrupt requirements met on Pn.15
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_IF15_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. Pn.0 raw interrupt flag
      IF0            : RIS_IF0_Field;
      --  Read-only. Pn.1 raw interrupt flag
      IF1            : RIS_IF1_Field;
      --  Read-only. Pn.2 raw interrupt flag
      IF2            : RIS_IF2_Field;
      --  Read-only. Pn.3 raw interrupt flag
      IF3            : RIS_IF3_Field;
      --  Read-only. Pn.4 raw interrupt flag
      IF4            : RIS_IF4_Field;
      --  Read-only. Pn.5 raw interrupt flag
      IF5            : RIS_IF5_Field;
      --  Read-only. Pn.6 raw interrupt flag
      IF6            : RIS_IF6_Field;
      --  Read-only. Pn.7 raw interrupt flag
      IF7            : RIS_IF7_Field;
      --  Read-only. Pn.8 raw interrupt flag
      IF8            : RIS_IF8_Field;
      --  Read-only. Pn.9 raw interrupt flag
      IF9            : RIS_IF9_Field;
      --  Read-only. Pn.10 raw interrupt flag
      IF10           : RIS_IF10_Field;
      --  Read-only. Pn.11 raw interrupt flag
      IF11           : RIS_IF11_Field;
      --  Read-only. Pn.12 raw interrupt flag
      IF12           : RIS_IF12_Field;
      --  Read-only. Pn.13 raw interrupt flag
      IF13           : RIS_IF13_Field;
      --  Read-only. Pn.14 raw interrupt flag
      IF14           : RIS_IF14_Field;
      --  Read-only. Pn.15 raw interrupt flag
      IF15           : RIS_IF15_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      IF0            at 0 range 0 .. 0;
      IF1            at 0 range 1 .. 1;
      IF2            at 0 range 2 .. 2;
      IF3            at 0 range 3 .. 3;
      IF4            at 0 range 4 .. 4;
      IF5            at 0 range 5 .. 5;
      IF6            at 0 range 6 .. 6;
      IF7            at 0 range 7 .. 7;
      IF8            at 0 range 8 .. 8;
      IF9            at 0 range 9 .. 9;
      IF10           at 0 range 10 .. 10;
      IF11           at 0 range 11 .. 11;
      IF12           at 0 range 12 .. 12;
      IF13           at 0 range 13 .. 13;
      IF14           at 0 range 14 .. 14;
      IF15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Pn.0 interrupt flag clear
   type IC_IC0_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.0
      Clear)
     with Size => 1;
   for IC_IC0_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.1 interrupt flag clear
   type IC_IC1_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.1
      Clear)
     with Size => 1;
   for IC_IC1_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.2 interrupt flag clear
   type IC_IC2_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.2
      Clear)
     with Size => 1;
   for IC_IC2_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.3 interrupt flag clear
   type IC_IC3_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.3
      Clear)
     with Size => 1;
   for IC_IC3_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.4 interrupt flag clear
   type IC_IC4_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.4
      Clear)
     with Size => 1;
   for IC_IC4_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.5 interrupt flag clear
   type IC_IC5_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.5
      Clear)
     with Size => 1;
   for IC_IC5_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.6 interrupt flag clear
   type IC_IC6_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.6
      Clear)
     with Size => 1;
   for IC_IC6_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.7 interrupt flag clear
   type IC_IC7_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.7
      Clear)
     with Size => 1;
   for IC_IC7_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.8 interrupt flag clear
   type IC_IC8_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.8
      Clear)
     with Size => 1;
   for IC_IC8_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.9 interrupt flag clear
   type IC_IC9_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.9
      Clear)
     with Size => 1;
   for IC_IC9_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.10 interrupt flag clear
   type IC_IC10_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.10
      Clear)
     with Size => 1;
   for IC_IC10_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.11 interrupt flag clear
   type IC_IC11_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.11
      Clear)
     with Size => 1;
   for IC_IC11_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.12 interrupt flag clear
   type IC_IC12_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.12
      Clear)
     with Size => 1;
   for IC_IC12_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.13 interrupt flag clear
   type IC_IC13_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.13
      Clear)
     with Size => 1;
   for IC_IC13_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.14 interrupt flag clear
   type IC_IC14_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.14
      Clear)
     with Size => 1;
   for IC_IC14_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Pn.15 interrupt flag clear
   type IC_IC15_Field is
     (
      No EFFECT,
      --  Clear interrupt flag on Pn.15
      Clear)
     with Size => 1;
   for IC_IC15_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x20 GPIO Port n Interrupt Clear Register
   type IC_Register is record
      --  Write-only. Pn.0 interrupt flag clear
      IC0            : IC_IC0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.1 interrupt flag clear
      IC1            : IC_IC1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.2 interrupt flag clear
      IC2            : IC_IC2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.3 interrupt flag clear
      IC3            : IC_IC3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.4 interrupt flag clear
      IC4            : IC_IC4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.5 interrupt flag clear
      IC5            : IC_IC5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.6 interrupt flag clear
      IC6            : IC_IC6_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.7 interrupt flag clear
      IC7            : IC_IC7_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.8 interrupt flag clear
      IC8            : IC_IC8_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.9 interrupt flag clear
      IC9            : IC_IC9_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.10 interrupt flag clear
      IC10           : IC_IC10_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.11 interrupt flag clear
      IC11           : IC_IC11_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.12 interrupt flag clear
      IC12           : IC_IC12_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.13 interrupt flag clear
      IC13           : IC_IC13_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.14 interrupt flag clear
      IC14           : IC_IC14_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.15 interrupt flag clear
      IC15           : IC_IC15_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      IC0            at 0 range 0 .. 0;
      IC1            at 0 range 1 .. 1;
      IC2            at 0 range 2 .. 2;
      IC3            at 0 range 3 .. 3;
      IC4            at 0 range 4 .. 4;
      IC5            at 0 range 5 .. 5;
      IC6            at 0 range 6 .. 6;
      IC7            at 0 range 7 .. 7;
      IC8            at 0 range 8 .. 8;
      IC9            at 0 range 9 .. 9;
      IC10           at 0 range 10 .. 10;
      IC11           at 0 range 11 .. 11;
      IC12           at 0 range 12 .. 12;
      IC13           at 0 range 13 .. 13;
      IC14           at 0 range 14 .. 14;
      IC15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Set Pn.0
   type BSET_BSET0_Field is
     (
      No EFFECT,
      --  Set Pn.0 to 1
      Set)
     with Size => 1;
   for BSET_BSET0_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.1
   type BSET_BSET1_Field is
     (
      No EFFECT,
      --  Set Pn.1 to 1
      Set)
     with Size => 1;
   for BSET_BSET1_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.2
   type BSET_BSET2_Field is
     (
      No EFFECT,
      --  Set Pn.2 to 1
      Set)
     with Size => 1;
   for BSET_BSET2_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.3
   type BSET_BSET3_Field is
     (
      No EFFECT,
      --  Set Pn.3 to 1
      Set)
     with Size => 1;
   for BSET_BSET3_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.4
   type BSET_BSET4_Field is
     (
      No EFFECT,
      --  Set Pn.4 to 1
      Set)
     with Size => 1;
   for BSET_BSET4_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.5
   type BSET_BSET5_Field is
     (
      No EFFECT,
      --  Set Pn.5 to 1
      Set)
     with Size => 1;
   for BSET_BSET5_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.6
   type BSET_BSET6_Field is
     (
      No EFFECT,
      --  Set Pn.6 to 1
      Set)
     with Size => 1;
   for BSET_BSET6_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.7
   type BSET_BSET7_Field is
     (
      No EFFECT,
      --  Set Pn.7 to 1
      Set)
     with Size => 1;
   for BSET_BSET7_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.8
   type BSET_BSET8_Field is
     (
      No EFFECT,
      --  Set Pn.8 to 1
      Set)
     with Size => 1;
   for BSET_BSET8_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.9
   type BSET_BSET9_Field is
     (
      No EFFECT,
      --  Set Pn.9 to 1
      Set)
     with Size => 1;
   for BSET_BSET9_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.10
   type BSET_BSET10_Field is
     (
      No EFFECT,
      --  Set Pn.10 to 1
      Set)
     with Size => 1;
   for BSET_BSET10_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.11
   type BSET_BSET11_Field is
     (
      No EFFECT,
      --  Set Pn.11 to 1
      Set)
     with Size => 1;
   for BSET_BSET11_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.12
   type BSET_BSET12_Field is
     (
      No EFFECT,
      --  Set Pn.12 to 1
      Set)
     with Size => 1;
   for BSET_BSET12_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.13
   type BSET_BSET13_Field is
     (
      No EFFECT,
      --  Set Pn.13 to 1
      Set)
     with Size => 1;
   for BSET_BSET13_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.14
   type BSET_BSET14_Field is
     (
      No EFFECT,
      --  Set Pn.14 to 1
      Set)
     with Size => 1;
   for BSET_BSET14_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Set Pn.15
   type BSET_BSET15_Field is
     (
      No EFFECT,
      --  Set Pn.15 to 1
      Set)
     with Size => 1;
   for BSET_BSET15_Field use
     (No EFFECT => 0,
      Set => 1);

   --  Offset:0x24 GPIO Port n Bits Set Operation Register
   type BSET_Register is record
      --  Write-only. Set Pn.0
      BSET0          : BSET_BSET0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.1
      BSET1          : BSET_BSET1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.2
      BSET2          : BSET_BSET2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.3
      BSET3          : BSET_BSET3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.4
      BSET4          : BSET_BSET4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.5
      BSET5          : BSET_BSET5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.6
      BSET6          : BSET_BSET6_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.7
      BSET7          : BSET_BSET7_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.8
      BSET8          : BSET_BSET8_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.9
      BSET9          : BSET_BSET9_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.10
      BSET10         : BSET_BSET10_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.11
      BSET11         : BSET_BSET11_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.12
      BSET12         : BSET_BSET12_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.13
      BSET13         : BSET_BSET13_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.14
      BSET14         : BSET_BSET14_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.15
      BSET15         : BSET_BSET15_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSET_Register use record
      BSET0          at 0 range 0 .. 0;
      BSET1          at 0 range 1 .. 1;
      BSET2          at 0 range 2 .. 2;
      BSET3          at 0 range 3 .. 3;
      BSET4          at 0 range 4 .. 4;
      BSET5          at 0 range 5 .. 5;
      BSET6          at 0 range 6 .. 6;
      BSET7          at 0 range 7 .. 7;
      BSET8          at 0 range 8 .. 8;
      BSET9          at 0 range 9 .. 9;
      BSET10         at 0 range 10 .. 10;
      BSET11         at 0 range 11 .. 11;
      BSET12         at 0 range 12 .. 12;
      BSET13         at 0 range 13 .. 13;
      BSET14         at 0 range 14 .. 14;
      BSET15         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Clear Pn.0
   type BCLR_BCLR0_Field is
     (
      No EFFECT,
      --  Clear Pn.0
      Clear)
     with Size => 1;
   for BCLR_BCLR0_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.1
   type BCLR_BCLR1_Field is
     (
      No EFFECT,
      --  Clear Pn.1
      Clear)
     with Size => 1;
   for BCLR_BCLR1_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.2
   type BCLR_BCLR2_Field is
     (
      No EFFECT,
      --  Clear Pn.2
      Clear)
     with Size => 1;
   for BCLR_BCLR2_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.3
   type BCLR_BCLR3_Field is
     (
      No EFFECT,
      --  Clear Pn.3
      Clear)
     with Size => 1;
   for BCLR_BCLR3_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.4
   type BCLR_BCLR4_Field is
     (
      No EFFECT,
      --  Clear Pn.4
      Clear)
     with Size => 1;
   for BCLR_BCLR4_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.5
   type BCLR_BCLR5_Field is
     (
      No EFFECT,
      --  Clear Pn.5
      Clear)
     with Size => 1;
   for BCLR_BCLR5_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.6
   type BCLR_BCLR6_Field is
     (
      No EFFECT,
      --  Clear Pn.6
      Clear)
     with Size => 1;
   for BCLR_BCLR6_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.7
   type BCLR_BCLR7_Field is
     (
      No EFFECT,
      --  Clear Pn.7
      Clear)
     with Size => 1;
   for BCLR_BCLR7_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.8
   type BCLR_BCLR8_Field is
     (
      No EFFECT,
      --  Clear Pn.8
      Clear)
     with Size => 1;
   for BCLR_BCLR8_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.9
   type BCLR_BCLR9_Field is
     (
      No EFFECT,
      --  Clear Pn.9
      Clear)
     with Size => 1;
   for BCLR_BCLR9_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.10
   type BCLR_BCLR10_Field is
     (
      No EFFECT,
      --  Clear Pn.10
      Clear)
     with Size => 1;
   for BCLR_BCLR10_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.11
   type BCLR_BCLR11_Field is
     (
      No EFFECT,
      --  Clear Pn.11
      Clear)
     with Size => 1;
   for BCLR_BCLR11_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.12
   type BCLR_BCLR12_Field is
     (
      No EFFECT,
      --  Clear Pn.12
      Clear)
     with Size => 1;
   for BCLR_BCLR12_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.13
   type BCLR_BCLR13_Field is
     (
      No EFFECT,
      --  Clear Pn.13
      Clear)
     with Size => 1;
   for BCLR_BCLR13_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.14
   type BCLR_BCLR14_Field is
     (
      No EFFECT,
      --  Clear Pn.14
      Clear)
     with Size => 1;
   for BCLR_BCLR14_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Clear Pn.15
   type BCLR_BCLR15_Field is
     (
      No EFFECT,
      --  Clear Pn.15
      Clear)
     with Size => 1;
   for BCLR_BCLR15_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x28 GPIO Port n Bits Clear Operation Register
   type BCLR_Register is record
      --  Write-only. Clear Pn.0
      BCLR0          : BCLR_BCLR0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.1
      BCLR1          : BCLR_BCLR1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.2
      BCLR2          : BCLR_BCLR2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.3
      BCLR3          : BCLR_BCLR3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.4
      BCLR4          : BCLR_BCLR4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.5
      BCLR5          : BCLR_BCLR5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.6
      BCLR6          : BCLR_BCLR6_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.7
      BCLR7          : BCLR_BCLR7_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.8
      BCLR8          : BCLR_BCLR8_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.9
      BCLR9          : BCLR_BCLR9_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.10
      BCLR10         : BCLR_BCLR10_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.11
      BCLR11         : BCLR_BCLR11_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.12
      BCLR12         : BCLR_BCLR12_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.13
      BCLR13         : BCLR_BCLR13_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.14
      BCLR14         : BCLR_BCLR14_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.15
      BCLR15         : BCLR_BCLR15_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCLR_Register use record
      BCLR0          at 0 range 0 .. 0;
      BCLR1          at 0 range 1 .. 1;
      BCLR2          at 0 range 2 .. 2;
      BCLR3          at 0 range 3 .. 3;
      BCLR4          at 0 range 4 .. 4;
      BCLR5          at 0 range 5 .. 5;
      BCLR6          at 0 range 6 .. 6;
      BCLR7          at 0 range 7 .. 7;
      BCLR8          at 0 range 8 .. 8;
      BCLR9          at 0 range 9 .. 9;
      BCLR10         at 0 range 10 .. 10;
      BCLR11         at 0 range 11 .. 11;
      BCLR12         at 0 range 12 .. 12;
      BCLR13         at 0 range 13 .. 13;
      BCLR14         at 0 range 14 .. 14;
      BCLR15         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Pn.0 open-drain control
   type ODCTRL_Pn0OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn0OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.1 open-drain control
   type ODCTRL_Pn1OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn1OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.2 open-drain control
   type ODCTRL_Pn2OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn2OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.3 open-drain control
   type ODCTRL_Pn3OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn3OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.12 open-drain control
   type ODCTRL_Pn12OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn12OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.13 open-drain control
   type ODCTRL_Pn13OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn13OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.14 open-drain control
   type ODCTRL_Pn14OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn14OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Pn.15 open-drain control
   type ODCTRL_Pn15OC_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for ODCTRL_Pn15OC_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x2C GPIO Port n Open-drain Control Register
   type ODCTRL_Register is record
      --  Pn.0 open-drain control
      Pn0OC          : ODCTRL_Pn0OC_Field := NRF_SVD.GPIO.Disable;
      --  Pn.1 open-drain control
      Pn1OC          : ODCTRL_Pn1OC_Field := NRF_SVD.GPIO.Disable;
      --  Pn.2 open-drain control
      Pn2OC          : ODCTRL_Pn2OC_Field := NRF_SVD.GPIO.Disable;
      --  Pn.3 open-drain control
      Pn3OC          : ODCTRL_Pn3OC_Field := NRF_SVD.GPIO.Disable;
      --  unspecified
      Reserved_4_11  : HAL.UInt8 := 16#0#;
      --  Pn.12 open-drain control
      Pn12OC         : ODCTRL_Pn12OC_Field := NRF_SVD.GPIO.Disable;
      --  Pn.13 open-drain control
      Pn13OC         : ODCTRL_Pn13OC_Field := NRF_SVD.GPIO.Disable;
      --  Pn.14 open-drain control
      Pn14OC         : ODCTRL_Pn14OC_Field := NRF_SVD.GPIO.Disable;
      --  Pn.15 open-drain control
      Pn15OC         : ODCTRL_Pn15OC_Field := NRF_SVD.GPIO.Disable;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ODCTRL_Register use record
      Pn0OC          at 0 range 0 .. 0;
      Pn1OC          at 0 range 1 .. 1;
      Pn2OC          at 0 range 2 .. 2;
      Pn3OC          at 0 range 3 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      Pn12OC         at 0 range 12 .. 12;
      Pn13OC         at 0 range 13 .. 13;
      Pn14OC         at 0 range 14 .. 14;
      Pn15OC         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose I/O
   type GPIO_Peripheral is record
      --  Offset:0x00 GPIO Port n Data Register
      DATA   : aliased DATA_Register;
      --  Offset:0x04 GPIO Port n Mode Register
      MODE   : aliased MODE_Register;
      --  Offset:0x08 GPIO Port n Configuration Register
      CFG    : aliased CFG_Register;
      --  Offset:0x0C GPIO Port n Interrupt Sense Register
      IS_k   : aliased IS_Register;
      --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
      IBS    : aliased IBS_Register;
      --  Offset:0x14 GPIO Port n Interrupt Event Register
      IEV    : aliased IEV_Register;
      --  Offset:0x18 GPIO Port n Interrupt Enable Register
      IE     : aliased IE_Register;
      --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
      RIS    : aliased RIS_Register;
      --  Offset:0x20 GPIO Port n Interrupt Clear Register
      IC     : aliased IC_Register;
      --  Offset:0x24 GPIO Port n Bits Set Operation Register
      BSET   : aliased BSET_Register;
      --  Offset:0x28 GPIO Port n Bits Clear Operation Register
      BCLR   : aliased BCLR_Register;
      --  Offset:0x2C GPIO Port n Open-drain Control Register
      ODCTRL : aliased ODCTRL_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      DATA   at 16#0# range 0 .. 31;
      MODE   at 16#4# range 0 .. 31;
      CFG    at 16#8# range 0 .. 31;
      IS_k   at 16#C# range 0 .. 31;
      IBS    at 16#10# range 0 .. 31;
      IEV    at 16#14# range 0 .. 31;
      IE     at 16#18# range 0 .. 31;
      RIS    at 16#1C# range 0 .. 31;
      IC     at 16#20# range 0 .. 31;
      BSET   at 16#24# range 0 .. 31;
      BCLR   at 16#28# range 0 .. 31;
      ODCTRL at 16#2C# range 0 .. 31;
   end record;

   --  General Purpose I/O
   SN_GPIO0_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40044000#);

   --  General Purpose I/O
   SN_GPIO1_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40046000#);

   --  General Purpose I/O
   SN_GPIO2_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#40048000#);

   --  General Purpose I/O
   SN_GPIO3_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#4004A000#);

end NRF_SVD.GPIO;
