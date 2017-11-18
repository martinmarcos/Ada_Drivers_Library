--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK66F18.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  USBPHY Register Reference Index
package NRF_SVD.USBPHY is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TXPWDFS_Field is
     (
      --  Normal operation.
      PWD_TXPWDFS_Field_0,
      --  Power-down the USB full-speed drivers. This turns off the current
      --  starvation sources and puts the drivers into high-impedance output
      PWD_TXPWDFS_Field_1)
     with Size => 1;
   for PWD_TXPWDFS_Field use
     (PWD_TXPWDFS_Field_0 => 0,
      PWD_TXPWDFS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TXPWDIBIAS_Field is
     (
      --  Normal operation
      PWD_TXPWDIBIAS_Field_0,
      --  Power-down the USB PHY current bias block for the transmitter. This
      --  bit should be set only when the USB is in suspend mode. This
      --  effectively powers down the entire USB transmit path
      PWD_TXPWDIBIAS_Field_1)
     with Size => 1;
   for PWD_TXPWDIBIAS_Field use
     (PWD_TXPWDIBIAS_Field_0 => 0,
      PWD_TXPWDIBIAS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TXPWDV2I_Field is
     (
      --  Normal operation.
      PWD_TXPWDV2I_Field_0,
      --  Power-down the USB PHY transmit V-to-I converter and the current
      --  mirror
      PWD_TXPWDV2I_Field_1)
     with Size => 1;
   for PWD_TXPWDV2I_Field use
     (PWD_TXPWDV2I_Field_0 => 0,
      PWD_TXPWDV2I_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_RXPWDENV_Field is
     (
      --  Normal operation.
      PWD_RXPWDENV_Field_0,
      --  Power-down the USB high-speed receiver envelope detector (squelch
      --  signal)
      PWD_RXPWDENV_Field_1)
     with Size => 1;
   for PWD_RXPWDENV_Field use
     (PWD_RXPWDENV_Field_0 => 0,
      PWD_RXPWDENV_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_RXPWD1PT1_Field is
     (
      --  Normal operation
      PWD_RXPWD1PT1_Field_0,
      --  Power-down the USB full-speed differential receiver.
      PWD_RXPWD1PT1_Field_1)
     with Size => 1;
   for PWD_RXPWD1PT1_Field use
     (PWD_RXPWD1PT1_Field_0 => 0,
      PWD_RXPWD1PT1_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_RXPWDDIFF_Field is
     (
      --  Normal operation.
      PWD_RXPWDDIFF_Field_0,
      --  Power-down the USB high-speed differential receiver
      PWD_RXPWDDIFF_Field_1)
     with Size => 1;
   for PWD_RXPWDDIFF_Field use
     (PWD_RXPWDDIFF_Field_0 => 0,
      PWD_RXPWDDIFF_Field_1 => 1);

   --  This bit will be auto cleared if there is USB wakeup event while
   --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_RXPWDRX_Field is
     (
      --  Normal operation
      PWD_RXPWDRX_Field_0,
      --  Power-down the entire USB PHY receiver block except for the
      --  full-speed differential receiver
      PWD_RXPWDRX_Field_1)
     with Size => 1;
   for PWD_RXPWDRX_Field use
     (PWD_RXPWDRX_Field_0 => 0,
      PWD_RXPWDRX_Field_1 => 1);

   --  USB PHY Power-Down Register
   type USBPHY_PWD_Register is record
      --  unspecified
      Reserved_0_9   : HAL.UInt10 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDFS        : PWD_TXPWDFS_Field :=
                        NRF_SVD.USBPHY.PWD_TXPWDFS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDIBIAS     : PWD_TXPWDIBIAS_Field :=
                        NRF_SVD.USBPHY.PWD_TXPWDIBIAS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDV2I       : PWD_TXPWDV2I_Field :=
                        NRF_SVD.USBPHY.PWD_TXPWDV2I_Field_1;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDENV       : PWD_RXPWDENV_Field :=
                        NRF_SVD.USBPHY.PWD_RXPWDENV_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWD1PT1      : PWD_RXPWD1PT1_Field :=
                        NRF_SVD.USBPHY.PWD_RXPWD1PT1_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDDIFF      : PWD_RXPWDDIFF_Field :=
                        NRF_SVD.USBPHY.PWD_RXPWDDIFF_Field_1;
      --  This bit will be auto cleared if there is USB wakeup event while
      --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDRX        : PWD_RXPWDRX_Field :=
                        NRF_SVD.USBPHY.PWD_RXPWDRX_Field_1;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PWD_Register use record
      Reserved_0_9   at 0 range 0 .. 9;
      TXPWDFS        at 0 range 10 .. 10;
      TXPWDIBIAS     at 0 range 11 .. 11;
      TXPWDV2I       at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      RXPWDENV       at 0 range 17 .. 17;
      RXPWD1PT1      at 0 range 18 .. 18;
      RXPWDDIFF      at 0 range 19 .. 19;
      RXPWDRX        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_TXPWDFS_Field is
     (
      --  Normal operation.
      PWD_SET_TXPWDFS_Field_0,
      --  Power-down the USB full-speed drivers. This turns off the current
      --  starvation sources and puts the drivers into high-impedance output
      PWD_SET_TXPWDFS_Field_1)
     with Size => 1;
   for PWD_SET_TXPWDFS_Field use
     (PWD_SET_TXPWDFS_Field_0 => 0,
      PWD_SET_TXPWDFS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_TXPWDIBIAS_Field is
     (
      --  Normal operation
      PWD_SET_TXPWDIBIAS_Field_0,
      --  Power-down the USB PHY current bias block for the transmitter. This
      --  bit should be set only when the USB is in suspend mode. This
      --  effectively powers down the entire USB transmit path
      PWD_SET_TXPWDIBIAS_Field_1)
     with Size => 1;
   for PWD_SET_TXPWDIBIAS_Field use
     (PWD_SET_TXPWDIBIAS_Field_0 => 0,
      PWD_SET_TXPWDIBIAS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_TXPWDV2I_Field is
     (
      --  Normal operation.
      PWD_SET_TXPWDV2I_Field_0,
      --  Power-down the USB PHY transmit V-to-I converter and the current
      --  mirror
      PWD_SET_TXPWDV2I_Field_1)
     with Size => 1;
   for PWD_SET_TXPWDV2I_Field use
     (PWD_SET_TXPWDV2I_Field_0 => 0,
      PWD_SET_TXPWDV2I_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_RXPWDENV_Field is
     (
      --  Normal operation.
      PWD_SET_RXPWDENV_Field_0,
      --  Power-down the USB high-speed receiver envelope detector (squelch
      --  signal)
      PWD_SET_RXPWDENV_Field_1)
     with Size => 1;
   for PWD_SET_RXPWDENV_Field use
     (PWD_SET_RXPWDENV_Field_0 => 0,
      PWD_SET_RXPWDENV_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_RXPWD1PT1_Field is
     (
      --  Normal operation
      PWD_SET_RXPWD1PT1_Field_0,
      --  Power-down the USB full-speed differential receiver.
      PWD_SET_RXPWD1PT1_Field_1)
     with Size => 1;
   for PWD_SET_RXPWD1PT1_Field use
     (PWD_SET_RXPWD1PT1_Field_0 => 0,
      PWD_SET_RXPWD1PT1_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_RXPWDDIFF_Field is
     (
      --  Normal operation.
      PWD_SET_RXPWDDIFF_Field_0,
      --  Power-down the USB high-speed differential receiver
      PWD_SET_RXPWDDIFF_Field_1)
     with Size => 1;
   for PWD_SET_RXPWDDIFF_Field use
     (PWD_SET_RXPWDDIFF_Field_0 => 0,
      PWD_SET_RXPWDDIFF_Field_1 => 1);

   --  This bit will be auto cleared if there is USB wakeup event while
   --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_SET_RXPWDRX_Field is
     (
      --  Normal operation
      PWD_SET_RXPWDRX_Field_0,
      --  Power-down the entire USB PHY receiver block except for the
      --  full-speed differential receiver
      PWD_SET_RXPWDRX_Field_1)
     with Size => 1;
   for PWD_SET_RXPWDRX_Field use
     (PWD_SET_RXPWDRX_Field_0 => 0,
      PWD_SET_RXPWDRX_Field_1 => 1);

   --  USB PHY Power-Down Register
   type USBPHY_PWD_SET_Register is record
      --  unspecified
      Reserved_0_9   : HAL.UInt10 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDFS        : PWD_SET_TXPWDFS_Field :=
                        NRF_SVD.USBPHY.PWD_SET_TXPWDFS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDIBIAS     : PWD_SET_TXPWDIBIAS_Field :=
                        NRF_SVD.USBPHY.PWD_SET_TXPWDIBIAS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDV2I       : PWD_SET_TXPWDV2I_Field :=
                        NRF_SVD.USBPHY.PWD_SET_TXPWDV2I_Field_1;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDENV       : PWD_SET_RXPWDENV_Field :=
                        NRF_SVD.USBPHY.PWD_SET_RXPWDENV_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWD1PT1      : PWD_SET_RXPWD1PT1_Field :=
                        NRF_SVD.USBPHY.PWD_SET_RXPWD1PT1_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDDIFF      : PWD_SET_RXPWDDIFF_Field :=
                        NRF_SVD.USBPHY.PWD_SET_RXPWDDIFF_Field_1;
      --  This bit will be auto cleared if there is USB wakeup event while
      --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDRX        : PWD_SET_RXPWDRX_Field :=
                        NRF_SVD.USBPHY.PWD_SET_RXPWDRX_Field_1;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PWD_SET_Register use record
      Reserved_0_9   at 0 range 0 .. 9;
      TXPWDFS        at 0 range 10 .. 10;
      TXPWDIBIAS     at 0 range 11 .. 11;
      TXPWDV2I       at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      RXPWDENV       at 0 range 17 .. 17;
      RXPWD1PT1      at 0 range 18 .. 18;
      RXPWDDIFF      at 0 range 19 .. 19;
      RXPWDRX        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_TXPWDFS_Field is
     (
      --  Normal operation.
      PWD_CLR_TXPWDFS_Field_0,
      --  Power-down the USB full-speed drivers. This turns off the current
      --  starvation sources and puts the drivers into high-impedance output
      PWD_CLR_TXPWDFS_Field_1)
     with Size => 1;
   for PWD_CLR_TXPWDFS_Field use
     (PWD_CLR_TXPWDFS_Field_0 => 0,
      PWD_CLR_TXPWDFS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_TXPWDIBIAS_Field is
     (
      --  Normal operation
      PWD_CLR_TXPWDIBIAS_Field_0,
      --  Power-down the USB PHY current bias block for the transmitter. This
      --  bit should be set only when the USB is in suspend mode. This
      --  effectively powers down the entire USB transmit path
      PWD_CLR_TXPWDIBIAS_Field_1)
     with Size => 1;
   for PWD_CLR_TXPWDIBIAS_Field use
     (PWD_CLR_TXPWDIBIAS_Field_0 => 0,
      PWD_CLR_TXPWDIBIAS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_TXPWDV2I_Field is
     (
      --  Normal operation.
      PWD_CLR_TXPWDV2I_Field_0,
      --  Power-down the USB PHY transmit V-to-I converter and the current
      --  mirror
      PWD_CLR_TXPWDV2I_Field_1)
     with Size => 1;
   for PWD_CLR_TXPWDV2I_Field use
     (PWD_CLR_TXPWDV2I_Field_0 => 0,
      PWD_CLR_TXPWDV2I_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_RXPWDENV_Field is
     (
      --  Normal operation.
      PWD_CLR_RXPWDENV_Field_0,
      --  Power-down the USB high-speed receiver envelope detector (squelch
      --  signal)
      PWD_CLR_RXPWDENV_Field_1)
     with Size => 1;
   for PWD_CLR_RXPWDENV_Field use
     (PWD_CLR_RXPWDENV_Field_0 => 0,
      PWD_CLR_RXPWDENV_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_RXPWD1PT1_Field is
     (
      --  Normal operation
      PWD_CLR_RXPWD1PT1_Field_0,
      --  Power-down the USB full-speed differential receiver.
      PWD_CLR_RXPWD1PT1_Field_1)
     with Size => 1;
   for PWD_CLR_RXPWD1PT1_Field use
     (PWD_CLR_RXPWD1PT1_Field_0 => 0,
      PWD_CLR_RXPWD1PT1_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_RXPWDDIFF_Field is
     (
      --  Normal operation.
      PWD_CLR_RXPWDDIFF_Field_0,
      --  Power-down the USB high-speed differential receiver
      PWD_CLR_RXPWDDIFF_Field_1)
     with Size => 1;
   for PWD_CLR_RXPWDDIFF_Field use
     (PWD_CLR_RXPWDDIFF_Field_0 => 0,
      PWD_CLR_RXPWDDIFF_Field_1 => 1);

   --  This bit will be auto cleared if there is USB wakeup event while
   --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_CLR_RXPWDRX_Field is
     (
      --  Normal operation
      PWD_CLR_RXPWDRX_Field_0,
      --  Power-down the entire USB PHY receiver block except for the
      --  full-speed differential receiver
      PWD_CLR_RXPWDRX_Field_1)
     with Size => 1;
   for PWD_CLR_RXPWDRX_Field use
     (PWD_CLR_RXPWDRX_Field_0 => 0,
      PWD_CLR_RXPWDRX_Field_1 => 1);

   --  USB PHY Power-Down Register
   type USBPHY_PWD_CLR_Register is record
      --  unspecified
      Reserved_0_9   : HAL.UInt10 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDFS        : PWD_CLR_TXPWDFS_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_TXPWDFS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDIBIAS     : PWD_CLR_TXPWDIBIAS_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_TXPWDIBIAS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDV2I       : PWD_CLR_TXPWDV2I_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_TXPWDV2I_Field_1;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDENV       : PWD_CLR_RXPWDENV_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_RXPWDENV_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWD1PT1      : PWD_CLR_RXPWD1PT1_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_RXPWD1PT1_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDDIFF      : PWD_CLR_RXPWDDIFF_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_RXPWDDIFF_Field_1;
      --  This bit will be auto cleared if there is USB wakeup event while
      --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDRX        : PWD_CLR_RXPWDRX_Field :=
                        NRF_SVD.USBPHY.PWD_CLR_RXPWDRX_Field_1;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PWD_CLR_Register use record
      Reserved_0_9   at 0 range 0 .. 9;
      TXPWDFS        at 0 range 10 .. 10;
      TXPWDIBIAS     at 0 range 11 .. 11;
      TXPWDV2I       at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      RXPWDENV       at 0 range 17 .. 17;
      RXPWD1PT1      at 0 range 18 .. 18;
      RXPWDDIFF      at 0 range 19 .. 19;
      RXPWDRX        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_TXPWDFS_Field is
     (
      --  Normal operation.
      PWD_TOG_TXPWDFS_Field_0,
      --  Power-down the USB full-speed drivers. This turns off the current
      --  starvation sources and puts the drivers into high-impedance output
      PWD_TOG_TXPWDFS_Field_1)
     with Size => 1;
   for PWD_TOG_TXPWDFS_Field use
     (PWD_TOG_TXPWDFS_Field_0 => 0,
      PWD_TOG_TXPWDFS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_TXPWDIBIAS_Field is
     (
      --  Normal operation
      PWD_TOG_TXPWDIBIAS_Field_0,
      --  Power-down the USB PHY current bias block for the transmitter. This
      --  bit should be set only when the USB is in suspend mode. This
      --  effectively powers down the entire USB transmit path
      PWD_TOG_TXPWDIBIAS_Field_1)
     with Size => 1;
   for PWD_TOG_TXPWDIBIAS_Field use
     (PWD_TOG_TXPWDIBIAS_Field_0 => 0,
      PWD_TOG_TXPWDIBIAS_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_TXPWDV2I_Field is
     (
      --  Normal operation.
      PWD_TOG_TXPWDV2I_Field_0,
      --  Power-down the USB PHY transmit V-to-I converter and the current
      --  mirror
      PWD_TOG_TXPWDV2I_Field_1)
     with Size => 1;
   for PWD_TOG_TXPWDV2I_Field use
     (PWD_TOG_TXPWDV2I_Field_0 => 0,
      PWD_TOG_TXPWDV2I_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_RXPWDENV_Field is
     (
      --  Normal operation.
      PWD_TOG_RXPWDENV_Field_0,
      --  Power-down the USB high-speed receiver envelope detector (squelch
      --  signal)
      PWD_TOG_RXPWDENV_Field_1)
     with Size => 1;
   for PWD_TOG_RXPWDENV_Field use
     (PWD_TOG_RXPWDENV_Field_0 => 0,
      PWD_TOG_RXPWDENV_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_RXPWD1PT1_Field is
     (
      --  Normal operation
      PWD_TOG_RXPWD1PT1_Field_0,
      --  Power-down the USB full-speed differential receiver.
      PWD_TOG_RXPWD1PT1_Field_1)
     with Size => 1;
   for PWD_TOG_RXPWD1PT1_Field use
     (PWD_TOG_RXPWD1PT1_Field_0 => 0,
      PWD_TOG_RXPWD1PT1_Field_1 => 1);

   --  Note that this bit will be auto cleared if there is USB wakeup event
   --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_RXPWDDIFF_Field is
     (
      --  Normal operation.
      PWD_TOG_RXPWDDIFF_Field_0,
      --  Power-down the USB high-speed differential receiver
      PWD_TOG_RXPWDDIFF_Field_1)
     with Size => 1;
   for PWD_TOG_RXPWDDIFF_Field use
     (PWD_TOG_RXPWDDIFF_Field_0 => 0,
      PWD_TOG_RXPWDDIFF_Field_1 => 1);

   --  This bit will be auto cleared if there is USB wakeup event while
   --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
   type PWD_TOG_RXPWDRX_Field is
     (
      --  Normal operation
      PWD_TOG_RXPWDRX_Field_0,
      --  Power-down the entire USB PHY receiver block except for the
      --  full-speed differential receiver
      PWD_TOG_RXPWDRX_Field_1)
     with Size => 1;
   for PWD_TOG_RXPWDRX_Field use
     (PWD_TOG_RXPWDRX_Field_0 => 0,
      PWD_TOG_RXPWDRX_Field_1 => 1);

   --  USB PHY Power-Down Register
   type USBPHY_PWD_TOG_Register is record
      --  unspecified
      Reserved_0_9   : HAL.UInt10 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDFS        : PWD_TOG_TXPWDFS_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_TXPWDFS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDIBIAS     : PWD_TOG_TXPWDIBIAS_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_TXPWDIBIAS_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      TXPWDV2I       : PWD_TOG_TXPWDV2I_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_TXPWDV2I_Field_1;
      --  unspecified
      Reserved_13_16 : HAL.UInt4 := 16#0#;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDENV       : PWD_TOG_RXPWDENV_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_RXPWDENV_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWD1PT1      : PWD_TOG_RXPWD1PT1_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_RXPWD1PT1_Field_1;
      --  Note that this bit will be auto cleared if there is USB wakeup event
      --  while ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDDIFF      : PWD_TOG_RXPWDDIFF_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_RXPWDDIFF_Field_1;
      --  This bit will be auto cleared if there is USB wakeup event while
      --  ENAUTOCLR_PHY_PWD bit of USBPHY_CTRL is enabled
      RXPWDRX        : PWD_TOG_RXPWDRX_Field :=
                        NRF_SVD.USBPHY.PWD_TOG_RXPWDRX_Field_1;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PWD_TOG_Register use record
      Reserved_0_9   at 0 range 0 .. 9;
      TXPWDFS        at 0 range 10 .. 10;
      TXPWDIBIAS     at 0 range 11 .. 11;
      TXPWDV2I       at 0 range 12 .. 12;
      Reserved_13_16 at 0 range 13 .. 16;
      RXPWDENV       at 0 range 17 .. 17;
      RXPWD1PT1      at 0 range 18 .. 18;
      RXPWDDIFF      at 0 range 19 .. 19;
      RXPWDRX        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Decode to trim the nominal 17
   type TX_D_CAL_Field is
     (
      --  Maximum current, approximately 19% above nominal.
      TX_D_CAL_Field_0000,
      --  Nominal
      TX_D_CAL_Field_0111,
      --  Minimum current, approximately 19% below nominal.
      TX_D_CAL_Field_1111)
     with Size => 4;
   for TX_D_CAL_Field use
     (TX_D_CAL_Field_0000 => 0,
      TX_D_CAL_Field_0111 => 7,
      TX_D_CAL_Field_1111 => 15);

   subtype USBPHY_TX_TXCAL45DM_Field is HAL.UInt4;
   subtype USBPHY_TX_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY_TX_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY_TX_Register is record
      --  Decode to trim the nominal 17
      D_CAL              : TX_D_CAL_Field :=
                            NRF_SVD.USBPHY.TX_D_CAL_Field_0111;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DM output pin
      TXCAL45DM          : USBPHY_TX_TXCAL45DM_Field := 16#6#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DP output pin
      TXCAL45DP          : USBPHY_TX_TXCAL45DP_Field := 16#6#;
      --  unspecified
      Reserved_20_25     : HAL.UInt6 := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY_TX_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  unspecified
      Reserved_29_31     : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TX_Register use record
      D_CAL              at 0 range 0 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      TXCAL45DM          at 0 range 8 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      Reserved_20_25     at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      Reserved_29_31     at 0 range 29 .. 31;
   end record;

   --  Decode to trim the nominal 17
   type TX_SET_D_CAL_Field is
     (
      --  Maximum current, approximately 19% above nominal.
      TX_SET_D_CAL_Field_0000,
      --  Nominal
      TX_SET_D_CAL_Field_0111,
      --  Minimum current, approximately 19% below nominal.
      TX_SET_D_CAL_Field_1111)
     with Size => 4;
   for TX_SET_D_CAL_Field use
     (TX_SET_D_CAL_Field_0000 => 0,
      TX_SET_D_CAL_Field_0111 => 7,
      TX_SET_D_CAL_Field_1111 => 15);

   subtype USBPHY_TX_SET_TXCAL45DM_Field is HAL.UInt4;
   subtype USBPHY_TX_SET_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY_TX_SET_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY_TX_SET_Register is record
      --  Decode to trim the nominal 17
      D_CAL              : TX_SET_D_CAL_Field :=
                            NRF_SVD.USBPHY.TX_SET_D_CAL_Field_0111;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DM output pin
      TXCAL45DM          : USBPHY_TX_SET_TXCAL45DM_Field := 16#6#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DP output pin
      TXCAL45DP          : USBPHY_TX_SET_TXCAL45DP_Field := 16#6#;
      --  unspecified
      Reserved_20_25     : HAL.UInt6 := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY_TX_SET_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  unspecified
      Reserved_29_31     : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TX_SET_Register use record
      D_CAL              at 0 range 0 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      TXCAL45DM          at 0 range 8 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      Reserved_20_25     at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      Reserved_29_31     at 0 range 29 .. 31;
   end record;

   --  Decode to trim the nominal 17
   type TX_CLR_D_CAL_Field is
     (
      --  Maximum current, approximately 19% above nominal.
      TX_CLR_D_CAL_Field_0000,
      --  Nominal
      TX_CLR_D_CAL_Field_0111,
      --  Minimum current, approximately 19% below nominal.
      TX_CLR_D_CAL_Field_1111)
     with Size => 4;
   for TX_CLR_D_CAL_Field use
     (TX_CLR_D_CAL_Field_0000 => 0,
      TX_CLR_D_CAL_Field_0111 => 7,
      TX_CLR_D_CAL_Field_1111 => 15);

   subtype USBPHY_TX_CLR_TXCAL45DM_Field is HAL.UInt4;
   subtype USBPHY_TX_CLR_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY_TX_CLR_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY_TX_CLR_Register is record
      --  Decode to trim the nominal 17
      D_CAL              : TX_CLR_D_CAL_Field :=
                            NRF_SVD.USBPHY.TX_CLR_D_CAL_Field_0111;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DM output pin
      TXCAL45DM          : USBPHY_TX_CLR_TXCAL45DM_Field := 16#6#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DP output pin
      TXCAL45DP          : USBPHY_TX_CLR_TXCAL45DP_Field := 16#6#;
      --  unspecified
      Reserved_20_25     : HAL.UInt6 := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY_TX_CLR_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  unspecified
      Reserved_29_31     : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TX_CLR_Register use record
      D_CAL              at 0 range 0 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      TXCAL45DM          at 0 range 8 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      Reserved_20_25     at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      Reserved_29_31     at 0 range 29 .. 31;
   end record;

   --  Decode to trim the nominal 17
   type TX_TOG_D_CAL_Field is
     (
      --  Maximum current, approximately 19% above nominal.
      TX_TOG_D_CAL_Field_0000,
      --  Nominal
      TX_TOG_D_CAL_Field_0111,
      --  Minimum current, approximately 19% below nominal.
      TX_TOG_D_CAL_Field_1111)
     with Size => 4;
   for TX_TOG_D_CAL_Field use
     (TX_TOG_D_CAL_Field_0000 => 0,
      TX_TOG_D_CAL_Field_0111 => 7,
      TX_TOG_D_CAL_Field_1111 => 15);

   subtype USBPHY_TX_TOG_TXCAL45DM_Field is HAL.UInt4;
   subtype USBPHY_TX_TOG_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY_TX_TOG_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY_TX_TOG_Register is record
      --  Decode to trim the nominal 17
      D_CAL              : TX_TOG_D_CAL_Field :=
                            NRF_SVD.USBPHY.TX_TOG_D_CAL_Field_0111;
      --  unspecified
      Reserved_4_7       : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DM output pin
      TXCAL45DM          : USBPHY_TX_TOG_TXCAL45DM_Field := 16#6#;
      --  unspecified
      Reserved_12_15     : HAL.UInt4 := 16#0#;
      --  Decode to trim the nominal 45ohm series termination resistance to the
      --  USB_DP output pin
      TXCAL45DP          : USBPHY_TX_TOG_TXCAL45DP_Field := 16#6#;
      --  unspecified
      Reserved_20_25     : HAL.UInt6 := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY_TX_TOG_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  unspecified
      Reserved_29_31     : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TX_TOG_Register use record
      D_CAL              at 0 range 0 .. 3;
      Reserved_4_7       at 0 range 4 .. 7;
      TXCAL45DM          at 0 range 8 .. 11;
      Reserved_12_15     at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      Reserved_20_25     at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      Reserved_29_31     at 0 range 29 .. 31;
   end record;

   --  The ENVADJ field adjusts the trip point for the envelope detector
   type RX_ENVADJ_Field is
     (
      --  Trip-Level Voltage is 0.1000 V
      RX_ENVADJ_Field_000,
      --  Trip-Level Voltage is 0.1125 V
      RX_ENVADJ_Field_001,
      --  Trip-Level Voltage is 0.1250 V
      RX_ENVADJ_Field_010,
      --  Trip-Level Voltage is 0.0875 V
      RX_ENVADJ_Field_011)
     with Size => 3;
   for RX_ENVADJ_Field use
     (RX_ENVADJ_Field_000 => 0,
      RX_ENVADJ_Field_001 => 1,
      RX_ENVADJ_Field_010 => 2,
      RX_ENVADJ_Field_011 => 3);

   --  The DISCONADJ field adjusts the trip point for the disconnect detector.
   type RX_DISCONADJ_Field is
     (
      --  Trip-Level Voltage is 0.56875 V
      RX_DISCONADJ_Field_000,
      --  Trip-Level Voltage is 0.55000 V
      RX_DISCONADJ_Field_001,
      --  Trip-Level Voltage is 0.58125 V
      RX_DISCONADJ_Field_010,
      --  Trip-Level Voltage is 0.60000 V
      RX_DISCONADJ_Field_011)
     with Size => 3;
   for RX_DISCONADJ_Field use
     (RX_DISCONADJ_Field_000 => 0,
      RX_DISCONADJ_Field_001 => 1,
      RX_DISCONADJ_Field_010 => 2,
      RX_DISCONADJ_Field_011 => 3);

   --  This test mode is intended for lab use only, replace FS differential
   --  receiver with DP single ended receiver
   type RX_RXDBYPASS_Field is
     (
      --  Normal operation.
      RX_RXDBYPASS_Field_0,
      --  Use the output of the USB_DP single-ended receiver in place of the
      --  full-speed differential receiver
      RX_RXDBYPASS_Field_1)
     with Size => 1;
   for RX_RXDBYPASS_Field use
     (RX_RXDBYPASS_Field_0 => 0,
      RX_RXDBYPASS_Field_1 => 1);

   --  USB PHY Receiver Control Register
   type USBPHY_RX_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ         : RX_ENVADJ_Field := NRF_SVD.USBPHY.RX_ENVADJ_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector.
      DISCONADJ      : RX_DISCONADJ_Field :=
                        NRF_SVD.USBPHY.RX_DISCONADJ_Field_000;
      --  unspecified
      Reserved_7_21  : HAL.UInt15 := 16#0#;
      --  This test mode is intended for lab use only, replace FS differential
      --  receiver with DP single ended receiver
      RXDBYPASS      : RX_RXDBYPASS_Field :=
                        NRF_SVD.USBPHY.RX_RXDBYPASS_Field_0;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_RX_Register use record
      ENVADJ         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DISCONADJ      at 0 range 4 .. 6;
      Reserved_7_21  at 0 range 7 .. 21;
      RXDBYPASS      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  The ENVADJ field adjusts the trip point for the envelope detector
   type RX_SET_ENVADJ_Field is
     (
      --  Trip-Level Voltage is 0.1000 V
      RX_SET_ENVADJ_Field_000,
      --  Trip-Level Voltage is 0.1125 V
      RX_SET_ENVADJ_Field_001,
      --  Trip-Level Voltage is 0.1250 V
      RX_SET_ENVADJ_Field_010,
      --  Trip-Level Voltage is 0.0875 V
      RX_SET_ENVADJ_Field_011)
     with Size => 3;
   for RX_SET_ENVADJ_Field use
     (RX_SET_ENVADJ_Field_000 => 0,
      RX_SET_ENVADJ_Field_001 => 1,
      RX_SET_ENVADJ_Field_010 => 2,
      RX_SET_ENVADJ_Field_011 => 3);

   --  The DISCONADJ field adjusts the trip point for the disconnect detector.
   type RX_SET_DISCONADJ_Field is
     (
      --  Trip-Level Voltage is 0.56875 V
      RX_SET_DISCONADJ_Field_000,
      --  Trip-Level Voltage is 0.55000 V
      RX_SET_DISCONADJ_Field_001,
      --  Trip-Level Voltage is 0.58125 V
      RX_SET_DISCONADJ_Field_010,
      --  Trip-Level Voltage is 0.60000 V
      RX_SET_DISCONADJ_Field_011)
     with Size => 3;
   for RX_SET_DISCONADJ_Field use
     (RX_SET_DISCONADJ_Field_000 => 0,
      RX_SET_DISCONADJ_Field_001 => 1,
      RX_SET_DISCONADJ_Field_010 => 2,
      RX_SET_DISCONADJ_Field_011 => 3);

   --  This test mode is intended for lab use only, replace FS differential
   --  receiver with DP single ended receiver
   type RX_SET_RXDBYPASS_Field is
     (
      --  Normal operation.
      RX_SET_RXDBYPASS_Field_0,
      --  Use the output of the USB_DP single-ended receiver in place of the
      --  full-speed differential receiver
      RX_SET_RXDBYPASS_Field_1)
     with Size => 1;
   for RX_SET_RXDBYPASS_Field use
     (RX_SET_RXDBYPASS_Field_0 => 0,
      RX_SET_RXDBYPASS_Field_1 => 1);

   --  USB PHY Receiver Control Register
   type USBPHY_RX_SET_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ         : RX_SET_ENVADJ_Field :=
                        NRF_SVD.USBPHY.RX_SET_ENVADJ_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector.
      DISCONADJ      : RX_SET_DISCONADJ_Field :=
                        NRF_SVD.USBPHY.RX_SET_DISCONADJ_Field_000;
      --  unspecified
      Reserved_7_21  : HAL.UInt15 := 16#0#;
      --  This test mode is intended for lab use only, replace FS differential
      --  receiver with DP single ended receiver
      RXDBYPASS      : RX_SET_RXDBYPASS_Field :=
                        NRF_SVD.USBPHY.RX_SET_RXDBYPASS_Field_0;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_RX_SET_Register use record
      ENVADJ         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DISCONADJ      at 0 range 4 .. 6;
      Reserved_7_21  at 0 range 7 .. 21;
      RXDBYPASS      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  The ENVADJ field adjusts the trip point for the envelope detector
   type RX_CLR_ENVADJ_Field is
     (
      --  Trip-Level Voltage is 0.1000 V
      RX_CLR_ENVADJ_Field_000,
      --  Trip-Level Voltage is 0.1125 V
      RX_CLR_ENVADJ_Field_001,
      --  Trip-Level Voltage is 0.1250 V
      RX_CLR_ENVADJ_Field_010,
      --  Trip-Level Voltage is 0.0875 V
      RX_CLR_ENVADJ_Field_011)
     with Size => 3;
   for RX_CLR_ENVADJ_Field use
     (RX_CLR_ENVADJ_Field_000 => 0,
      RX_CLR_ENVADJ_Field_001 => 1,
      RX_CLR_ENVADJ_Field_010 => 2,
      RX_CLR_ENVADJ_Field_011 => 3);

   --  The DISCONADJ field adjusts the trip point for the disconnect detector.
   type RX_CLR_DISCONADJ_Field is
     (
      --  Trip-Level Voltage is 0.56875 V
      RX_CLR_DISCONADJ_Field_000,
      --  Trip-Level Voltage is 0.55000 V
      RX_CLR_DISCONADJ_Field_001,
      --  Trip-Level Voltage is 0.58125 V
      RX_CLR_DISCONADJ_Field_010,
      --  Trip-Level Voltage is 0.60000 V
      RX_CLR_DISCONADJ_Field_011)
     with Size => 3;
   for RX_CLR_DISCONADJ_Field use
     (RX_CLR_DISCONADJ_Field_000 => 0,
      RX_CLR_DISCONADJ_Field_001 => 1,
      RX_CLR_DISCONADJ_Field_010 => 2,
      RX_CLR_DISCONADJ_Field_011 => 3);

   --  This test mode is intended for lab use only, replace FS differential
   --  receiver with DP single ended receiver
   type RX_CLR_RXDBYPASS_Field is
     (
      --  Normal operation.
      RX_CLR_RXDBYPASS_Field_0,
      --  Use the output of the USB_DP single-ended receiver in place of the
      --  full-speed differential receiver
      RX_CLR_RXDBYPASS_Field_1)
     with Size => 1;
   for RX_CLR_RXDBYPASS_Field use
     (RX_CLR_RXDBYPASS_Field_0 => 0,
      RX_CLR_RXDBYPASS_Field_1 => 1);

   --  USB PHY Receiver Control Register
   type USBPHY_RX_CLR_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ         : RX_CLR_ENVADJ_Field :=
                        NRF_SVD.USBPHY.RX_CLR_ENVADJ_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector.
      DISCONADJ      : RX_CLR_DISCONADJ_Field :=
                        NRF_SVD.USBPHY.RX_CLR_DISCONADJ_Field_000;
      --  unspecified
      Reserved_7_21  : HAL.UInt15 := 16#0#;
      --  This test mode is intended for lab use only, replace FS differential
      --  receiver with DP single ended receiver
      RXDBYPASS      : RX_CLR_RXDBYPASS_Field :=
                        NRF_SVD.USBPHY.RX_CLR_RXDBYPASS_Field_0;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_RX_CLR_Register use record
      ENVADJ         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DISCONADJ      at 0 range 4 .. 6;
      Reserved_7_21  at 0 range 7 .. 21;
      RXDBYPASS      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  The ENVADJ field adjusts the trip point for the envelope detector
   type RX_TOG_ENVADJ_Field is
     (
      --  Trip-Level Voltage is 0.1000 V
      RX_TOG_ENVADJ_Field_000,
      --  Trip-Level Voltage is 0.1125 V
      RX_TOG_ENVADJ_Field_001,
      --  Trip-Level Voltage is 0.1250 V
      RX_TOG_ENVADJ_Field_010,
      --  Trip-Level Voltage is 0.0875 V
      RX_TOG_ENVADJ_Field_011)
     with Size => 3;
   for RX_TOG_ENVADJ_Field use
     (RX_TOG_ENVADJ_Field_000 => 0,
      RX_TOG_ENVADJ_Field_001 => 1,
      RX_TOG_ENVADJ_Field_010 => 2,
      RX_TOG_ENVADJ_Field_011 => 3);

   --  The DISCONADJ field adjusts the trip point for the disconnect detector.
   type RX_TOG_DISCONADJ_Field is
     (
      --  Trip-Level Voltage is 0.56875 V
      RX_TOG_DISCONADJ_Field_000,
      --  Trip-Level Voltage is 0.55000 V
      RX_TOG_DISCONADJ_Field_001,
      --  Trip-Level Voltage is 0.58125 V
      RX_TOG_DISCONADJ_Field_010,
      --  Trip-Level Voltage is 0.60000 V
      RX_TOG_DISCONADJ_Field_011)
     with Size => 3;
   for RX_TOG_DISCONADJ_Field use
     (RX_TOG_DISCONADJ_Field_000 => 0,
      RX_TOG_DISCONADJ_Field_001 => 1,
      RX_TOG_DISCONADJ_Field_010 => 2,
      RX_TOG_DISCONADJ_Field_011 => 3);

   --  This test mode is intended for lab use only, replace FS differential
   --  receiver with DP single ended receiver
   type RX_TOG_RXDBYPASS_Field is
     (
      --  Normal operation.
      RX_TOG_RXDBYPASS_Field_0,
      --  Use the output of the USB_DP single-ended receiver in place of the
      --  full-speed differential receiver
      RX_TOG_RXDBYPASS_Field_1)
     with Size => 1;
   for RX_TOG_RXDBYPASS_Field use
     (RX_TOG_RXDBYPASS_Field_0 => 0,
      RX_TOG_RXDBYPASS_Field_1 => 1);

   --  USB PHY Receiver Control Register
   type USBPHY_RX_TOG_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ         : RX_TOG_ENVADJ_Field :=
                        NRF_SVD.USBPHY.RX_TOG_ENVADJ_Field_000;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector.
      DISCONADJ      : RX_TOG_DISCONADJ_Field :=
                        NRF_SVD.USBPHY.RX_TOG_DISCONADJ_Field_000;
      --  unspecified
      Reserved_7_21  : HAL.UInt15 := 16#0#;
      --  This test mode is intended for lab use only, replace FS differential
      --  receiver with DP single ended receiver
      RXDBYPASS      : RX_TOG_RXDBYPASS_Field :=
                        NRF_SVD.USBPHY.RX_TOG_RXDBYPASS_Field_0;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_RX_TOG_Register use record
      ENVADJ         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DISCONADJ      at 0 range 4 .. 6;
      Reserved_7_21  at 0 range 7 .. 21;
      RXDBYPASS      at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Enables non-standard resistive plugged-in detection
   type CTRL_ENDEVPLUGINDET_Field is
     (
      --  Disables 200kohm pullup resistors on USB_DP and USB_DM pins (Default)
      CTRL_ENDEVPLUGINDET_Field_0,
      --  Enables 200kohm pullup resistors on USB_DP and USB_DM pins
      CTRL_ENDEVPLUGINDET_Field_1)
     with Size => 1;
   for CTRL_ENDEVPLUGINDET_Field use
     (CTRL_ENDEVPLUGINDET_Field_0 => 0,
      CTRL_ENDEVPLUGINDET_Field_1 => 1);

   --  USBPHY_CTRL_ENUTMILEVEL array
   type USBPHY_CTRL_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_CTRL_ENUTMILEVEL
   type USBPHY_CTRL_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY_CTRL_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_CTRL_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB PHY General Control Register
   type USBPHY_CTRL_Register is record
      --  unspecified
      Reserved_0_0         : HAL.Bit := 16#0#;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  unspecified
      Reserved_2_2         : HAL.Bit := 16#0#;
      --  Indicates that the device has disconnected in High-Speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  Enables non-standard resistive plugged-in detection
      ENDEVPLUGINDET       : CTRL_ENDEVPLUGINDET_Field :=
                              NRF_SVD.USBPHY.CTRL_ENDEVPLUGINDET_Field_0;
      --  unspecified
      Reserved_5_11        : HAL.UInt7 := 16#0#;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  unspecified
      Reserved_13_13       : HAL.Bit := 16#0#;
      --  Enables UTMI+ Level 2 operation for the USB HS PHY
      ENUTMILEVEL          : USBPHY_CTRL_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_17       : HAL.UInt2 := 16#0#;
      --  Enable the auto resume feature, when set, HW will use 32KHz clock to
      --  send Resume to respond to the device remote wakeup(for host mode
      --  only)
      AUTORESUME_EN        : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in USBPHY_PWD
      --  if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  unspecified
      Reserved_25_26       : HAL.UInt2 := 16#0#;
      --  Read-only. Indicates the results of USB_ID pin while monitoring the
      --  cable plugged into the Micro- or Mini-AB receptacle
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with
      --  low-speed timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHY_PWD, USBPHY_TX,
      --  USBPHY_RX, and USBPHY_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_CTRL_Register use record
      Reserved_0_0         at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      Reserved_2_2         at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDET       at 0 range 4 .. 4;
      Reserved_5_11        at 0 range 5 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      Reserved_13_13       at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      Reserved_16_17       at 0 range 16 .. 17;
      AUTORESUME_EN        at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      Reserved_25_26       at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Enables non-standard resistive plugged-in detection
   type CTRL_SET_ENDEVPLUGINDET_Field is
     (
      --  Disables 200kohm pullup resistors on USB_DP and USB_DM pins (Default)
      CTRL_SET_ENDEVPLUGINDET_Field_0,
      --  Enables 200kohm pullup resistors on USB_DP and USB_DM pins
      CTRL_SET_ENDEVPLUGINDET_Field_1)
     with Size => 1;
   for CTRL_SET_ENDEVPLUGINDET_Field use
     (CTRL_SET_ENDEVPLUGINDET_Field_0 => 0,
      CTRL_SET_ENDEVPLUGINDET_Field_1 => 1);

   --  USBPHY_CTRL_SET_ENUTMILEVEL array
   type USBPHY_CTRL_SET_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_CTRL_SET_ENUTMILEVEL
   type USBPHY_CTRL_SET_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY_CTRL_SET_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_CTRL_SET_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB PHY General Control Register
   type USBPHY_CTRL_SET_Register is record
      --  unspecified
      Reserved_0_0         : HAL.Bit := 16#0#;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  unspecified
      Reserved_2_2         : HAL.Bit := 16#0#;
      --  Indicates that the device has disconnected in High-Speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  Enables non-standard resistive plugged-in detection
      ENDEVPLUGINDET       : CTRL_SET_ENDEVPLUGINDET_Field :=
                              NRF_SVD.USBPHY.CTRL_SET_ENDEVPLUGINDET_Field_0;
      --  unspecified
      Reserved_5_11        : HAL.UInt7 := 16#0#;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  unspecified
      Reserved_13_13       : HAL.Bit := 16#0#;
      --  Enables UTMI+ Level 2 operation for the USB HS PHY
      ENUTMILEVEL          : USBPHY_CTRL_SET_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_17       : HAL.UInt2 := 16#0#;
      --  Enable the auto resume feature, when set, HW will use 32KHz clock to
      --  send Resume to respond to the device remote wakeup(for host mode
      --  only)
      AUTORESUME_EN        : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in USBPHY_PWD
      --  if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  unspecified
      Reserved_25_26       : HAL.UInt2 := 16#0#;
      --  Read-only. Indicates the results of USB_ID pin while monitoring the
      --  cable plugged into the Micro- or Mini-AB receptacle
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with
      --  low-speed timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHY_PWD, USBPHY_TX,
      --  USBPHY_RX, and USBPHY_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_CTRL_SET_Register use record
      Reserved_0_0         at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      Reserved_2_2         at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDET       at 0 range 4 .. 4;
      Reserved_5_11        at 0 range 5 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      Reserved_13_13       at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      Reserved_16_17       at 0 range 16 .. 17;
      AUTORESUME_EN        at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      Reserved_25_26       at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Enables non-standard resistive plugged-in detection
   type CTRL_CLR_ENDEVPLUGINDET_Field is
     (
      --  Disables 200kohm pullup resistors on USB_DP and USB_DM pins (Default)
      CTRL_CLR_ENDEVPLUGINDET_Field_0,
      --  Enables 200kohm pullup resistors on USB_DP and USB_DM pins
      CTRL_CLR_ENDEVPLUGINDET_Field_1)
     with Size => 1;
   for CTRL_CLR_ENDEVPLUGINDET_Field use
     (CTRL_CLR_ENDEVPLUGINDET_Field_0 => 0,
      CTRL_CLR_ENDEVPLUGINDET_Field_1 => 1);

   --  USBPHY_CTRL_CLR_ENUTMILEVEL array
   type USBPHY_CTRL_CLR_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_CTRL_CLR_ENUTMILEVEL
   type USBPHY_CTRL_CLR_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY_CTRL_CLR_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_CTRL_CLR_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB PHY General Control Register
   type USBPHY_CTRL_CLR_Register is record
      --  unspecified
      Reserved_0_0         : HAL.Bit := 16#0#;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  unspecified
      Reserved_2_2         : HAL.Bit := 16#0#;
      --  Indicates that the device has disconnected in High-Speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  Enables non-standard resistive plugged-in detection
      ENDEVPLUGINDET       : CTRL_CLR_ENDEVPLUGINDET_Field :=
                              NRF_SVD.USBPHY.CTRL_CLR_ENDEVPLUGINDET_Field_0;
      --  unspecified
      Reserved_5_11        : HAL.UInt7 := 16#0#;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  unspecified
      Reserved_13_13       : HAL.Bit := 16#0#;
      --  Enables UTMI+ Level 2 operation for the USB HS PHY
      ENUTMILEVEL          : USBPHY_CTRL_CLR_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_17       : HAL.UInt2 := 16#0#;
      --  Enable the auto resume feature, when set, HW will use 32KHz clock to
      --  send Resume to respond to the device remote wakeup(for host mode
      --  only)
      AUTORESUME_EN        : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in USBPHY_PWD
      --  if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  unspecified
      Reserved_25_26       : HAL.UInt2 := 16#0#;
      --  Read-only. Indicates the results of USB_ID pin while monitoring the
      --  cable plugged into the Micro- or Mini-AB receptacle
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with
      --  low-speed timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHY_PWD, USBPHY_TX,
      --  USBPHY_RX, and USBPHY_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_CTRL_CLR_Register use record
      Reserved_0_0         at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      Reserved_2_2         at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDET       at 0 range 4 .. 4;
      Reserved_5_11        at 0 range 5 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      Reserved_13_13       at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      Reserved_16_17       at 0 range 16 .. 17;
      AUTORESUME_EN        at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      Reserved_25_26       at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Enables non-standard resistive plugged-in detection
   type CTRL_TOG_ENDEVPLUGINDET_Field is
     (
      --  Disables 200kohm pullup resistors on USB_DP and USB_DM pins (Default)
      CTRL_TOG_ENDEVPLUGINDET_Field_0,
      --  Enables 200kohm pullup resistors on USB_DP and USB_DM pins
      CTRL_TOG_ENDEVPLUGINDET_Field_1)
     with Size => 1;
   for CTRL_TOG_ENDEVPLUGINDET_Field use
     (CTRL_TOG_ENDEVPLUGINDET_Field_0 => 0,
      CTRL_TOG_ENDEVPLUGINDET_Field_1 => 1);

   --  USBPHY_CTRL_TOG_ENUTMILEVEL array
   type USBPHY_CTRL_TOG_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_CTRL_TOG_ENUTMILEVEL
   type USBPHY_CTRL_TOG_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY_CTRL_TOG_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_CTRL_TOG_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB PHY General Control Register
   type USBPHY_CTRL_TOG_Register is record
      --  unspecified
      Reserved_0_0         : HAL.Bit := 16#0#;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  unspecified
      Reserved_2_2         : HAL.Bit := 16#0#;
      --  Indicates that the device has disconnected in High-Speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  Enables non-standard resistive plugged-in detection
      ENDEVPLUGINDET       : CTRL_TOG_ENDEVPLUGINDET_Field :=
                              NRF_SVD.USBPHY.CTRL_TOG_ENDEVPLUGINDET_Field_0;
      --  unspecified
      Reserved_5_11        : HAL.UInt7 := 16#0#;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  unspecified
      Reserved_13_13       : HAL.Bit := 16#0#;
      --  Enables UTMI+ Level 2 operation for the USB HS PHY
      ENUTMILEVEL          : USBPHY_CTRL_TOG_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_17       : HAL.UInt2 := 16#0#;
      --  Enable the auto resume feature, when set, HW will use 32KHz clock to
      --  send Resume to respond to the device remote wakeup(for host mode
      --  only)
      AUTORESUME_EN        : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in USBPHY_PWD
      --  if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  unspecified
      Reserved_25_26       : HAL.UInt2 := 16#0#;
      --  Read-only. Indicates the results of USB_ID pin while monitoring the
      --  cable plugged into the Micro- or Mini-AB receptacle
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with
      --  low-speed timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHY_PWD, USBPHY_TX,
      --  USBPHY_RX, and USBPHY_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_CTRL_TOG_Register use record
      Reserved_0_0         at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      Reserved_2_2         at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDET       at 0 range 4 .. 4;
      Reserved_5_11        at 0 range 5 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      Reserved_13_13       at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      Reserved_16_17       at 0 range 16 .. 17;
      AUTORESUME_EN        at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      Reserved_25_26       at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  Indicates at the local host (downstream) port that the remote device has
   --  disconnected while in High-Speed mode
   type STATUS_HOSTDISCONDETECT_STATUS_Field is
     (
      --  USB cable disconnect has not been detected at the local host
      STATUS_HOSTDISCONDETECT_STATUS_Field_0,
      --  USB cable disconnect has been detected at the local host
      STATUS_HOSTDISCONDETECT_STATUS_Field_1)
     with Size => 1;
   for STATUS_HOSTDISCONDETECT_STATUS_Field use
     (STATUS_HOSTDISCONDETECT_STATUS_Field_0 => 0,
      STATUS_HOSTDISCONDETECT_STATUS_Field_1 => 1);

   --  Status indicator for non-standard resistive plugged-in detection
   type STATUS_DEVPLUGIN_STATUS_Field is
     (
      --  No attachment to a USB host is detected
      STATUS_DEVPLUGIN_STATUS_Field_0,
      --  Cable attachment to a USB host is detected
      STATUS_DEVPLUGIN_STATUS_Field_1)
     with Size => 1;
   for STATUS_DEVPLUGIN_STATUS_Field use
     (STATUS_DEVPLUGIN_STATUS_Field_0 => 0,
      STATUS_DEVPLUGIN_STATUS_Field_1 => 1);

   --  USB PHY Status Register
   type USBPHY_STATUS_Register is record
      --  unspecified
      Reserved_0_2            : HAL.UInt3 := 16#0#;
      --  Read-only. Indicates at the local host (downstream) port that the
      --  remote device has disconnected while in High-Speed mode
      HOSTDISCONDETECT_STATUS : STATUS_HOSTDISCONDETECT_STATUS_Field :=
                                 NRF_SVD.USBPHY.STATUS_HOSTDISCONDETECT_STATUS_Field_0;
      --  unspecified
      Reserved_4_5            : HAL.UInt2 := 16#0#;
      --  Read-only. Status indicator for non-standard resistive plugged-in
      --  detection
      DEVPLUGIN_STATUS        : STATUS_DEVPLUGIN_STATUS_Field :=
                                 NRF_SVD.USBPHY.STATUS_DEVPLUGIN_STATUS_Field_0;
      --  unspecified
      Reserved_7_7            : HAL.Bit := 16#0#;
      --  Indicates the results of USB_ID pin on the USB cable plugged into the
      --  local Micro- or Mini-AB receptacle
      OTGID_STATUS            : Boolean := False;
      --  unspecified
      Reserved_9_9            : HAL.Bit := 16#0#;
      --  Read-only. Indicates that the host is sending a wake-up after Suspend
      --  and has triggered an interrupt.
      RESUME_STATUS           : Boolean := False;
      --  unspecified
      Reserved_11_31          : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_STATUS_Register use record
      Reserved_0_2            at 0 range 0 .. 2;
      HOSTDISCONDETECT_STATUS at 0 range 3 .. 3;
      Reserved_4_5            at 0 range 4 .. 5;
      DEVPLUGIN_STATUS        at 0 range 6 .. 6;
      Reserved_7_7            at 0 range 7 .. 7;
      OTGID_STATUS            at 0 range 8 .. 8;
      Reserved_9_9            at 0 range 9 .. 9;
      RESUME_STATUS           at 0 range 10 .. 10;
      Reserved_11_31          at 0 range 11 .. 31;
   end record;

   subtype USBPHY_DEBUG_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY_DEBUG_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY_DEBUG_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY_DEBUG_Register is record
      --  Once OTG ID from USBPHY_STATUS_OTGID_STATUS is sampled, use this to
      --  hold the value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  This bit field selects whether to connect pulldown resistors on the
      --  USB_DP/USB_DM pins if the corresponding pulldown overdrive mode is
      --  enabled through USBPHY_DEBUG[5:4} Set bit 3 to value 1'b1 to connect
      --  the 15ohm pulldown on USB_DP line
      HSTPULLDOWN          : USBPHY_DEBUG_HSTPULLDOWN_Field := 16#0#;
      --  This bit field selects host pulldown overdrive mode
      ENHSTPULLDOWN        : USBPHY_DEBUG_ENHSTPULLDOWN_Field := 16#0#;
      --  unspecified
      Reserved_6_7         : HAL.UInt2 := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY_DEBUG_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  unspecified
      Reserved_13_15       : HAL.UInt3 := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY_DEBUG_SQUELCHRESETCOUNT_Field := 16#18#;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY_DEBUG_SQUELCHRESETLENGTH_Field := 16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  unspecified
      Reserved_31_31       : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      Reserved_6_7         at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      Reserved_13_15       at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      Reserved_31_31       at 0 range 31 .. 31;
   end record;

   subtype USBPHY_DEBUG_SET_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_SET_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_SET_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY_DEBUG_SET_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY_DEBUG_SET_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY_DEBUG_SET_Register is record
      --  Once OTG ID from USBPHY_STATUS_OTGID_STATUS is sampled, use this to
      --  hold the value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  This bit field selects whether to connect pulldown resistors on the
      --  USB_DP/USB_DM pins if the corresponding pulldown overdrive mode is
      --  enabled through USBPHY_DEBUG[5:4} Set bit 3 to value 1'b1 to connect
      --  the 15ohm pulldown on USB_DP line
      HSTPULLDOWN          : USBPHY_DEBUG_SET_HSTPULLDOWN_Field := 16#0#;
      --  This bit field selects host pulldown overdrive mode
      ENHSTPULLDOWN        : USBPHY_DEBUG_SET_ENHSTPULLDOWN_Field := 16#0#;
      --  unspecified
      Reserved_6_7         : HAL.UInt2 := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY_DEBUG_SET_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  unspecified
      Reserved_13_15       : HAL.UInt3 := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY_DEBUG_SET_SQUELCHRESETCOUNT_Field :=
                              16#18#;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY_DEBUG_SET_SQUELCHRESETLENGTH_Field :=
                              16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  unspecified
      Reserved_31_31       : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG_SET_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      Reserved_6_7         at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      Reserved_13_15       at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      Reserved_31_31       at 0 range 31 .. 31;
   end record;

   subtype USBPHY_DEBUG_CLR_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_CLR_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_CLR_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY_DEBUG_CLR_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY_DEBUG_CLR_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY_DEBUG_CLR_Register is record
      --  Once OTG ID from USBPHY_STATUS_OTGID_STATUS is sampled, use this to
      --  hold the value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  This bit field selects whether to connect pulldown resistors on the
      --  USB_DP/USB_DM pins if the corresponding pulldown overdrive mode is
      --  enabled through USBPHY_DEBUG[5:4} Set bit 3 to value 1'b1 to connect
      --  the 15ohm pulldown on USB_DP line
      HSTPULLDOWN          : USBPHY_DEBUG_CLR_HSTPULLDOWN_Field := 16#0#;
      --  This bit field selects host pulldown overdrive mode
      ENHSTPULLDOWN        : USBPHY_DEBUG_CLR_ENHSTPULLDOWN_Field := 16#0#;
      --  unspecified
      Reserved_6_7         : HAL.UInt2 := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY_DEBUG_CLR_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  unspecified
      Reserved_13_15       : HAL.UInt3 := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY_DEBUG_CLR_SQUELCHRESETCOUNT_Field :=
                              16#18#;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY_DEBUG_CLR_SQUELCHRESETLENGTH_Field :=
                              16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  unspecified
      Reserved_31_31       : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG_CLR_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      Reserved_6_7         at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      Reserved_13_15       at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      Reserved_31_31       at 0 range 31 .. 31;
   end record;

   subtype USBPHY_DEBUG_TOG_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_TOG_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY_DEBUG_TOG_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY_DEBUG_TOG_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY_DEBUG_TOG_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY_DEBUG_TOG_Register is record
      --  Once OTG ID from USBPHY_STATUS_OTGID_STATUS is sampled, use this to
      --  hold the value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  This bit field selects whether to connect pulldown resistors on the
      --  USB_DP/USB_DM pins if the corresponding pulldown overdrive mode is
      --  enabled through USBPHY_DEBUG[5:4} Set bit 3 to value 1'b1 to connect
      --  the 15ohm pulldown on USB_DP line
      HSTPULLDOWN          : USBPHY_DEBUG_TOG_HSTPULLDOWN_Field := 16#0#;
      --  This bit field selects host pulldown overdrive mode
      ENHSTPULLDOWN        : USBPHY_DEBUG_TOG_ENHSTPULLDOWN_Field := 16#0#;
      --  unspecified
      Reserved_6_7         : HAL.UInt2 := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY_DEBUG_TOG_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  unspecified
      Reserved_13_15       : HAL.UInt3 := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY_DEBUG_TOG_SQUELCHRESETCOUNT_Field :=
                              16#18#;
      --  unspecified
      Reserved_21_23       : HAL.UInt3 := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY_DEBUG_TOG_SQUELCHRESETLENGTH_Field :=
                              16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  unspecified
      Reserved_31_31       : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG_TOG_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      Reserved_6_7         at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      Reserved_13_15       at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      Reserved_21_23       at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      Reserved_31_31       at 0 range 31 .. 31;
   end record;

   subtype USBPHY_DEBUG0_STATUS_LOOP_BACK_FAIL_COUNT_Field is HAL.UInt16;
   subtype USBPHY_DEBUG0_STATUS_UTMI_RXERROR_FAIL_COUNT_Field is HAL.UInt10;
   subtype USBPHY_DEBUG0_STATUS_SQUELCH_COUNT_Field is HAL.UInt6;

   --  UTMI Debug Status Register 0
   type USBPHY_DEBUG0_STATUS_Register is record
      --  Read-only. Running count of the failed pseudo-random generator
      --  loopback
      LOOP_BACK_FAIL_COUNT    : USBPHY_DEBUG0_STATUS_LOOP_BACK_FAIL_COUNT_Field;
      --  Read-only. Running count of the UTMI_RXERROR.
      UTMI_RXERROR_FAIL_COUNT : USBPHY_DEBUG0_STATUS_UTMI_RXERROR_FAIL_COUNT_Field;
      --  Read-only. Running count of the squelch reset instead of normal end
      --  for HS RX.
      SQUELCH_COUNT           : USBPHY_DEBUG0_STATUS_SQUELCH_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG0_STATUS_Register use record
      LOOP_BACK_FAIL_COUNT    at 0 range 0 .. 15;
      UTMI_RXERROR_FAIL_COUNT at 0 range 16 .. 25;
      SQUELCH_COUNT           at 0 range 26 .. 31;
   end record;

   --  Delay increment of the rise of squelch:
   type DEBUG1_ENTAILADJVD_Field is
     (
      --  Delay is nominal
      DEBUG1_ENTAILADJVD_Field_00,
      --  Delay is +20%
      DEBUG1_ENTAILADJVD_Field_01,
      --  Delay is -20%
      DEBUG1_ENTAILADJVD_Field_10,
      --  Delay is -40%
      DEBUG1_ENTAILADJVD_Field_11)
     with Size => 2;
   for DEBUG1_ENTAILADJVD_Field use
     (DEBUG1_ENTAILADJVD_Field_00 => 0,
      DEBUG1_ENTAILADJVD_Field_01 => 1,
      DEBUG1_ENTAILADJVD_Field_10 => 2,
      DEBUG1_ENTAILADJVD_Field_11 => 3);

   --  UTMI Debug Status Register 1
   type USBPHY_DEBUG1_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13 := 16#1000#;
      --  Delay increment of the rise of squelch:
      ENTAILADJVD    : DEBUG1_ENTAILADJVD_Field :=
                        NRF_SVD.USBPHY.DEBUG1_ENTAILADJVD_Field_00;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG1_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      ENTAILADJVD    at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Delay increment of the rise of squelch:
   type DEBUG1_SET_ENTAILADJVD_Field is
     (
      --  Delay is nominal
      DEBUG1_SET_ENTAILADJVD_Field_00,
      --  Delay is +20%
      DEBUG1_SET_ENTAILADJVD_Field_01,
      --  Delay is -20%
      DEBUG1_SET_ENTAILADJVD_Field_10,
      --  Delay is -40%
      DEBUG1_SET_ENTAILADJVD_Field_11)
     with Size => 2;
   for DEBUG1_SET_ENTAILADJVD_Field use
     (DEBUG1_SET_ENTAILADJVD_Field_00 => 0,
      DEBUG1_SET_ENTAILADJVD_Field_01 => 1,
      DEBUG1_SET_ENTAILADJVD_Field_10 => 2,
      DEBUG1_SET_ENTAILADJVD_Field_11 => 3);

   --  UTMI Debug Status Register 1
   type USBPHY_DEBUG1_SET_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13 := 16#1000#;
      --  Delay increment of the rise of squelch:
      ENTAILADJVD    : DEBUG1_SET_ENTAILADJVD_Field :=
                        NRF_SVD.USBPHY.DEBUG1_SET_ENTAILADJVD_Field_00;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG1_SET_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      ENTAILADJVD    at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Delay increment of the rise of squelch:
   type DEBUG1_CLR_ENTAILADJVD_Field is
     (
      --  Delay is nominal
      DEBUG1_CLR_ENTAILADJVD_Field_00,
      --  Delay is +20%
      DEBUG1_CLR_ENTAILADJVD_Field_01,
      --  Delay is -20%
      DEBUG1_CLR_ENTAILADJVD_Field_10,
      --  Delay is -40%
      DEBUG1_CLR_ENTAILADJVD_Field_11)
     with Size => 2;
   for DEBUG1_CLR_ENTAILADJVD_Field use
     (DEBUG1_CLR_ENTAILADJVD_Field_00 => 0,
      DEBUG1_CLR_ENTAILADJVD_Field_01 => 1,
      DEBUG1_CLR_ENTAILADJVD_Field_10 => 2,
      DEBUG1_CLR_ENTAILADJVD_Field_11 => 3);

   --  UTMI Debug Status Register 1
   type USBPHY_DEBUG1_CLR_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13 := 16#1000#;
      --  Delay increment of the rise of squelch:
      ENTAILADJVD    : DEBUG1_CLR_ENTAILADJVD_Field :=
                        NRF_SVD.USBPHY.DEBUG1_CLR_ENTAILADJVD_Field_00;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG1_CLR_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      ENTAILADJVD    at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Delay increment of the rise of squelch:
   type DEBUG1_TOG_ENTAILADJVD_Field is
     (
      --  Delay is nominal
      DEBUG1_TOG_ENTAILADJVD_Field_00,
      --  Delay is +20%
      DEBUG1_TOG_ENTAILADJVD_Field_01,
      --  Delay is -20%
      DEBUG1_TOG_ENTAILADJVD_Field_10,
      --  Delay is -40%
      DEBUG1_TOG_ENTAILADJVD_Field_11)
     with Size => 2;
   for DEBUG1_TOG_ENTAILADJVD_Field use
     (DEBUG1_TOG_ENTAILADJVD_Field_00 => 0,
      DEBUG1_TOG_ENTAILADJVD_Field_01 => 1,
      DEBUG1_TOG_ENTAILADJVD_Field_10 => 2,
      DEBUG1_TOG_ENTAILADJVD_Field_11 => 3);

   --  UTMI Debug Status Register 1
   type USBPHY_DEBUG1_TOG_Register is record
      --  unspecified
      Reserved_0_12  : HAL.UInt13 := 16#1000#;
      --  Delay increment of the rise of squelch:
      ENTAILADJVD    : DEBUG1_TOG_ENTAILADJVD_Field :=
                        NRF_SVD.USBPHY.DEBUG1_TOG_ENTAILADJVD_Field_00;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_DEBUG1_TOG_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      ENTAILADJVD    at 0 range 13 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype USBPHY_VERSION_STEP_Field is HAL.UInt16;
   subtype USBPHY_VERSION_MINOR_Field is HAL.UInt8;
   subtype USBPHY_VERSION_MAJOR_Field is HAL.UInt8;

   --  UTMI RTL Version
   type USBPHY_VERSION_Register is record
      --  Read-only. Fixed read-only value reflecting the stepping of the RTL
      --  version.
      STEP  : USBPHY_VERSION_STEP_Field;
      --  Read-only. Fixed read-only value reflecting the MINOR field of the
      --  RTL version.
      MINOR : USBPHY_VERSION_MINOR_Field;
      --  Read-only. Fixed read-only value reflecting the MAJOR field of the
      --  RTL version.
      MAJOR : USBPHY_VERSION_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_VERSION_Register use record
      STEP  at 0 range 0 .. 15;
      MINOR at 0 range 16 .. 23;
      MAJOR at 0 range 24 .. 31;
   end record;

   --  This field controls the USB PLL feedback loop divider
   type PLL_SIC_PLL_DIV_SEL_Field is
     (
      --  PLL reference frequency = 24MHz
      PLL_SIC_PLL_DIV_SEL_Field_00,
      --  PLL reference frequency = 16MHz
      PLL_SIC_PLL_DIV_SEL_Field_01)
     with Size => 2;
   for PLL_SIC_PLL_DIV_SEL_Field use
     (PLL_SIC_PLL_DIV_SEL_Field_00 => 0,
      PLL_SIC_PLL_DIV_SEL_Field_01 => 1);

   --  USB PLL lock status indicator
   type PLL_SIC_PLL_LOCK_Field is
     (
      --  PLL is not currently locked
      PLL_SIC_PLL_LOCK_Field_0,
      --  PLL is currently locked
      PLL_SIC_PLL_LOCK_Field_1)
     with Size => 1;
   for PLL_SIC_PLL_LOCK_Field use
     (PLL_SIC_PLL_LOCK_Field_0 => 0,
      PLL_SIC_PLL_LOCK_Field_1 => 1);

   --  USB PHY PLL Control/Status Register
   type USBPHY_PLL_SIC_Register is record
      --  This field controls the USB PLL feedback loop divider
      PLL_DIV_SEL       : PLL_SIC_PLL_DIV_SEL_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_PLL_DIV_SEL_Field_00;
      --  unspecified
      Reserved_2_5      : HAL.UInt4 := 16#0#;
      --  Enable the USB clock output from the USB PHY PLL.
      PLL_EN_USB_CLKS   : Boolean := False;
      --  unspecified
      Reserved_7_10     : HAL.UInt4 := 16#0#;
      --  Analog debug bit
      PLL_HOLD_RING_OFF : Boolean := False;
      --  Power up the USB PLL.
      PLL_POWER         : Boolean := False;
      --  Enable the clock output from the USB PLL.
      PLL_ENABLE        : Boolean := True;
      --  unspecified
      Reserved_14_15    : HAL.UInt2 := 16#0#;
      --  Bypass the USB PLL.
      PLL_BYPASS        : Boolean := True;
      --  unspecified
      Reserved_17_30    : HAL.UInt14 := 16#0#;
      --  Read-only. USB PLL lock status indicator
      PLL_LOCK          : PLL_SIC_PLL_LOCK_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_PLL_LOCK_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PLL_SIC_Register use record
      PLL_DIV_SEL       at 0 range 0 .. 1;
      Reserved_2_5      at 0 range 2 .. 5;
      PLL_EN_USB_CLKS   at 0 range 6 .. 6;
      Reserved_7_10     at 0 range 7 .. 10;
      PLL_HOLD_RING_OFF at 0 range 11 .. 11;
      PLL_POWER         at 0 range 12 .. 12;
      PLL_ENABLE        at 0 range 13 .. 13;
      Reserved_14_15    at 0 range 14 .. 15;
      PLL_BYPASS        at 0 range 16 .. 16;
      Reserved_17_30    at 0 range 17 .. 30;
      PLL_LOCK          at 0 range 31 .. 31;
   end record;

   --  This field controls the USB PLL feedback loop divider
   type PLL_SIC_SET_PLL_DIV_SEL_Field is
     (
      --  PLL reference frequency = 24MHz
      PLL_SIC_SET_PLL_DIV_SEL_Field_00,
      --  PLL reference frequency = 16MHz
      PLL_SIC_SET_PLL_DIV_SEL_Field_01)
     with Size => 2;
   for PLL_SIC_SET_PLL_DIV_SEL_Field use
     (PLL_SIC_SET_PLL_DIV_SEL_Field_00 => 0,
      PLL_SIC_SET_PLL_DIV_SEL_Field_01 => 1);

   --  USB PLL lock status indicator
   type PLL_SIC_SET_PLL_LOCK_Field is
     (
      --  PLL is not currently locked
      PLL_SIC_SET_PLL_LOCK_Field_0,
      --  PLL is currently locked
      PLL_SIC_SET_PLL_LOCK_Field_1)
     with Size => 1;
   for PLL_SIC_SET_PLL_LOCK_Field use
     (PLL_SIC_SET_PLL_LOCK_Field_0 => 0,
      PLL_SIC_SET_PLL_LOCK_Field_1 => 1);

   --  USB PHY PLL Control/Status Register
   type USBPHY_PLL_SIC_SET_Register is record
      --  This field controls the USB PLL feedback loop divider
      PLL_DIV_SEL       : PLL_SIC_SET_PLL_DIV_SEL_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_SET_PLL_DIV_SEL_Field_00;
      --  unspecified
      Reserved_2_5      : HAL.UInt4 := 16#0#;
      --  Enable the USB clock output from the USB PHY PLL.
      PLL_EN_USB_CLKS   : Boolean := False;
      --  unspecified
      Reserved_7_10     : HAL.UInt4 := 16#0#;
      --  Analog debug bit
      PLL_HOLD_RING_OFF : Boolean := False;
      --  Power up the USB PLL.
      PLL_POWER         : Boolean := False;
      --  Enable the clock output from the USB PLL.
      PLL_ENABLE        : Boolean := True;
      --  unspecified
      Reserved_14_15    : HAL.UInt2 := 16#0#;
      --  Bypass the USB PLL.
      PLL_BYPASS        : Boolean := True;
      --  unspecified
      Reserved_17_30    : HAL.UInt14 := 16#0#;
      --  Read-only. USB PLL lock status indicator
      PLL_LOCK          : PLL_SIC_SET_PLL_LOCK_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_SET_PLL_LOCK_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PLL_SIC_SET_Register use record
      PLL_DIV_SEL       at 0 range 0 .. 1;
      Reserved_2_5      at 0 range 2 .. 5;
      PLL_EN_USB_CLKS   at 0 range 6 .. 6;
      Reserved_7_10     at 0 range 7 .. 10;
      PLL_HOLD_RING_OFF at 0 range 11 .. 11;
      PLL_POWER         at 0 range 12 .. 12;
      PLL_ENABLE        at 0 range 13 .. 13;
      Reserved_14_15    at 0 range 14 .. 15;
      PLL_BYPASS        at 0 range 16 .. 16;
      Reserved_17_30    at 0 range 17 .. 30;
      PLL_LOCK          at 0 range 31 .. 31;
   end record;

   --  This field controls the USB PLL feedback loop divider
   type PLL_SIC_CLR_PLL_DIV_SEL_Field is
     (
      --  PLL reference frequency = 24MHz
      PLL_SIC_CLR_PLL_DIV_SEL_Field_00,
      --  PLL reference frequency = 16MHz
      PLL_SIC_CLR_PLL_DIV_SEL_Field_01)
     with Size => 2;
   for PLL_SIC_CLR_PLL_DIV_SEL_Field use
     (PLL_SIC_CLR_PLL_DIV_SEL_Field_00 => 0,
      PLL_SIC_CLR_PLL_DIV_SEL_Field_01 => 1);

   --  USB PLL lock status indicator
   type PLL_SIC_CLR_PLL_LOCK_Field is
     (
      --  PLL is not currently locked
      PLL_SIC_CLR_PLL_LOCK_Field_0,
      --  PLL is currently locked
      PLL_SIC_CLR_PLL_LOCK_Field_1)
     with Size => 1;
   for PLL_SIC_CLR_PLL_LOCK_Field use
     (PLL_SIC_CLR_PLL_LOCK_Field_0 => 0,
      PLL_SIC_CLR_PLL_LOCK_Field_1 => 1);

   --  USB PHY PLL Control/Status Register
   type USBPHY_PLL_SIC_CLR_Register is record
      --  This field controls the USB PLL feedback loop divider
      PLL_DIV_SEL       : PLL_SIC_CLR_PLL_DIV_SEL_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_CLR_PLL_DIV_SEL_Field_00;
      --  unspecified
      Reserved_2_5      : HAL.UInt4 := 16#0#;
      --  Enable the USB clock output from the USB PHY PLL.
      PLL_EN_USB_CLKS   : Boolean := False;
      --  unspecified
      Reserved_7_10     : HAL.UInt4 := 16#0#;
      --  Analog debug bit
      PLL_HOLD_RING_OFF : Boolean := False;
      --  Power up the USB PLL.
      PLL_POWER         : Boolean := False;
      --  Enable the clock output from the USB PLL.
      PLL_ENABLE        : Boolean := True;
      --  unspecified
      Reserved_14_15    : HAL.UInt2 := 16#0#;
      --  Bypass the USB PLL.
      PLL_BYPASS        : Boolean := True;
      --  unspecified
      Reserved_17_30    : HAL.UInt14 := 16#0#;
      --  Read-only. USB PLL lock status indicator
      PLL_LOCK          : PLL_SIC_CLR_PLL_LOCK_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_CLR_PLL_LOCK_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PLL_SIC_CLR_Register use record
      PLL_DIV_SEL       at 0 range 0 .. 1;
      Reserved_2_5      at 0 range 2 .. 5;
      PLL_EN_USB_CLKS   at 0 range 6 .. 6;
      Reserved_7_10     at 0 range 7 .. 10;
      PLL_HOLD_RING_OFF at 0 range 11 .. 11;
      PLL_POWER         at 0 range 12 .. 12;
      PLL_ENABLE        at 0 range 13 .. 13;
      Reserved_14_15    at 0 range 14 .. 15;
      PLL_BYPASS        at 0 range 16 .. 16;
      Reserved_17_30    at 0 range 17 .. 30;
      PLL_LOCK          at 0 range 31 .. 31;
   end record;

   --  This field controls the USB PLL feedback loop divider
   type PLL_SIC_TOG_PLL_DIV_SEL_Field is
     (
      --  PLL reference frequency = 24MHz
      PLL_SIC_TOG_PLL_DIV_SEL_Field_00,
      --  PLL reference frequency = 16MHz
      PLL_SIC_TOG_PLL_DIV_SEL_Field_01)
     with Size => 2;
   for PLL_SIC_TOG_PLL_DIV_SEL_Field use
     (PLL_SIC_TOG_PLL_DIV_SEL_Field_00 => 0,
      PLL_SIC_TOG_PLL_DIV_SEL_Field_01 => 1);

   --  USB PLL lock status indicator
   type PLL_SIC_TOG_PLL_LOCK_Field is
     (
      --  PLL is not currently locked
      PLL_SIC_TOG_PLL_LOCK_Field_0,
      --  PLL is currently locked
      PLL_SIC_TOG_PLL_LOCK_Field_1)
     with Size => 1;
   for PLL_SIC_TOG_PLL_LOCK_Field use
     (PLL_SIC_TOG_PLL_LOCK_Field_0 => 0,
      PLL_SIC_TOG_PLL_LOCK_Field_1 => 1);

   --  USB PHY PLL Control/Status Register
   type USBPHY_PLL_SIC_TOG_Register is record
      --  This field controls the USB PLL feedback loop divider
      PLL_DIV_SEL       : PLL_SIC_TOG_PLL_DIV_SEL_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_TOG_PLL_DIV_SEL_Field_00;
      --  unspecified
      Reserved_2_5      : HAL.UInt4 := 16#0#;
      --  Enable the USB clock output from the USB PHY PLL.
      PLL_EN_USB_CLKS   : Boolean := False;
      --  unspecified
      Reserved_7_10     : HAL.UInt4 := 16#0#;
      --  Analog debug bit
      PLL_HOLD_RING_OFF : Boolean := False;
      --  Power up the USB PLL.
      PLL_POWER         : Boolean := False;
      --  Enable the clock output from the USB PLL.
      PLL_ENABLE        : Boolean := True;
      --  unspecified
      Reserved_14_15    : HAL.UInt2 := 16#0#;
      --  Bypass the USB PLL.
      PLL_BYPASS        : Boolean := True;
      --  unspecified
      Reserved_17_30    : HAL.UInt14 := 16#0#;
      --  Read-only. USB PLL lock status indicator
      PLL_LOCK          : PLL_SIC_TOG_PLL_LOCK_Field :=
                           NRF_SVD.USBPHY.PLL_SIC_TOG_PLL_LOCK_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_PLL_SIC_TOG_Register use record
      PLL_DIV_SEL       at 0 range 0 .. 1;
      Reserved_2_5      at 0 range 2 .. 5;
      PLL_EN_USB_CLKS   at 0 range 6 .. 6;
      Reserved_7_10     at 0 range 7 .. 10;
      PLL_HOLD_RING_OFF at 0 range 11 .. 11;
      PLL_POWER         at 0 range 12 .. 12;
      PLL_ENABLE        at 0 range 13 .. 13;
      Reserved_14_15    at 0 range 14 .. 15;
      PLL_BYPASS        at 0 range 16 .. 16;
      Reserved_17_30    at 0 range 17 .. 30;
      PLL_LOCK          at 0 range 31 .. 31;
   end record;

   --  Sets the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_VBUSVALID_THRESH_Field is
     (
      --  4.0 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_000,
      --  4.1 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_001,
      --  4.2 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_010,
      --  4.3 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_011,
      --  4.4 V (Default)
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_100,
      --  4.5 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_101,
      --  4.6 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_110,
      --  4.7 V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_111)
     with Size => 3;
   for USB1_VBUS_DETECT_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_000 => 0,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_001 => 1,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_010 => 2,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_011 => 3,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_100 => 4,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_101 => 5,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_110 => 6,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_111 => 7);

   --  VBUS detect signal override enable
   type USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field is
     (
      --  Use the results of the internal VBUS_VALID and Session Valid
      --  comparators for VBUS_VALID, AVALID, BVALID, and SESSEND (Default)
      USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field_0,
      --  Use the override values for VBUS_VALID, AVALID, BVALID, and SESSEND
      USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field use
     (USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field_0 => 0,
      USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_VBUSVALID_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_VBUSVALID_SEL_Field_0,
      --  Use the VBUS_VALID_3V detector results for signal reported to the USB
      --  controller
      USB1_VBUS_DETECT_VBUSVALID_SEL_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_VBUSVALID_SEL_Field use
     (USB1_VBUS_DETECT_VBUSVALID_SEL_Field_0 => 0,
      USB1_VBUS_DETECT_VBUSVALID_SEL_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_00,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_01,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_10,
      --  Reserved, do not use
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_11)
     with Size => 2;
   for USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field use
     (USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_00 => 0,
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_01 => 1,
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_10 => 2,
      USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_11 => 3);

   --  Selects the comparator used for VBUS_VALID
   type USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field is
     (
      --  Use the VBUS_VALID comparator for VBUS_VALID results
      USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field_0,
      --  Use the Session End comparator for VBUS_VALID results. The Session
      --  End threshold is >0.8V and <4.0V.
      USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field use
     (USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field_0 => 0,
      USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field_1 => 1);

   --  Enables the VBUS_VALID comparator
   type USB1_VBUS_DETECT_PWRUP_CMPS_Field is
     (
      --  Powers down the VBUS_VALID comparator
      USB1_VBUS_DETECT_PWRUP_CMPS_Field_0,
      --  Enables the VBUS_VALID comparator (default)
      USB1_VBUS_DETECT_PWRUP_CMPS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_PWRUP_CMPS_Field use
     (USB1_VBUS_DETECT_PWRUP_CMPS_Field_0 => 0,
      USB1_VBUS_DETECT_PWRUP_CMPS_Field_1 => 1);

   --  Controls VBUS discharge resistor
   type USB1_VBUS_DETECT_DISCHARGE_VBUS_Field is
     (
      --  VBUS discharge resistor is disabled (Default)
      USB1_VBUS_DETECT_DISCHARGE_VBUS_Field_0,
      --  VBUS discharge resistor is enabled
      USB1_VBUS_DETECT_DISCHARGE_VBUS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_DISCHARGE_VBUS_Field use
     (USB1_VBUS_DETECT_DISCHARGE_VBUS_Field_0 => 0,
      USB1_VBUS_DETECT_DISCHARGE_VBUS_Field_1 => 1);

   --  Enables resistors used for an older method of resistive battery charger
   --  detection
   type USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field is
     (
      --  Disable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field_0,
      --  Enable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field use
     (USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field_0 => 0,
      USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field_1 => 1);

   --  USB PHY VBUS Detect Control Register
   type USBPHY_USB1_VBUS_DETECT_Register is record
      --  Sets the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH       : USB1_VBUS_DETECT_VBUSVALID_THRESH_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_100;
      --  VBUS detect signal override enable
      VBUS_OVERRIDE_EN       : USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_VBUS_OVERRIDE_EN_Field_0;
      --  Override value for SESSEND
      SESSEND_OVERRIDE       : Boolean := False;
      --  Override value for B-Device Session Valid
      BVALID_OVERRIDE        : Boolean := False;
      --  Override value for A-Device Session Valid
      AVALID_OVERRIDE        : Boolean := False;
      --  Override value for VBUS_VALID signal sent to USB controller
      VBUSVALID_OVERRIDE     : Boolean := False;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUSVALID_SEL          : USB1_VBUS_DETECT_VBUSVALID_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_VBUSVALID_SEL_Field_0;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUS_SOURCE_SEL        : USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_VBUS_SOURCE_SEL_Field_00;
      --  unspecified
      Reserved_11_17         : HAL.UInt7 := 16#0#;
      --  Selects the comparator used for VBUS_VALID
      VBUSVALID_TO_SESSVALID : USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_VBUSVALID_TO_SESSVALID_Field_0;
      --  unspecified
      Reserved_19_19         : HAL.Bit := 16#0#;
      --  Enables the VBUS_VALID comparator
      PWRUP_CMPS             : USB1_VBUS_DETECT_PWRUP_CMPS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_PWRUP_CMPS_Field_1;
      --  unspecified
      Reserved_21_25         : HAL.UInt5 := 16#3#;
      --  Controls VBUS discharge resistor
      DISCHARGE_VBUS         : USB1_VBUS_DETECT_DISCHARGE_VBUS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_DISCHARGE_VBUS_Field_0;
      --  unspecified
      Reserved_27_30         : HAL.UInt4 := 16#0#;
      --  Enables resistors used for an older method of resistive battery
      --  charger detection
      EN_CHARGER_RESISTOR    : USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_EN_CHARGER_RESISTOR_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_VBUS_DETECT_Register use record
      VBUSVALID_THRESH       at 0 range 0 .. 2;
      VBUS_OVERRIDE_EN       at 0 range 3 .. 3;
      SESSEND_OVERRIDE       at 0 range 4 .. 4;
      BVALID_OVERRIDE        at 0 range 5 .. 5;
      AVALID_OVERRIDE        at 0 range 6 .. 6;
      VBUSVALID_OVERRIDE     at 0 range 7 .. 7;
      VBUSVALID_SEL          at 0 range 8 .. 8;
      VBUS_SOURCE_SEL        at 0 range 9 .. 10;
      Reserved_11_17         at 0 range 11 .. 17;
      VBUSVALID_TO_SESSVALID at 0 range 18 .. 18;
      Reserved_19_19         at 0 range 19 .. 19;
      PWRUP_CMPS             at 0 range 20 .. 20;
      Reserved_21_25         at 0 range 21 .. 25;
      DISCHARGE_VBUS         at 0 range 26 .. 26;
      Reserved_27_30         at 0 range 27 .. 30;
      EN_CHARGER_RESISTOR    at 0 range 31 .. 31;
   end record;

   --  Sets the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field is
     (
      --  4.0 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_000,
      --  4.1 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_001,
      --  4.2 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_010,
      --  4.3 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_011,
      --  4.4 V (Default)
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_100,
      --  4.5 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_101,
      --  4.6 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_110,
      --  4.7 V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_111)
     with Size => 3;
   for USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_000 => 0,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_001 => 1,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_010 => 2,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_011 => 3,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_100 => 4,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_101 => 5,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_110 => 6,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_111 => 7);

   --  VBUS detect signal override enable
   type USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field is
     (
      --  Use the results of the internal VBUS_VALID and Session Valid
      --  comparators for VBUS_VALID, AVALID, BVALID, and SESSEND (Default)
      USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field_0,
      --  Use the override values for VBUS_VALID, AVALID, BVALID, and SESSEND
      USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field use
     (USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field_0 => 0,
      USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field_0,
      --  Use the VBUS_VALID_3V detector results for signal reported to the USB
      --  controller
      USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field use
     (USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field_0 => 0,
      USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_00,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_01,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_10,
      --  Reserved, do not use
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_11)
     with Size => 2;
   for USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field use
     (USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_00 => 0,
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_01 => 1,
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_10 => 2,
      USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_11 => 3);

   --  Selects the comparator used for VBUS_VALID
   type USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field is
     (
      --  Use the VBUS_VALID comparator for VBUS_VALID results
      USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field_0,
      --  Use the Session End comparator for VBUS_VALID results. The Session
      --  End threshold is >0.8V and <4.0V.
      USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field use
     (USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field_0 => 0,
      USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field_1 => 1);

   --  Enables the VBUS_VALID comparator
   type USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field is
     (
      --  Powers down the VBUS_VALID comparator
      USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field_0,
      --  Enables the VBUS_VALID comparator (default)
      USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field use
     (USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field_0 => 0,
      USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field_1 => 1);

   --  Controls VBUS discharge resistor
   type USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field is
     (
      --  VBUS discharge resistor is disabled (Default)
      USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field_0,
      --  VBUS discharge resistor is enabled
      USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field use
     (USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field_0 => 0,
      USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field_1 => 1);

   --  Enables resistors used for an older method of resistive battery charger
   --  detection
   type USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field is
     (
      --  Disable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field_0,
      --  Enable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field use
     (USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field_0 => 0,
      USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field_1 => 1);

   --  USB PHY VBUS Detect Control Register
   type USBPHY_USB1_VBUS_DETECT_SET_Register is record
      --  Sets the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH       : USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_100;
      --  VBUS detect signal override enable
      VBUS_OVERRIDE_EN       : USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_VBUS_OVERRIDE_EN_Field_0;
      --  Override value for SESSEND
      SESSEND_OVERRIDE       : Boolean := False;
      --  Override value for B-Device Session Valid
      BVALID_OVERRIDE        : Boolean := False;
      --  Override value for A-Device Session Valid
      AVALID_OVERRIDE        : Boolean := False;
      --  Override value for VBUS_VALID signal sent to USB controller
      VBUSVALID_OVERRIDE     : Boolean := False;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUSVALID_SEL          : USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_VBUSVALID_SEL_Field_0;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUS_SOURCE_SEL        : USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_VBUS_SOURCE_SEL_Field_00;
      --  unspecified
      Reserved_11_17         : HAL.UInt7 := 16#0#;
      --  Selects the comparator used for VBUS_VALID
      VBUSVALID_TO_SESSVALID : USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_VBUSVALID_TO_SESSVALID_Field_0;
      --  unspecified
      Reserved_19_19         : HAL.Bit := 16#0#;
      --  Enables the VBUS_VALID comparator
      PWRUP_CMPS             : USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_PWRUP_CMPS_Field_1;
      --  unspecified
      Reserved_21_25         : HAL.UInt5 := 16#3#;
      --  Controls VBUS discharge resistor
      DISCHARGE_VBUS         : USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_DISCHARGE_VBUS_Field_0;
      --  unspecified
      Reserved_27_30         : HAL.UInt4 := 16#0#;
      --  Enables resistors used for an older method of resistive battery
      --  charger detection
      EN_CHARGER_RESISTOR    : USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_SET_EN_CHARGER_RESISTOR_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_VBUS_DETECT_SET_Register use record
      VBUSVALID_THRESH       at 0 range 0 .. 2;
      VBUS_OVERRIDE_EN       at 0 range 3 .. 3;
      SESSEND_OVERRIDE       at 0 range 4 .. 4;
      BVALID_OVERRIDE        at 0 range 5 .. 5;
      AVALID_OVERRIDE        at 0 range 6 .. 6;
      VBUSVALID_OVERRIDE     at 0 range 7 .. 7;
      VBUSVALID_SEL          at 0 range 8 .. 8;
      VBUS_SOURCE_SEL        at 0 range 9 .. 10;
      Reserved_11_17         at 0 range 11 .. 17;
      VBUSVALID_TO_SESSVALID at 0 range 18 .. 18;
      Reserved_19_19         at 0 range 19 .. 19;
      PWRUP_CMPS             at 0 range 20 .. 20;
      Reserved_21_25         at 0 range 21 .. 25;
      DISCHARGE_VBUS         at 0 range 26 .. 26;
      Reserved_27_30         at 0 range 27 .. 30;
      EN_CHARGER_RESISTOR    at 0 range 31 .. 31;
   end record;

   --  Sets the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field is
     (
      --  4.0 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_000,
      --  4.1 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_001,
      --  4.2 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_010,
      --  4.3 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_011,
      --  4.4 V (Default)
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_100,
      --  4.5 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_101,
      --  4.6 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_110,
      --  4.7 V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_111)
     with Size => 3;
   for USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_000 => 0,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_001 => 1,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_010 => 2,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_011 => 3,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_100 => 4,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_101 => 5,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_110 => 6,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_111 => 7);

   --  VBUS detect signal override enable
   type USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field is
     (
      --  Use the results of the internal VBUS_VALID and Session Valid
      --  comparators for VBUS_VALID, AVALID, BVALID, and SESSEND (Default)
      USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field_0,
      --  Use the override values for VBUS_VALID, AVALID, BVALID, and SESSEND
      USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field use
     (USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field_0 => 0,
      USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field_0,
      --  Use the VBUS_VALID_3V detector results for signal reported to the USB
      --  controller
      USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field use
     (USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field_0 => 0,
      USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_00,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_01,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_10,
      --  Reserved, do not use
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_11)
     with Size => 2;
   for USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field use
     (USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_00 => 0,
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_01 => 1,
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_10 => 2,
      USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_11 => 3);

   --  Selects the comparator used for VBUS_VALID
   type USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field is
     (
      --  Use the VBUS_VALID comparator for VBUS_VALID results
      USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field_0,
      --  Use the Session End comparator for VBUS_VALID results. The Session
      --  End threshold is >0.8V and <4.0V.
      USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field use
     (USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field_0 => 0,
      USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field_1 => 1);

   --  Enables the VBUS_VALID comparator
   type USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field is
     (
      --  Powers down the VBUS_VALID comparator
      USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field_0,
      --  Enables the VBUS_VALID comparator (default)
      USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field use
     (USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field_0 => 0,
      USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field_1 => 1);

   --  Controls VBUS discharge resistor
   type USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field is
     (
      --  VBUS discharge resistor is disabled (Default)
      USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field_0,
      --  VBUS discharge resistor is enabled
      USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field use
     (USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field_0 => 0,
      USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field_1 => 1);

   --  Enables resistors used for an older method of resistive battery charger
   --  detection
   type USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field is
     (
      --  Disable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field_0,
      --  Enable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field use
     (USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field_0 => 0,
      USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field_1 => 1);

   --  USB PHY VBUS Detect Control Register
   type USBPHY_USB1_VBUS_DETECT_CLR_Register is record
      --  Sets the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH       : USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_100;
      --  VBUS detect signal override enable
      VBUS_OVERRIDE_EN       : USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_VBUS_OVERRIDE_EN_Field_0;
      --  Override value for SESSEND
      SESSEND_OVERRIDE       : Boolean := False;
      --  Override value for B-Device Session Valid
      BVALID_OVERRIDE        : Boolean := False;
      --  Override value for A-Device Session Valid
      AVALID_OVERRIDE        : Boolean := False;
      --  Override value for VBUS_VALID signal sent to USB controller
      VBUSVALID_OVERRIDE     : Boolean := False;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUSVALID_SEL          : USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_VBUSVALID_SEL_Field_0;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUS_SOURCE_SEL        : USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_VBUS_SOURCE_SEL_Field_00;
      --  unspecified
      Reserved_11_17         : HAL.UInt7 := 16#0#;
      --  Selects the comparator used for VBUS_VALID
      VBUSVALID_TO_SESSVALID : USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_VBUSVALID_TO_SESSVALID_Field_0;
      --  unspecified
      Reserved_19_19         : HAL.Bit := 16#0#;
      --  Enables the VBUS_VALID comparator
      PWRUP_CMPS             : USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_PWRUP_CMPS_Field_1;
      --  unspecified
      Reserved_21_25         : HAL.UInt5 := 16#3#;
      --  Controls VBUS discharge resistor
      DISCHARGE_VBUS         : USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_DISCHARGE_VBUS_Field_0;
      --  unspecified
      Reserved_27_30         : HAL.UInt4 := 16#0#;
      --  Enables resistors used for an older method of resistive battery
      --  charger detection
      EN_CHARGER_RESISTOR    : USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_CLR_EN_CHARGER_RESISTOR_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_VBUS_DETECT_CLR_Register use record
      VBUSVALID_THRESH       at 0 range 0 .. 2;
      VBUS_OVERRIDE_EN       at 0 range 3 .. 3;
      SESSEND_OVERRIDE       at 0 range 4 .. 4;
      BVALID_OVERRIDE        at 0 range 5 .. 5;
      AVALID_OVERRIDE        at 0 range 6 .. 6;
      VBUSVALID_OVERRIDE     at 0 range 7 .. 7;
      VBUSVALID_SEL          at 0 range 8 .. 8;
      VBUS_SOURCE_SEL        at 0 range 9 .. 10;
      Reserved_11_17         at 0 range 11 .. 17;
      VBUSVALID_TO_SESSVALID at 0 range 18 .. 18;
      Reserved_19_19         at 0 range 19 .. 19;
      PWRUP_CMPS             at 0 range 20 .. 20;
      Reserved_21_25         at 0 range 21 .. 25;
      DISCHARGE_VBUS         at 0 range 26 .. 26;
      Reserved_27_30         at 0 range 27 .. 30;
      EN_CHARGER_RESISTOR    at 0 range 31 .. 31;
   end record;

   --  Sets the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field is
     (
      --  4.0 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_000,
      --  4.1 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_001,
      --  4.2 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_010,
      --  4.3 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_011,
      --  4.4 V (Default)
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_100,
      --  4.5 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_101,
      --  4.6 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_110,
      --  4.7 V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_111)
     with Size => 3;
   for USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_000 => 0,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_001 => 1,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_010 => 2,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_011 => 3,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_100 => 4,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_101 => 5,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_110 => 6,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_111 => 7);

   --  VBUS detect signal override enable
   type USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field is
     (
      --  Use the results of the internal VBUS_VALID and Session Valid
      --  comparators for VBUS_VALID, AVALID, BVALID, and SESSEND (Default)
      USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field_0,
      --  Use the override values for VBUS_VALID, AVALID, BVALID, and SESSEND
      USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field use
     (USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field_0 => 0,
      USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field_0,
      --  Use the VBUS_VALID_3V detector results for signal reported to the USB
      --  controller
      USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field use
     (USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field_0 => 0,
      USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field_1 => 1);

   --  Selects the source of the VBUS_VALID signal reported to the USB
   --  controller
   type USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field is
     (
      --  Use the VBUS_VALID comparator results for signal reported to the USB
      --  controller (Default)
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_00,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_01,
      --  Use the Session Valid comparator results for signal reported to the
      --  USB controller
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_10,
      --  Reserved, do not use
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_11)
     with Size => 2;
   for USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field use
     (USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_00 => 0,
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_01 => 1,
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_10 => 2,
      USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_11 => 3);

   --  Selects the comparator used for VBUS_VALID
   type USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field is
     (
      --  Use the VBUS_VALID comparator for VBUS_VALID results
      USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field_0,
      --  Use the Session End comparator for VBUS_VALID results. The Session
      --  End threshold is >0.8V and <4.0V.
      USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field use
     (USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field_0 => 0,
      USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field_1 => 1);

   --  Enables the VBUS_VALID comparator
   type USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field is
     (
      --  Powers down the VBUS_VALID comparator
      USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field_0,
      --  Enables the VBUS_VALID comparator (default)
      USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field use
     (USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field_0 => 0,
      USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field_1 => 1);

   --  Controls VBUS discharge resistor
   type USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field is
     (
      --  VBUS discharge resistor is disabled (Default)
      USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field_0,
      --  VBUS discharge resistor is enabled
      USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field use
     (USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field_0 => 0,
      USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field_1 => 1);

   --  Enables resistors used for an older method of resistive battery charger
   --  detection
   type USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field is
     (
      --  Disable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field_0,
      --  Enable resistive charger detection resistors on USB_DP and USB_DP
      USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field_1)
     with Size => 1;
   for USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field use
     (USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field_0 => 0,
      USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field_1 => 1);

   --  USB PHY VBUS Detect Control Register
   type USBPHY_USB1_VBUS_DETECT_TOG_Register is record
      --  Sets the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH       : USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_100;
      --  VBUS detect signal override enable
      VBUS_OVERRIDE_EN       : USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_VBUS_OVERRIDE_EN_Field_0;
      --  Override value for SESSEND
      SESSEND_OVERRIDE       : Boolean := False;
      --  Override value for B-Device Session Valid
      BVALID_OVERRIDE        : Boolean := False;
      --  Override value for A-Device Session Valid
      AVALID_OVERRIDE        : Boolean := False;
      --  Override value for VBUS_VALID signal sent to USB controller
      VBUSVALID_OVERRIDE     : Boolean := False;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUSVALID_SEL          : USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_VBUSVALID_SEL_Field_0;
      --  Selects the source of the VBUS_VALID signal reported to the USB
      --  controller
      VBUS_SOURCE_SEL        : USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_VBUS_SOURCE_SEL_Field_00;
      --  unspecified
      Reserved_11_17         : HAL.UInt7 := 16#0#;
      --  Selects the comparator used for VBUS_VALID
      VBUSVALID_TO_SESSVALID : USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_VBUSVALID_TO_SESSVALID_Field_0;
      --  unspecified
      Reserved_19_19         : HAL.Bit := 16#0#;
      --  Enables the VBUS_VALID comparator
      PWRUP_CMPS             : USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_PWRUP_CMPS_Field_1;
      --  unspecified
      Reserved_21_25         : HAL.UInt5 := 16#3#;
      --  Controls VBUS discharge resistor
      DISCHARGE_VBUS         : USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_DISCHARGE_VBUS_Field_0;
      --  unspecified
      Reserved_27_30         : HAL.UInt4 := 16#0#;
      --  Enables resistors used for an older method of resistive battery
      --  charger detection
      EN_CHARGER_RESISTOR    : USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field :=
                                NRF_SVD.USBPHY.USB1_VBUS_DETECT_TOG_EN_CHARGER_RESISTOR_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_VBUS_DETECT_TOG_Register use record
      VBUSVALID_THRESH       at 0 range 0 .. 2;
      VBUS_OVERRIDE_EN       at 0 range 3 .. 3;
      SESSEND_OVERRIDE       at 0 range 4 .. 4;
      BVALID_OVERRIDE        at 0 range 5 .. 5;
      AVALID_OVERRIDE        at 0 range 6 .. 6;
      VBUSVALID_OVERRIDE     at 0 range 7 .. 7;
      VBUSVALID_SEL          at 0 range 8 .. 8;
      VBUS_SOURCE_SEL        at 0 range 9 .. 10;
      Reserved_11_17         at 0 range 11 .. 17;
      VBUSVALID_TO_SESSVALID at 0 range 18 .. 18;
      Reserved_19_19         at 0 range 19 .. 19;
      PWRUP_CMPS             at 0 range 20 .. 20;
      Reserved_21_25         at 0 range 21 .. 25;
      DISCHARGE_VBUS         at 0 range 26 .. 26;
      Reserved_27_30         at 0 range 27 .. 30;
      EN_CHARGER_RESISTOR    at 0 range 31 .. 31;
   end record;

   --  Session End indicator
   type USB1_VBUS_DET_STAT_SESSEND_Field is
     (
      --  The VBUS voltage is above the Session Valid threshold
      USB1_VBUS_DET_STAT_SESSEND_Field_0,
      --  The VBUS voltage is below the Session Valid threshold
      USB1_VBUS_DET_STAT_SESSEND_Field_1)
     with Size => 1;
   for USB1_VBUS_DET_STAT_SESSEND_Field use
     (USB1_VBUS_DET_STAT_SESSEND_Field_0 => 0,
      USB1_VBUS_DET_STAT_SESSEND_Field_1 => 1);

   --  B-Device Session Valid status
   type USB1_VBUS_DET_STAT_BVALID_Field is
     (
      --  The VBUS voltage is below the Session Valid threshold
      USB1_VBUS_DET_STAT_BVALID_Field_0,
      --  The VBUS voltage is above the Session Valid threshold
      USB1_VBUS_DET_STAT_BVALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DET_STAT_BVALID_Field use
     (USB1_VBUS_DET_STAT_BVALID_Field_0 => 0,
      USB1_VBUS_DET_STAT_BVALID_Field_1 => 1);

   --  A-Device Session Valid status
   type USB1_VBUS_DET_STAT_AVALID_Field is
     (
      --  The VBUS voltage is below the Session Valid threshold
      USB1_VBUS_DET_STAT_AVALID_Field_0,
      --  The VBUS voltage is above the Session Valid threshold
      USB1_VBUS_DET_STAT_AVALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DET_STAT_AVALID_Field use
     (USB1_VBUS_DET_STAT_AVALID_Field_0 => 0,
      USB1_VBUS_DET_STAT_AVALID_Field_1 => 1);

   --  VBUS voltage status
   type USB1_VBUS_DET_STAT_VBUS_VALID_Field is
     (
      --  VBUS is below the comparator threshold
      USB1_VBUS_DET_STAT_VBUS_VALID_Field_0,
      --  VBUS is above the comparator threshold
      USB1_VBUS_DET_STAT_VBUS_VALID_Field_1)
     with Size => 1;
   for USB1_VBUS_DET_STAT_VBUS_VALID_Field use
     (USB1_VBUS_DET_STAT_VBUS_VALID_Field_0 => 0,
      USB1_VBUS_DET_STAT_VBUS_VALID_Field_1 => 1);

   --  VBUS_VALID_3V detector status
   type USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field is
     (
      --  VBUS voltage is below VBUS_VALID_3V threshold
      USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field_0,
      --  VBUS voltage is above VBUS_VALID_3V threshold
      USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field_1)
     with Size => 1;
   for USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field use
     (USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field_0 => 0,
      USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field_1 => 1);

   --  USB PHY VBUS Detector Status Register
   type USBPHY_USB1_VBUS_DET_STAT_Register is record
      --  Read-only. Session End indicator
      SESSEND       : USB1_VBUS_DET_STAT_SESSEND_Field;
      --  Read-only. B-Device Session Valid status
      BVALID        : USB1_VBUS_DET_STAT_BVALID_Field;
      --  Read-only. A-Device Session Valid status
      AVALID        : USB1_VBUS_DET_STAT_AVALID_Field;
      --  Read-only. VBUS voltage status
      VBUS_VALID    : USB1_VBUS_DET_STAT_VBUS_VALID_Field;
      --  Read-only. VBUS_VALID_3V detector status
      VBUS_VALID_3V : USB1_VBUS_DET_STAT_VBUS_VALID_3V_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_VBUS_DET_STAT_Register use record
      SESSEND       at 0 range 0 .. 0;
      BVALID        at 0 range 1 .. 1;
      AVALID        at 0 range 2 .. 2;
      VBUS_VALID    at 0 range 3 .. 3;
      VBUS_VALID_3V at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Battery Charging Data Contact Detection phase output
   type USB1_CHRG_DET_STAT_PLUG_CONTACT_Field is
     (
      --  No USB cable attachment has been detected
      USB1_CHRG_DET_STAT_PLUG_CONTACT_Field_0,
      --  A USB cable attachment between the device and host has been detected
      USB1_CHRG_DET_STAT_PLUG_CONTACT_Field_1)
     with Size => 1;
   for USB1_CHRG_DET_STAT_PLUG_CONTACT_Field use
     (USB1_CHRG_DET_STAT_PLUG_CONTACT_Field_0 => 0,
      USB1_CHRG_DET_STAT_PLUG_CONTACT_Field_1 => 1);

   --  Battery Charging Primary Detection phase output
   type USB1_CHRG_DET_STAT_CHRG_DETECTED_Field is
     (
      --  Standard Downstream Port (SDP) has been detected
      USB1_CHRG_DET_STAT_CHRG_DETECTED_Field_0,
      --  Charging Port has been detected
      USB1_CHRG_DET_STAT_CHRG_DETECTED_Field_1)
     with Size => 1;
   for USB1_CHRG_DET_STAT_CHRG_DETECTED_Field use
     (USB1_CHRG_DET_STAT_CHRG_DETECTED_Field_0 => 0,
      USB1_CHRG_DET_STAT_CHRG_DETECTED_Field_1 => 1);

   --  Single ended receiver output for the USB_DM pin, from charger detection
   --  circuits.
   type USB1_CHRG_DET_STAT_DM_STATE_Field is
     (
      --  USB_DM pin voltage is < 0.8V
      USB1_CHRG_DET_STAT_DM_STATE_Field_0,
      --  USB_DM pin voltage is > 2.0V
      USB1_CHRG_DET_STAT_DM_STATE_Field_1)
     with Size => 1;
   for USB1_CHRG_DET_STAT_DM_STATE_Field use
     (USB1_CHRG_DET_STAT_DM_STATE_Field_0 => 0,
      USB1_CHRG_DET_STAT_DM_STATE_Field_1 => 1);

   --  Single ended receiver output for the USB_DP pin, from charger detection
   --  circuits.
   type USB1_CHRG_DET_STAT_DP_STATE_Field is
     (
      --  USB_DP pin voltage is < 0.8V
      USB1_CHRG_DET_STAT_DP_STATE_Field_0,
      --  USB_DP pin voltage is > 2.0V
      USB1_CHRG_DET_STAT_DP_STATE_Field_1)
     with Size => 1;
   for USB1_CHRG_DET_STAT_DP_STATE_Field use
     (USB1_CHRG_DET_STAT_DP_STATE_Field_0 => 0,
      USB1_CHRG_DET_STAT_DP_STATE_Field_1 => 1);

   --  Battery Charging Secondary Detection phase output
   type USB1_CHRG_DET_STAT_SECDET_DCP_Field is
     (
      --  Charging Downstream Port (CDP) has been detected
      USB1_CHRG_DET_STAT_SECDET_DCP_Field_0,
      --  Downstream Charging Port (DCP) has been detected
      USB1_CHRG_DET_STAT_SECDET_DCP_Field_1)
     with Size => 1;
   for USB1_CHRG_DET_STAT_SECDET_DCP_Field use
     (USB1_CHRG_DET_STAT_SECDET_DCP_Field_0 => 0,
      USB1_CHRG_DET_STAT_SECDET_DCP_Field_1 => 1);

   --  USB PHY Charger Detect Status Register
   type USBPHY_USB1_CHRG_DET_STAT_Register is record
      --  Read-only. Battery Charging Data Contact Detection phase output
      PLUG_CONTACT  : USB1_CHRG_DET_STAT_PLUG_CONTACT_Field;
      --  Read-only. Battery Charging Primary Detection phase output
      CHRG_DETECTED : USB1_CHRG_DET_STAT_CHRG_DETECTED_Field;
      --  Read-only. Single ended receiver output for the USB_DM pin, from
      --  charger detection circuits.
      DM_STATE      : USB1_CHRG_DET_STAT_DM_STATE_Field;
      --  Read-only. Single ended receiver output for the USB_DP pin, from
      --  charger detection circuits.
      DP_STATE      : USB1_CHRG_DET_STAT_DP_STATE_Field;
      --  Read-only. Battery Charging Secondary Detection phase output
      SECDET_DCP    : USB1_CHRG_DET_STAT_SECDET_DCP_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_CHRG_DET_STAT_Register use record
      PLUG_CONTACT  at 0 range 0 .. 0;
      CHRG_DETECTED at 0 range 1 .. 1;
      DM_STATE      at 0 range 2 .. 2;
      DP_STATE      at 0 range 3 .. 3;
      SECDET_DCP    at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  This bit field controls clock gating (disabling) for the PFD pfd_clk
   --  output for power savings when the PFD is not used
   type ANACTRL_PFD_CLKGATE_Field is
     (
      --  PFD clock output is enabled
      ANACTRL_PFD_CLKGATE_Field_0,
      --  PFD clock output is gated (Default)
      ANACTRL_PFD_CLKGATE_Field_1)
     with Size => 1;
   for ANACTRL_PFD_CLKGATE_Field use
     (ANACTRL_PFD_CLKGATE_Field_0 => 0,
      ANACTRL_PFD_CLKGATE_Field_1 => 1);

   --  This bit field for the PFD selects the frequency relationship between
   --  the local pfd_clk output and the exported USB1PFDCLK
   type ANACTRL_PFD_CLK_SEL_Field is
     (
      --  USB1PFDCLK is the same frequency as the xtal clock (Default)
      ANACTRL_PFD_CLK_SEL_Field_00,
      --  USB1PFDCLK frequency is pfd_clk divided by 4
      ANACTRL_PFD_CLK_SEL_Field_01,
      --  USB1PFDCLK frequency is pfd_clk divided by 2
      ANACTRL_PFD_CLK_SEL_Field_10,
      --  USB1PFDCLK frequency is the same as pfd_clk frequency
      ANACTRL_PFD_CLK_SEL_Field_11)
     with Size => 2;
   for ANACTRL_PFD_CLK_SEL_Field use
     (ANACTRL_PFD_CLK_SEL_Field_00 => 0,
      ANACTRL_PFD_CLK_SEL_Field_01 => 1,
      ANACTRL_PFD_CLK_SEL_Field_10 => 2,
      ANACTRL_PFD_CLK_SEL_Field_11 => 3);

   subtype USBPHY_ANACTRL_PFD_FRAC_Field is HAL.UInt6;

   --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors on
   --  both USB_DP and USB_DM pins
   type ANACTRL_DEV_PULLDOWN_Field is
     (
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare
      --  disabled in device mode.
      ANACTRL_DEV_PULLDOWN_Field_0,
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare enabled
      --  in device mode.
      ANACTRL_DEV_PULLDOWN_Field_1)
     with Size => 1;
   for ANACTRL_DEV_PULLDOWN_Field use
     (ANACTRL_DEV_PULLDOWN_Field_0 => 0,
      ANACTRL_DEV_PULLDOWN_Field_1 => 1);

   --  Controls pre-emphasis time duration for the High Speed TX drivers after
   --  each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is set high to
   --  1'b1
   type ANACTRL_EMPH_PULSE_CTRL_Field is
     (
      --  Minimum duration of pre-emphasis current after each data transition
      ANACTRL_EMPH_PULSE_CTRL_Field_00,
      --  Maximum duration of pre-emphasis current after each data transition
      ANACTRL_EMPH_PULSE_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_EMPH_PULSE_CTRL_Field use
     (ANACTRL_EMPH_PULSE_CTRL_Field_00 => 0,
      ANACTRL_EMPH_PULSE_CTRL_Field_11 => 3);

   --  Enables pre-emphasis for the High-Speed TX drivers
   type ANACTRL_EMPH_EN_Field is
     (
      --  No pre-emphasis is used on HS TX output drivers
      ANACTRL_EMPH_EN_Field_0,
      --  Enables pre-emphasis for HS TX output drivers
      ANACTRL_EMPH_EN_Field_1)
     with Size => 1;
   for ANACTRL_EMPH_EN_Field use
     (ANACTRL_EMPH_EN_Field_0 => 0,
      ANACTRL_EMPH_EN_Field_1 => 1);

   --  Controls the amount of pre-emphasis current added for the High-Speed TX
   --  drivers after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit
   --  is set high to 1'b1
   type ANACTRL_EMPH_CUR_CTRL_Field is
     (
      --  No pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_EMPH_CUR_CTRL_Field_00,
      --  One unit of pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_EMPH_CUR_CTRL_Field_01,
      --  Two units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_EMPH_CUR_CTRL_Field_10,
      --  Three units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_EMPH_CUR_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_EMPH_CUR_CTRL_Field use
     (ANACTRL_EMPH_CUR_CTRL_Field_00 => 0,
      ANACTRL_EMPH_CUR_CTRL_Field_01 => 1,
      ANACTRL_EMPH_CUR_CTRL_Field_10 => 2,
      ANACTRL_EMPH_CUR_CTRL_Field_11 => 3);

   --  USB PHY Analog Control Register
   type USBPHY_ANACTRL_Register is record
      --  Test clock selection to analog test
      TESTCLK_SEL     : Boolean := False;
      --  This bit field controls clock gating (disabling) for the PFD pfd_clk
      --  output for power savings when the PFD is not used
      PFD_CLKGATE     : ANACTRL_PFD_CLKGATE_Field :=
                         NRF_SVD.USBPHY.ANACTRL_PFD_CLKGATE_Field_1;
      --  This bit field for the PFD selects the frequency relationship between
      --  the local pfd_clk output and the exported USB1PFDCLK
      PFD_CLK_SEL     : ANACTRL_PFD_CLK_SEL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_PFD_CLK_SEL_Field_00;
      --  PFD fractional divider setting used to select the pfd_clk output
      --  frequency
      PFD_FRAC        : USBPHY_ANACTRL_PFD_FRAC_Field := 16#0#;
      --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors
      --  on both USB_DP and USB_DM pins
      DEV_PULLDOWN    : ANACTRL_DEV_PULLDOWN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_DEV_PULLDOWN_Field_1;
      --  Controls pre-emphasis time duration for the High Speed TX drivers
      --  after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is
      --  set high to 1'b1
      EMPH_PULSE_CTRL : ANACTRL_EMPH_PULSE_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_EMPH_PULSE_CTRL_Field_00;
      --  Enables pre-emphasis for the High-Speed TX drivers
      EMPH_EN         : ANACTRL_EMPH_EN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_EMPH_EN_Field_0;
      --  Controls the amount of pre-emphasis current added for the High-Speed
      --  TX drivers after each data transition when the
      --  USBPHY_ANACTRL[EMPH_EN] bit is set high to 1'b1
      EMPH_CUR_CTRL   : ANACTRL_EMPH_CUR_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_EMPH_CUR_CTRL_Field_00;
      --  unspecified
      Reserved_16_30  : HAL.UInt15 := 16#0#;
      --  Read-only. PFD stable signal from the Phase Fractional Divider.
      PFD_STABLE      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_ANACTRL_Register use record
      TESTCLK_SEL     at 0 range 0 .. 0;
      PFD_CLKGATE     at 0 range 1 .. 1;
      PFD_CLK_SEL     at 0 range 2 .. 3;
      PFD_FRAC        at 0 range 4 .. 9;
      DEV_PULLDOWN    at 0 range 10 .. 10;
      EMPH_PULSE_CTRL at 0 range 11 .. 12;
      EMPH_EN         at 0 range 13 .. 13;
      EMPH_CUR_CTRL   at 0 range 14 .. 15;
      Reserved_16_30  at 0 range 16 .. 30;
      PFD_STABLE      at 0 range 31 .. 31;
   end record;

   --  This bit field controls clock gating (disabling) for the PFD pfd_clk
   --  output for power savings when the PFD is not used
   type ANACTRL_SET_PFD_CLKGATE_Field is
     (
      --  PFD clock output is enabled
      ANACTRL_SET_PFD_CLKGATE_Field_0,
      --  PFD clock output is gated (Default)
      ANACTRL_SET_PFD_CLKGATE_Field_1)
     with Size => 1;
   for ANACTRL_SET_PFD_CLKGATE_Field use
     (ANACTRL_SET_PFD_CLKGATE_Field_0 => 0,
      ANACTRL_SET_PFD_CLKGATE_Field_1 => 1);

   --  This bit field for the PFD selects the frequency relationship between
   --  the local pfd_clk output and the exported USB1PFDCLK
   type ANACTRL_SET_PFD_CLK_SEL_Field is
     (
      --  USB1PFDCLK is the same frequency as the xtal clock (Default)
      ANACTRL_SET_PFD_CLK_SEL_Field_00,
      --  USB1PFDCLK frequency is pfd_clk divided by 4
      ANACTRL_SET_PFD_CLK_SEL_Field_01,
      --  USB1PFDCLK frequency is pfd_clk divided by 2
      ANACTRL_SET_PFD_CLK_SEL_Field_10,
      --  USB1PFDCLK frequency is the same as pfd_clk frequency
      ANACTRL_SET_PFD_CLK_SEL_Field_11)
     with Size => 2;
   for ANACTRL_SET_PFD_CLK_SEL_Field use
     (ANACTRL_SET_PFD_CLK_SEL_Field_00 => 0,
      ANACTRL_SET_PFD_CLK_SEL_Field_01 => 1,
      ANACTRL_SET_PFD_CLK_SEL_Field_10 => 2,
      ANACTRL_SET_PFD_CLK_SEL_Field_11 => 3);

   subtype USBPHY_ANACTRL_SET_PFD_FRAC_Field is HAL.UInt6;

   --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors on
   --  both USB_DP and USB_DM pins
   type ANACTRL_SET_DEV_PULLDOWN_Field is
     (
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare
      --  disabled in device mode.
      ANACTRL_SET_DEV_PULLDOWN_Field_0,
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare enabled
      --  in device mode.
      ANACTRL_SET_DEV_PULLDOWN_Field_1)
     with Size => 1;
   for ANACTRL_SET_DEV_PULLDOWN_Field use
     (ANACTRL_SET_DEV_PULLDOWN_Field_0 => 0,
      ANACTRL_SET_DEV_PULLDOWN_Field_1 => 1);

   --  Controls pre-emphasis time duration for the High Speed TX drivers after
   --  each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is set high to
   --  1'b1
   type ANACTRL_SET_EMPH_PULSE_CTRL_Field is
     (
      --  Minimum duration of pre-emphasis current after each data transition
      ANACTRL_SET_EMPH_PULSE_CTRL_Field_00,
      --  Maximum duration of pre-emphasis current after each data transition
      ANACTRL_SET_EMPH_PULSE_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_SET_EMPH_PULSE_CTRL_Field use
     (ANACTRL_SET_EMPH_PULSE_CTRL_Field_00 => 0,
      ANACTRL_SET_EMPH_PULSE_CTRL_Field_11 => 3);

   --  Enables pre-emphasis for the High-Speed TX drivers
   type ANACTRL_SET_EMPH_EN_Field is
     (
      --  No pre-emphasis is used on HS TX output drivers
      ANACTRL_SET_EMPH_EN_Field_0,
      --  Enables pre-emphasis for HS TX output drivers
      ANACTRL_SET_EMPH_EN_Field_1)
     with Size => 1;
   for ANACTRL_SET_EMPH_EN_Field use
     (ANACTRL_SET_EMPH_EN_Field_0 => 0,
      ANACTRL_SET_EMPH_EN_Field_1 => 1);

   --  Controls the amount of pre-emphasis current added for the High-Speed TX
   --  drivers after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit
   --  is set high to 1'b1
   type ANACTRL_SET_EMPH_CUR_CTRL_Field is
     (
      --  No pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_SET_EMPH_CUR_CTRL_Field_00,
      --  One unit of pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_SET_EMPH_CUR_CTRL_Field_01,
      --  Two units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_SET_EMPH_CUR_CTRL_Field_10,
      --  Three units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_SET_EMPH_CUR_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_SET_EMPH_CUR_CTRL_Field use
     (ANACTRL_SET_EMPH_CUR_CTRL_Field_00 => 0,
      ANACTRL_SET_EMPH_CUR_CTRL_Field_01 => 1,
      ANACTRL_SET_EMPH_CUR_CTRL_Field_10 => 2,
      ANACTRL_SET_EMPH_CUR_CTRL_Field_11 => 3);

   --  USB PHY Analog Control Register
   type USBPHY_ANACTRL_SET_Register is record
      --  Test clock selection to analog test
      TESTCLK_SEL     : Boolean := False;
      --  This bit field controls clock gating (disabling) for the PFD pfd_clk
      --  output for power savings when the PFD is not used
      PFD_CLKGATE     : ANACTRL_SET_PFD_CLKGATE_Field :=
                         NRF_SVD.USBPHY.ANACTRL_SET_PFD_CLKGATE_Field_1;
      --  This bit field for the PFD selects the frequency relationship between
      --  the local pfd_clk output and the exported USB1PFDCLK
      PFD_CLK_SEL     : ANACTRL_SET_PFD_CLK_SEL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_SET_PFD_CLK_SEL_Field_00;
      --  PFD fractional divider setting used to select the pfd_clk output
      --  frequency
      PFD_FRAC        : USBPHY_ANACTRL_SET_PFD_FRAC_Field := 16#0#;
      --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors
      --  on both USB_DP and USB_DM pins
      DEV_PULLDOWN    : ANACTRL_SET_DEV_PULLDOWN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_SET_DEV_PULLDOWN_Field_1;
      --  Controls pre-emphasis time duration for the High Speed TX drivers
      --  after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is
      --  set high to 1'b1
      EMPH_PULSE_CTRL : ANACTRL_SET_EMPH_PULSE_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_SET_EMPH_PULSE_CTRL_Field_00;
      --  Enables pre-emphasis for the High-Speed TX drivers
      EMPH_EN         : ANACTRL_SET_EMPH_EN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_SET_EMPH_EN_Field_0;
      --  Controls the amount of pre-emphasis current added for the High-Speed
      --  TX drivers after each data transition when the
      --  USBPHY_ANACTRL[EMPH_EN] bit is set high to 1'b1
      EMPH_CUR_CTRL   : ANACTRL_SET_EMPH_CUR_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_SET_EMPH_CUR_CTRL_Field_00;
      --  unspecified
      Reserved_16_30  : HAL.UInt15 := 16#0#;
      --  Read-only. PFD stable signal from the Phase Fractional Divider.
      PFD_STABLE      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_ANACTRL_SET_Register use record
      TESTCLK_SEL     at 0 range 0 .. 0;
      PFD_CLKGATE     at 0 range 1 .. 1;
      PFD_CLK_SEL     at 0 range 2 .. 3;
      PFD_FRAC        at 0 range 4 .. 9;
      DEV_PULLDOWN    at 0 range 10 .. 10;
      EMPH_PULSE_CTRL at 0 range 11 .. 12;
      EMPH_EN         at 0 range 13 .. 13;
      EMPH_CUR_CTRL   at 0 range 14 .. 15;
      Reserved_16_30  at 0 range 16 .. 30;
      PFD_STABLE      at 0 range 31 .. 31;
   end record;

   --  This bit field controls clock gating (disabling) for the PFD pfd_clk
   --  output for power savings when the PFD is not used
   type ANACTRL_CLR_PFD_CLKGATE_Field is
     (
      --  PFD clock output is enabled
      ANACTRL_CLR_PFD_CLKGATE_Field_0,
      --  PFD clock output is gated (Default)
      ANACTRL_CLR_PFD_CLKGATE_Field_1)
     with Size => 1;
   for ANACTRL_CLR_PFD_CLKGATE_Field use
     (ANACTRL_CLR_PFD_CLKGATE_Field_0 => 0,
      ANACTRL_CLR_PFD_CLKGATE_Field_1 => 1);

   --  This bit field for the PFD selects the frequency relationship between
   --  the local pfd_clk output and the exported USB1PFDCLK
   type ANACTRL_CLR_PFD_CLK_SEL_Field is
     (
      --  USB1PFDCLK is the same frequency as the xtal clock (Default)
      ANACTRL_CLR_PFD_CLK_SEL_Field_00,
      --  USB1PFDCLK frequency is pfd_clk divided by 4
      ANACTRL_CLR_PFD_CLK_SEL_Field_01,
      --  USB1PFDCLK frequency is pfd_clk divided by 2
      ANACTRL_CLR_PFD_CLK_SEL_Field_10,
      --  USB1PFDCLK frequency is the same as pfd_clk frequency
      ANACTRL_CLR_PFD_CLK_SEL_Field_11)
     with Size => 2;
   for ANACTRL_CLR_PFD_CLK_SEL_Field use
     (ANACTRL_CLR_PFD_CLK_SEL_Field_00 => 0,
      ANACTRL_CLR_PFD_CLK_SEL_Field_01 => 1,
      ANACTRL_CLR_PFD_CLK_SEL_Field_10 => 2,
      ANACTRL_CLR_PFD_CLK_SEL_Field_11 => 3);

   subtype USBPHY_ANACTRL_CLR_PFD_FRAC_Field is HAL.UInt6;

   --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors on
   --  both USB_DP and USB_DM pins
   type ANACTRL_CLR_DEV_PULLDOWN_Field is
     (
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare
      --  disabled in device mode.
      ANACTRL_CLR_DEV_PULLDOWN_Field_0,
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare enabled
      --  in device mode.
      ANACTRL_CLR_DEV_PULLDOWN_Field_1)
     with Size => 1;
   for ANACTRL_CLR_DEV_PULLDOWN_Field use
     (ANACTRL_CLR_DEV_PULLDOWN_Field_0 => 0,
      ANACTRL_CLR_DEV_PULLDOWN_Field_1 => 1);

   --  Controls pre-emphasis time duration for the High Speed TX drivers after
   --  each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is set high to
   --  1'b1
   type ANACTRL_CLR_EMPH_PULSE_CTRL_Field is
     (
      --  Minimum duration of pre-emphasis current after each data transition
      ANACTRL_CLR_EMPH_PULSE_CTRL_Field_00,
      --  Maximum duration of pre-emphasis current after each data transition
      ANACTRL_CLR_EMPH_PULSE_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_CLR_EMPH_PULSE_CTRL_Field use
     (ANACTRL_CLR_EMPH_PULSE_CTRL_Field_00 => 0,
      ANACTRL_CLR_EMPH_PULSE_CTRL_Field_11 => 3);

   --  Enables pre-emphasis for the High-Speed TX drivers
   type ANACTRL_CLR_EMPH_EN_Field is
     (
      --  No pre-emphasis is used on HS TX output drivers
      ANACTRL_CLR_EMPH_EN_Field_0,
      --  Enables pre-emphasis for HS TX output drivers
      ANACTRL_CLR_EMPH_EN_Field_1)
     with Size => 1;
   for ANACTRL_CLR_EMPH_EN_Field use
     (ANACTRL_CLR_EMPH_EN_Field_0 => 0,
      ANACTRL_CLR_EMPH_EN_Field_1 => 1);

   --  Controls the amount of pre-emphasis current added for the High-Speed TX
   --  drivers after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit
   --  is set high to 1'b1
   type ANACTRL_CLR_EMPH_CUR_CTRL_Field is
     (
      --  No pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_00,
      --  One unit of pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_01,
      --  Two units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_10,
      --  Three units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_CLR_EMPH_CUR_CTRL_Field use
     (ANACTRL_CLR_EMPH_CUR_CTRL_Field_00 => 0,
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_01 => 1,
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_10 => 2,
      ANACTRL_CLR_EMPH_CUR_CTRL_Field_11 => 3);

   --  USB PHY Analog Control Register
   type USBPHY_ANACTRL_CLR_Register is record
      --  Test clock selection to analog test
      TESTCLK_SEL     : Boolean := False;
      --  This bit field controls clock gating (disabling) for the PFD pfd_clk
      --  output for power savings when the PFD is not used
      PFD_CLKGATE     : ANACTRL_CLR_PFD_CLKGATE_Field :=
                         NRF_SVD.USBPHY.ANACTRL_CLR_PFD_CLKGATE_Field_1;
      --  This bit field for the PFD selects the frequency relationship between
      --  the local pfd_clk output and the exported USB1PFDCLK
      PFD_CLK_SEL     : ANACTRL_CLR_PFD_CLK_SEL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_CLR_PFD_CLK_SEL_Field_00;
      --  PFD fractional divider setting used to select the pfd_clk output
      --  frequency
      PFD_FRAC        : USBPHY_ANACTRL_CLR_PFD_FRAC_Field := 16#0#;
      --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors
      --  on both USB_DP and USB_DM pins
      DEV_PULLDOWN    : ANACTRL_CLR_DEV_PULLDOWN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_CLR_DEV_PULLDOWN_Field_1;
      --  Controls pre-emphasis time duration for the High Speed TX drivers
      --  after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is
      --  set high to 1'b1
      EMPH_PULSE_CTRL : ANACTRL_CLR_EMPH_PULSE_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_CLR_EMPH_PULSE_CTRL_Field_00;
      --  Enables pre-emphasis for the High-Speed TX drivers
      EMPH_EN         : ANACTRL_CLR_EMPH_EN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_CLR_EMPH_EN_Field_0;
      --  Controls the amount of pre-emphasis current added for the High-Speed
      --  TX drivers after each data transition when the
      --  USBPHY_ANACTRL[EMPH_EN] bit is set high to 1'b1
      EMPH_CUR_CTRL   : ANACTRL_CLR_EMPH_CUR_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_CLR_EMPH_CUR_CTRL_Field_00;
      --  unspecified
      Reserved_16_30  : HAL.UInt15 := 16#0#;
      --  Read-only. PFD stable signal from the Phase Fractional Divider.
      PFD_STABLE      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_ANACTRL_CLR_Register use record
      TESTCLK_SEL     at 0 range 0 .. 0;
      PFD_CLKGATE     at 0 range 1 .. 1;
      PFD_CLK_SEL     at 0 range 2 .. 3;
      PFD_FRAC        at 0 range 4 .. 9;
      DEV_PULLDOWN    at 0 range 10 .. 10;
      EMPH_PULSE_CTRL at 0 range 11 .. 12;
      EMPH_EN         at 0 range 13 .. 13;
      EMPH_CUR_CTRL   at 0 range 14 .. 15;
      Reserved_16_30  at 0 range 16 .. 30;
      PFD_STABLE      at 0 range 31 .. 31;
   end record;

   --  This bit field controls clock gating (disabling) for the PFD pfd_clk
   --  output for power savings when the PFD is not used
   type ANACTRL_TOG_PFD_CLKGATE_Field is
     (
      --  PFD clock output is enabled
      ANACTRL_TOG_PFD_CLKGATE_Field_0,
      --  PFD clock output is gated (Default)
      ANACTRL_TOG_PFD_CLKGATE_Field_1)
     with Size => 1;
   for ANACTRL_TOG_PFD_CLKGATE_Field use
     (ANACTRL_TOG_PFD_CLKGATE_Field_0 => 0,
      ANACTRL_TOG_PFD_CLKGATE_Field_1 => 1);

   --  This bit field for the PFD selects the frequency relationship between
   --  the local pfd_clk output and the exported USB1PFDCLK
   type ANACTRL_TOG_PFD_CLK_SEL_Field is
     (
      --  USB1PFDCLK is the same frequency as the xtal clock (Default)
      ANACTRL_TOG_PFD_CLK_SEL_Field_00,
      --  USB1PFDCLK frequency is pfd_clk divided by 4
      ANACTRL_TOG_PFD_CLK_SEL_Field_01,
      --  USB1PFDCLK frequency is pfd_clk divided by 2
      ANACTRL_TOG_PFD_CLK_SEL_Field_10,
      --  USB1PFDCLK frequency is the same as pfd_clk frequency
      ANACTRL_TOG_PFD_CLK_SEL_Field_11)
     with Size => 2;
   for ANACTRL_TOG_PFD_CLK_SEL_Field use
     (ANACTRL_TOG_PFD_CLK_SEL_Field_00 => 0,
      ANACTRL_TOG_PFD_CLK_SEL_Field_01 => 1,
      ANACTRL_TOG_PFD_CLK_SEL_Field_10 => 2,
      ANACTRL_TOG_PFD_CLK_SEL_Field_11 => 3);

   subtype USBPHY_ANACTRL_TOG_PFD_FRAC_Field is HAL.UInt6;

   --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors on
   --  both USB_DP and USB_DM pins
   type ANACTRL_TOG_DEV_PULLDOWN_Field is
     (
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare
      --  disabled in device mode.
      ANACTRL_TOG_DEV_PULLDOWN_Field_0,
      --  The 15kohm nominal pulldowns on the USB_DP and USB_DM pinsare enabled
      --  in device mode.
      ANACTRL_TOG_DEV_PULLDOWN_Field_1)
     with Size => 1;
   for ANACTRL_TOG_DEV_PULLDOWN_Field use
     (ANACTRL_TOG_DEV_PULLDOWN_Field_0 => 0,
      ANACTRL_TOG_DEV_PULLDOWN_Field_1 => 1);

   --  Controls pre-emphasis time duration for the High Speed TX drivers after
   --  each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is set high to
   --  1'b1
   type ANACTRL_TOG_EMPH_PULSE_CTRL_Field is
     (
      --  Minimum duration of pre-emphasis current after each data transition
      ANACTRL_TOG_EMPH_PULSE_CTRL_Field_00,
      --  Maximum duration of pre-emphasis current after each data transition
      ANACTRL_TOG_EMPH_PULSE_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_TOG_EMPH_PULSE_CTRL_Field use
     (ANACTRL_TOG_EMPH_PULSE_CTRL_Field_00 => 0,
      ANACTRL_TOG_EMPH_PULSE_CTRL_Field_11 => 3);

   --  Enables pre-emphasis for the High-Speed TX drivers
   type ANACTRL_TOG_EMPH_EN_Field is
     (
      --  No pre-emphasis is used on HS TX output drivers
      ANACTRL_TOG_EMPH_EN_Field_0,
      --  Enables pre-emphasis for HS TX output drivers
      ANACTRL_TOG_EMPH_EN_Field_1)
     with Size => 1;
   for ANACTRL_TOG_EMPH_EN_Field use
     (ANACTRL_TOG_EMPH_EN_Field_0 => 0,
      ANACTRL_TOG_EMPH_EN_Field_1 => 1);

   --  Controls the amount of pre-emphasis current added for the High-Speed TX
   --  drivers after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit
   --  is set high to 1'b1
   type ANACTRL_TOG_EMPH_CUR_CTRL_Field is
     (
      --  No pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_00,
      --  One unit of pre-emphasis current is enabled for the HS TX drivers
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_01,
      --  Two units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_10,
      --  Three units of pre-emphasis current are enabled for the HS TX drivers
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_11)
     with Size => 2;
   for ANACTRL_TOG_EMPH_CUR_CTRL_Field use
     (ANACTRL_TOG_EMPH_CUR_CTRL_Field_00 => 0,
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_01 => 1,
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_10 => 2,
      ANACTRL_TOG_EMPH_CUR_CTRL_Field_11 => 3);

   --  USB PHY Analog Control Register
   type USBPHY_ANACTRL_TOG_Register is record
      --  Test clock selection to analog test
      TESTCLK_SEL     : Boolean := False;
      --  This bit field controls clock gating (disabling) for the PFD pfd_clk
      --  output for power savings when the PFD is not used
      PFD_CLKGATE     : ANACTRL_TOG_PFD_CLKGATE_Field :=
                         NRF_SVD.USBPHY.ANACTRL_TOG_PFD_CLKGATE_Field_1;
      --  This bit field for the PFD selects the frequency relationship between
      --  the local pfd_clk output and the exported USB1PFDCLK
      PFD_CLK_SEL     : ANACTRL_TOG_PFD_CLK_SEL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_TOG_PFD_CLK_SEL_Field_00;
      --  PFD fractional divider setting used to select the pfd_clk output
      --  frequency
      PFD_FRAC        : USBPHY_ANACTRL_TOG_PFD_FRAC_Field := 16#0#;
      --  Setting this field to 1'b1 will enable the 15kohm pulldown resistors
      --  on both USB_DP and USB_DM pins
      DEV_PULLDOWN    : ANACTRL_TOG_DEV_PULLDOWN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_TOG_DEV_PULLDOWN_Field_1;
      --  Controls pre-emphasis time duration for the High Speed TX drivers
      --  after each data transition when the USBPHY_ANACTRL[EMPH_EN] bit is
      --  set high to 1'b1
      EMPH_PULSE_CTRL : ANACTRL_TOG_EMPH_PULSE_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_TOG_EMPH_PULSE_CTRL_Field_00;
      --  Enables pre-emphasis for the High-Speed TX drivers
      EMPH_EN         : ANACTRL_TOG_EMPH_EN_Field :=
                         NRF_SVD.USBPHY.ANACTRL_TOG_EMPH_EN_Field_0;
      --  Controls the amount of pre-emphasis current added for the High-Speed
      --  TX drivers after each data transition when the
      --  USBPHY_ANACTRL[EMPH_EN] bit is set high to 1'b1
      EMPH_CUR_CTRL   : ANACTRL_TOG_EMPH_CUR_CTRL_Field :=
                         NRF_SVD.USBPHY.ANACTRL_TOG_EMPH_CUR_CTRL_Field_00;
      --  unspecified
      Reserved_16_30  : HAL.UInt15 := 16#0#;
      --  Read-only. PFD stable signal from the Phase Fractional Divider.
      PFD_STABLE      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_ANACTRL_TOG_Register use record
      TESTCLK_SEL     at 0 range 0 .. 0;
      PFD_CLKGATE     at 0 range 1 .. 1;
      PFD_CLK_SEL     at 0 range 2 .. 3;
      PFD_FRAC        at 0 range 4 .. 9;
      DEV_PULLDOWN    at 0 range 10 .. 10;
      EMPH_PULSE_CTRL at 0 range 11 .. 12;
      EMPH_EN         at 0 range 13 .. 13;
      EMPH_CUR_CTRL   at 0 range 14 .. 15;
      Reserved_16_30  at 0 range 16 .. 30;
      PFD_STABLE      at 0 range 31 .. 31;
   end record;

   --  USBPHY_USB1_LOOPBACK_UTMI_DIG_TST array
   type USBPHY_USB1_LOOPBACK_UTMI_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_UTMI_DIG_TST
   type USBPHY_USB1_LOOPBACK_UTMI_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMI_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMI_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_UTMI_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_UTMI_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USBPHY_USB1_LOOPBACK_UTMO_DIG_TST array
   type USBPHY_USB1_LOOPBACK_UTMO_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_UTMO_DIG_TST
   type USBPHY_USB1_LOOPBACK_UTMO_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMO_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMO_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_UTMO_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_UTMO_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY_USB1_LOOPBACK_TSTPKT_Field is HAL.UInt8;

   --  USB PHY Loopback Control/Status Register
   type USBPHY_USB1_LOOPBACK_Register is record
      --  This bit enables the USB loopback test.
      UTMI_TESTSTART    : Boolean := False;
      --  Mode control for USB loopback test
      UTMI_DIG_TST      : USBPHY_USB1_LOOPBACK_UTMI_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  Select HS or FS mode for USB loopback testing
      TSTI_TX_HS_MODE   : Boolean := False;
      --  Set to value 1'b1 to choose LS for USB loopback testing, set to value
      --  1'b0 to choose HS or FS mode which is defined by TSTI1_TX_HS
      TSTI_TX_LS_MODE   : Boolean := False;
      --  Enable TX for USB loopback test.
      TSTI_TX_EN        : Boolean := False;
      --  Sets TX Hi-Z for USB loopback test.
      TSTI_TX_HIZ       : Boolean := False;
      --  Read-only. This read-only bit is a status bit for USB loopback test
      --  results
      UTMO_DIG_TST      : USBPHY_USB1_LOOPBACK_UTMO_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_14     : HAL.UInt6 := 16#0#;
      --  Setting this bit field to value 1'b1 will enable the loopback test to
      --  dynamically change the packet speed
      TSTI_HSFS_MODE_EN : Boolean := False;
      --  Selects the packet data byte used for USB loopback testing in Pulse
      --  mode
      TSTPKT            : USBPHY_USB1_LOOPBACK_TSTPKT_Field := 16#55#;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_Register use record
      UTMI_TESTSTART    at 0 range 0 .. 0;
      UTMI_DIG_TST      at 0 range 1 .. 2;
      TSTI_TX_HS_MODE   at 0 range 3 .. 3;
      TSTI_TX_LS_MODE   at 0 range 4 .. 4;
      TSTI_TX_EN        at 0 range 5 .. 5;
      TSTI_TX_HIZ       at 0 range 6 .. 6;
      UTMO_DIG_TST      at 0 range 7 .. 8;
      Reserved_9_14     at 0 range 9 .. 14;
      TSTI_HSFS_MODE_EN at 0 range 15 .. 15;
      TSTPKT            at 0 range 16 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST array
   type USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST
   type USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMI_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMI_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST array
   type USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST
   type USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMO_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMO_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY_USB1_LOOPBACK_SET_TSTPKT_Field is HAL.UInt8;

   --  USB PHY Loopback Control/Status Register
   type USBPHY_USB1_LOOPBACK_SET_Register is record
      --  This bit enables the USB loopback test.
      UTMI_TESTSTART    : Boolean := False;
      --  Mode control for USB loopback test
      UTMI_DIG_TST      : USBPHY_USB1_LOOPBACK_SET_UTMI_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  Select HS or FS mode for USB loopback testing
      TSTI_TX_HS_MODE   : Boolean := False;
      --  Set to value 1'b1 to choose LS for USB loopback testing, set to value
      --  1'b0 to choose HS or FS mode which is defined by TSTI1_TX_HS
      TSTI_TX_LS_MODE   : Boolean := False;
      --  Enable TX for USB loopback test.
      TSTI_TX_EN        : Boolean := False;
      --  Sets TX Hi-Z for USB loopback test.
      TSTI_TX_HIZ       : Boolean := False;
      --  Read-only. This read-only bit is a status bit for USB loopback test
      --  results
      UTMO_DIG_TST      : USBPHY_USB1_LOOPBACK_SET_UTMO_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_14     : HAL.UInt6 := 16#0#;
      --  Setting this bit field to value 1'b1 will enable the loopback test to
      --  dynamically change the packet speed
      TSTI_HSFS_MODE_EN : Boolean := False;
      --  Selects the packet data byte used for USB loopback testing in Pulse
      --  mode
      TSTPKT            : USBPHY_USB1_LOOPBACK_SET_TSTPKT_Field := 16#55#;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_SET_Register use record
      UTMI_TESTSTART    at 0 range 0 .. 0;
      UTMI_DIG_TST      at 0 range 1 .. 2;
      TSTI_TX_HS_MODE   at 0 range 3 .. 3;
      TSTI_TX_LS_MODE   at 0 range 4 .. 4;
      TSTI_TX_EN        at 0 range 5 .. 5;
      TSTI_TX_HIZ       at 0 range 6 .. 6;
      UTMO_DIG_TST      at 0 range 7 .. 8;
      Reserved_9_14     at 0 range 9 .. 14;
      TSTI_HSFS_MODE_EN at 0 range 15 .. 15;
      TSTPKT            at 0 range 16 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST array
   type USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST
   type USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMI_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMI_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST array
   type USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST
   type USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMO_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMO_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY_USB1_LOOPBACK_CLR_TSTPKT_Field is HAL.UInt8;

   --  USB PHY Loopback Control/Status Register
   type USBPHY_USB1_LOOPBACK_CLR_Register is record
      --  This bit enables the USB loopback test.
      UTMI_TESTSTART    : Boolean := False;
      --  Mode control for USB loopback test
      UTMI_DIG_TST      : USBPHY_USB1_LOOPBACK_CLR_UTMI_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  Select HS or FS mode for USB loopback testing
      TSTI_TX_HS_MODE   : Boolean := False;
      --  Set to value 1'b1 to choose LS for USB loopback testing, set to value
      --  1'b0 to choose HS or FS mode which is defined by TSTI1_TX_HS
      TSTI_TX_LS_MODE   : Boolean := False;
      --  Enable TX for USB loopback test.
      TSTI_TX_EN        : Boolean := False;
      --  Sets TX Hi-Z for USB loopback test.
      TSTI_TX_HIZ       : Boolean := False;
      --  Read-only. This read-only bit is a status bit for USB loopback test
      --  results
      UTMO_DIG_TST      : USBPHY_USB1_LOOPBACK_CLR_UTMO_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_14     : HAL.UInt6 := 16#0#;
      --  Setting this bit field to value 1'b1 will enable the loopback test to
      --  dynamically change the packet speed
      TSTI_HSFS_MODE_EN : Boolean := False;
      --  Selects the packet data byte used for USB loopback testing in Pulse
      --  mode
      TSTPKT            : USBPHY_USB1_LOOPBACK_CLR_TSTPKT_Field := 16#55#;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_CLR_Register use record
      UTMI_TESTSTART    at 0 range 0 .. 0;
      UTMI_DIG_TST      at 0 range 1 .. 2;
      TSTI_TX_HS_MODE   at 0 range 3 .. 3;
      TSTI_TX_LS_MODE   at 0 range 4 .. 4;
      TSTI_TX_EN        at 0 range 5 .. 5;
      TSTI_TX_HIZ       at 0 range 6 .. 6;
      UTMO_DIG_TST      at 0 range 7 .. 8;
      Reserved_9_14     at 0 range 9 .. 14;
      TSTI_HSFS_MODE_EN at 0 range 15 .. 15;
      TSTPKT            at 0 range 16 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   --  USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST array
   type USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST
   type USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMI_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMI_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST array
   type USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST
   type USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UTMO_DIG_TST as a value
            Val : HAL.UInt2;
         when True =>
            --  UTMO_DIG_TST as an array
            Arr : USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY_USB1_LOOPBACK_TOG_TSTPKT_Field is HAL.UInt8;

   --  USB PHY Loopback Control/Status Register
   type USBPHY_USB1_LOOPBACK_TOG_Register is record
      --  This bit enables the USB loopback test.
      UTMI_TESTSTART    : Boolean := False;
      --  Mode control for USB loopback test
      UTMI_DIG_TST      : USBPHY_USB1_LOOPBACK_TOG_UTMI_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  Select HS or FS mode for USB loopback testing
      TSTI_TX_HS_MODE   : Boolean := False;
      --  Set to value 1'b1 to choose LS for USB loopback testing, set to value
      --  1'b0 to choose HS or FS mode which is defined by TSTI1_TX_HS
      TSTI_TX_LS_MODE   : Boolean := False;
      --  Enable TX for USB loopback test.
      TSTI_TX_EN        : Boolean := False;
      --  Sets TX Hi-Z for USB loopback test.
      TSTI_TX_HIZ       : Boolean := False;
      --  Read-only. This read-only bit is a status bit for USB loopback test
      --  results
      UTMO_DIG_TST      : USBPHY_USB1_LOOPBACK_TOG_UTMO_DIG_TST_Field :=
                           (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_14     : HAL.UInt6 := 16#0#;
      --  Setting this bit field to value 1'b1 will enable the loopback test to
      --  dynamically change the packet speed
      TSTI_HSFS_MODE_EN : Boolean := False;
      --  Selects the packet data byte used for USB loopback testing in Pulse
      --  mode
      TSTPKT            : USBPHY_USB1_LOOPBACK_TOG_TSTPKT_Field := 16#55#;
      --  unspecified
      Reserved_24_31    : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_TOG_Register use record
      UTMI_TESTSTART    at 0 range 0 .. 0;
      UTMI_DIG_TST      at 0 range 1 .. 2;
      TSTI_TX_HS_MODE   at 0 range 3 .. 3;
      TSTI_TX_LS_MODE   at 0 range 4 .. 4;
      TSTI_TX_EN        at 0 range 5 .. 5;
      TSTI_TX_HIZ       at 0 range 6 .. 6;
      UTMO_DIG_TST      at 0 range 7 .. 8;
      Reserved_9_14     at 0 range 9 .. 14;
      TSTI_HSFS_MODE_EN at 0 range 15 .. 15;
      TSTPKT            at 0 range 16 .. 23;
      Reserved_24_31    at 0 range 24 .. 31;
   end record;

   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_TSTI_HS_NUMBER_Field is HAL.UInt16;
   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_TSTI_FS_NUMBER_Field is HAL.UInt16;

   --  USB PHY Loopback Packet Number Select Register
   type USBPHY_USB1_LOOPBACK_HSFSCNT_Register is record
      --  High speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_HS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_TSTI_HS_NUMBER_Field :=
                        16#10#;
      --  Full speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_FS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_TSTI_FS_NUMBER_Field :=
                        16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_HSFSCNT_Register use record
      TSTI_HS_NUMBER at 0 range 0 .. 15;
      TSTI_FS_NUMBER at 0 range 16 .. 31;
   end record;

   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_SET_TSTI_HS_NUMBER_Field is HAL.UInt16;
   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_SET_TSTI_FS_NUMBER_Field is HAL.UInt16;

   --  USB PHY Loopback Packet Number Select Register
   type USBPHY_USB1_LOOPBACK_HSFSCNT_SET_Register is record
      --  High speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_HS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_SET_TSTI_HS_NUMBER_Field :=
                        16#10#;
      --  Full speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_FS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_SET_TSTI_FS_NUMBER_Field :=
                        16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_HSFSCNT_SET_Register use record
      TSTI_HS_NUMBER at 0 range 0 .. 15;
      TSTI_FS_NUMBER at 0 range 16 .. 31;
   end record;

   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_TSTI_HS_NUMBER_Field is HAL.UInt16;
   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_TSTI_FS_NUMBER_Field is HAL.UInt16;

   --  USB PHY Loopback Packet Number Select Register
   type USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_Register is record
      --  High speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_HS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_TSTI_HS_NUMBER_Field :=
                        16#10#;
      --  Full speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_FS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_TSTI_FS_NUMBER_Field :=
                        16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_Register use record
      TSTI_HS_NUMBER at 0 range 0 .. 15;
      TSTI_FS_NUMBER at 0 range 16 .. 31;
   end record;

   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_TSTI_HS_NUMBER_Field is HAL.UInt16;
   subtype USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_TSTI_FS_NUMBER_Field is HAL.UInt16;

   --  USB PHY Loopback Packet Number Select Register
   type USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_Register is record
      --  High speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_HS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_TSTI_HS_NUMBER_Field :=
                        16#10#;
      --  Full speed packet number, used when
      --  USBPHY_USB1_LOOPBACK[TSTI_HSFS_MODE_EN] is set to value 1'b1.
      TSTI_FS_NUMBER : USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_TSTI_FS_NUMBER_Field :=
                        16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_Register use record
      TSTI_HS_NUMBER at 0 range 0 .. 15;
      TSTI_FS_NUMBER at 0 range 16 .. 31;
   end record;

   subtype USBPHY_TRIM_OVERRIDE_EN_TRIM_PLL_CTRL0_DIV_SEL_Field is HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_TRIM_USBPHY_TX_D_CAL_Field is HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_TRIM_USBPHY_TX_CAL45DP_Field is HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_TRIM_USBPHY_TX_CAL45DM_Field is HAL.UInt4;

   --  USB PHY Trim Override Enable Register
   type USBPHY_TRIM_OVERRIDE_EN_Register is record
      --  Override enable for PLL_DIV_SEL, when set, the register value in
      --  USBPHY_PLL_SIC[1:0] will be used.
      TRIM_DIV_SEL_OVERRIDE         : Boolean := False;
      --  Override enable for ENV_TAIL_ADJ, when set, the register value in
      --  USBPHY_DEBUG1[14:13] will be used
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE : Boolean := False;
      --  Override enable for TX_D_CAL, when set, the register value in
      --  USBPHY_TX[3:0] will be used.
      TRIM_TX_D_CAL_OVERRIDE        : Boolean := False;
      --  Override enable for TX_CAL45DP, when set, the register value in
      --  USBPHY_TX[19:16] will be used.
      TRIM_TX_CAL45DP_OVERRIDE      : Boolean := False;
      --  Override enable for TX_CAL45DM, when set, the register value in
      --  USBPHY_TX[11:8] will be used.
      TRIM_TX_CAL45DM_OVERRIDE      : Boolean := False;
      --  unspecified
      Reserved_5_15                 : HAL.UInt11 := 16#0#;
      --  Read-only. IFR value of PLL_DIV_SEL.
      TRIM_PLL_CTRL0_DIV_SEL        : USBPHY_TRIM_OVERRIDE_EN_TRIM_PLL_CTRL0_DIV_SEL_Field :=
                                       16#0#;
      --  Read-only. IFR value of ENV_TAIL_ADJ.
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  : USBPHY_TRIM_OVERRIDE_EN_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_D_CAL.
      TRIM_USBPHY_TX_D_CAL          : USBPHY_TRIM_OVERRIDE_EN_TRIM_USBPHY_TX_D_CAL_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DP.
      TRIM_USBPHY_TX_CAL45DP        : USBPHY_TRIM_OVERRIDE_EN_TRIM_USBPHY_TX_CAL45DP_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DM.
      TRIM_USBPHY_TX_CAL45DM        : USBPHY_TRIM_OVERRIDE_EN_TRIM_USBPHY_TX_CAL45DM_Field :=
                                       16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TRIM_OVERRIDE_EN_Register use record
      TRIM_DIV_SEL_OVERRIDE         at 0 range 0 .. 0;
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE at 0 range 1 .. 1;
      TRIM_TX_D_CAL_OVERRIDE        at 0 range 2 .. 2;
      TRIM_TX_CAL45DP_OVERRIDE      at 0 range 3 .. 3;
      TRIM_TX_CAL45DM_OVERRIDE      at 0 range 4 .. 4;
      Reserved_5_15                 at 0 range 5 .. 15;
      TRIM_PLL_CTRL0_DIV_SEL        at 0 range 16 .. 17;
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  at 0 range 18 .. 19;
      TRIM_USBPHY_TX_D_CAL          at 0 range 20 .. 23;
      TRIM_USBPHY_TX_CAL45DP        at 0 range 24 .. 27;
      TRIM_USBPHY_TX_CAL45DM        at 0 range 28 .. 31;
   end record;

   subtype USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_PLL_CTRL0_DIV_SEL_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USBPHY_TX_D_CAL_Field is HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USBPHY_TX_CAL45DP_Field is
     HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USBPHY_TX_CAL45DM_Field is
     HAL.UInt4;

   --  USB PHY Trim Override Enable Register
   type USBPHY_TRIM_OVERRIDE_EN_SET_Register is record
      --  Override enable for PLL_DIV_SEL, when set, the register value in
      --  USBPHY_PLL_SIC[1:0] will be used.
      TRIM_DIV_SEL_OVERRIDE         : Boolean := False;
      --  Override enable for ENV_TAIL_ADJ, when set, the register value in
      --  USBPHY_DEBUG1[14:13] will be used
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE : Boolean := False;
      --  Override enable for TX_D_CAL, when set, the register value in
      --  USBPHY_TX[3:0] will be used.
      TRIM_TX_D_CAL_OVERRIDE        : Boolean := False;
      --  Override enable for TX_CAL45DP, when set, the register value in
      --  USBPHY_TX[19:16] will be used.
      TRIM_TX_CAL45DP_OVERRIDE      : Boolean := False;
      --  Override enable for TX_CAL45DM, when set, the register value in
      --  USBPHY_TX[11:8] will be used.
      TRIM_TX_CAL45DM_OVERRIDE      : Boolean := False;
      --  unspecified
      Reserved_5_15                 : HAL.UInt11 := 16#0#;
      --  Read-only. IFR value of PLL_DIV_SEL.
      TRIM_PLL_CTRL0_DIV_SEL        : USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_PLL_CTRL0_DIV_SEL_Field :=
                                       16#0#;
      --  Read-only. IFR value of ENV_TAIL_ADJ.
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  : USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_D_CAL.
      TRIM_USBPHY_TX_D_CAL          : USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USBPHY_TX_D_CAL_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DP.
      TRIM_USBPHY_TX_CAL45DP        : USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USBPHY_TX_CAL45DP_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DM.
      TRIM_USBPHY_TX_CAL45DM        : USBPHY_TRIM_OVERRIDE_EN_SET_TRIM_USBPHY_TX_CAL45DM_Field :=
                                       16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TRIM_OVERRIDE_EN_SET_Register use record
      TRIM_DIV_SEL_OVERRIDE         at 0 range 0 .. 0;
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE at 0 range 1 .. 1;
      TRIM_TX_D_CAL_OVERRIDE        at 0 range 2 .. 2;
      TRIM_TX_CAL45DP_OVERRIDE      at 0 range 3 .. 3;
      TRIM_TX_CAL45DM_OVERRIDE      at 0 range 4 .. 4;
      Reserved_5_15                 at 0 range 5 .. 15;
      TRIM_PLL_CTRL0_DIV_SEL        at 0 range 16 .. 17;
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  at 0 range 18 .. 19;
      TRIM_USBPHY_TX_D_CAL          at 0 range 20 .. 23;
      TRIM_USBPHY_TX_CAL45DP        at 0 range 24 .. 27;
      TRIM_USBPHY_TX_CAL45DM        at 0 range 28 .. 31;
   end record;

   subtype USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_PLL_CTRL0_DIV_SEL_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USBPHY_TX_D_CAL_Field is HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USBPHY_TX_CAL45DP_Field is
     HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USBPHY_TX_CAL45DM_Field is
     HAL.UInt4;

   --  USB PHY Trim Override Enable Register
   type USBPHY_TRIM_OVERRIDE_EN_CLR_Register is record
      --  Override enable for PLL_DIV_SEL, when set, the register value in
      --  USBPHY_PLL_SIC[1:0] will be used.
      TRIM_DIV_SEL_OVERRIDE         : Boolean := False;
      --  Override enable for ENV_TAIL_ADJ, when set, the register value in
      --  USBPHY_DEBUG1[14:13] will be used
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE : Boolean := False;
      --  Override enable for TX_D_CAL, when set, the register value in
      --  USBPHY_TX[3:0] will be used.
      TRIM_TX_D_CAL_OVERRIDE        : Boolean := False;
      --  Override enable for TX_CAL45DP, when set, the register value in
      --  USBPHY_TX[19:16] will be used.
      TRIM_TX_CAL45DP_OVERRIDE      : Boolean := False;
      --  Override enable for TX_CAL45DM, when set, the register value in
      --  USBPHY_TX[11:8] will be used.
      TRIM_TX_CAL45DM_OVERRIDE      : Boolean := False;
      --  unspecified
      Reserved_5_15                 : HAL.UInt11 := 16#0#;
      --  Read-only. IFR value of PLL_DIV_SEL.
      TRIM_PLL_CTRL0_DIV_SEL        : USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_PLL_CTRL0_DIV_SEL_Field :=
                                       16#0#;
      --  Read-only. IFR value of ENV_TAIL_ADJ.
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  : USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_D_CAL.
      TRIM_USBPHY_TX_D_CAL          : USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USBPHY_TX_D_CAL_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DP.
      TRIM_USBPHY_TX_CAL45DP        : USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USBPHY_TX_CAL45DP_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DM.
      TRIM_USBPHY_TX_CAL45DM        : USBPHY_TRIM_OVERRIDE_EN_CLR_TRIM_USBPHY_TX_CAL45DM_Field :=
                                       16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TRIM_OVERRIDE_EN_CLR_Register use record
      TRIM_DIV_SEL_OVERRIDE         at 0 range 0 .. 0;
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE at 0 range 1 .. 1;
      TRIM_TX_D_CAL_OVERRIDE        at 0 range 2 .. 2;
      TRIM_TX_CAL45DP_OVERRIDE      at 0 range 3 .. 3;
      TRIM_TX_CAL45DM_OVERRIDE      at 0 range 4 .. 4;
      Reserved_5_15                 at 0 range 5 .. 15;
      TRIM_PLL_CTRL0_DIV_SEL        at 0 range 16 .. 17;
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  at 0 range 18 .. 19;
      TRIM_USBPHY_TX_D_CAL          at 0 range 20 .. 23;
      TRIM_USBPHY_TX_CAL45DP        at 0 range 24 .. 27;
      TRIM_USBPHY_TX_CAL45DM        at 0 range 28 .. 31;
   end record;

   subtype USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_PLL_CTRL0_DIV_SEL_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field is
     HAL.UInt2;
   subtype USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USBPHY_TX_D_CAL_Field is HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USBPHY_TX_CAL45DP_Field is
     HAL.UInt4;
   subtype USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USBPHY_TX_CAL45DM_Field is
     HAL.UInt4;

   --  USB PHY Trim Override Enable Register
   type USBPHY_TRIM_OVERRIDE_EN_TOG_Register is record
      --  Override enable for PLL_DIV_SEL, when set, the register value in
      --  USBPHY_PLL_SIC[1:0] will be used.
      TRIM_DIV_SEL_OVERRIDE         : Boolean := False;
      --  Override enable for ENV_TAIL_ADJ, when set, the register value in
      --  USBPHY_DEBUG1[14:13] will be used
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE : Boolean := False;
      --  Override enable for TX_D_CAL, when set, the register value in
      --  USBPHY_TX[3:0] will be used.
      TRIM_TX_D_CAL_OVERRIDE        : Boolean := False;
      --  Override enable for TX_CAL45DP, when set, the register value in
      --  USBPHY_TX[19:16] will be used.
      TRIM_TX_CAL45DP_OVERRIDE      : Boolean := False;
      --  Override enable for TX_CAL45DM, when set, the register value in
      --  USBPHY_TX[11:8] will be used.
      TRIM_TX_CAL45DM_OVERRIDE      : Boolean := False;
      --  unspecified
      Reserved_5_15                 : HAL.UInt11 := 16#0#;
      --  Read-only. IFR value of PLL_DIV_SEL.
      TRIM_PLL_CTRL0_DIV_SEL        : USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_PLL_CTRL0_DIV_SEL_Field :=
                                       16#0#;
      --  Read-only. IFR value of ENV_TAIL_ADJ.
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  : USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USB_REG_ENV_TAIL_ADJ_VD_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_D_CAL.
      TRIM_USBPHY_TX_D_CAL          : USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USBPHY_TX_D_CAL_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DP.
      TRIM_USBPHY_TX_CAL45DP        : USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USBPHY_TX_CAL45DP_Field :=
                                       16#0#;
      --  Read-only. IFR value of TX_CAL45DM.
      TRIM_USBPHY_TX_CAL45DM        : USBPHY_TRIM_OVERRIDE_EN_TOG_TRIM_USBPHY_TX_CAL45DM_Field :=
                                       16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY_TRIM_OVERRIDE_EN_TOG_Register use record
      TRIM_DIV_SEL_OVERRIDE         at 0 range 0 .. 0;
      TRIM_ENV_TAIL_ADJ_VD_OVERRIDE at 0 range 1 .. 1;
      TRIM_TX_D_CAL_OVERRIDE        at 0 range 2 .. 2;
      TRIM_TX_CAL45DP_OVERRIDE      at 0 range 3 .. 3;
      TRIM_TX_CAL45DM_OVERRIDE      at 0 range 4 .. 4;
      Reserved_5_15                 at 0 range 5 .. 15;
      TRIM_PLL_CTRL0_DIV_SEL        at 0 range 16 .. 17;
      TRIM_USB_REG_ENV_TAIL_ADJ_VD  at 0 range 18 .. 19;
      TRIM_USBPHY_TX_D_CAL          at 0 range 20 .. 23;
      TRIM_USBPHY_TX_CAL45DP        at 0 range 24 .. 27;
      TRIM_USBPHY_TX_CAL45DM        at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USBPHY Register Reference Index
   type USBPHY_Peripheral is record
      --  USB PHY Power-Down Register
      PWD                       : aliased USBPHY_PWD_Register;
      --  USB PHY Power-Down Register
      PWD_SET                   : aliased USBPHY_PWD_SET_Register;
      --  USB PHY Power-Down Register
      PWD_CLR                   : aliased USBPHY_PWD_CLR_Register;
      --  USB PHY Power-Down Register
      PWD_TOG                   : aliased USBPHY_PWD_TOG_Register;
      --  USB PHY Transmitter Control Register
      TX                        : aliased USBPHY_TX_Register;
      --  USB PHY Transmitter Control Register
      TX_SET                    : aliased USBPHY_TX_SET_Register;
      --  USB PHY Transmitter Control Register
      TX_CLR                    : aliased USBPHY_TX_CLR_Register;
      --  USB PHY Transmitter Control Register
      TX_TOG                    : aliased USBPHY_TX_TOG_Register;
      --  USB PHY Receiver Control Register
      RX                        : aliased USBPHY_RX_Register;
      --  USB PHY Receiver Control Register
      RX_SET                    : aliased USBPHY_RX_SET_Register;
      --  USB PHY Receiver Control Register
      RX_CLR                    : aliased USBPHY_RX_CLR_Register;
      --  USB PHY Receiver Control Register
      RX_TOG                    : aliased USBPHY_RX_TOG_Register;
      --  USB PHY General Control Register
      CTRL                      : aliased USBPHY_CTRL_Register;
      --  USB PHY General Control Register
      CTRL_SET                  : aliased USBPHY_CTRL_SET_Register;
      --  USB PHY General Control Register
      CTRL_CLR                  : aliased USBPHY_CTRL_CLR_Register;
      --  USB PHY General Control Register
      CTRL_TOG                  : aliased USBPHY_CTRL_TOG_Register;
      --  USB PHY Status Register
      STATUS                    : aliased USBPHY_STATUS_Register;
      --  USB PHY Debug Register
      DEBUG                     : aliased USBPHY_DEBUG_Register;
      --  USB PHY Debug Register
      DEBUG_SET                 : aliased USBPHY_DEBUG_SET_Register;
      --  USB PHY Debug Register
      DEBUG_CLR                 : aliased USBPHY_DEBUG_CLR_Register;
      --  USB PHY Debug Register
      DEBUG_TOG                 : aliased USBPHY_DEBUG_TOG_Register;
      --  UTMI Debug Status Register 0
      DEBUG0_STATUS             : aliased USBPHY_DEBUG0_STATUS_Register;
      --  UTMI Debug Status Register 1
      DEBUG1                    : aliased USBPHY_DEBUG1_Register;
      --  UTMI Debug Status Register 1
      DEBUG1_SET                : aliased USBPHY_DEBUG1_SET_Register;
      --  UTMI Debug Status Register 1
      DEBUG1_CLR                : aliased USBPHY_DEBUG1_CLR_Register;
      --  UTMI Debug Status Register 1
      DEBUG1_TOG                : aliased USBPHY_DEBUG1_TOG_Register;
      --  UTMI RTL Version
      VERSION                   : aliased USBPHY_VERSION_Register;
      --  USB PHY PLL Control/Status Register
      PLL_SIC                   : aliased USBPHY_PLL_SIC_Register;
      --  USB PHY PLL Control/Status Register
      PLL_SIC_SET               : aliased USBPHY_PLL_SIC_SET_Register;
      --  USB PHY PLL Control/Status Register
      PLL_SIC_CLR               : aliased USBPHY_PLL_SIC_CLR_Register;
      --  USB PHY PLL Control/Status Register
      PLL_SIC_TOG               : aliased USBPHY_PLL_SIC_TOG_Register;
      --  USB PHY VBUS Detect Control Register
      USB1_VBUS_DETECT          : aliased USBPHY_USB1_VBUS_DETECT_Register;
      --  USB PHY VBUS Detect Control Register
      USB1_VBUS_DETECT_SET      : aliased USBPHY_USB1_VBUS_DETECT_SET_Register;
      --  USB PHY VBUS Detect Control Register
      USB1_VBUS_DETECT_CLR      : aliased USBPHY_USB1_VBUS_DETECT_CLR_Register;
      --  USB PHY VBUS Detect Control Register
      USB1_VBUS_DETECT_TOG      : aliased USBPHY_USB1_VBUS_DETECT_TOG_Register;
      --  USB PHY VBUS Detector Status Register
      USB1_VBUS_DET_STAT        : aliased USBPHY_USB1_VBUS_DET_STAT_Register;
      --  USB PHY Charger Detect Status Register
      USB1_CHRG_DET_STAT        : aliased USBPHY_USB1_CHRG_DET_STAT_Register;
      --  USB PHY Analog Control Register
      ANACTRL                   : aliased USBPHY_ANACTRL_Register;
      --  USB PHY Analog Control Register
      ANACTRL_SET               : aliased USBPHY_ANACTRL_SET_Register;
      --  USB PHY Analog Control Register
      ANACTRL_CLR               : aliased USBPHY_ANACTRL_CLR_Register;
      --  USB PHY Analog Control Register
      ANACTRL_TOG               : aliased USBPHY_ANACTRL_TOG_Register;
      --  USB PHY Loopback Control/Status Register
      USB1_LOOPBACK             : aliased USBPHY_USB1_LOOPBACK_Register;
      --  USB PHY Loopback Control/Status Register
      USB1_LOOPBACK_SET         : aliased USBPHY_USB1_LOOPBACK_SET_Register;
      --  USB PHY Loopback Control/Status Register
      USB1_LOOPBACK_CLR         : aliased USBPHY_USB1_LOOPBACK_CLR_Register;
      --  USB PHY Loopback Control/Status Register
      USB1_LOOPBACK_TOG         : aliased USBPHY_USB1_LOOPBACK_TOG_Register;
      --  USB PHY Loopback Packet Number Select Register
      USB1_LOOPBACK_HSFSCNT     : aliased USBPHY_USB1_LOOPBACK_HSFSCNT_Register;
      --  USB PHY Loopback Packet Number Select Register
      USB1_LOOPBACK_HSFSCNT_SET : aliased USBPHY_USB1_LOOPBACK_HSFSCNT_SET_Register;
      --  USB PHY Loopback Packet Number Select Register
      USB1_LOOPBACK_HSFSCNT_CLR : aliased USBPHY_USB1_LOOPBACK_HSFSCNT_CLR_Register;
      --  USB PHY Loopback Packet Number Select Register
      USB1_LOOPBACK_HSFSCNT_TOG : aliased USBPHY_USB1_LOOPBACK_HSFSCNT_TOG_Register;
      --  USB PHY Trim Override Enable Register
      TRIM_OVERRIDE_EN          : aliased USBPHY_TRIM_OVERRIDE_EN_Register;
      --  USB PHY Trim Override Enable Register
      TRIM_OVERRIDE_EN_SET      : aliased USBPHY_TRIM_OVERRIDE_EN_SET_Register;
      --  USB PHY Trim Override Enable Register
      TRIM_OVERRIDE_EN_CLR      : aliased USBPHY_TRIM_OVERRIDE_EN_CLR_Register;
      --  USB PHY Trim Override Enable Register
      TRIM_OVERRIDE_EN_TOG      : aliased USBPHY_TRIM_OVERRIDE_EN_TOG_Register;
   end record
     with Volatile;

   for USBPHY_Peripheral use record
      PWD                       at 16#0# range 0 .. 31;
      PWD_SET                   at 16#4# range 0 .. 31;
      PWD_CLR                   at 16#8# range 0 .. 31;
      PWD_TOG                   at 16#C# range 0 .. 31;
      TX                        at 16#10# range 0 .. 31;
      TX_SET                    at 16#14# range 0 .. 31;
      TX_CLR                    at 16#18# range 0 .. 31;
      TX_TOG                    at 16#1C# range 0 .. 31;
      RX                        at 16#20# range 0 .. 31;
      RX_SET                    at 16#24# range 0 .. 31;
      RX_CLR                    at 16#28# range 0 .. 31;
      RX_TOG                    at 16#2C# range 0 .. 31;
      CTRL                      at 16#30# range 0 .. 31;
      CTRL_SET                  at 16#34# range 0 .. 31;
      CTRL_CLR                  at 16#38# range 0 .. 31;
      CTRL_TOG                  at 16#3C# range 0 .. 31;
      STATUS                    at 16#40# range 0 .. 31;
      DEBUG                     at 16#50# range 0 .. 31;
      DEBUG_SET                 at 16#54# range 0 .. 31;
      DEBUG_CLR                 at 16#58# range 0 .. 31;
      DEBUG_TOG                 at 16#5C# range 0 .. 31;
      DEBUG0_STATUS             at 16#60# range 0 .. 31;
      DEBUG1                    at 16#70# range 0 .. 31;
      DEBUG1_SET                at 16#74# range 0 .. 31;
      DEBUG1_CLR                at 16#78# range 0 .. 31;
      DEBUG1_TOG                at 16#7C# range 0 .. 31;
      VERSION                   at 16#80# range 0 .. 31;
      PLL_SIC                   at 16#A0# range 0 .. 31;
      PLL_SIC_SET               at 16#A4# range 0 .. 31;
      PLL_SIC_CLR               at 16#A8# range 0 .. 31;
      PLL_SIC_TOG               at 16#AC# range 0 .. 31;
      USB1_VBUS_DETECT          at 16#C0# range 0 .. 31;
      USB1_VBUS_DETECT_SET      at 16#C4# range 0 .. 31;
      USB1_VBUS_DETECT_CLR      at 16#C8# range 0 .. 31;
      USB1_VBUS_DETECT_TOG      at 16#CC# range 0 .. 31;
      USB1_VBUS_DET_STAT        at 16#D0# range 0 .. 31;
      USB1_CHRG_DET_STAT        at 16#F0# range 0 .. 31;
      ANACTRL                   at 16#100# range 0 .. 31;
      ANACTRL_SET               at 16#104# range 0 .. 31;
      ANACTRL_CLR               at 16#108# range 0 .. 31;
      ANACTRL_TOG               at 16#10C# range 0 .. 31;
      USB1_LOOPBACK             at 16#110# range 0 .. 31;
      USB1_LOOPBACK_SET         at 16#114# range 0 .. 31;
      USB1_LOOPBACK_CLR         at 16#118# range 0 .. 31;
      USB1_LOOPBACK_TOG         at 16#11C# range 0 .. 31;
      USB1_LOOPBACK_HSFSCNT     at 16#120# range 0 .. 31;
      USB1_LOOPBACK_HSFSCNT_SET at 16#124# range 0 .. 31;
      USB1_LOOPBACK_HSFSCNT_CLR at 16#128# range 0 .. 31;
      USB1_LOOPBACK_HSFSCNT_TOG at 16#12C# range 0 .. 31;
      TRIM_OVERRIDE_EN          at 16#130# range 0 .. 31;
      TRIM_OVERRIDE_EN_SET      at 16#134# range 0 .. 31;
      TRIM_OVERRIDE_EN_CLR      at 16#138# range 0 .. 31;
      TRIM_OVERRIDE_EN_TOG      at 16#13C# range 0 .. 31;
   end record;

   --  USBPHY Register Reference Index
   USBPHY_Periph : aliased USBPHY_Peripheral
     with Import, Address => USBPHY_Base;

end NRF_SVD.USBPHY;
