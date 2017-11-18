--

--  This spec has been automatically generated from SN32F770.svd

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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Configuration of Pn.0
   type CFG_CFG0_Field is
     (
      --  Enable pull-up resistor
      CFG_CFG0_Field_00B,
      --  Inactive(schmitt trigger enabled)
      CFG_CFG0_Field_10B,
      --  Inactive(schmitt trigger disabled)
      CFG_CFG0_Field_11B)
     with Size => 2;
   for CFG_CFG0_Field use
     (CFG_CFG0_Field_00B => 0,
      CFG_CFG0_Field_10B => 2,
      CFG_CFG0_Field_11B => 3);

   --  CFG array
   type CFG_Field_Array is array (0 .. 10) of CFG_CFG0_Field
     with Component_Size => 2, Size => 22;

   --  Type definition for CFG
   type CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt22;
         when True =>
            --  CFG as an array
            Arr : CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 22;

   for CFG_Field use record
      Val at 0 range 0 .. 21;
      Arr at 0 range 0 .. 21;
   end record;

   --  Offset:0x08 GPIO Port n Configuration Register
   type CFG_Register is record
      --  Configuration of Pn.0
      CFG            : CFG_Field := (As_Array => False, Val => 16#2#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register use record
      CFG            at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pn.0 raw interrupt flag
   type RIS_IF0_Field is
     (
      --  No interrupt on Pn.0
      RIS_IF0_Field_0,
      --  Interrupt requirements met on Pn.0
      RIS_IF0_Field_1)
     with Size => 1;
   for RIS_IF0_Field use
     (RIS_IF0_Field_0 => 0,
      RIS_IF0_Field_1 => 1);

   --  Pn.1 raw interrupt flag
   type RIS_IF1_Field is
     (
      --  No interrupt on Pn.1
      RIS_IF1_Field_0,
      --  Interrupt requirements met on Pn.1
      RIS_IF1_Field_1)
     with Size => 1;
   for RIS_IF1_Field use
     (RIS_IF1_Field_0 => 0,
      RIS_IF1_Field_1 => 1);

   --  Pn.2 raw interrupt flag
   type RIS_IF2_Field is
     (
      --  No interrupt on Pn.2
      RIS_IF2_Field_0,
      --  Interrupt requirements met on Pn.2
      RIS_IF2_Field_1)
     with Size => 1;
   for RIS_IF2_Field use
     (RIS_IF2_Field_0 => 0,
      RIS_IF2_Field_1 => 1);

   --  Pn.3 raw interrupt flag
   type RIS_IF3_Field is
     (
      --  No interrupt on Pn.3
      RIS_IF3_Field_0,
      --  Interrupt requirements met on Pn.3
      RIS_IF3_Field_1)
     with Size => 1;
   for RIS_IF3_Field use
     (RIS_IF3_Field_0 => 0,
      RIS_IF3_Field_1 => 1);

   --  Pn.4 raw interrupt flag
   type RIS_IF4_Field is
     (
      --  No interrupt on Pn.4
      RIS_IF4_Field_0,
      --  Interrupt requirements met on Pn.4
      RIS_IF4_Field_1)
     with Size => 1;
   for RIS_IF4_Field use
     (RIS_IF4_Field_0 => 0,
      RIS_IF4_Field_1 => 1);

   --  Pn.5 raw interrupt flag
   type RIS_IF5_Field is
     (
      --  No interrupt on Pn.5
      RIS_IF5_Field_0,
      --  Interrupt requirements met on Pn.5
      RIS_IF5_Field_1)
     with Size => 1;
   for RIS_IF5_Field use
     (RIS_IF5_Field_0 => 0,
      RIS_IF5_Field_1 => 1);

   --  Pn.6 raw interrupt flag
   type RIS_IF6_Field is
     (
      --  No interrupt on Pn.6
      RIS_IF6_Field_0,
      --  Interrupt requirements met on Pn.6
      RIS_IF6_Field_1)
     with Size => 1;
   for RIS_IF6_Field use
     (RIS_IF6_Field_0 => 0,
      RIS_IF6_Field_1 => 1);

   --  Pn.7 raw interrupt flag
   type RIS_IF7_Field is
     (
      --  No interrupt on Pn.7
      RIS_IF7_Field_0,
      --  Interrupt requirements met on Pn.7
      RIS_IF7_Field_1)
     with Size => 1;
   for RIS_IF7_Field use
     (RIS_IF7_Field_0 => 0,
      RIS_IF7_Field_1 => 1);

   --  Pn.8 raw interrupt flag
   type RIS_IF8_Field is
     (
      --  No interrupt on Pn.8
      RIS_IF8_Field_0,
      --  Interrupt requirements met on Pn.8
      RIS_IF8_Field_1)
     with Size => 1;
   for RIS_IF8_Field use
     (RIS_IF8_Field_0 => 0,
      RIS_IF8_Field_1 => 1);

   --  Pn.9 raw interrupt flag
   type RIS_IF9_Field is
     (
      --  No interrupt on Pn.9
      RIS_IF9_Field_0,
      --  Interrupt requirements met on Pn.9
      RIS_IF9_Field_1)
     with Size => 1;
   for RIS_IF9_Field use
     (RIS_IF9_Field_0 => 0,
      RIS_IF9_Field_1 => 1);

   --  Pn.10 raw interrupt flag
   type RIS_IF10_Field is
     (
      --  No interrupt on Pn.10
      RIS_IF10_Field_0,
      --  Interrupt requirements met on Pn.10
      RIS_IF10_Field_1)
     with Size => 1;
   for RIS_IF10_Field use
     (RIS_IF10_Field_0 => 0,
      RIS_IF10_Field_1 => 1);

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
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pn.0 interrupt flag clear
   type IC_IC0_Field is
     (
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
      No EFFECT,
      --  Clear interrupt flag on Pn.10
      Clear)
     with Size => 1;
   for IC_IC10_Field use
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Set Pn.0
   type BSET_BSET0_Field is
     (
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
      No EFFECT,
      --  Set Pn.10 to 1
      Set)
     with Size => 1;
   for BSET_BSET10_Field use
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clear Pn.0
   type BCLR_BCLR0_Field is
     (
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
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
      --  No effect
      No EFFECT,
      --  Clear Pn.10
      Clear)
     with Size => 1;
   for BCLR_BCLR10_Field use
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
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
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
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Offset:0x00 GPIO Port n Data Register
   type DATA_Register_1 is record
      --  Data of Pn.0
      DATA0         : DATA_DATA0_Field := NRF_SVD.GPIO.DATA_DATA0_Field_0;
      --  Data of Pn.1
      DATA1         : DATA_DATA1_Field := NRF_SVD.GPIO.DATA_DATA1_Field_0;
      --  Data of Pn.2
      DATA2         : DATA_DATA2_Field := NRF_SVD.GPIO.DATA_DATA2_Field_0;
      --  Data of Pn.3
      DATA3         : DATA_DATA3_Field := NRF_SVD.GPIO.DATA_DATA3_Field_0;
      --  Data of Pn.4
      DATA4         : DATA_DATA4_Field := NRF_SVD.GPIO.DATA_DATA4_Field_0;
      --  Data of Pn.5
      DATA5         : DATA_DATA5_Field := NRF_SVD.GPIO.DATA_DATA5_Field_0;
      --  Data of Pn.6
      DATA6         : DATA_DATA6_Field := NRF_SVD.GPIO.DATA_DATA6_Field_0;
      --  Data of Pn.7
      DATA7         : DATA_DATA7_Field := NRF_SVD.GPIO.DATA_DATA7_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register_1 use record
      DATA0         at 0 range 0 .. 0;
      DATA1         at 0 range 1 .. 1;
      DATA2         at 0 range 2 .. 2;
      DATA3         at 0 range 3 .. 3;
      DATA4         at 0 range 4 .. 4;
      DATA5         at 0 range 5 .. 5;
      DATA6         at 0 range 6 .. 6;
      DATA7         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x04 GPIO Port n Mode Register
   type MODE_Register_1 is record
      --  Mode of Pn.0
      MODE0         : MODE_MODE0_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.1
      MODE1         : MODE_MODE1_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.2
      MODE2         : MODE_MODE2_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.3
      MODE3         : MODE_MODE3_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.4
      MODE4         : MODE_MODE4_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.5
      MODE5         : MODE_MODE5_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.6
      MODE6         : MODE_MODE6_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.7
      MODE7         : MODE_MODE7_Field := NRF_SVD.GPIO.I;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register_1 use record
      MODE0         at 0 range 0 .. 0;
      MODE1         at 0 range 1 .. 1;
      MODE2         at 0 range 2 .. 2;
      MODE3         at 0 range 3 .. 3;
      MODE4         at 0 range 4 .. 4;
      MODE5         at 0 range 5 .. 5;
      MODE6         at 0 range 6 .. 6;
      MODE7         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CFG array
   type CFG_Field_Array_1 is array (0 .. 7) of CFG_CFG0_Field
     with Component_Size => 2, Size => 16;

   --  Type definition for CFG
   type CFG_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt16;
         when True =>
            --  CFG as an array
            Arr : CFG_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for CFG_Field_1 use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Offset:0x08 GPIO Port n Configuration Register
   type CFG_Register_1 is record
      --  Configuration of Pn.0
      CFG            : CFG_Field_1 := (As_Array => False, Val => 16#2#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register_1 use record
      CFG            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Offset:0x0C GPIO Port n Interrupt Sense Register
   type IS_Register_1 is record
      --  Interrupt on Pn.0 is event or edge sensitive
      IS0           : IS_IS0_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.1 is event or edge sensitive
      IS1           : IS_IS1_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.2 is event or edge sensitive
      IS2           : IS_IS2_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.3 is event or edge sensitive
      IS3           : IS_IS3_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.4 is event or edge sensitive
      IS4           : IS_IS4_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.5 is event or edge sensitive
      IS5           : IS_IS5_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.6 is event or edge sensitive
      IS6           : IS_IS6_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.7 is event or edge sensitive
      IS7           : IS_IS7_Field := NRF_SVD.GPIO.Edge;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IS_Register_1 use record
      IS0           at 0 range 0 .. 0;
      IS1           at 0 range 1 .. 1;
      IS2           at 0 range 2 .. 2;
      IS3           at 0 range 3 .. 3;
      IS4           at 0 range 4 .. 4;
      IS5           at 0 range 5 .. 5;
      IS6           at 0 range 6 .. 6;
      IS7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
   type IBS_Register_1 is record
      --  Interrupt on Pn.0 is triggered ob both edges
      IBS0          : IBS_IBS0_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.1 is triggered ob both edges
      IBS1          : IBS_IBS1_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.2 is triggered ob both edges
      IBS2          : IBS_IBS2_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.3 is triggered ob both edges
      IBS3          : IBS_IBS3_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.4 is triggered ob both edges
      IBS4          : IBS_IBS4_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.5 is triggered ob both edges
      IBS5          : IBS_IBS5_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.6 is triggered ob both edges
      IBS6          : IBS_IBS6_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.7 is triggered ob both edges
      IBS7          : IBS_IBS7_Field := NRF_SVD.GPIO.Iev;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IBS_Register_1 use record
      IBS0          at 0 range 0 .. 0;
      IBS1          at 0 range 1 .. 1;
      IBS2          at 0 range 2 .. 2;
      IBS3          at 0 range 3 .. 3;
      IBS4          at 0 range 4 .. 4;
      IBS5          at 0 range 5 .. 5;
      IBS6          at 0 range 6 .. 6;
      IBS7          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x14 GPIO Port n Interrupt Event Register
   type IEV_Register_1 is record
      --  Interrupt trigged evnet on Pn.0
      IEV0          : IEV_IEV0_Field := NRF_SVD.GPIO.IEV_IEV0_Field_0;
      --  Interrupt trigged evnet on Pn.1
      IEV1          : IEV_IEV1_Field := NRF_SVD.GPIO.IEV_IEV1_Field_0;
      --  Interrupt trigged evnet on Pn.2
      IEV2          : IEV_IEV2_Field := NRF_SVD.GPIO.IEV_IEV2_Field_0;
      --  Interrupt trigged evnet on Pn.3
      IEV3          : IEV_IEV3_Field := NRF_SVD.GPIO.IEV_IEV3_Field_0;
      --  Interrupt trigged evnet on Pn.4
      IEV4          : IEV_IEV4_Field := NRF_SVD.GPIO.IEV_IEV4_Field_0;
      --  Interrupt trigged evnet on Pn.5
      IEV5          : IEV_IEV5_Field := NRF_SVD.GPIO.IEV_IEV5_Field_0;
      --  Interrupt trigged evnet on Pn.6
      IEV6          : IEV_IEV6_Field := NRF_SVD.GPIO.IEV_IEV6_Field_0;
      --  Interrupt trigged evnet on Pn.7
      IEV7          : IEV_IEV7_Field := NRF_SVD.GPIO.IEV_IEV7_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEV_Register_1 use record
      IEV0          at 0 range 0 .. 0;
      IEV1          at 0 range 1 .. 1;
      IEV2          at 0 range 2 .. 2;
      IEV3          at 0 range 3 .. 3;
      IEV4          at 0 range 4 .. 4;
      IEV5          at 0 range 5 .. 5;
      IEV6          at 0 range 6 .. 6;
      IEV7          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x18 GPIO Port n Interrupt Enable Register
   type IE_Register_1 is record
      --  Interrupt on Pn.0 enable
      IE0           : IE_IE0_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.1 enable
      IE1           : IE_IE1_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.2 enable
      IE2           : IE_IE2_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.3 enable
      IE3           : IE_IE3_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.4 enable
      IE4           : IE_IE4_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.5 enable
      IE5           : IE_IE5_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.6 enable
      IE6           : IE_IE6_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.7 enable
      IE7           : IE_IE7_Field := NRF_SVD.GPIO.Disable;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register_1 use record
      IE0           at 0 range 0 .. 0;
      IE1           at 0 range 1 .. 1;
      IE2           at 0 range 2 .. 2;
      IE3           at 0 range 3 .. 3;
      IE4           at 0 range 4 .. 4;
      IE5           at 0 range 5 .. 5;
      IE6           at 0 range 6 .. 6;
      IE7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
   type RIS_Register_1 is record
      --  Read-only. Pn.0 raw interrupt flag
      IF0           : RIS_IF0_Field;
      --  Read-only. Pn.1 raw interrupt flag
      IF1           : RIS_IF1_Field;
      --  Read-only. Pn.2 raw interrupt flag
      IF2           : RIS_IF2_Field;
      --  Read-only. Pn.3 raw interrupt flag
      IF3           : RIS_IF3_Field;
      --  Read-only. Pn.4 raw interrupt flag
      IF4           : RIS_IF4_Field;
      --  Read-only. Pn.5 raw interrupt flag
      IF5           : RIS_IF5_Field;
      --  Read-only. Pn.6 raw interrupt flag
      IF6           : RIS_IF6_Field;
      --  Read-only. Pn.7 raw interrupt flag
      IF7           : RIS_IF7_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register_1 use record
      IF0           at 0 range 0 .. 0;
      IF1           at 0 range 1 .. 1;
      IF2           at 0 range 2 .. 2;
      IF3           at 0 range 3 .. 3;
      IF4           at 0 range 4 .. 4;
      IF5           at 0 range 5 .. 5;
      IF6           at 0 range 6 .. 6;
      IF7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x20 GPIO Port n Interrupt Clear Register
   type IC_Register_1 is record
      --  Write-only. Pn.0 interrupt flag clear
      IC0           : IC_IC0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.1 interrupt flag clear
      IC1           : IC_IC1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.2 interrupt flag clear
      IC2           : IC_IC2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.3 interrupt flag clear
      IC3           : IC_IC3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.4 interrupt flag clear
      IC4           : IC_IC4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.5 interrupt flag clear
      IC5           : IC_IC5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.6 interrupt flag clear
      IC6           : IC_IC6_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.7 interrupt flag clear
      IC7           : IC_IC7_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register_1 use record
      IC0           at 0 range 0 .. 0;
      IC1           at 0 range 1 .. 1;
      IC2           at 0 range 2 .. 2;
      IC3           at 0 range 3 .. 3;
      IC4           at 0 range 4 .. 4;
      IC5           at 0 range 5 .. 5;
      IC6           at 0 range 6 .. 6;
      IC7           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x24 GPIO Port n Bits Set Operation Register
   type BSET_Register_1 is record
      --  Write-only. Set Pn.0
      BSET0         : BSET_BSET0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.1
      BSET1         : BSET_BSET1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.2
      BSET2         : BSET_BSET2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.3
      BSET3         : BSET_BSET3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.4
      BSET4         : BSET_BSET4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.5
      BSET5         : BSET_BSET5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.6
      BSET6         : BSET_BSET6_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.7
      BSET7         : BSET_BSET7_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSET_Register_1 use record
      BSET0         at 0 range 0 .. 0;
      BSET1         at 0 range 1 .. 1;
      BSET2         at 0 range 2 .. 2;
      BSET3         at 0 range 3 .. 3;
      BSET4         at 0 range 4 .. 4;
      BSET5         at 0 range 5 .. 5;
      BSET6         at 0 range 6 .. 6;
      BSET7         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x28 GPIO Port n Bits Clear Operation Register
   type BCLR_Register_1 is record
      --  Write-only. Clear Pn.0
      BCLR0         : BCLR_BCLR0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.1
      BCLR1         : BCLR_BCLR1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.2
      BCLR2         : BCLR_BCLR2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.3
      BCLR3         : BCLR_BCLR3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.4
      BCLR4         : BCLR_BCLR4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.5
      BCLR5         : BCLR_BCLR5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.6
      BCLR6         : BCLR_BCLR6_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.7
      BCLR7         : BCLR_BCLR7_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCLR_Register_1 use record
      BCLR0         at 0 range 0 .. 0;
      BCLR1         at 0 range 1 .. 1;
      BCLR2         at 0 range 2 .. 2;
      BCLR3         at 0 range 3 .. 3;
      BCLR4         at 0 range 4 .. 4;
      BCLR5         at 0 range 5 .. 5;
      BCLR6         at 0 range 6 .. 6;
      BCLR7         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Offset:0x00 GPIO Port n Data Register
   type DATA_Register_2 is record
      --  Data of Pn.0
      DATA0         : DATA_DATA0_Field := NRF_SVD.GPIO.DATA_DATA0_Field_0;
      --  Data of Pn.1
      DATA1         : DATA_DATA1_Field := NRF_SVD.GPIO.DATA_DATA1_Field_0;
      --  Data of Pn.2
      DATA2         : DATA_DATA2_Field := NRF_SVD.GPIO.DATA_DATA2_Field_0;
      --  Data of Pn.3
      DATA3         : DATA_DATA3_Field := NRF_SVD.GPIO.DATA_DATA3_Field_0;
      --  Data of Pn.4
      DATA4         : DATA_DATA4_Field := NRF_SVD.GPIO.DATA_DATA4_Field_0;
      --  Data of Pn.5
      DATA5         : DATA_DATA5_Field := NRF_SVD.GPIO.DATA_DATA5_Field_0;
      --  Data of Pn.6
      DATA6         : DATA_DATA6_Field := NRF_SVD.GPIO.DATA_DATA6_Field_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register_2 use record
      DATA0         at 0 range 0 .. 0;
      DATA1         at 0 range 1 .. 1;
      DATA2         at 0 range 2 .. 2;
      DATA3         at 0 range 3 .. 3;
      DATA4         at 0 range 4 .. 4;
      DATA5         at 0 range 5 .. 5;
      DATA6         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x04 GPIO Port n Mode Register
   type MODE_Register_2 is record
      --  Mode of Pn.0
      MODE0         : MODE_MODE0_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.1
      MODE1         : MODE_MODE1_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.2
      MODE2         : MODE_MODE2_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.3
      MODE3         : MODE_MODE3_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.4
      MODE4         : MODE_MODE4_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.5
      MODE5         : MODE_MODE5_Field := NRF_SVD.GPIO.I;
      --  Mode of Pn.6
      MODE6         : MODE_MODE6_Field := NRF_SVD.GPIO.I;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register_2 use record
      MODE0         at 0 range 0 .. 0;
      MODE1         at 0 range 1 .. 1;
      MODE2         at 0 range 2 .. 2;
      MODE3         at 0 range 3 .. 3;
      MODE4         at 0 range 4 .. 4;
      MODE5         at 0 range 5 .. 5;
      MODE6         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  CFG array
   type CFG_Field_Array_2 is array (0 .. 6) of CFG_CFG0_Field
     with Component_Size => 2, Size => 14;

   --  Type definition for CFG
   type CFG_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt14;
         when True =>
            --  CFG as an array
            Arr : CFG_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for CFG_Field_2 use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  Offset:0x08 GPIO Port n Configuration Register
   type CFG_Register_2 is record
      --  Configuration of Pn.0
      CFG            : CFG_Field_2 := (As_Array => False, Val => 16#2#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG_Register_2 use record
      CFG            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Offset:0x0C GPIO Port n Interrupt Sense Register
   type IS_Register_2 is record
      --  Interrupt on Pn.0 is event or edge sensitive
      IS0           : IS_IS0_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.1 is event or edge sensitive
      IS1           : IS_IS1_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.2 is event or edge sensitive
      IS2           : IS_IS2_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.3 is event or edge sensitive
      IS3           : IS_IS3_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.4 is event or edge sensitive
      IS4           : IS_IS4_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.5 is event or edge sensitive
      IS5           : IS_IS5_Field := NRF_SVD.GPIO.Edge;
      --  Interrupt on Pn.6 is event or edge sensitive
      IS6           : IS_IS6_Field := NRF_SVD.GPIO.Edge;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IS_Register_2 use record
      IS0           at 0 range 0 .. 0;
      IS1           at 0 range 1 .. 1;
      IS2           at 0 range 2 .. 2;
      IS3           at 0 range 3 .. 3;
      IS4           at 0 range 4 .. 4;
      IS5           at 0 range 5 .. 5;
      IS6           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
   type IBS_Register_2 is record
      --  Interrupt on Pn.0 is triggered ob both edges
      IBS0          : IBS_IBS0_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.1 is triggered ob both edges
      IBS1          : IBS_IBS1_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.2 is triggered ob both edges
      IBS2          : IBS_IBS2_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.3 is triggered ob both edges
      IBS3          : IBS_IBS3_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.4 is triggered ob both edges
      IBS4          : IBS_IBS4_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.5 is triggered ob both edges
      IBS5          : IBS_IBS5_Field := NRF_SVD.GPIO.Iev;
      --  Interrupt on Pn.6 is triggered ob both edges
      IBS6          : IBS_IBS6_Field := NRF_SVD.GPIO.Iev;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IBS_Register_2 use record
      IBS0          at 0 range 0 .. 0;
      IBS1          at 0 range 1 .. 1;
      IBS2          at 0 range 2 .. 2;
      IBS3          at 0 range 3 .. 3;
      IBS4          at 0 range 4 .. 4;
      IBS5          at 0 range 5 .. 5;
      IBS6          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x14 GPIO Port n Interrupt Event Register
   type IEV_Register_2 is record
      --  Interrupt trigged evnet on Pn.0
      IEV0          : IEV_IEV0_Field := NRF_SVD.GPIO.IEV_IEV0_Field_0;
      --  Interrupt trigged evnet on Pn.1
      IEV1          : IEV_IEV1_Field := NRF_SVD.GPIO.IEV_IEV1_Field_0;
      --  Interrupt trigged evnet on Pn.2
      IEV2          : IEV_IEV2_Field := NRF_SVD.GPIO.IEV_IEV2_Field_0;
      --  Interrupt trigged evnet on Pn.3
      IEV3          : IEV_IEV3_Field := NRF_SVD.GPIO.IEV_IEV3_Field_0;
      --  Interrupt trigged evnet on Pn.4
      IEV4          : IEV_IEV4_Field := NRF_SVD.GPIO.IEV_IEV4_Field_0;
      --  Interrupt trigged evnet on Pn.5
      IEV5          : IEV_IEV5_Field := NRF_SVD.GPIO.IEV_IEV5_Field_0;
      --  Interrupt trigged evnet on Pn.6
      IEV6          : IEV_IEV6_Field := NRF_SVD.GPIO.IEV_IEV6_Field_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEV_Register_2 use record
      IEV0          at 0 range 0 .. 0;
      IEV1          at 0 range 1 .. 1;
      IEV2          at 0 range 2 .. 2;
      IEV3          at 0 range 3 .. 3;
      IEV4          at 0 range 4 .. 4;
      IEV5          at 0 range 5 .. 5;
      IEV6          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x18 GPIO Port n Interrupt Enable Register
   type IE_Register_2 is record
      --  Interrupt on Pn.0 enable
      IE0           : IE_IE0_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.1 enable
      IE1           : IE_IE1_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.2 enable
      IE2           : IE_IE2_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.3 enable
      IE3           : IE_IE3_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.4 enable
      IE4           : IE_IE4_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.5 enable
      IE5           : IE_IE5_Field := NRF_SVD.GPIO.Disable;
      --  Interrupt on Pn.6 enable
      IE6           : IE_IE6_Field := NRF_SVD.GPIO.Disable;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register_2 use record
      IE0           at 0 range 0 .. 0;
      IE1           at 0 range 1 .. 1;
      IE2           at 0 range 2 .. 2;
      IE3           at 0 range 3 .. 3;
      IE4           at 0 range 4 .. 4;
      IE5           at 0 range 5 .. 5;
      IE6           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
   type RIS_Register_2 is record
      --  Read-only. Pn.0 raw interrupt flag
      IF0           : RIS_IF0_Field;
      --  Read-only. Pn.1 raw interrupt flag
      IF1           : RIS_IF1_Field;
      --  Read-only. Pn.2 raw interrupt flag
      IF2           : RIS_IF2_Field;
      --  Read-only. Pn.3 raw interrupt flag
      IF3           : RIS_IF3_Field;
      --  Read-only. Pn.4 raw interrupt flag
      IF4           : RIS_IF4_Field;
      --  Read-only. Pn.5 raw interrupt flag
      IF5           : RIS_IF5_Field;
      --  Read-only. Pn.6 raw interrupt flag
      IF6           : RIS_IF6_Field;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register_2 use record
      IF0           at 0 range 0 .. 0;
      IF1           at 0 range 1 .. 1;
      IF2           at 0 range 2 .. 2;
      IF3           at 0 range 3 .. 3;
      IF4           at 0 range 4 .. 4;
      IF5           at 0 range 5 .. 5;
      IF6           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x20 GPIO Port n Interrupt Clear Register
   type IC_Register_2 is record
      --  Write-only. Pn.0 interrupt flag clear
      IC0           : IC_IC0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.1 interrupt flag clear
      IC1           : IC_IC1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.2 interrupt flag clear
      IC2           : IC_IC2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.3 interrupt flag clear
      IC3           : IC_IC3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.4 interrupt flag clear
      IC4           : IC_IC4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.5 interrupt flag clear
      IC5           : IC_IC5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Pn.6 interrupt flag clear
      IC6           : IC_IC6_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register_2 use record
      IC0           at 0 range 0 .. 0;
      IC1           at 0 range 1 .. 1;
      IC2           at 0 range 2 .. 2;
      IC3           at 0 range 3 .. 3;
      IC4           at 0 range 4 .. 4;
      IC5           at 0 range 5 .. 5;
      IC6           at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x24 GPIO Port n Bits Set Operation Register
   type BSET_Register_2 is record
      --  Write-only. Set Pn.0
      BSET0         : BSET_BSET0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.1
      BSET1         : BSET_BSET1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.2
      BSET2         : BSET_BSET2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.3
      BSET3         : BSET_BSET3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.4
      BSET4         : BSET_BSET4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.5
      BSET5         : BSET_BSET5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Set Pn.6
      BSET6         : BSET_BSET6_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BSET_Register_2 use record
      BSET0         at 0 range 0 .. 0;
      BSET1         at 0 range 1 .. 1;
      BSET2         at 0 range 2 .. 2;
      BSET3         at 0 range 3 .. 3;
      BSET4         at 0 range 4 .. 4;
      BSET5         at 0 range 5 .. 5;
      BSET6         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Offset:0x28 GPIO Port n Bits Clear Operation Register
   type BCLR_Register_2 is record
      --  Write-only. Clear Pn.0
      BCLR0         : BCLR_BCLR0_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.1
      BCLR1         : BCLR_BCLR1_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.2
      BCLR2         : BCLR_BCLR2_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.3
      BCLR3         : BCLR_BCLR3_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.4
      BCLR4         : BCLR_BCLR4_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.5
      BCLR5         : BCLR_BCLR5_Field := NRF_SVD.GPIO.No EFFECT;
      --  Write-only. Clear Pn.6
      BCLR6         : BCLR_BCLR6_Field := NRF_SVD.GPIO.No EFFECT;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCLR_Register_2 use record
      BCLR0         at 0 range 0 .. 0;
      BCLR1         at 0 range 1 .. 1;
      BCLR2         at 0 range 2 .. 2;
      BCLR3         at 0 range 3 .. 3;
      BCLR4         at 0 range 4 .. 4;
      BCLR5         at 0 range 5 .. 5;
      BCLR6         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose I/O
   type SN_GPIO0_Peripheral is record
      --  Offset:0x00 GPIO Port n Data Register
      DATA : aliased DATA_Register;
      --  Offset:0x04 GPIO Port n Mode Register
      MODE : aliased MODE_Register;
      --  Offset:0x08 GPIO Port n Configuration Register
      CFG  : aliased CFG_Register;
      --  Offset:0x0C GPIO Port n Interrupt Sense Register
      IS_k : aliased IS_Register;
      --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
      IBS  : aliased IBS_Register;
      --  Offset:0x14 GPIO Port n Interrupt Event Register
      IEV  : aliased IEV_Register;
      --  Offset:0x18 GPIO Port n Interrupt Enable Register
      IE   : aliased IE_Register;
      --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
      RIS  : aliased RIS_Register;
      --  Offset:0x20 GPIO Port n Interrupt Clear Register
      IC   : aliased IC_Register;
      --  Offset:0x24 GPIO Port n Bits Set Operation Register
      BSET : aliased BSET_Register;
      --  Offset:0x28 GPIO Port n Bits Clear Operation Register
      BCLR : aliased BCLR_Register;
   end record
     with Volatile;

   for SN_GPIO0_Peripheral use record
      DATA at 16#0# range 0 .. 31;
      MODE at 16#4# range 0 .. 31;
      CFG  at 16#8# range 0 .. 31;
      IS_k at 16#C# range 0 .. 31;
      IBS  at 16#10# range 0 .. 31;
      IEV  at 16#14# range 0 .. 31;
      IE   at 16#18# range 0 .. 31;
      RIS  at 16#1C# range 0 .. 31;
      IC   at 16#20# range 0 .. 31;
      BSET at 16#24# range 0 .. 31;
      BCLR at 16#28# range 0 .. 31;
   end record;

   --  General Purpose I/O
   SN_GPIO0_Periph : aliased SN_GPIO0_Peripheral
     with Import, Address => System'To_Address (16#40044000#);

   --  General Purpose I/O
   type SN_GPIO1_Peripheral is record
      --  Offset:0x00 GPIO Port n Data Register
      DATA : aliased DATA_Register_1;
      --  Offset:0x04 GPIO Port n Mode Register
      MODE : aliased MODE_Register_1;
      --  Offset:0x08 GPIO Port n Configuration Register
      CFG  : aliased CFG_Register_1;
      --  Offset:0x0C GPIO Port n Interrupt Sense Register
      IS_k : aliased IS_Register_1;
      --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
      IBS  : aliased IBS_Register_1;
      --  Offset:0x14 GPIO Port n Interrupt Event Register
      IEV  : aliased IEV_Register_1;
      --  Offset:0x18 GPIO Port n Interrupt Enable Register
      IE   : aliased IE_Register_1;
      --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
      RIS  : aliased RIS_Register_1;
      --  Offset:0x20 GPIO Port n Interrupt Clear Register
      IC   : aliased IC_Register_1;
      --  Offset:0x24 GPIO Port n Bits Set Operation Register
      BSET : aliased BSET_Register_1;
      --  Offset:0x28 GPIO Port n Bits Clear Operation Register
      BCLR : aliased BCLR_Register_1;
   end record
     with Volatile;

   for SN_GPIO1_Peripheral use record
      DATA at 16#0# range 0 .. 31;
      MODE at 16#4# range 0 .. 31;
      CFG  at 16#8# range 0 .. 31;
      IS_k at 16#C# range 0 .. 31;
      IBS  at 16#10# range 0 .. 31;
      IEV  at 16#14# range 0 .. 31;
      IE   at 16#18# range 0 .. 31;
      RIS  at 16#1C# range 0 .. 31;
      IC   at 16#20# range 0 .. 31;
      BSET at 16#24# range 0 .. 31;
      BCLR at 16#28# range 0 .. 31;
   end record;

   --  General Purpose I/O
   SN_GPIO1_Periph : aliased SN_GPIO1_Peripheral
     with Import, Address => System'To_Address (16#40046000#);

   --  General Purpose I/O
   type SN_GPIO2_Peripheral is record
      --  Offset:0x00 GPIO Port n Data Register
      DATA : aliased DATA_Register_2;
      --  Offset:0x04 GPIO Port n Mode Register
      MODE : aliased MODE_Register_2;
      --  Offset:0x08 GPIO Port n Configuration Register
      CFG  : aliased CFG_Register_2;
      --  Offset:0x0C GPIO Port n Interrupt Sense Register
      IS_k : aliased IS_Register_2;
      --  Offset:0x10 GPIO Port n Interrupt Both-edge Sense Register
      IBS  : aliased IBS_Register_2;
      --  Offset:0x14 GPIO Port n Interrupt Event Register
      IEV  : aliased IEV_Register_2;
      --  Offset:0x18 GPIO Port n Interrupt Enable Register
      IE   : aliased IE_Register_2;
      --  Offset:0x1C GPIO Port n Raw Interrupt Status Register
      RIS  : aliased RIS_Register_2;
      --  Offset:0x20 GPIO Port n Interrupt Clear Register
      IC   : aliased IC_Register_2;
      --  Offset:0x24 GPIO Port n Bits Set Operation Register
      BSET : aliased BSET_Register_2;
      --  Offset:0x28 GPIO Port n Bits Clear Operation Register
      BCLR : aliased BCLR_Register_2;
   end record
     with Volatile;

   for SN_GPIO2_Peripheral use record
      DATA at 16#0# range 0 .. 31;
      MODE at 16#4# range 0 .. 31;
      CFG  at 16#8# range 0 .. 31;
      IS_k at 16#C# range 0 .. 31;
      IBS  at 16#10# range 0 .. 31;
      IEV  at 16#14# range 0 .. 31;
      IE   at 16#18# range 0 .. 31;
      RIS  at 16#1C# range 0 .. 31;
      IC   at 16#20# range 0 .. 31;
      BSET at 16#24# range 0 .. 31;
      BCLR at 16#28# range 0 .. 31;
   end record;

   --  General Purpose I/O
   SN_GPIO2_Periph : aliased SN_GPIO2_Peripheral
     with Import, Address => System'To_Address (16#40048000#);

end NRF_SVD.GPIO;
