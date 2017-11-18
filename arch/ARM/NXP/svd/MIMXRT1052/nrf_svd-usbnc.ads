--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USBNC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Disable OTG1 Overcurrent Detection
   type USB_OTG1_CTRL_OVER_CUR_DIS_Field is
     (
      --  Enables overcurrent detection
      Over_Cur_Dis_0,
      --  Disables overcurrent detection
      Over_Cur_Dis_1)
     with Size => 1;
   for USB_OTG1_CTRL_OVER_CUR_DIS_Field use
     (Over_Cur_Dis_0 => 0,
      Over_Cur_Dis_1 => 1);

   --  OTG1 Polarity of Overcurrent The polarity of OTG1 port overcurrent event
   type USB_OTG1_CTRL_OVER_CUR_POL_Field is
     (
      --  High active (high on this signal represents an overcurrent condition)
      Over_Cur_Pol_0,
      --  Low active (low on this signal represents an overcurrent condition)
      Over_Cur_Pol_1)
     with Size => 1;
   for USB_OTG1_CTRL_OVER_CUR_POL_Field use
     (Over_Cur_Pol_0 => 0,
      Over_Cur_Pol_1 => 1);

   --  OTG1 Power Polarity This bit should be set according to PMIC Power Pin
   --  polarity.
   type USB_OTG1_CTRL_PWR_POL_Field is
     (
      --  PMIC Power Pin is Low active.
      Pwr_Pol_0,
      --  PMIC Power Pin is High active.
      Pwr_Pol_1)
     with Size => 1;
   for USB_OTG1_CTRL_PWR_POL_Field use
     (Pwr_Pol_0 => 0,
      Pwr_Pol_1 => 1);

   --  OTG1 Wake-up Interrupt Enable This bit enables or disables the OTG1
   --  wake-up interrupt
   type USB_OTG1_CTRL_WIE_Field is
     (
      --  Interrupt Disabled
      Wie_0,
      --  Interrupt Enabled
      Wie_1)
     with Size => 1;
   for USB_OTG1_CTRL_WIE_Field use
     (Wie_0 => 0,
      Wie_1 => 1);

   --  OTG1 Software Wake-up Enable
   type USB_OTG1_CTRL_WKUP_SW_EN_Field is
     (
      --  Disable
      Wkup_Sw_En_0,
      --  Enable
      Wkup_Sw_En_1)
     with Size => 1;
   for USB_OTG1_CTRL_WKUP_SW_EN_Field use
     (Wkup_Sw_En_0 => 0,
      Wkup_Sw_En_1 => 1);

   --  OTG1 Software Wake-up
   type USB_OTG1_CTRL_WKUP_SW_Field is
     (
      --  Inactive
      Wkup_Sw_0,
      --  Force wake-up
      Wkup_Sw_1)
     with Size => 1;
   for USB_OTG1_CTRL_WKUP_SW_Field use
     (Wkup_Sw_0 => 0,
      Wkup_Sw_1 => 1);

   --  OTG1 Wake-up on ID change enable
   type USB_OTG1_CTRL_WKUP_ID_EN_Field is
     (
      --  Disable
      Wkup_Id_En_0,
      --  Enable
      Wkup_Id_En_1)
     with Size => 1;
   for USB_OTG1_CTRL_WKUP_ID_EN_Field use
     (Wkup_Id_En_0 => 0,
      Wkup_Id_En_1 => 1);

   --  OTG1 wake-up on VBUS change enable
   type USB_OTG1_CTRL_WKUP_VBUS_EN_Field is
     (
      --  Disable
      Wkup_Vbus_En_0,
      --  Enable
      Wkup_Vbus_En_1)
     with Size => 1;
   for USB_OTG1_CTRL_WKUP_VBUS_EN_Field use
     (Wkup_Vbus_En_0 => 0,
      Wkup_Vbus_En_1 => 1);

   --  OTG1 Wake-up Interrupt Request This bit indicates that a wake-up
   --  interrupt request is received on the OTG1 port
   type USB_OTG1_CTRL_WIR_Field is
     (
      --  No wake-up interrupt request received
      Wir_0,
      --  Wake-up Interrupt Request received
      Wir_1)
     with Size => 1;
   for USB_OTG1_CTRL_WIR_Field use
     (Wir_0 => 0,
      Wir_1 => 1);

   --  USB OTG1 Control Register
   type USBNC_USB_OTG1_CTRL_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Disable OTG1 Overcurrent Detection
      OVER_CUR_DIS   : USB_OTG1_CTRL_OVER_CUR_DIS_Field :=
                        NRF_SVD.USBNC.Over_Cur_Dis_0;
      --  OTG1 Polarity of Overcurrent The polarity of OTG1 port overcurrent
      --  event
      OVER_CUR_POL   : USB_OTG1_CTRL_OVER_CUR_POL_Field :=
                        NRF_SVD.USBNC.Over_Cur_Pol_0;
      --  OTG1 Power Polarity This bit should be set according to PMIC Power
      --  Pin polarity.
      PWR_POL        : USB_OTG1_CTRL_PWR_POL_Field := NRF_SVD.USBNC.Pwr_Pol_0;
      --  OTG1 Wake-up Interrupt Enable This bit enables or disables the OTG1
      --  wake-up interrupt
      WIE            : USB_OTG1_CTRL_WIE_Field := NRF_SVD.USBNC.Wie_0;
      --  unspecified
      Reserved_11_13 : HAL.UInt3 := 16#2#;
      --  OTG1 Software Wake-up Enable
      WKUP_SW_EN     : USB_OTG1_CTRL_WKUP_SW_EN_Field :=
                        NRF_SVD.USBNC.Wkup_Sw_En_0;
      --  OTG1 Software Wake-up
      WKUP_SW        : USB_OTG1_CTRL_WKUP_SW_Field := NRF_SVD.USBNC.Wkup_Sw_0;
      --  OTG1 Wake-up on ID change enable
      WKUP_ID_EN     : USB_OTG1_CTRL_WKUP_ID_EN_Field :=
                        NRF_SVD.USBNC.Wkup_Id_En_0;
      --  OTG1 wake-up on VBUS change enable
      WKUP_VBUS_EN   : USB_OTG1_CTRL_WKUP_VBUS_EN_Field :=
                        NRF_SVD.USBNC.Wkup_Vbus_En_0;
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#C00#;
      --  Read-only. OTG1 Wake-up Interrupt Request This bit indicates that a
      --  wake-up interrupt request is received on the OTG1 port
      WIR            : USB_OTG1_CTRL_WIR_Field := NRF_SVD.USBNC.Wir_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBNC_USB_OTG1_CTRL_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      OVER_CUR_DIS   at 0 range 7 .. 7;
      OVER_CUR_POL   at 0 range 8 .. 8;
      PWR_POL        at 0 range 9 .. 9;
      WIE            at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      WKUP_SW_EN     at 0 range 14 .. 14;
      WKUP_SW        at 0 range 15 .. 15;
      WKUP_ID_EN     at 0 range 16 .. 16;
      WKUP_VBUS_EN   at 0 range 17 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      WIR            at 0 range 31 .. 31;
   end record;

   --  Indicating whether OTG1 UTMI PHY clock is valid
   type USB_OTG1_PHY_CTRL_0_UTMI_CLK_VLD_Field is
     (
      --  Invalid
      Utmi_Clk_Vld_0,
      --  Valid
      Utmi_Clk_Vld_1)
     with Size => 1;
   for USB_OTG1_PHY_CTRL_0_UTMI_CLK_VLD_Field use
     (Utmi_Clk_Vld_0 => 0,
      Utmi_Clk_Vld_1 => 1);

   --  OTG1 UTMI PHY Control 0 Register
   type USBNC_USB_OTG1_PHY_CTRL_0_Register is record
      --  unspecified
      Reserved_0_30 : HAL.UInt31 := 16#0#;
      --  Indicating whether OTG1 UTMI PHY clock is valid
      UTMI_CLK_VLD  : USB_OTG1_PHY_CTRL_0_UTMI_CLK_VLD_Field :=
                       NRF_SVD.USBNC.Utmi_Clk_Vld_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBNC_USB_OTG1_PHY_CTRL_0_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      UTMI_CLK_VLD  at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB
   type USBNC_Peripheral is record
      --  USB OTG1 Control Register
      USB_OTG1_CTRL       : aliased USBNC_USB_OTG1_CTRL_Register;
      --  OTG1 UTMI PHY Control 0 Register
      USB_OTG1_PHY_CTRL_0 : aliased USBNC_USB_OTG1_PHY_CTRL_0_Register;
   end record
     with Volatile;

   for USBNC_Peripheral use record
      USB_OTG1_CTRL       at 16#800# range 0 .. 31;
      USB_OTG1_PHY_CTRL_0 at 16#818# range 0 .. 31;
   end record;

   --  USB
   USBNC1_Periph : aliased USBNC_Peripheral
     with Import, Address => System'To_Address (16#402E0000#);

   --  USB
   USBNC2_Periph : aliased USBNC_Peripheral
     with Import, Address => System'To_Address (16#402E0004#);

end NRF_SVD.USBNC;
