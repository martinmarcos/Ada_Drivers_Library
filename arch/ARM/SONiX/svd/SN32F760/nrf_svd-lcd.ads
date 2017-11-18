--

--  This spec has been automatically generated from SN32F760.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LCD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  LCD driver enable bit
   type CTRL_LCDENB_Field is
     (
      --  Disable LCD
      CTRL_LCDENB_Field_0,
      --  Enable LCD
      CTRL_LCDENB_Field_1)
     with Size => 1;
   for CTRL_LCDENB_Field use
     (CTRL_LCDENB_Field_0 => 0,
      CTRL_LCDENB_Field_1 => 1);

   --  LCD type control bit
   type CTRL_LCDTYPE_Field is
     (
      --  R-type LCD
      R,
      --  4C-type LCD
      CTRL_LCDTYPE_Field_4C,
      --  1C-type LCD
      CTRL_LCDTYPE_Field_1C)
     with Size => 2;
   for CTRL_LCDTYPE_Field use
     (R => 0,
      CTRL_LCDTYPE_Field_4C => 1,
      CTRL_LCDTYPE_Field_1C => 2);

   --  LCD bias selection
   type CTRL_BIAS_Field is
     (
      --  1/3 bias
      CTRL_BIAS_Field_0,
      --  1/2 bias
      CTRL_BIAS_Field_1)
     with Size => 1;
   for CTRL_BIAS_Field use
     (CTRL_BIAS_Field_0 => 0,
      CTRL_BIAS_Field_1 => 1);

   --  SEG12~23 enable bit
   type CTRL_SEGSEL1_Field is
     (
      --  SEG12~23 are GPIO pins
      Disable,
      --  SEG12~23 are LCD segment pins
      Enable)
     with Size => 1;
   for CTRL_SEGSEL1_Field use
     (Disable => 0,
      Enable => 1);

   --  SEG24~31 enable bit
   type CTRL_SEGSEL2_Field is
     (
      --  SEG24~31 are GPIO pins
      Disable,
      --  SEG24~31 are LCD segment pins
      Enable)
     with Size => 1;
   for CTRL_SEGSEL2_Field use
     (Disable => 0,
      Enable => 1);

   --  Duty selection
   type CTRL_DUTY_Field is
     (
      --  1/2 duty
      CTRL_DUTY_Field_1,
      --  1/3 duty
      CTRL_DUTY_Field_2,
      --  1/4 duty
      CTRL_DUTY_Field_3)
     with Size => 2;
   for CTRL_DUTY_Field use
     (CTRL_DUTY_Field_1 => 1,
      CTRL_DUTY_Field_2 => 2,
      CTRL_DUTY_Field_3 => 3);

   --  LCD clock source selection
   type CTRL_LCDCLK_Field is
     (
      --  ILRC is LCD clock source
      Ilrc,
      --  ELS Xtal is LCD clock source
      Els Xtal)
     with Size => 1;
   for CTRL_LCDCLK_Field use
     (Ilrc => 0,
      Els Xtal => 1);

   --  LCD clock rate
   type CTRL_LCDRATE_Field is
     (
      --  LCD clock rate=LCD clock source/64
      CTRL_LCDRATE_Field_0,
      --  LCD clock rate=LCD clock source/128
      CTRL_LCDRATE_Field_1)
     with Size => 1;
   for CTRL_LCDRATE_Field use
     (CTRL_LCDRATE_Field_0 => 0,
      CTRL_LCDRATE_Field_1 => 1);

   --  LCD panel driving ability
   type CTRL_DRIVEP_Field is
     (
      --  Large panel
      Strong,
      --  Medium panel
      Medium,
      --  Smaller panel
      Low)
     with Size => 2;
   for CTRL_DRIVEP_Field use
     (Strong => 0,
      Medium => 1,
      Low => 3);

   --  Offset:0x00 LCD Control register
   type CTRL_Register is record
      --  LCD driver enable bit
      LCDENB         : CTRL_LCDENB_Field := NRF_SVD.LCD.CTRL_LCDENB_Field_0;
      --  Internal testing bit
      ITB            : Boolean := True;
      --  LCD type control bit
      LCDTYPE        : CTRL_LCDTYPE_Field := NRF_SVD.LCD.R;
      --  LCD bias selection
      BIAS           : CTRL_BIAS_Field := NRF_SVD.LCD.CTRL_BIAS_Field_0;
      --  SEG12~23 enable bit
      SEGSEL1        : CTRL_SEGSEL1_Field := NRF_SVD.LCD.Disable;
      --  SEG24~31 enable bit
      SEGSEL2        : CTRL_SEGSEL2_Field := NRF_SVD.LCD.Disable;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Duty selection
      DUTY           : CTRL_DUTY_Field := NRF_SVD.LCD.CTRL_DUTY_Field_3;
      --  LCD clock source selection
      LCDCLK         : CTRL_LCDCLK_Field := NRF_SVD.LCD.Ilrc;
      --  LCD clock rate
      LCDRATE        : CTRL_LCDRATE_Field := NRF_SVD.LCD.CTRL_LCDRATE_Field_0;
      --  unspecified
      Reserved_12_27 : HAL.UInt16 := 16#0#;
      --  LCD panel driving ability
      DRIVEP         : CTRL_DRIVEP_Field := NRF_SVD.LCD.Medium;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      LCDENB         at 0 range 0 .. 0;
      ITB            at 0 range 1 .. 1;
      LCDTYPE        at 0 range 2 .. 3;
      BIAS           at 0 range 4 .. 4;
      SEGSEL1        at 0 range 5 .. 5;
      SEGSEL2        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DUTY           at 0 range 8 .. 9;
      LCDCLK         at 0 range 10 .. 10;
      LCDRATE        at 0 range 11 .. 11;
      Reserved_12_27 at 0 range 12 .. 27;
      DRIVEP         at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  LCD blank control bit
   type CTRL1_LCDBNK_Field is
     (
      --  Normal display
      Normal,
      --  All LCD dots Off
      Blank)
     with Size => 1;
   for CTRL1_LCDBNK_Field use
     (Normal => 0,
      Blank => 1);

   --  Resistance selection for LCD Bias Voltage-division
   type CTRL1_REF_Field is
     (
      --  400K
      CTRL1_REF_Field_0,
      --  200K
      CTRL1_REF_Field_1,
      --  100K
      CTRL1_REF_Field_2,
      --  35K
      CTRL1_REF_Field_3)
     with Size => 2;
   for CTRL1_REF_Field use
     (CTRL1_REF_Field_0 => 0,
      CTRL1_REF_Field_1 => 1,
      CTRL1_REF_Field_2 => 2,
      CTRL1_REF_Field_3 => 3);

   --  Internal testing bit
   type CTRL1_ITB_Field is
     (
      --  Only value 0 is allowed
      CTRL1_ITB_Field_0,
      --  Reset value for the field
      Ctrl1_Itb_Field_Reset)
     with Size => 1;
   for CTRL1_ITB_Field use
     (CTRL1_ITB_Field_0 => 0,
      Ctrl1_Itb_Field_Reset => 1);

   --  Offset:0x04 LCD Control register 1
   type CTRL1_Register is record
      --  LCD blank control bit
      LCDBNK         : CTRL1_LCDBNK_Field := NRF_SVD.LCD.Normal;
      --  Resistance selection for LCD Bias Voltage-division
      REF            : CTRL1_REF_Field := NRF_SVD.LCD.CTRL1_REF_Field_0;
      --  unspecified
      Reserved_3_27  : HAL.UInt25 := 16#0#;
      --  Internal testing bit
      ITB            : CTRL1_ITB_Field := Ctrl1_Itb_Field_Reset;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL1_Register use record
      LCDBNK         at 0 range 0 .. 0;
      REF            at 0 range 1 .. 2;
      Reserved_3_27  at 0 range 3 .. 27;
      ITB            at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  C-Type VLCD output voltage
   type CCTRL1_VCP_Field is
     (
      --  VLCD=2.70V
      CCTRL1_VCP_Field_0,
      --  VLCD=2.80V
      CCTRL1_VCP_Field_1,
      --  VLCD=2.90V
      CCTRL1_VCP_Field_2,
      --  VLCD=3.00V
      CCTRL1_VCP_Field_3,
      --  1C: VLCD=3.10V, 4C: VLCD=3.06V
      CCTRL1_VCP_Field_4,
      --  1C: VLCD=3.20V, 4C: VLCD=3.14V
      CCTRL1_VCP_Field_5,
      --  1C: VLCD=3.30V, 4C: VLCD=3.20V
      CCTRL1_VCP_Field_6,
      --  1C: VLCD=3.40V, 4C: VLCD=3.30V
      CCTRL1_VCP_Field_7,
      --  1C: N/A, 4C: VLCD=3.40V
      CCTRL1_VCP_Field_8,
      --  1C: N/A, 4C: VLCD=3.60V
      CCTRL1_VCP_Field_9,
      --  1C: N/A, 4C: VLCD=3.80V
      CCTRL1_VCP_Field_10,
      --  1C: N/A, 4C: VLCD=4.00V
      CCTRL1_VCP_Field_11,
      --  1C: N/A, 4C: VLCD=4.20V
      CCTRL1_VCP_Field_12,
      --  1C: N/A, 4C: VLCD=4.40V
      CCTRL1_VCP_Field_13,
      --  1C: N/A, 4C: VLCD=4.70V
      CCTRL1_VCP_Field_14,
      --  1C: N/A, 4C: VLCD=5.00V
      CCTRL1_VCP_Field_15)
     with Size => 4;
   for CCTRL1_VCP_Field use
     (CCTRL1_VCP_Field_0 => 0,
      CCTRL1_VCP_Field_1 => 1,
      CCTRL1_VCP_Field_2 => 2,
      CCTRL1_VCP_Field_3 => 3,
      CCTRL1_VCP_Field_4 => 4,
      CCTRL1_VCP_Field_5 => 5,
      CCTRL1_VCP_Field_6 => 6,
      CCTRL1_VCP_Field_7 => 7,
      CCTRL1_VCP_Field_8 => 8,
      CCTRL1_VCP_Field_9 => 9,
      CCTRL1_VCP_Field_10 => 10,
      CCTRL1_VCP_Field_11 => 11,
      CCTRL1_VCP_Field_12 => 12,
      CCTRL1_VCP_Field_13 => 13,
      CCTRL1_VCP_Field_14 => 14,
      CCTRL1_VCP_Field_15 => 15);

   subtype CCTRL1_IT2_Field is HAL.UInt2;
   subtype CCTRL1_IT1_Field is HAL.UInt2;

   --  Offset:0x08 LCD C-Type Control register 1
   type CCTRL1_Register is record
      --  C-Type VLCD output voltage
      VCP            : CCTRL1_VCP_Field := NRF_SVD.LCD.CCTRL1_VCP_Field_3;
      --  unspecified
      Reserved_4_25  : HAL.UInt22 := 16#2000#;
      --  Internal testing bits
      IT2            : CCTRL1_IT2_Field := 16#0#;
      --  Internal testing bits
      IT1            : CCTRL1_IT1_Field := 16#2#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCTRL1_Register use record
      VCP            at 0 range 0 .. 3;
      Reserved_4_25  at 0 range 4 .. 25;
      IT2            at 0 range 26 .. 27;
      IT1            at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CCTRL2_IT_Field is HAL.UInt3;

   --  Offset:0x0C LCD C-Type Control register 2
   type CCTRL2_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Internal testing bits
      IT            : CCTRL2_IT_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCTRL2_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IT            at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LCD frame counter enable bit
   type FCC_FCENB_Field is
     (
      --  Disable LCD frame counter
      FCC_FCENB_Field_0,
      --  Enable LCD frame counter
      FCC_FCENB_Field_1)
     with Size => 1;
   for FCC_FCENB_Field use
     (FCC_FCENB_Field_0 => 0,
      FCC_FCENB_Field_1 => 1);

   subtype FCC_FCT_Field is HAL.UInt6;

   --  LCD frame interrupt enable bit
   type FCC_FCIE_Field is
     (
      --  Disable LCD frame interrupt
      FCC_FCIE_Field_0,
      --  Enable LCD frame interrupt
      FCC_FCIE_Field_1)
     with Size => 1;
   for FCC_FCIE_Field use
     (FCC_FCIE_Field_0 => 0,
      FCC_FCIE_Field_1 => 1);

   --  Offset:0x10 LCD Frame Counter Control register
   type FCC_Register is record
      --  LCD frame counter enable bit
      FCENB         : FCC_FCENB_Field := NRF_SVD.LCD.FCC_FCENB_Field_0;
      --  LCD frame counter threshold value
      FCT           : FCC_FCT_Field := 16#1#;
      --  LCD frame interrupt enable bit
      FCIE          : FCC_FCIE_Field := NRF_SVD.LCD.FCC_FCIE_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCC_Register use record
      FCENB         at 0 range 0 .. 0;
      FCT           at 0 range 1 .. 6;
      FCIE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LCD frame interrupt flag
   type RIS_FCIF_Field is
     (
      --  No interrupt
      RIS_FCIF_Field_0,
      --  FC interrupt requirements met
      RIS_FCIF_Field_1)
     with Size => 1;
   for RIS_FCIF_Field use
     (RIS_FCIF_Field_0 => 0,
      RIS_FCIF_Field_1 => 1);

   --  Offset:0x14 LCD Raw Interrupt Status register
   type RIS_Register is record
      --  LCD frame interrupt flag
      FCIF          : RIS_FCIF_Field := NRF_SVD.LCD.RIS_FCIF_Field_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      FCIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SEGM0_SEG array element
   subtype SEGM0_SEG_Element is HAL.UInt4;

   --  SEGM0_SEG array
   type SEGM0_SEG_Field_Array is array (0 .. 7) of SEGM0_SEG_Element
     with Component_Size => 4, Size => 32;

   --  Offset:0x20 LCD SEG Memory register 0
   type SEGM0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEG as a value
            Val : HAL.UInt32;
         when True =>
            --  SEG as an array
            Arr : SEGM0_SEG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SEGM0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEGM1_SEG array element
   subtype SEGM1_SEG_Element is HAL.UInt4;

   --  SEGM1_SEG array
   type SEGM1_SEG_Field_Array is array (8 .. 15) of SEGM1_SEG_Element
     with Component_Size => 4, Size => 32;

   --  Offset:0x24 LCD SEG Memory register 1
   type SEGM1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEG as a value
            Val : HAL.UInt32;
         when True =>
            --  SEG as an array
            Arr : SEGM1_SEG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SEGM1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEGM2_SEG array element
   subtype SEGM2_SEG_Element is HAL.UInt4;

   --  SEGM2_SEG array
   type SEGM2_SEG_Field_Array is array (16 .. 23) of SEGM2_SEG_Element
     with Component_Size => 4, Size => 32;

   --  Offset:0x28 LCD SEG Memory register 2
   type SEGM2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEG as a value
            Val : HAL.UInt32;
         when True =>
            --  SEG as an array
            Arr : SEGM2_SEG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SEGM2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEGM3_SEG array element
   subtype SEGM3_SEG_Element is HAL.UInt4;

   --  SEGM3_SEG array
   type SEGM3_SEG_Field_Array is array (24 .. 31) of SEGM3_SEG_Element
     with Component_Size => 4, Size => 32;

   --  Offset:0x2C LCD SEG Memory register 3
   type SEGM3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEG as a value
            Val : HAL.UInt32;
         when True =>
            --  SEG as an array
            Arr : SEGM3_SEG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for SEGM3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  4 x 32 LCD Driver
   type SN_LCD_Peripheral is record
      --  Offset:0x00 LCD Control register
      CTRL   : aliased CTRL_Register;
      --  Offset:0x04 LCD Control register 1
      CTRL1  : aliased CTRL1_Register;
      --  Offset:0x08 LCD C-Type Control register 1
      CCTRL1 : aliased CCTRL1_Register;
      --  Offset:0x0C LCD C-Type Control register 2
      CCTRL2 : aliased CCTRL2_Register;
      --  Offset:0x10 LCD Frame Counter Control register
      FCC    : aliased FCC_Register;
      --  Offset:0x14 LCD Raw Interrupt Status register
      RIS    : aliased RIS_Register;
      --  Offset:0x20 LCD SEG Memory register 0
      SEGM0  : aliased SEGM0_Register;
      --  Offset:0x24 LCD SEG Memory register 1
      SEGM1  : aliased SEGM1_Register;
      --  Offset:0x28 LCD SEG Memory register 2
      SEGM2  : aliased SEGM2_Register;
      --  Offset:0x2C LCD SEG Memory register 3
      SEGM3  : aliased SEGM3_Register;
   end record
     with Volatile;

   for SN_LCD_Peripheral use record
      CTRL   at 16#0# range 0 .. 31;
      CTRL1  at 16#4# range 0 .. 31;
      CCTRL1 at 16#8# range 0 .. 31;
      CCTRL2 at 16#C# range 0 .. 31;
      FCC    at 16#10# range 0 .. 31;
      RIS    at 16#14# range 0 .. 31;
      SEGM0  at 16#20# range 0 .. 31;
      SEGM1  at 16#24# range 0 .. 31;
      SEGM2  at 16#28# range 0 .. 31;
      SEGM3  at 16#2C# range 0 .. 31;
   end record;

   --  4 x 32 LCD Driver
   SN_LCD_Periph : aliased SN_LCD_Peripheral
     with Import, Address => System'To_Address (16#40034000#);

end NRF_SVD.LCD;
