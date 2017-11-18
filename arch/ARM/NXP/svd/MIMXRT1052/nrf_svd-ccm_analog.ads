--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CCM_ANALOG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CCM_ANALOG_PLL_ARM_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source
   type PLL_ARM_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ARM_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ARM PLL control Register
   type CCM_ANALOG_PLL_ARM_Register is record
      --  This field controls the PLL loop divider
      DIV_SELECT     : CCM_ANALOG_PLL_ARM_DIV_SELECT_Field := 16#63#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable the clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source
      BYPASS_CLK_SRC : PLL_ARM_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_18 : HAL.UInt2 := 16#0#;
      --  Reserved
      PLL_SEL        : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ARM_Register use record
      DIV_SELECT     at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      PLL_SEL        at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_ARM_SET_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source
   type PLL_ARM_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ARM_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ARM PLL control Register
   type CCM_ANALOG_PLL_ARM_SET_Register is record
      --  This field controls the PLL loop divider
      DIV_SELECT     : CCM_ANALOG_PLL_ARM_SET_DIV_SELECT_Field := 16#63#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable the clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source
      BYPASS_CLK_SRC : PLL_ARM_SET_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_18 : HAL.UInt2 := 16#0#;
      --  Reserved
      PLL_SEL        : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ARM_SET_Register use record
      DIV_SELECT     at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      PLL_SEL        at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_ARM_CLR_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source
   type PLL_ARM_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ARM_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ARM PLL control Register
   type CCM_ANALOG_PLL_ARM_CLR_Register is record
      --  This field controls the PLL loop divider
      DIV_SELECT     : CCM_ANALOG_PLL_ARM_CLR_DIV_SELECT_Field := 16#63#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable the clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source
      BYPASS_CLK_SRC : PLL_ARM_CLR_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_18 : HAL.UInt2 := 16#0#;
      --  Reserved
      PLL_SEL        : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ARM_CLR_Register use record
      DIV_SELECT     at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      PLL_SEL        at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_ARM_TOG_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source
   type PLL_ARM_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ARM_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ARM PLL control Register
   type CCM_ANALOG_PLL_ARM_TOG_Register is record
      --  This field controls the PLL loop divider
      DIV_SELECT     : CCM_ANALOG_PLL_ARM_TOG_DIV_SELECT_Field := 16#63#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable the clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source
      BYPASS_CLK_SRC : PLL_ARM_TOG_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_18 : HAL.UInt2 := 16#0#;
      --  Reserved
      PLL_SEL        : Boolean := False;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ARM_TOG_Register use record
      DIV_SELECT     at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      PLL_SEL        at 0 range 19 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype PLL_USB_DIV_SELECT_Field is HAL.UInt2;

   --  Powers the 9-phase PLL outputs for USBPHYn
   type PLL_USB1_EN_USB_CLKS_Field is
     (
      --  PLL outputs for USBPHYn off.
      En_Usb_Clks_0,
      --  PLL outputs for USBPHYn on.
      En_Usb_Clks_1)
     with Size => 1;
   for PLL_USB1_EN_USB_CLKS_Field use
     (En_Usb_Clks_0 => 0,
      En_Usb_Clks_1 => 1);

   --  Determines the bypass source.
   type PLL_USB1_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_USB1_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog USB1 480MHz PLL Control Register
   type PLL_USB_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : PLL_USB_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Powers the 9-phase PLL outputs for USBPHYn
      EN_USB_CLKS    : PLL_USB1_EN_USB_CLKS_Field :=
                        NRF_SVD.CCM_ANALOG.En_Usb_Clks_0;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY0
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB1_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLL_USB_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_USB1_SET_DIV_SELECT_Field is HAL.UInt2;

   --  Powers the 9-phase PLL outputs for USBPHYn
   type PLL_USB1_SET_EN_USB_CLKS_Field is
     (
      --  PLL outputs for USBPHYn off.
      En_Usb_Clks_0,
      --  PLL outputs for USBPHYn on.
      En_Usb_Clks_1)
     with Size => 1;
   for PLL_USB1_SET_EN_USB_CLKS_Field use
     (En_Usb_Clks_0 => 0,
      En_Usb_Clks_1 => 1);

   --  Determines the bypass source.
   type PLL_USB1_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_USB1_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog USB1 480MHz PLL Control Register
   type CCM_ANALOG_PLL_USB1_SET_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : CCM_ANALOG_PLL_USB1_SET_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Powers the 9-phase PLL outputs for USBPHYn
      EN_USB_CLKS    : PLL_USB1_SET_EN_USB_CLKS_Field :=
                        NRF_SVD.CCM_ANALOG.En_Usb_Clks_0;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY0
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB1_SET_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_USB1_SET_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_USB1_CLR_DIV_SELECT_Field is HAL.UInt2;

   --  Powers the 9-phase PLL outputs for USBPHYn
   type PLL_USB1_CLR_EN_USB_CLKS_Field is
     (
      --  PLL outputs for USBPHYn off.
      En_Usb_Clks_0,
      --  PLL outputs for USBPHYn on.
      En_Usb_Clks_1)
     with Size => 1;
   for PLL_USB1_CLR_EN_USB_CLKS_Field use
     (En_Usb_Clks_0 => 0,
      En_Usb_Clks_1 => 1);

   --  Determines the bypass source.
   type PLL_USB1_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_USB1_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog USB1 480MHz PLL Control Register
   type CCM_ANALOG_PLL_USB1_CLR_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : CCM_ANALOG_PLL_USB1_CLR_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Powers the 9-phase PLL outputs for USBPHYn
      EN_USB_CLKS    : PLL_USB1_CLR_EN_USB_CLKS_Field :=
                        NRF_SVD.CCM_ANALOG.En_Usb_Clks_0;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY0
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB1_CLR_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_USB1_CLR_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_USB1_TOG_DIV_SELECT_Field is HAL.UInt2;

   --  Powers the 9-phase PLL outputs for USBPHYn
   type PLL_USB1_TOG_EN_USB_CLKS_Field is
     (
      --  PLL outputs for USBPHYn off.
      En_Usb_Clks_0,
      --  PLL outputs for USBPHYn on.
      En_Usb_Clks_1)
     with Size => 1;
   for PLL_USB1_TOG_EN_USB_CLKS_Field use
     (En_Usb_Clks_0 => 0,
      En_Usb_Clks_1 => 1);

   --  Determines the bypass source.
   type PLL_USB1_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_USB1_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog USB1 480MHz PLL Control Register
   type CCM_ANALOG_PLL_USB1_TOG_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : CCM_ANALOG_PLL_USB1_TOG_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  Powers the 9-phase PLL outputs for USBPHYn
      EN_USB_CLKS    : PLL_USB1_TOG_EN_USB_CLKS_Field :=
                        NRF_SVD.CCM_ANALOG.En_Usb_Clks_0;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY0
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB1_TOG_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_USB1_TOG_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_USB2_SET_DIV_SELECT_Field is HAL.UInt2;

   --  Determines the bypass source.
   type PLL_USB2_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_USB2_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog USB2 480MHz PLL Control Register
   type CCM_ANALOG_PLL_USB2_SET_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : CCM_ANALOG_PLL_USB2_SET_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  0: 8-phase PLL outputs for USBPHY1 are powered down
      EN_USB_CLKS    : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY1
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB2_SET_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_USB2_SET_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_USB2_CLR_DIV_SELECT_Field is HAL.UInt2;

   --  Determines the bypass source.
   type PLL_USB2_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_USB2_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog USB2 480MHz PLL Control Register
   type CCM_ANALOG_PLL_USB2_CLR_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : CCM_ANALOG_PLL_USB2_CLR_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  0: 8-phase PLL outputs for USBPHY1 are powered down
      EN_USB_CLKS    : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY1
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB2_CLR_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_USB2_CLR_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_USB2_TOG_DIV_SELECT_Field is HAL.UInt2;

   --  Determines the bypass source.
   type PLL_USB2_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_USB2_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog USB2 480MHz PLL Control Register
   type CCM_ANALOG_PLL_USB2_TOG_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : CCM_ANALOG_PLL_USB2_TOG_DIV_SELECT_Field := 16#0#;
      --  unspecified
      Reserved_2_5   : HAL.UInt4 := 16#0#;
      --  0: 8-phase PLL outputs for USBPHY1 are powered down
      EN_USB_CLKS    : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Powers up the PLL. This bit will be set automatically when USBPHY1
      --  remote wakeup event happens.
      POWER          : Boolean := False;
      --  Enable the PLL clock output.
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_USB2_TOG_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_USB2_TOG_Register use record
      DIV_SELECT     at 0 range 0 .. 1;
      Reserved_2_5   at 0 range 2 .. 5;
      EN_USB_CLKS    at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      POWER          at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Determines the bypass source.
   type PLL_SYS_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_SYS_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog System PLL Control Register
   type CCM_ANALOG_PLL_SYS_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : Boolean := True;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable PLL output
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_SYS_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN  : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_Register use record
      DIV_SELECT     at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PFD_OFFSET_EN  at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Determines the bypass source.
   type PLL_SYS_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_SYS_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog System PLL Control Register
   type CCM_ANALOG_PLL_SYS_SET_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : Boolean := True;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable PLL output
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_SYS_SET_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN  : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_SET_Register use record
      DIV_SELECT     at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PFD_OFFSET_EN  at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Determines the bypass source.
   type PLL_SYS_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_SYS_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog System PLL Control Register
   type CCM_ANALOG_PLL_SYS_CLR_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : Boolean := True;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable PLL output
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_SYS_CLR_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN  : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_CLR_Register use record
      DIV_SELECT     at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PFD_OFFSET_EN  at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Determines the bypass source.
   type PLL_SYS_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1,
      --  GPANAIO
      Gpanaio,
      --  CHRG_DET_B
      Chrg_Det_B)
     with Size => 2;
   for PLL_SYS_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1,
      Gpanaio => 2,
      Chrg_Det_B => 3);

   --  Analog System PLL Control Register
   type CCM_ANALOG_PLL_SYS_TOG_Register is record
      --  This field controls the PLL loop divider. 0 - Fout=Fref*20; 1 -
      --  Fout=Fref*22.
      DIV_SELECT     : Boolean := True;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN      : Boolean := True;
      --  Enable PLL output
      ENABLE         : Boolean := True;
      --  Determines the bypass source.
      BYPASS_CLK_SRC : PLL_SYS_TOG_BYPASS_CLK_SRC_Field :=
                        NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN  : Boolean := False;
      --  unspecified
      Reserved_19_30 : HAL.UInt12 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_TOG_Register use record
      DIV_SELECT     at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      POWERDOWN      at 0 range 12 .. 12;
      ENABLE         at 0 range 13 .. 13;
      BYPASS_CLK_SRC at 0 range 14 .. 15;
      BYPASS         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      PFD_OFFSET_EN  at 0 range 18 .. 18;
      Reserved_19_30 at 0 range 19 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_SYS_SS_STEP_Field is HAL.UInt15;

   --  Enable bit
   type PLL_SYS_SS_ENABLE_Field is
     (
      --  Spread spectrum modulation disabled
      Enable_0,
      --  Soread spectrum modulation enabled
      Enable_1)
     with Size => 1;
   for PLL_SYS_SS_ENABLE_Field use
     (Enable_0 => 0,
      Enable_1 => 1);

   subtype CCM_ANALOG_PLL_SYS_SS_STOP_Field is HAL.UInt16;

   --  528MHz System PLL Spread Spectrum Register
   type CCM_ANALOG_PLL_SYS_SS_Register is record
      --  Frequency change step = step/CCM_ANALOG_PLL_SYS_DENOM[B]*24MHz.
      STEP   : CCM_ANALOG_PLL_SYS_SS_STEP_Field := 16#0#;
      --  Enable bit
      ENABLE : PLL_SYS_SS_ENABLE_Field := NRF_SVD.CCM_ANALOG.Enable_0;
      --  Frequency change = stop/CCM_ANALOG_PLL_SYS_DENOM[B]*24MHz.
      STOP   : CCM_ANALOG_PLL_SYS_SS_STOP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_SS_Register use record
      STEP   at 0 range 0 .. 14;
      ENABLE at 0 range 15 .. 15;
      STOP   at 0 range 16 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_SYS_NUM_A_Field is HAL.UInt30;

   --  Numerator of 528MHz System PLL Fractional Loop Divider Register
   type CCM_ANALOG_PLL_SYS_NUM_Register is record
      --  30 bit numerator (A) of fractional loop divider (signed integer).
      A              : CCM_ANALOG_PLL_SYS_NUM_A_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_NUM_Register use record
      A              at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_SYS_DENOM_B_Field is HAL.UInt30;

   --  Denominator of 528MHz System PLL Fractional Loop Divider Register
   type CCM_ANALOG_PLL_SYS_DENOM_Register is record
      --  30 bit Denominator (B) of fractional loop divider (unsigned integer).
      B              : CCM_ANALOG_PLL_SYS_DENOM_B_Field := 16#12#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_SYS_DENOM_Register use record
      B              at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_AUDIO_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_AUDIO_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_AUDIO_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_AUDIO_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_AUDIO_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Audio PLL control Register
   type CCM_ANALOG_PLL_AUDIO_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_AUDIO_DIV_SELECT_Field := 16#6#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enable PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_AUDIO_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_AUDIO_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_AUDIO_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_AUDIO_SET_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_AUDIO_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_AUDIO_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_AUDIO_SET_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_AUDIO_SET_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Audio PLL control Register
   type CCM_ANALOG_PLL_AUDIO_SET_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_AUDIO_SET_DIV_SELECT_Field := 16#6#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enable PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_AUDIO_SET_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_AUDIO_SET_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_AUDIO_SET_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_AUDIO_CLR_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_AUDIO_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_AUDIO_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_AUDIO_CLR_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_AUDIO_CLR_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Audio PLL control Register
   type CCM_ANALOG_PLL_AUDIO_CLR_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_AUDIO_CLR_DIV_SELECT_Field := 16#6#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enable PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_AUDIO_CLR_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_AUDIO_CLR_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_AUDIO_CLR_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_AUDIO_TOG_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_AUDIO_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_AUDIO_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_AUDIO_TOG_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_AUDIO_TOG_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Audio PLL control Register
   type CCM_ANALOG_PLL_AUDIO_TOG_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_AUDIO_TOG_DIV_SELECT_Field := 16#6#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enable PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_AUDIO_TOG_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_AUDIO_TOG_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked. 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_AUDIO_TOG_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_AUDIO_NUM_A_Field is HAL.UInt30;

   --  Numerator of Audio PLL Fractional Loop Divider Register
   type CCM_ANALOG_PLL_AUDIO_NUM_Register is record
      --  30 bit numerator of fractional loop divider.
      A              : CCM_ANALOG_PLL_AUDIO_NUM_A_Field := 16#5F5E100#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_AUDIO_NUM_Register use record
      A              at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_AUDIO_DENOM_B_Field is HAL.UInt30;

   --  Denominator of Audio PLL Fractional Loop Divider Register
   type CCM_ANALOG_PLL_AUDIO_DENOM_Register is record
      --  30 bit Denominator of fractional loop divider.
      B              : CCM_ANALOG_PLL_AUDIO_DENOM_B_Field := 16#2964619C#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_AUDIO_DENOM_Register use record
      B              at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_VIDEO_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_VIDEO_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_VIDEO_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_VIDEO_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_VIDEO_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Video PLL control Register
   type CCM_ANALOG_PLL_VIDEO_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_VIDEO_DIV_SELECT_Field := 16#C#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enalbe PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_VIDEO_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_VIDEO_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_VIDEO_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_VIDEO_SET_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_VIDEO_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_VIDEO_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_VIDEO_SET_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_VIDEO_SET_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Video PLL control Register
   type CCM_ANALOG_PLL_VIDEO_SET_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_VIDEO_SET_DIV_SELECT_Field := 16#C#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enalbe PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_VIDEO_SET_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_VIDEO_SET_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_VIDEO_SET_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_VIDEO_CLR_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_VIDEO_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_VIDEO_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_VIDEO_CLR_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_VIDEO_CLR_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Video PLL control Register
   type CCM_ANALOG_PLL_VIDEO_CLR_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_VIDEO_CLR_DIV_SELECT_Field := 16#C#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enalbe PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_VIDEO_CLR_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_VIDEO_CLR_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_VIDEO_CLR_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_VIDEO_TOG_DIV_SELECT_Field is HAL.UInt7;

   --  Determines the bypass source.
   type PLL_VIDEO_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_VIDEO_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  These bits implement a divider after the PLL, but before the enable and
   --  bypass mux.
   type PLL_VIDEO_TOG_POST_DIV_SELECT_Field is
     (
      --  Divide by 4.
      Post_Div_Select_0,
      --  Divide by 2.
      Post_Div_Select_1,
      --  Divide by 1.
      Post_Div_Select_2)
     with Size => 2;
   for PLL_VIDEO_TOG_POST_DIV_SELECT_Field use
     (Post_Div_Select_0 => 0,
      Post_Div_Select_1 => 1,
      Post_Div_Select_2 => 2);

   --  Analog Video PLL control Register
   type CCM_ANALOG_PLL_VIDEO_TOG_Register is record
      --  This field controls the PLL loop divider. Valid range for DIV_SELECT
      --  divider value: 27~54.
      DIV_SELECT      : CCM_ANALOG_PLL_VIDEO_TOG_DIV_SELECT_Field := 16#C#;
      --  unspecified
      Reserved_7_11   : HAL.UInt5 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN       : Boolean := True;
      --  Enalbe PLL output
      ENABLE          : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC  : PLL_VIDEO_TOG_BYPASS_CLK_SRC_Field :=
                         NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS          : Boolean := True;
      --  unspecified
      Reserved_17_17  : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN   : Boolean := False;
      --  These bits implement a divider after the PLL, but before the enable
      --  and bypass mux.
      POST_DIV_SELECT : PLL_VIDEO_TOG_POST_DIV_SELECT_Field :=
                         NRF_SVD.CCM_ANALOG.Post_Div_Select_0;
      --  unspecified
      Reserved_21_30  : HAL.UInt10 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_VIDEO_TOG_Register use record
      DIV_SELECT      at 0 range 0 .. 6;
      Reserved_7_11   at 0 range 7 .. 11;
      POWERDOWN       at 0 range 12 .. 12;
      ENABLE          at 0 range 13 .. 13;
      BYPASS_CLK_SRC  at 0 range 14 .. 15;
      BYPASS          at 0 range 16 .. 16;
      Reserved_17_17  at 0 range 17 .. 17;
      PFD_OFFSET_EN   at 0 range 18 .. 18;
      POST_DIV_SELECT at 0 range 19 .. 20;
      Reserved_21_30  at 0 range 21 .. 30;
      LOCK            at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_VIDEO_NUM_A_Field is HAL.UInt30;

   --  Numerator of Video PLL Fractional Loop Divider Register
   type CCM_ANALOG_PLL_VIDEO_NUM_Register is record
      --  30 bit numerator of fractional loop divider(Signed number), absolute
      --  value should be less than denominator
      A              : CCM_ANALOG_PLL_VIDEO_NUM_A_Field := 16#5F5E100#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_VIDEO_NUM_Register use record
      A              at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CCM_ANALOG_PLL_VIDEO_DENOM_B_Field is HAL.UInt30;

   --  Denominator of Video PLL Fractional Loop Divider Register
   type CCM_ANALOG_PLL_VIDEO_DENOM_Register is record
      --  30 bit Denominator of fractional loop divider.
      B              : CCM_ANALOG_PLL_VIDEO_DENOM_B_Field := 16#10A24447#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_VIDEO_DENOM_Register use record
      B              at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Controls the frequency of the ethernet0 reference clock.
   type PLL_ENET_ENET0_DIV_SELECT_Field is
     (
      --  25MHz
      Enet0_Div_Select_0,
      --  50MHz
      Enet0_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet0_Div_Select_2,
      --  125MHz
      Enet0_Div_Select_3)
     with Size => 2;
   for PLL_ENET_ENET0_DIV_SELECT_Field use
     (Enet0_Div_Select_0 => 0,
      Enet0_Div_Select_1 => 1,
      Enet0_Div_Select_2 => 2,
      Enet0_Div_Select_3 => 3);

   --  Controls the frequency of the ethernet1 reference clock.
   type PLL_ENET_ENET1_DIV_SELECT_Field is
     (
      --  25MHz
      Enet1_Div_Select_0,
      --  50MHz
      Enet1_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet1_Div_Select_2,
      --  125MHz
      Enet1_Div_Select_3)
     with Size => 2;
   for PLL_ENET_ENET1_DIV_SELECT_Field use
     (Enet1_Div_Select_0 => 0,
      Enet1_Div_Select_1 => 1,
      Enet1_Div_Select_2 => 2,
      Enet1_Div_Select_3 => 3);

   --  Determines the bypass source.
   type PLL_ENET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ENET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ENET PLL Control Register
   type CCM_ANALOG_PLL_ENET_Register is record
      --  Controls the frequency of the ethernet0 reference clock.
      ENET0_DIV_SELECT : PLL_ENET_ENET0_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet0_Div_Select_1;
      --  Controls the frequency of the ethernet1 reference clock.
      ENET1_DIV_SELECT : PLL_ENET_ENET1_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet1_Div_Select_0;
      --  unspecified
      Reserved_4_11    : HAL.UInt8 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN        : Boolean := True;
      --  Enable the PLL providing the ENET1 125 MHz reference clock.
      ENET1_125M_EN    : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC   : PLL_ENET_BYPASS_CLK_SRC_Field :=
                          NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS           : Boolean := True;
      --  unspecified
      Reserved_17_17   : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN    : Boolean := False;
      --  Enables an offset in the phase frequency detector.
      ENABLE_125M      : Boolean := False;
      --  Enable the PLL providing the ENET2 125 MHz reference clock
      ENET2_125M_EN    : Boolean := False;
      --  Enable the PLL providing ENET 25 MHz reference clock
      ENET_25M_REF_EN  : Boolean := False;
      --  unspecified
      Reserved_22_30   : HAL.UInt9 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ENET_Register use record
      ENET0_DIV_SELECT at 0 range 0 .. 1;
      ENET1_DIV_SELECT at 0 range 2 .. 3;
      Reserved_4_11    at 0 range 4 .. 11;
      POWERDOWN        at 0 range 12 .. 12;
      ENET1_125M_EN    at 0 range 13 .. 13;
      BYPASS_CLK_SRC   at 0 range 14 .. 15;
      BYPASS           at 0 range 16 .. 16;
      Reserved_17_17   at 0 range 17 .. 17;
      PFD_OFFSET_EN    at 0 range 18 .. 18;
      ENABLE_125M      at 0 range 19 .. 19;
      ENET2_125M_EN    at 0 range 20 .. 20;
      ENET_25M_REF_EN  at 0 range 21 .. 21;
      Reserved_22_30   at 0 range 22 .. 30;
      LOCK             at 0 range 31 .. 31;
   end record;

   --  Controls the frequency of the ethernet0 reference clock.
   type PLL_ENET_SET_ENET0_DIV_SELECT_Field is
     (
      --  25MHz
      Enet0_Div_Select_0,
      --  50MHz
      Enet0_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet0_Div_Select_2,
      --  125MHz
      Enet0_Div_Select_3)
     with Size => 2;
   for PLL_ENET_SET_ENET0_DIV_SELECT_Field use
     (Enet0_Div_Select_0 => 0,
      Enet0_Div_Select_1 => 1,
      Enet0_Div_Select_2 => 2,
      Enet0_Div_Select_3 => 3);

   --  Controls the frequency of the ethernet1 reference clock.
   type PLL_ENET_SET_ENET1_DIV_SELECT_Field is
     (
      --  25MHz
      Enet1_Div_Select_0,
      --  50MHz
      Enet1_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet1_Div_Select_2,
      --  125MHz
      Enet1_Div_Select_3)
     with Size => 2;
   for PLL_ENET_SET_ENET1_DIV_SELECT_Field use
     (Enet1_Div_Select_0 => 0,
      Enet1_Div_Select_1 => 1,
      Enet1_Div_Select_2 => 2,
      Enet1_Div_Select_3 => 3);

   --  Determines the bypass source.
   type PLL_ENET_SET_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ENET_SET_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ENET PLL Control Register
   type CCM_ANALOG_PLL_ENET_SET_Register is record
      --  Controls the frequency of the ethernet0 reference clock.
      ENET0_DIV_SELECT : PLL_ENET_SET_ENET0_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet0_Div_Select_1;
      --  Controls the frequency of the ethernet1 reference clock.
      ENET1_DIV_SELECT : PLL_ENET_SET_ENET1_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet1_Div_Select_0;
      --  unspecified
      Reserved_4_11    : HAL.UInt8 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN        : Boolean := True;
      --  Enable the PLL providing the ENET1 125 MHz reference clock.
      ENET1_125M_EN    : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC   : PLL_ENET_SET_BYPASS_CLK_SRC_Field :=
                          NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS           : Boolean := True;
      --  unspecified
      Reserved_17_17   : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN    : Boolean := False;
      --  Enables an offset in the phase frequency detector.
      ENABLE_125M      : Boolean := False;
      --  Enable the PLL providing the ENET2 125 MHz reference clock
      ENET2_125M_EN    : Boolean := False;
      --  Enable the PLL providing ENET 25 MHz reference clock
      ENET_25M_REF_EN  : Boolean := False;
      --  unspecified
      Reserved_22_30   : HAL.UInt9 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ENET_SET_Register use record
      ENET0_DIV_SELECT at 0 range 0 .. 1;
      ENET1_DIV_SELECT at 0 range 2 .. 3;
      Reserved_4_11    at 0 range 4 .. 11;
      POWERDOWN        at 0 range 12 .. 12;
      ENET1_125M_EN    at 0 range 13 .. 13;
      BYPASS_CLK_SRC   at 0 range 14 .. 15;
      BYPASS           at 0 range 16 .. 16;
      Reserved_17_17   at 0 range 17 .. 17;
      PFD_OFFSET_EN    at 0 range 18 .. 18;
      ENABLE_125M      at 0 range 19 .. 19;
      ENET2_125M_EN    at 0 range 20 .. 20;
      ENET_25M_REF_EN  at 0 range 21 .. 21;
      Reserved_22_30   at 0 range 22 .. 30;
      LOCK             at 0 range 31 .. 31;
   end record;

   --  Controls the frequency of the ethernet0 reference clock.
   type PLL_ENET_CLR_ENET0_DIV_SELECT_Field is
     (
      --  25MHz
      Enet0_Div_Select_0,
      --  50MHz
      Enet0_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet0_Div_Select_2,
      --  125MHz
      Enet0_Div_Select_3)
     with Size => 2;
   for PLL_ENET_CLR_ENET0_DIV_SELECT_Field use
     (Enet0_Div_Select_0 => 0,
      Enet0_Div_Select_1 => 1,
      Enet0_Div_Select_2 => 2,
      Enet0_Div_Select_3 => 3);

   --  Controls the frequency of the ethernet1 reference clock.
   type PLL_ENET_CLR_ENET1_DIV_SELECT_Field is
     (
      --  25MHz
      Enet1_Div_Select_0,
      --  50MHz
      Enet1_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet1_Div_Select_2,
      --  125MHz
      Enet1_Div_Select_3)
     with Size => 2;
   for PLL_ENET_CLR_ENET1_DIV_SELECT_Field use
     (Enet1_Div_Select_0 => 0,
      Enet1_Div_Select_1 => 1,
      Enet1_Div_Select_2 => 2,
      Enet1_Div_Select_3 => 3);

   --  Determines the bypass source.
   type PLL_ENET_CLR_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ENET_CLR_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ENET PLL Control Register
   type CCM_ANALOG_PLL_ENET_CLR_Register is record
      --  Controls the frequency of the ethernet0 reference clock.
      ENET0_DIV_SELECT : PLL_ENET_CLR_ENET0_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet0_Div_Select_1;
      --  Controls the frequency of the ethernet1 reference clock.
      ENET1_DIV_SELECT : PLL_ENET_CLR_ENET1_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet1_Div_Select_0;
      --  unspecified
      Reserved_4_11    : HAL.UInt8 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN        : Boolean := True;
      --  Enable the PLL providing the ENET1 125 MHz reference clock.
      ENET1_125M_EN    : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC   : PLL_ENET_CLR_BYPASS_CLK_SRC_Field :=
                          NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS           : Boolean := True;
      --  unspecified
      Reserved_17_17   : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN    : Boolean := False;
      --  Enables an offset in the phase frequency detector.
      ENABLE_125M      : Boolean := False;
      --  Enable the PLL providing the ENET2 125 MHz reference clock
      ENET2_125M_EN    : Boolean := False;
      --  Enable the PLL providing ENET 25 MHz reference clock
      ENET_25M_REF_EN  : Boolean := False;
      --  unspecified
      Reserved_22_30   : HAL.UInt9 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ENET_CLR_Register use record
      ENET0_DIV_SELECT at 0 range 0 .. 1;
      ENET1_DIV_SELECT at 0 range 2 .. 3;
      Reserved_4_11    at 0 range 4 .. 11;
      POWERDOWN        at 0 range 12 .. 12;
      ENET1_125M_EN    at 0 range 13 .. 13;
      BYPASS_CLK_SRC   at 0 range 14 .. 15;
      BYPASS           at 0 range 16 .. 16;
      Reserved_17_17   at 0 range 17 .. 17;
      PFD_OFFSET_EN    at 0 range 18 .. 18;
      ENABLE_125M      at 0 range 19 .. 19;
      ENET2_125M_EN    at 0 range 20 .. 20;
      ENET_25M_REF_EN  at 0 range 21 .. 21;
      Reserved_22_30   at 0 range 22 .. 30;
      LOCK             at 0 range 31 .. 31;
   end record;

   --  Controls the frequency of the ethernet0 reference clock.
   type PLL_ENET_TOG_ENET0_DIV_SELECT_Field is
     (
      --  25MHz
      Enet0_Div_Select_0,
      --  50MHz
      Enet0_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet0_Div_Select_2,
      --  125MHz
      Enet0_Div_Select_3)
     with Size => 2;
   for PLL_ENET_TOG_ENET0_DIV_SELECT_Field use
     (Enet0_Div_Select_0 => 0,
      Enet0_Div_Select_1 => 1,
      Enet0_Div_Select_2 => 2,
      Enet0_Div_Select_3 => 3);

   --  Controls the frequency of the ethernet1 reference clock.
   type PLL_ENET_TOG_ENET1_DIV_SELECT_Field is
     (
      --  25MHz
      Enet1_Div_Select_0,
      --  50MHz
      Enet1_Div_Select_1,
      --  100MHz (not 50% duty cycle)
      Enet1_Div_Select_2,
      --  125MHz
      Enet1_Div_Select_3)
     with Size => 2;
   for PLL_ENET_TOG_ENET1_DIV_SELECT_Field use
     (Enet1_Div_Select_0 => 0,
      Enet1_Div_Select_1 => 1,
      Enet1_Div_Select_2 => 2,
      Enet1_Div_Select_3 => 3);

   --  Determines the bypass source.
   type PLL_ENET_TOG_BYPASS_CLK_SRC_Field is
     (
      --  Select the 24MHz oscillator as source.
      Ref_Clk_24M,
      --  Select the CLK1_N / CLK1_P as source.
      Clk1)
     with Size => 2;
   for PLL_ENET_TOG_BYPASS_CLK_SRC_Field use
     (Ref_Clk_24M => 0,
      Clk1 => 1);

   --  Analog ENET PLL Control Register
   type CCM_ANALOG_PLL_ENET_TOG_Register is record
      --  Controls the frequency of the ethernet0 reference clock.
      ENET0_DIV_SELECT : PLL_ENET_TOG_ENET0_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet0_Div_Select_1;
      --  Controls the frequency of the ethernet1 reference clock.
      ENET1_DIV_SELECT : PLL_ENET_TOG_ENET1_DIV_SELECT_Field :=
                          NRF_SVD.CCM_ANALOG.Enet1_Div_Select_0;
      --  unspecified
      Reserved_4_11    : HAL.UInt8 := 16#0#;
      --  Powers down the PLL.
      POWERDOWN        : Boolean := True;
      --  Enable the PLL providing the ENET1 125 MHz reference clock.
      ENET1_125M_EN    : Boolean := False;
      --  Determines the bypass source.
      BYPASS_CLK_SRC   : PLL_ENET_TOG_BYPASS_CLK_SRC_Field :=
                          NRF_SVD.CCM_ANALOG.Ref_Clk_24M;
      --  Bypass the PLL.
      BYPASS           : Boolean := True;
      --  unspecified
      Reserved_17_17   : HAL.Bit := 16#0#;
      --  Enables an offset in the phase frequency detector.
      PFD_OFFSET_EN    : Boolean := False;
      --  Enables an offset in the phase frequency detector.
      ENABLE_125M      : Boolean := False;
      --  Enable the PLL providing the ENET2 125 MHz reference clock
      ENET2_125M_EN    : Boolean := False;
      --  Enable the PLL providing ENET 25 MHz reference clock
      ENET_25M_REF_EN  : Boolean := False;
      --  unspecified
      Reserved_22_30   : HAL.UInt9 := 16#0#;
      --  Read-only. 1 - PLL is currently locked; 0 - PLL is not currently
      --  locked.
      LOCK             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PLL_ENET_TOG_Register use record
      ENET0_DIV_SELECT at 0 range 0 .. 1;
      ENET1_DIV_SELECT at 0 range 2 .. 3;
      Reserved_4_11    at 0 range 4 .. 11;
      POWERDOWN        at 0 range 12 .. 12;
      ENET1_125M_EN    at 0 range 13 .. 13;
      BYPASS_CLK_SRC   at 0 range 14 .. 15;
      BYPASS           at 0 range 16 .. 16;
      Reserved_17_17   at 0 range 17 .. 17;
      PFD_OFFSET_EN    at 0 range 18 .. 18;
      ENABLE_125M      at 0 range 19 .. 19;
      ENET2_125M_EN    at 0 range 20 .. 20;
      ENET_25M_REF_EN  at 0 range 21 .. 21;
      Reserved_22_30   at 0 range 22 .. 30;
      LOCK             at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_480_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_PFD3_FRAC_Field is HAL.UInt6;

   --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_480_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_480_PFD0_FRAC_Field := 16#C#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_480_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_480_PFD2_FRAC_Field := 16#11#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_480_PFD3_FRAC_Field := 16#13#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_480_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_480_SET_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_SET_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_SET_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_SET_PFD3_FRAC_Field is HAL.UInt6;

   --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_480_SET_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_480_SET_PFD0_FRAC_Field := 16#C#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_480_SET_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_480_SET_PFD2_FRAC_Field := 16#11#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_480_SET_PFD3_FRAC_Field := 16#13#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_480_SET_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_480_CLR_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_CLR_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_CLR_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_CLR_PFD3_FRAC_Field is HAL.UInt6;

   --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_480_CLR_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_480_CLR_PFD0_FRAC_Field := 16#C#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_480_CLR_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_480_CLR_PFD2_FRAC_Field := 16#11#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_480_CLR_PFD3_FRAC_Field := 16#13#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_480_CLR_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_480_TOG_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_TOG_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_TOG_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_480_TOG_PFD3_FRAC_Field is HAL.UInt6;

   --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_480_TOG_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_480_TOG_PFD0_FRAC_Field := 16#C#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_480_TOG_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_480_TOG_PFD2_FRAC_Field := 16#11#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_480_TOG_PFD3_FRAC_Field := 16#13#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_480_TOG_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_528_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_PFD3_FRAC_Field is HAL.UInt6;

   --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_528_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_528_PFD0_FRAC_Field := 16#1B#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_528_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_528_PFD2_FRAC_Field := 16#18#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_528_PFD3_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_528_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_528_SET_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_SET_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_SET_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_SET_PFD3_FRAC_Field is HAL.UInt6;

   --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_528_SET_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_528_SET_PFD0_FRAC_Field := 16#1B#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_528_SET_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_528_SET_PFD2_FRAC_Field := 16#18#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_528_SET_PFD3_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_528_SET_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_528_CLR_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_CLR_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_CLR_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_CLR_PFD3_FRAC_Field is HAL.UInt6;

   --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_528_CLR_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_528_CLR_PFD0_FRAC_Field := 16#1B#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_528_CLR_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_528_CLR_PFD2_FRAC_Field := 16#18#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_528_CLR_PFD3_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_528_CLR_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
   end record;

   subtype CCM_ANALOG_PFD_528_TOG_PFD0_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_TOG_PFD1_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_TOG_PFD2_FRAC_Field is HAL.UInt6;
   subtype CCM_ANALOG_PFD_528_TOG_PFD3_FRAC_Field is HAL.UInt6;

   --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
   type CCM_ANALOG_PFD_528_TOG_Register is record
      --  This field controls the fractional divide value
      PFD0_FRAC    : CCM_ANALOG_PFD_528_TOG_PFD0_FRAC_Field := 16#1B#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD0_STABLE  : Boolean := False;
      --  If set to 1, the IO fractional divider clock (reference ref_pfd0) is
      --  off (power savings)
      PFD0_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD1_FRAC    : CCM_ANALOG_PFD_528_TOG_PFD1_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD1_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD1_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD2_FRAC    : CCM_ANALOG_PFD_528_TOG_PFD2_FRAC_Field := 16#18#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD2_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD2_CLKGATE : Boolean := False;
      --  This field controls the fractional divide value
      PFD3_FRAC    : CCM_ANALOG_PFD_528_TOG_PFD3_FRAC_Field := 16#10#;
      --  Read-only. This read-only bitfield is for DIAGNOSTIC PURPOSES ONLY
      --  since the fractional divider should become stable quickly enough that
      --  this field will never need to be used by either device driver or
      --  application code
      PFD3_STABLE  : Boolean := False;
      --  IO Clock Gate
      PFD3_CLKGATE : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_PFD_528_TOG_Register use record
      PFD0_FRAC    at 0 range 0 .. 5;
      PFD0_STABLE  at 0 range 6 .. 6;
      PFD0_CLKGATE at 0 range 7 .. 7;
      PFD1_FRAC    at 0 range 8 .. 13;
      PFD1_STABLE  at 0 range 14 .. 14;
      PFD1_CLKGATE at 0 range 15 .. 15;
      PFD2_FRAC    at 0 range 16 .. 21;
      PFD2_STABLE  at 0 range 22 .. 22;
      PFD2_CLKGATE at 0 range 23 .. 23;
      PFD3_FRAC    at 0 range 24 .. 29;
      PFD3_STABLE  at 0 range 30 .. 30;
      PFD3_CLKGATE at 0 range 31 .. 31;
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

   --  Not related to CCM. See Power Management Unit (PMU)
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
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
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

   --  This field indicates which chip source is being used for the rtc clock
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
   type CCM_ANALOG_MISC0_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Selfbiasoff_0;
      --  Not related to CCM. See Power Management Unit (PMU)
      REFTOP_VBGADJ      : MISC0_REFTOP_VBGADJ_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.CCM_ANALOG.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.CCM_ANALOG.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_OSC_I_Field := NRF_SVD.CCM_ANALOG.Nominal;
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
                            NRF_SVD.CCM_ANALOG.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_CLKGATE_DELAY_Field :=
                            NRF_SVD.CCM_ANALOG.Clkgate_Delay_1;
      --  This field indicates which chip source is being used for the rtc
      --  clock
      RTC_XTAL_SOURCE    : MISC0_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.CCM_ANALOG.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_VID_PLL_PREDIV_Field :=
                            NRF_SVD.CCM_ANALOG.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC0_Register use record
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

   --  Not related to CCM. See Power Management Unit (PMU)
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
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_SET_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
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

   --  This field indicates which chip source is being used for the rtc clock
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
   type CCM_ANALOG_MISC0_SET_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_SET_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Selfbiasoff_0;
      --  Not related to CCM. See Power Management Unit (PMU)
      REFTOP_VBGADJ      : MISC0_SET_REFTOP_VBGADJ_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_SET_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.CCM_ANALOG.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_SET_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.CCM_ANALOG.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_SET_OSC_I_Field :=
                            NRF_SVD.CCM_ANALOG.Nominal;
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
                            NRF_SVD.CCM_ANALOG.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_SET_CLKGATE_DELAY_Field :=
                            NRF_SVD.CCM_ANALOG.Clkgate_Delay_1;
      --  This field indicates which chip source is being used for the rtc
      --  clock
      RTC_XTAL_SOURCE    : MISC0_SET_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.CCM_ANALOG.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_SET_VID_PLL_PREDIV_Field :=
                            NRF_SVD.CCM_ANALOG.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC0_SET_Register use record
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

   --  Not related to CCM. See Power Management Unit (PMU)
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
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_CLR_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
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

   --  This field indicates which chip source is being used for the rtc clock
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
   type CCM_ANALOG_MISC0_CLR_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_CLR_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Selfbiasoff_0;
      --  Not related to CCM. See Power Management Unit (PMU)
      REFTOP_VBGADJ      : MISC0_CLR_REFTOP_VBGADJ_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_CLR_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.CCM_ANALOG.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_CLR_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.CCM_ANALOG.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_CLR_OSC_I_Field :=
                            NRF_SVD.CCM_ANALOG.Nominal;
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
                            NRF_SVD.CCM_ANALOG.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_CLR_CLKGATE_DELAY_Field :=
                            NRF_SVD.CCM_ANALOG.Clkgate_Delay_1;
      --  This field indicates which chip source is being used for the rtc
      --  clock
      RTC_XTAL_SOURCE    : MISC0_CLR_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.CCM_ANALOG.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_CLR_VID_PLL_PREDIV_Field :=
                            NRF_SVD.CCM_ANALOG.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC0_CLR_Register use record
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

   --  Not related to CCM. See Power Management Unit (PMU)
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
      --  All analog except rtc powered down on stop mode assertion.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_0,
      --  Certain analog functions such as certain regulators left up.
      --  XtalOsc=on, RCOsc=off;
      Stop_Mode_Config_1,
      --  XtalOsc=off, RCOsc=on, Old BG=on, New BG=off.
      Stop_Mode_Config_2,
      --  XtalOsc=off, RCOsc=on, Old BG=off, New BG=on.
      Stop_Mode_Config_3)
     with Size => 2;
   for MISC0_TOG_STOP_MODE_CONFIG_Field use
     (Stop_Mode_Config_0 => 0,
      Stop_Mode_Config_1 => 1,
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

   --  This field indicates which chip source is being used for the rtc clock
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
   type CCM_ANALOG_MISC0_TOG_Register is record
      --  Control bit to power-down the analog bandgap reference circuitry
      REFTOP_PWD         : Boolean := False;
      --  unspecified
      Reserved_1_2       : HAL.UInt2 := 16#0#;
      --  Control bit to disable the self-bias circuit in the analog bandgap
      REFTOP_SELFBIASOFF : MISC0_TOG_REFTOP_SELFBIASOFF_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Selfbiasoff_0;
      --  Not related to CCM. See Power Management Unit (PMU)
      REFTOP_VBGADJ      : MISC0_TOG_REFTOP_VBGADJ_Field :=
                            NRF_SVD.CCM_ANALOG.Reftop_Vbgadj_0;
      --  Status bit that signals the analog bandgap voltage is up and stable
      REFTOP_VBGUP       : Boolean := False;
      --  unspecified
      Reserved_8_9       : HAL.UInt2 := 16#0#;
      --  Configure the analog behavior in stop mode.
      STOP_MODE_CONFIG   : MISC0_TOG_STOP_MODE_CONFIG_Field :=
                            NRF_SVD.CCM_ANALOG.Stop_Mode_Config_0;
      --  This bit controls a switch from VDD_HIGH_IN to VDD_SNVS_IN.
      DISCON_HIGH_SNVS   : MISC0_TOG_DISCON_HIGH_SNVS_Field :=
                            NRF_SVD.CCM_ANALOG.Discon_High_Snvs_0;
      --  This field determines the bias current in the 24MHz oscillator
      OSC_I              : MISC0_TOG_OSC_I_Field :=
                            NRF_SVD.CCM_ANALOG.Nominal;
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
                            NRF_SVD.CCM_ANALOG.Allow_Auto_Gate;
      --  This field specifies the delay between powering up the XTAL 24MHz
      --  clock and releasing the clock to the digital logic inside the analog
      --  block
      CLKGATE_DELAY      : MISC0_TOG_CLKGATE_DELAY_Field :=
                            NRF_SVD.CCM_ANALOG.Clkgate_Delay_1;
      --  This field indicates which chip source is being used for the rtc
      --  clock
      RTC_XTAL_SOURCE    : MISC0_TOG_RTC_XTAL_SOURCE_Field :=
                            NRF_SVD.CCM_ANALOG.Rtc_Xtal_Source_0;
      --  This field powers down the 24M crystal oscillator if set true
      XTAL_24M_PWD       : Boolean := False;
      --  Predivider for the source clock of the PLL's.
      VID_PLL_PREDIV     : MISC0_TOG_VID_PLL_PREDIV_Field :=
                            NRF_SVD.CCM_ANALOG.Vid_Pll_Prediv_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC0_TOG_Register use record
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

   --  This field selects the clk to be routed to anaclk1/1b.
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
   type CCM_ANALOG_MISC1_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.
      LVDS1_CLK_SEL       : MISC1_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.CCM_ANALOG.Arm_Pll;
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

   for CCM_ANALOG_MISC1_Register use record
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

   --  This field selects the clk to be routed to anaclk1/1b.
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
   type CCM_ANALOG_MISC1_SET_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.
      LVDS1_CLK_SEL       : MISC1_SET_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.CCM_ANALOG.Arm_Pll;
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

   for CCM_ANALOG_MISC1_SET_Register use record
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

   --  This field selects the clk to be routed to anaclk1/1b.
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
   type CCM_ANALOG_MISC1_CLR_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.
      LVDS1_CLK_SEL       : MISC1_CLR_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.CCM_ANALOG.Arm_Pll;
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

   for CCM_ANALOG_MISC1_CLR_Register use record
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

   --  This field selects the clk to be routed to anaclk1/1b.
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
   type CCM_ANALOG_MISC1_TOG_Register is record
      --  This field selects the clk to be routed to anaclk1/1b.
      LVDS1_CLK_SEL       : MISC1_TOG_LVDS1_CLK_SEL_Field :=
                             NRF_SVD.CCM_ANALOG.Arm_Pll;
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

   for CCM_ANALOG_MISC1_TOG_Register use record
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

   --  Reg0 brownout status bit.Not related to CCM. See Power Management Unit
   --  (PMU)
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

   --  When USB is in low power suspend mode this Control bit is used to
   --  indicate if other system peripherals require the USB PLL3 clock when the
   --  SoC is not in low power mode
   type MISC2_PLL3_disable_Field is
     (
      --  PLL3 is being used by peripherals and is enabled when SoC is not in
      --  any low power mode
      Pll3_DISABLE_0,
      --  PLL3 can be disabled when the SoC is not in any low power mode
      Pll3_DISABLE_1)
     with Size => 1;
   for MISC2_PLL3_disable_Field use
     (Pll3_DISABLE_0 => 0,
      Pll3_DISABLE_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_REG1_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg1_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg1_Bo_Offset_7)
     with Size => 3;
   for MISC2_REG1_BO_OFFSET_Field use
     (Reg1_Bo_Offset_4 => 4,
      Reg1_Bo_Offset_7 => 7);

   --  Reg1 brownout status bit. Not related to CCM. See Power Management Unit
   --  (PMU)
   type MISC2_REG1_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Reg1_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg1_Bo_Status_1)
     with Size => 1;
   for MISC2_REG1_BO_STATUS_Field use
     (Misc2_Reg1_Bo_Status_Field_Reset => 0,
      Reg1_Bo_Status_1 => 1);

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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
   type MISC2_REG1_STEP_TIME_Field is
     (
      --  64
      MISC2_REG1_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_REG1_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_REG1_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_REG1_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_REG1_STEP_TIME_Field use
     (MISC2_REG1_STEP_TIME_Field_64_Clocks => 0,
      MISC2_REG1_STEP_TIME_Field_128_Clocks => 1,
      MISC2_REG1_STEP_TIME_Field_256_Clocks => 2,
      MISC2_REG1_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Miscellaneous Register 2
   type CCM_ANALOG_MISC2_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_REG0_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_BO_STATUS : MISC2_REG0_BO_STATUS_Field :=
                        Misc2_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_ENABLE_BO : Boolean := True;
      --  Read-only. ARM supply Not related to CCM. See Power Management Unit
      --  (PMU)
      REG0_OK        : Boolean := False;
      --  When USB is in low power suspend mode this Control bit is used to
      --  indicate if other system peripherals require the USB PLL3 clock when
      --  the SoC is not in low power mode
      PLL3_disable   : MISC2_PLL3_disable_Field :=
                        NRF_SVD.CCM_ANALOG.Pll3_DISABLE_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG1_BO_OFFSET : MISC2_REG1_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg1_Bo_Offset_7;
      --  Read-only. Reg1 brownout status bit. Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_BO_STATUS : MISC2_REG1_BO_STATUS_Field :=
                        Misc2_Reg1_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_ENABLE_BO : Boolean := True;
      --  Read-only. GPU/VPU supply Not related to CCM. See Power Management
      --  Unit (PMU)
      REG1_OK        : Boolean := False;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_REG2_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_STEP_TIME : MISC2_REG0_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_REG0_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_STEP_TIME : MISC2_REG1_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_REG1_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_STEP_TIME : MISC2_REG2_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_VIDEO_DIV_Field :=
                        NRF_SVD.CCM_ANALOG.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC2_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      REG0_OK        at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      REG1_BO_OFFSET at 0 range 8 .. 10;
      REG1_BO_STATUS at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      REG1_ENABLE_BO at 0 range 13 .. 13;
      REG1_OK        at 0 range 14 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      REG1_STEP_TIME at 0 range 26 .. 27;
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

   --  Reg0 brownout status bit.Not related to CCM. See Power Management Unit
   --  (PMU)
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

   --  When USB is in low power suspend mode this Control bit is used to
   --  indicate if other system peripherals require the USB PLL3 clock when the
   --  SoC is not in low power mode
   type MISC2_SET_PLL3_disable_Field is
     (
      --  PLL3 is being used by peripherals and is enabled when SoC is not in
      --  any low power mode
      Pll3_DISABLE_0,
      --  PLL3 can be disabled when the SoC is not in any low power mode
      Pll3_DISABLE_1)
     with Size => 1;
   for MISC2_SET_PLL3_disable_Field use
     (Pll3_DISABLE_0 => 0,
      Pll3_DISABLE_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_SET_REG1_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg1_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg1_Bo_Offset_7)
     with Size => 3;
   for MISC2_SET_REG1_BO_OFFSET_Field use
     (Reg1_Bo_Offset_4 => 4,
      Reg1_Bo_Offset_7 => 7);

   --  Reg1 brownout status bit. Not related to CCM. See Power Management Unit
   --  (PMU)
   type MISC2_SET_REG1_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Set_Reg1_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg1_Bo_Status_1)
     with Size => 1;
   for MISC2_SET_REG1_BO_STATUS_Field use
     (Misc2_Set_Reg1_Bo_Status_Field_Reset => 0,
      Reg1_Bo_Status_1 => 1);

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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
   type MISC2_SET_REG1_STEP_TIME_Field is
     (
      --  64
      MISC2_SET_REG1_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_SET_REG1_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_SET_REG1_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_SET_REG1_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_SET_REG1_STEP_TIME_Field use
     (MISC2_SET_REG1_STEP_TIME_Field_64_Clocks => 0,
      MISC2_SET_REG1_STEP_TIME_Field_128_Clocks => 1,
      MISC2_SET_REG1_STEP_TIME_Field_256_Clocks => 2,
      MISC2_SET_REG1_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Miscellaneous Register 2
   type CCM_ANALOG_MISC2_SET_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_SET_REG0_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_BO_STATUS : MISC2_SET_REG0_BO_STATUS_Field :=
                        Misc2_Set_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_ENABLE_BO : Boolean := True;
      --  Read-only. ARM supply Not related to CCM. See Power Management Unit
      --  (PMU)
      REG0_OK        : Boolean := False;
      --  When USB is in low power suspend mode this Control bit is used to
      --  indicate if other system peripherals require the USB PLL3 clock when
      --  the SoC is not in low power mode
      PLL3_disable   : MISC2_SET_PLL3_disable_Field :=
                        NRF_SVD.CCM_ANALOG.Pll3_DISABLE_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG1_BO_OFFSET : MISC2_SET_REG1_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg1_Bo_Offset_7;
      --  Read-only. Reg1 brownout status bit. Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_BO_STATUS : MISC2_SET_REG1_BO_STATUS_Field :=
                        Misc2_Set_Reg1_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_ENABLE_BO : Boolean := True;
      --  Read-only. GPU/VPU supply Not related to CCM. See Power Management
      --  Unit (PMU)
      REG1_OK        : Boolean := False;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_SET_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_SET_REG2_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_SET_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_STEP_TIME : MISC2_SET_REG0_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_SET_REG0_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_STEP_TIME : MISC2_SET_REG1_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_SET_REG1_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_STEP_TIME : MISC2_SET_REG2_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_SET_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_SET_VIDEO_DIV_Field :=
                        NRF_SVD.CCM_ANALOG.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC2_SET_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      REG0_OK        at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      REG1_BO_OFFSET at 0 range 8 .. 10;
      REG1_BO_STATUS at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      REG1_ENABLE_BO at 0 range 13 .. 13;
      REG1_OK        at 0 range 14 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      REG1_STEP_TIME at 0 range 26 .. 27;
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

   --  Reg0 brownout status bit.Not related to CCM. See Power Management Unit
   --  (PMU)
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

   --  When USB is in low power suspend mode this Control bit is used to
   --  indicate if other system peripherals require the USB PLL3 clock when the
   --  SoC is not in low power mode
   type MISC2_CLR_PLL3_disable_Field is
     (
      --  PLL3 is being used by peripherals and is enabled when SoC is not in
      --  any low power mode
      Pll3_DISABLE_0,
      --  PLL3 can be disabled when the SoC is not in any low power mode
      Pll3_DISABLE_1)
     with Size => 1;
   for MISC2_CLR_PLL3_disable_Field use
     (Pll3_DISABLE_0 => 0,
      Pll3_DISABLE_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_CLR_REG1_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg1_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg1_Bo_Offset_7)
     with Size => 3;
   for MISC2_CLR_REG1_BO_OFFSET_Field use
     (Reg1_Bo_Offset_4 => 4,
      Reg1_Bo_Offset_7 => 7);

   --  Reg1 brownout status bit. Not related to CCM. See Power Management Unit
   --  (PMU)
   type MISC2_CLR_REG1_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Clr_Reg1_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg1_Bo_Status_1)
     with Size => 1;
   for MISC2_CLR_REG1_BO_STATUS_Field use
     (Misc2_Clr_Reg1_Bo_Status_Field_Reset => 0,
      Reg1_Bo_Status_1 => 1);

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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
   type MISC2_CLR_REG1_STEP_TIME_Field is
     (
      --  64
      MISC2_CLR_REG1_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_CLR_REG1_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_CLR_REG1_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_CLR_REG1_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_CLR_REG1_STEP_TIME_Field use
     (MISC2_CLR_REG1_STEP_TIME_Field_64_Clocks => 0,
      MISC2_CLR_REG1_STEP_TIME_Field_128_Clocks => 1,
      MISC2_CLR_REG1_STEP_TIME_Field_256_Clocks => 2,
      MISC2_CLR_REG1_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Miscellaneous Register 2
   type CCM_ANALOG_MISC2_CLR_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_CLR_REG0_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_BO_STATUS : MISC2_CLR_REG0_BO_STATUS_Field :=
                        Misc2_Clr_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_ENABLE_BO : Boolean := True;
      --  Read-only. ARM supply Not related to CCM. See Power Management Unit
      --  (PMU)
      REG0_OK        : Boolean := False;
      --  When USB is in low power suspend mode this Control bit is used to
      --  indicate if other system peripherals require the USB PLL3 clock when
      --  the SoC is not in low power mode
      PLL3_disable   : MISC2_CLR_PLL3_disable_Field :=
                        NRF_SVD.CCM_ANALOG.Pll3_DISABLE_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG1_BO_OFFSET : MISC2_CLR_REG1_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg1_Bo_Offset_7;
      --  Read-only. Reg1 brownout status bit. Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_BO_STATUS : MISC2_CLR_REG1_BO_STATUS_Field :=
                        Misc2_Clr_Reg1_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_ENABLE_BO : Boolean := True;
      --  Read-only. GPU/VPU supply Not related to CCM. See Power Management
      --  Unit (PMU)
      REG1_OK        : Boolean := False;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_CLR_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_CLR_REG2_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_CLR_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_STEP_TIME : MISC2_CLR_REG0_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_CLR_REG0_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_STEP_TIME : MISC2_CLR_REG1_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_CLR_REG1_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_STEP_TIME : MISC2_CLR_REG2_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_CLR_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_CLR_VIDEO_DIV_Field :=
                        NRF_SVD.CCM_ANALOG.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC2_CLR_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      REG0_OK        at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      REG1_BO_OFFSET at 0 range 8 .. 10;
      REG1_BO_STATUS at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      REG1_ENABLE_BO at 0 range 13 .. 13;
      REG1_OK        at 0 range 14 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      REG1_STEP_TIME at 0 range 26 .. 27;
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

   --  Reg0 brownout status bit.Not related to CCM. See Power Management Unit
   --  (PMU)
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

   --  When USB is in low power suspend mode this Control bit is used to
   --  indicate if other system peripherals require the USB PLL3 clock when the
   --  SoC is not in low power mode
   type MISC2_TOG_PLL3_disable_Field is
     (
      --  PLL3 is being used by peripherals and is enabled when SoC is not in
      --  any low power mode
      Pll3_DISABLE_0,
      --  PLL3 can be disabled when the SoC is not in any low power mode
      Pll3_DISABLE_1)
     with Size => 1;
   for MISC2_TOG_PLL3_disable_Field use
     (Pll3_DISABLE_0 => 0,
      Pll3_DISABLE_1 => 1);

   --  This field defines the brown out voltage offset for the xPU power domain
   type MISC2_TOG_REG1_BO_OFFSET_Field is
     (
      --  Brownout offset = 0.100V
      Reg1_Bo_Offset_4,
      --  Brownout offset = 0.175V
      Reg1_Bo_Offset_7)
     with Size => 3;
   for MISC2_TOG_REG1_BO_OFFSET_Field use
     (Reg1_Bo_Offset_4 => 4,
      Reg1_Bo_Offset_7 => 7);

   --  Reg1 brownout status bit. Not related to CCM. See Power Management Unit
   --  (PMU)
   type MISC2_TOG_REG1_BO_STATUS_Field is
     (
      --  Reset value for the field
      Misc2_Tog_Reg1_Bo_Status_Field_Reset,
      --  Brownout, supply is below target minus brownout offset.
      Reg1_Bo_Status_1)
     with Size => 1;
   for MISC2_TOG_REG1_BO_STATUS_Field use
     (Misc2_Tog_Reg1_Bo_Status_Field_Reset => 0,
      Reg1_Bo_Status_1 => 1);

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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
   type MISC2_TOG_REG1_STEP_TIME_Field is
     (
      --  64
      MISC2_TOG_REG1_STEP_TIME_Field_64_Clocks,
      --  128
      MISC2_TOG_REG1_STEP_TIME_Field_128_Clocks,
      --  256
      MISC2_TOG_REG1_STEP_TIME_Field_256_Clocks,
      --  512
      MISC2_TOG_REG1_STEP_TIME_Field_512_Clocks)
     with Size => 2;
   for MISC2_TOG_REG1_STEP_TIME_Field use
     (MISC2_TOG_REG1_STEP_TIME_Field_64_Clocks => 0,
      MISC2_TOG_REG1_STEP_TIME_Field_128_Clocks => 1,
      MISC2_TOG_REG1_STEP_TIME_Field_256_Clocks => 2,
      MISC2_TOG_REG1_STEP_TIME_Field_512_Clocks => 3);

   --  Number of clock periods (24MHz clock).Not related to CCM. See Power
   --  Management Unit (PMU)
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

   --  Miscellaneous Register 2
   type CCM_ANALOG_MISC2_TOG_Register is record
      --  Read-only. This field defines the brown out voltage offset for the
      --  CORE power domain
      REG0_BO_OFFSET : MISC2_TOG_REG0_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg0_Bo_Offset_7;
      --  Read-only. Reg0 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_BO_STATUS : MISC2_TOG_REG0_BO_STATUS_Field :=
                        Misc2_Tog_Reg0_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_ENABLE_BO : Boolean := True;
      --  Read-only. ARM supply Not related to CCM. See Power Management Unit
      --  (PMU)
      REG0_OK        : Boolean := False;
      --  When USB is in low power suspend mode this Control bit is used to
      --  indicate if other system peripherals require the USB PLL3 clock when
      --  the SoC is not in low power mode
      PLL3_disable   : MISC2_TOG_PLL3_disable_Field :=
                        NRF_SVD.CCM_ANALOG.Pll3_DISABLE_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG1_BO_OFFSET : MISC2_TOG_REG1_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg1_Bo_Offset_7;
      --  Read-only. Reg1 brownout status bit. Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_BO_STATUS : MISC2_TOG_REG1_BO_STATUS_Field :=
                        Misc2_Tog_Reg1_Bo_Status_Field_Reset;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_ENABLE_BO : Boolean := True;
      --  Read-only. GPU/VPU supply Not related to CCM. See Power Management
      --  Unit (PMU)
      REG1_OK        : Boolean := False;
      --  LSB of Post-divider for Audio PLL
      AUDIO_DIV_LSB  : MISC2_TOG_AUDIO_DIV_LSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Lsb_0;
      --  Read-only. This field defines the brown out voltage offset for the
      --  xPU power domain
      REG2_BO_OFFSET : MISC2_TOG_REG2_BO_OFFSET_Field :=
                        NRF_SVD.CCM_ANALOG.Reg2_Bo_Offset_7;
      --  Read-only. Reg2 brownout status bit.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_BO_STATUS : Boolean := False;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Enables the brownout detection.Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_ENABLE_BO : Boolean := True;
      --  Read-only. Signals that the voltage is above the brownout level for
      --  the SOC supply
      REG2_OK        : Boolean := False;
      --  MSB of Post-divider for Audio PLL
      AUDIO_DIV_MSB  : MISC2_TOG_AUDIO_DIV_MSB_Field :=
                        NRF_SVD.CCM_ANALOG.Audio_Div_Msb_0;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG0_STEP_TIME : MISC2_TOG_REG0_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_TOG_REG0_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG1_STEP_TIME : MISC2_TOG_REG1_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_TOG_REG1_STEP_TIME_Field_64_Clocks;
      --  Number of clock periods (24MHz clock).Not related to CCM. See Power
      --  Management Unit (PMU)
      REG2_STEP_TIME : MISC2_TOG_REG2_STEP_TIME_Field :=
                        NRF_SVD.CCM_ANALOG.MISC2_TOG_REG2_STEP_TIME_Field_64_Clocks;
      --  Post-divider for video
      VIDEO_DIV      : MISC2_TOG_VIDEO_DIV_Field :=
                        NRF_SVD.CCM_ANALOG.Video_Div_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCM_ANALOG_MISC2_TOG_Register use record
      REG0_BO_OFFSET at 0 range 0 .. 2;
      REG0_BO_STATUS at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      REG0_ENABLE_BO at 0 range 5 .. 5;
      REG0_OK        at 0 range 6 .. 6;
      PLL3_disable   at 0 range 7 .. 7;
      REG1_BO_OFFSET at 0 range 8 .. 10;
      REG1_BO_STATUS at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      REG1_ENABLE_BO at 0 range 13 .. 13;
      REG1_OK        at 0 range 14 .. 14;
      AUDIO_DIV_LSB  at 0 range 15 .. 15;
      REG2_BO_OFFSET at 0 range 16 .. 18;
      REG2_BO_STATUS at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      REG2_ENABLE_BO at 0 range 21 .. 21;
      REG2_OK        at 0 range 22 .. 22;
      AUDIO_DIV_MSB  at 0 range 23 .. 23;
      REG0_STEP_TIME at 0 range 24 .. 25;
      REG1_STEP_TIME at 0 range 26 .. 27;
      REG2_STEP_TIME at 0 range 28 .. 29;
      VIDEO_DIV      at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CCM_ANALOG
   type CCM_ANALOG_Peripheral is record
      --  Analog ARM PLL control Register
      PLL_ARM         : aliased CCM_ANALOG_PLL_ARM_Register;
      --  Analog ARM PLL control Register
      PLL_ARM_SET     : aliased CCM_ANALOG_PLL_ARM_SET_Register;
      --  Analog ARM PLL control Register
      PLL_ARM_CLR     : aliased CCM_ANALOG_PLL_ARM_CLR_Register;
      --  Analog ARM PLL control Register
      PLL_ARM_TOG     : aliased CCM_ANALOG_PLL_ARM_TOG_Register;
      --  Analog USB1 480MHz PLL Control Register
      PLL_USB1        : aliased PLL_USB_Register;
      --  Analog USB1 480MHz PLL Control Register
      PLL_USB1_SET    : aliased CCM_ANALOG_PLL_USB1_SET_Register;
      --  Analog USB1 480MHz PLL Control Register
      PLL_USB1_CLR    : aliased CCM_ANALOG_PLL_USB1_CLR_Register;
      --  Analog USB1 480MHz PLL Control Register
      PLL_USB1_TOG    : aliased CCM_ANALOG_PLL_USB1_TOG_Register;
      --  Analog USB2 480MHz PLL Control Register
      PLL_USB2        : aliased PLL_USB_Register;
      --  Analog USB2 480MHz PLL Control Register
      PLL_USB2_SET    : aliased CCM_ANALOG_PLL_USB2_SET_Register;
      --  Analog USB2 480MHz PLL Control Register
      PLL_USB2_CLR    : aliased CCM_ANALOG_PLL_USB2_CLR_Register;
      --  Analog USB2 480MHz PLL Control Register
      PLL_USB2_TOG    : aliased CCM_ANALOG_PLL_USB2_TOG_Register;
      --  Analog System PLL Control Register
      PLL_SYS         : aliased CCM_ANALOG_PLL_SYS_Register;
      --  Analog System PLL Control Register
      PLL_SYS_SET     : aliased CCM_ANALOG_PLL_SYS_SET_Register;
      --  Analog System PLL Control Register
      PLL_SYS_CLR     : aliased CCM_ANALOG_PLL_SYS_CLR_Register;
      --  Analog System PLL Control Register
      PLL_SYS_TOG     : aliased CCM_ANALOG_PLL_SYS_TOG_Register;
      --  528MHz System PLL Spread Spectrum Register
      PLL_SYS_SS      : aliased CCM_ANALOG_PLL_SYS_SS_Register;
      --  Numerator of 528MHz System PLL Fractional Loop Divider Register
      PLL_SYS_NUM     : aliased CCM_ANALOG_PLL_SYS_NUM_Register;
      --  Denominator of 528MHz System PLL Fractional Loop Divider Register
      PLL_SYS_DENOM   : aliased CCM_ANALOG_PLL_SYS_DENOM_Register;
      --  Analog Audio PLL control Register
      PLL_AUDIO       : aliased CCM_ANALOG_PLL_AUDIO_Register;
      --  Analog Audio PLL control Register
      PLL_AUDIO_SET   : aliased CCM_ANALOG_PLL_AUDIO_SET_Register;
      --  Analog Audio PLL control Register
      PLL_AUDIO_CLR   : aliased CCM_ANALOG_PLL_AUDIO_CLR_Register;
      --  Analog Audio PLL control Register
      PLL_AUDIO_TOG   : aliased CCM_ANALOG_PLL_AUDIO_TOG_Register;
      --  Numerator of Audio PLL Fractional Loop Divider Register
      PLL_AUDIO_NUM   : aliased CCM_ANALOG_PLL_AUDIO_NUM_Register;
      --  Denominator of Audio PLL Fractional Loop Divider Register
      PLL_AUDIO_DENOM : aliased CCM_ANALOG_PLL_AUDIO_DENOM_Register;
      --  Analog Video PLL control Register
      PLL_VIDEO       : aliased CCM_ANALOG_PLL_VIDEO_Register;
      --  Analog Video PLL control Register
      PLL_VIDEO_SET   : aliased CCM_ANALOG_PLL_VIDEO_SET_Register;
      --  Analog Video PLL control Register
      PLL_VIDEO_CLR   : aliased CCM_ANALOG_PLL_VIDEO_CLR_Register;
      --  Analog Video PLL control Register
      PLL_VIDEO_TOG   : aliased CCM_ANALOG_PLL_VIDEO_TOG_Register;
      --  Numerator of Video PLL Fractional Loop Divider Register
      PLL_VIDEO_NUM   : aliased CCM_ANALOG_PLL_VIDEO_NUM_Register;
      --  Denominator of Video PLL Fractional Loop Divider Register
      PLL_VIDEO_DENOM : aliased CCM_ANALOG_PLL_VIDEO_DENOM_Register;
      --  Analog ENET PLL Control Register
      PLL_ENET        : aliased CCM_ANALOG_PLL_ENET_Register;
      --  Analog ENET PLL Control Register
      PLL_ENET_SET    : aliased CCM_ANALOG_PLL_ENET_SET_Register;
      --  Analog ENET PLL Control Register
      PLL_ENET_CLR    : aliased CCM_ANALOG_PLL_ENET_CLR_Register;
      --  Analog ENET PLL Control Register
      PLL_ENET_TOG    : aliased CCM_ANALOG_PLL_ENET_TOG_Register;
      --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
      PFD_480         : aliased CCM_ANALOG_PFD_480_Register;
      --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
      PFD_480_SET     : aliased CCM_ANALOG_PFD_480_SET_Register;
      --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
      PFD_480_CLR     : aliased CCM_ANALOG_PFD_480_CLR_Register;
      --  480MHz Clock (PLL3) Phase Fractional Divider Control Register
      PFD_480_TOG     : aliased CCM_ANALOG_PFD_480_TOG_Register;
      --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
      PFD_528         : aliased CCM_ANALOG_PFD_528_Register;
      --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
      PFD_528_SET     : aliased CCM_ANALOG_PFD_528_SET_Register;
      --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
      PFD_528_CLR     : aliased CCM_ANALOG_PFD_528_CLR_Register;
      --  528MHz Clock (PLL2) Phase Fractional Divider Control Register
      PFD_528_TOG     : aliased CCM_ANALOG_PFD_528_TOG_Register;
      --  Miscellaneous Register 0
      MISC0           : aliased CCM_ANALOG_MISC0_Register;
      --  Miscellaneous Register 0
      MISC0_SET       : aliased CCM_ANALOG_MISC0_SET_Register;
      --  Miscellaneous Register 0
      MISC0_CLR       : aliased CCM_ANALOG_MISC0_CLR_Register;
      --  Miscellaneous Register 0
      MISC0_TOG       : aliased CCM_ANALOG_MISC0_TOG_Register;
      --  Miscellaneous Register 1
      MISC1           : aliased CCM_ANALOG_MISC1_Register;
      --  Miscellaneous Register 1
      MISC1_SET       : aliased CCM_ANALOG_MISC1_SET_Register;
      --  Miscellaneous Register 1
      MISC1_CLR       : aliased CCM_ANALOG_MISC1_CLR_Register;
      --  Miscellaneous Register 1
      MISC1_TOG       : aliased CCM_ANALOG_MISC1_TOG_Register;
      --  Miscellaneous Register 2
      MISC2           : aliased CCM_ANALOG_MISC2_Register;
      --  Miscellaneous Register 2
      MISC2_SET       : aliased CCM_ANALOG_MISC2_SET_Register;
      --  Miscellaneous Register 2
      MISC2_CLR       : aliased CCM_ANALOG_MISC2_CLR_Register;
      --  Miscellaneous Register 2
      MISC2_TOG       : aliased CCM_ANALOG_MISC2_TOG_Register;
   end record
     with Volatile;

   for CCM_ANALOG_Peripheral use record
      PLL_ARM         at 16#0# range 0 .. 31;
      PLL_ARM_SET     at 16#4# range 0 .. 31;
      PLL_ARM_CLR     at 16#8# range 0 .. 31;
      PLL_ARM_TOG     at 16#C# range 0 .. 31;
      PLL_USB1        at 16#10# range 0 .. 31;
      PLL_USB1_SET    at 16#14# range 0 .. 31;
      PLL_USB1_CLR    at 16#18# range 0 .. 31;
      PLL_USB1_TOG    at 16#1C# range 0 .. 31;
      PLL_USB2        at 16#20# range 0 .. 31;
      PLL_USB2_SET    at 16#24# range 0 .. 31;
      PLL_USB2_CLR    at 16#28# range 0 .. 31;
      PLL_USB2_TOG    at 16#2C# range 0 .. 31;
      PLL_SYS         at 16#30# range 0 .. 31;
      PLL_SYS_SET     at 16#34# range 0 .. 31;
      PLL_SYS_CLR     at 16#38# range 0 .. 31;
      PLL_SYS_TOG     at 16#3C# range 0 .. 31;
      PLL_SYS_SS      at 16#40# range 0 .. 31;
      PLL_SYS_NUM     at 16#50# range 0 .. 31;
      PLL_SYS_DENOM   at 16#60# range 0 .. 31;
      PLL_AUDIO       at 16#70# range 0 .. 31;
      PLL_AUDIO_SET   at 16#74# range 0 .. 31;
      PLL_AUDIO_CLR   at 16#78# range 0 .. 31;
      PLL_AUDIO_TOG   at 16#7C# range 0 .. 31;
      PLL_AUDIO_NUM   at 16#80# range 0 .. 31;
      PLL_AUDIO_DENOM at 16#90# range 0 .. 31;
      PLL_VIDEO       at 16#A0# range 0 .. 31;
      PLL_VIDEO_SET   at 16#A4# range 0 .. 31;
      PLL_VIDEO_CLR   at 16#A8# range 0 .. 31;
      PLL_VIDEO_TOG   at 16#AC# range 0 .. 31;
      PLL_VIDEO_NUM   at 16#B0# range 0 .. 31;
      PLL_VIDEO_DENOM at 16#C0# range 0 .. 31;
      PLL_ENET        at 16#E0# range 0 .. 31;
      PLL_ENET_SET    at 16#E4# range 0 .. 31;
      PLL_ENET_CLR    at 16#E8# range 0 .. 31;
      PLL_ENET_TOG    at 16#EC# range 0 .. 31;
      PFD_480         at 16#F0# range 0 .. 31;
      PFD_480_SET     at 16#F4# range 0 .. 31;
      PFD_480_CLR     at 16#F8# range 0 .. 31;
      PFD_480_TOG     at 16#FC# range 0 .. 31;
      PFD_528         at 16#100# range 0 .. 31;
      PFD_528_SET     at 16#104# range 0 .. 31;
      PFD_528_CLR     at 16#108# range 0 .. 31;
      PFD_528_TOG     at 16#10C# range 0 .. 31;
      MISC0           at 16#150# range 0 .. 31;
      MISC0_SET       at 16#154# range 0 .. 31;
      MISC0_CLR       at 16#158# range 0 .. 31;
      MISC0_TOG       at 16#15C# range 0 .. 31;
      MISC1           at 16#160# range 0 .. 31;
      MISC1_SET       at 16#164# range 0 .. 31;
      MISC1_CLR       at 16#168# range 0 .. 31;
      MISC1_TOG       at 16#16C# range 0 .. 31;
      MISC2           at 16#170# range 0 .. 31;
      MISC2_SET       at 16#174# range 0 .. 31;
      MISC2_CLR       at 16#178# range 0 .. 31;
      MISC2_TOG       at 16#17C# range 0 .. 31;
   end record;

   --  CCM_ANALOG
   CCM_ANALOG_Periph : aliased CCM_ANALOG_Peripheral
     with Import, Address => System'To_Address (16#400D8000#);

end NRF_SVD.CCM_ANALOG;
