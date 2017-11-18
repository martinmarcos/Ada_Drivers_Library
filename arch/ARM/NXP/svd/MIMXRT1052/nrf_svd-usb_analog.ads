--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USB_ANALOG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Set the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB1_VBUS_DETECT_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V0 => 0,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V1 => 1,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V2 => 2,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V3 => 3,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V4 => 4,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V5 => 5,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V6 => 6,
      USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB1_VBUS_DETECT_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB1_VBUS_DETECT_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB1_VBUS_DETECT_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_VBUS_DETECT_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V0 => 0,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V1 => 1,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V2 => 2,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V3 => 3,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V4 => 4,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V5 => 5,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V6 => 6,
      USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB1_VBUS_DETECT_SET_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB1_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_VBUS_DETECT_SET_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V0 => 0,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V1 => 1,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V2 => 2,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V3 => 3,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V4 => 4,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V5 => 5,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V6 => 6,
      USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB1_VBUS_DETECT_CLR_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB1_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_VBUS_DETECT_CLR_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field use
     (USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V0 => 0,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V1 => 1,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V2 => 2,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V3 => 3,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V4 => 4,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V5 => 5,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V6 => 6,
      USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB1_VBUS_DETECT_TOG_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB1_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_VBUS_DETECT_TOG_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB1_CHRG_DETECT_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB1_CHRG_DETECT_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB1_CHRG_DETECT_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB1_CHRG_DETECT_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB1_CHRG_DETECT_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB1_CHRG_DETECT_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB1_CHRG_DETECT_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB1_CHRG_DETECT_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB1_CHRG_DETECT_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB1_CHRG_DETECT_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_CHRG_DETECT_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB1_CHRG_DETECT_SET_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB1_CHRG_DETECT_SET_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB1_CHRG_DETECT_SET_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB1_CHRG_DETECT_SET_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB1_CHRG_DETECT_SET_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB1_CHRG_DETECT_SET_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB1_CHRG_DETECT_SET_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB1_CHRG_DETECT_SET_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB1_CHRG_DETECT_SET_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB1_CHRG_DETECT_SET_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_CHRG_DETECT_SET_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB1_CHRG_DETECT_CLR_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB1_CHRG_DETECT_CLR_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB1_CHRG_DETECT_CLR_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB1_CHRG_DETECT_CLR_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB1_CHRG_DETECT_CLR_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB1_CHRG_DETECT_CLR_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB1_CHRG_DETECT_CLR_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB1_CHRG_DETECT_CLR_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB1_CHRG_DETECT_CLR_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB1_CHRG_DETECT_CLR_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_CHRG_DETECT_CLR_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB1_CHRG_DETECT_TOG_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB1_CHRG_DETECT_TOG_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB1_CHRG_DETECT_TOG_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB1_CHRG_DETECT_TOG_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB1_CHRG_DETECT_TOG_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB1_CHRG_DETECT_TOG_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB1_CHRG_DETECT_TOG_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB1_CHRG_DETECT_TOG_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB1_CHRG_DETECT_TOG_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB1_CHRG_DETECT_TOG_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_CHRG_DETECT_TOG_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  USB VBUS Detect Status Register
   type USB_ANALOG_USB1_VBUS_DETECT_STAT_Register is record
      --  Read-only. Session End for USB OTG
      SESSEND       : Boolean;
      --  Read-only. Indicates VBus is valid for a B-peripheral
      BVALID        : Boolean;
      --  Read-only. Indicates VBus is valid for a A-peripheral
      AVALID        : Boolean;
      --  Read-only. VBus valid for USB OTG
      VBUS_VALID    : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_VBUS_DETECT_STAT_Register use record
      SESSEND       at 0 range 0 .. 0;
      BVALID        at 0 range 1 .. 1;
      AVALID        at 0 range 2 .. 2;
      VBUS_VALID    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  State of the USB plug contact detector.
   type USB1_CHRG_DETECT_STAT_PLUG_CONTACT_Field is
     (
      --  The USB plug has not made contact.
      No_Contact,
      --  The USB plug has made good contact.
      Good_Contact)
     with Size => 1;
   for USB1_CHRG_DETECT_STAT_PLUG_CONTACT_Field use
     (No_Contact => 0,
      Good_Contact => 1);

   --  State of charger detection. This bit is a read only version of the state
   --  of the analog signal.
   type USB1_CHRG_DETECT_STAT_CHRG_DETECTED_Field is
     (
      --  The USB port is not connected to a charger.
      Charger_Not_Present,
      --  A charger (either a dedicated charger or a host charger) is connected
      --  to the USB port.
      Charger_Present)
     with Size => 1;
   for USB1_CHRG_DETECT_STAT_CHRG_DETECTED_Field use
     (Charger_Not_Present => 0,
      Charger_Present => 1);

   --  USB Charger Detect Status Register
   type USB_ANALOG_USB1_CHRG_DETECT_STAT_Register is record
      --  Read-only. State of the USB plug contact detector.
      PLUG_CONTACT  : USB1_CHRG_DETECT_STAT_PLUG_CONTACT_Field;
      --  Read-only. State of charger detection. This bit is a read only
      --  version of the state of the analog signal.
      CHRG_DETECTED : USB1_CHRG_DETECT_STAT_CHRG_DETECTED_Field;
      --  Read-only. DM line state output of the charger detector.
      DM_STATE      : Boolean;
      --  Read-only. DP line state output of the charger detector.
      DP_STATE      : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_CHRG_DETECT_STAT_Register use record
      PLUG_CONTACT  at 0 range 0 .. 0;
      CHRG_DETECTED at 0 range 1 .. 1;
      DM_STATE      at 0 range 2 .. 2;
      DP_STATE      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB1_MISC_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_MISC_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB1_MISC_SET_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_MISC_SET_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB1_MISC_CLR_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_MISC_CLR_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB1_MISC_TOG_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB1_MISC_TOG_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB2_VBUS_DETECT_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB2_VBUS_DETECT_VBUSVALID_THRESH_Field use
     (USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V0 => 0,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V1 => 1,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V2 => 2,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V3 => 3,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V4 => 4,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V5 => 5,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V6 => 6,
      USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB2_VBUS_DETECT_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB2_VBUS_DETECT_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB2_VBUS_DETECT_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_VBUS_DETECT_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field use
     (USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V0 => 0,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V1 => 1,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V2 => 2,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V3 => 3,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V4 => 4,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V5 => 5,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V6 => 6,
      USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB2_VBUS_DETECT_SET_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB2_VBUS_DETECT_SET_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_VBUS_DETECT_SET_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field use
     (USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V0 => 0,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V1 => 1,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V2 => 2,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V3 => 3,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V4 => 4,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V5 => 5,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V6 => 6,
      USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB2_VBUS_DETECT_CLR_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB2_VBUS_DETECT_CLR_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_VBUS_DETECT_CLR_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Set the threshold for the VBUSVALID comparator
   type USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field is
     (
      --  4.0V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V0,
      --  4.1V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V1,
      --  4.2V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V2,
      --  4.3V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V3,
      --  4.4V (default)
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V4,
      --  4.5V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V5,
      --  4.6V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V6,
      --  4.7V
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V7)
     with Size => 3;
   for USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field use
     (USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V0 => 0,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V1 => 1,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V2 => 2,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V3 => 3,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V4 => 4,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V5 => 5,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V6 => 6,
      USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V7 => 7);

   --  USB VBUS Detect Register
   type USB_ANALOG_USB2_VBUS_DETECT_TOG_Register is record
      --  Set the threshold for the VBUSVALID comparator
      VBUSVALID_THRESH     : USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field :=
                              NRF_SVD.USB_ANALOG.USB2_VBUS_DETECT_TOG_VBUSVALID_THRESH_Field_4V4;
      --  unspecified
      Reserved_3_19        : HAL.UInt17 := 16#0#;
      --  Powers up comparators for vbus_valid detector.
      VBUSVALID_PWRUP_CMPS : Boolean := True;
      --  unspecified
      Reserved_21_25       : HAL.UInt5 := 16#0#;
      --  USB OTG discharge VBUS.
      DISCHARGE_VBUS       : Boolean := False;
      --  USB OTG charge VBUS.
      CHARGE_VBUS          : Boolean := False;
      --  unspecified
      Reserved_28_31       : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_VBUS_DETECT_TOG_Register use record
      VBUSVALID_THRESH     at 0 range 0 .. 2;
      Reserved_3_19        at 0 range 3 .. 19;
      VBUSVALID_PWRUP_CMPS at 0 range 20 .. 20;
      Reserved_21_25       at 0 range 21 .. 25;
      DISCHARGE_VBUS       at 0 range 26 .. 26;
      CHARGE_VBUS          at 0 range 27 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB2_CHRG_DETECT_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB2_CHRG_DETECT_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB2_CHRG_DETECT_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB2_CHRG_DETECT_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB2_CHRG_DETECT_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB2_CHRG_DETECT_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB2_CHRG_DETECT_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB2_CHRG_DETECT_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB2_CHRG_DETECT_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB2_CHRG_DETECT_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_CHRG_DETECT_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB2_CHRG_DETECT_SET_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB2_CHRG_DETECT_SET_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB2_CHRG_DETECT_SET_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB2_CHRG_DETECT_SET_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB2_CHRG_DETECT_SET_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB2_CHRG_DETECT_SET_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB2_CHRG_DETECT_SET_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB2_CHRG_DETECT_SET_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB2_CHRG_DETECT_SET_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB2_CHRG_DETECT_SET_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_CHRG_DETECT_SET_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB2_CHRG_DETECT_CLR_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB2_CHRG_DETECT_CLR_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB2_CHRG_DETECT_CLR_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB2_CHRG_DETECT_CLR_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB2_CHRG_DETECT_CLR_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB2_CHRG_DETECT_CLR_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB2_CHRG_DETECT_CLR_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB2_CHRG_DETECT_CLR_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB2_CHRG_DETECT_CLR_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB2_CHRG_DETECT_CLR_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_CHRG_DETECT_CLR_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Check the contact of USB plug
   type USB2_CHRG_DETECT_TOG_CHK_CONTACT_Field is
     (
      --  Do not check the contact of USB plug.
      No_Check,
      --  Check whether the USB plug has been in contact with each other
      Check)
     with Size => 1;
   for USB2_CHRG_DETECT_TOG_CHK_CONTACT_Field use
     (No_Check => 0,
      Check => 1);

   --  Check the charger connection
   type USB2_CHRG_DETECT_TOG_CHK_CHRG_B_Field is
     (
      --  Check whether a charger (either a dedicated charger or a host
      --  charger) is connected to USB port.
      Check,
      --  Do not check whether a charger is connected to the USB port.
      No_Check)
     with Size => 1;
   for USB2_CHRG_DETECT_TOG_CHK_CHRG_B_Field use
     (Check => 0,
      No_Check => 1);

   --  Control the charger detector.
   type USB2_CHRG_DETECT_TOG_EN_B_Field is
     (
      --  Enable the charger detector.
      Enable,
      --  Disable the charger detector.
      Disable)
     with Size => 1;
   for USB2_CHRG_DETECT_TOG_EN_B_Field use
     (Enable => 0,
      Disable => 1);

   --  USB Charger Detect Register
   type USB_ANALOG_USB2_CHRG_DETECT_TOG_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Check the contact of USB plug
      CHK_CONTACT    : USB2_CHRG_DETECT_TOG_CHK_CONTACT_Field :=
                        NRF_SVD.USB_ANALOG.No_Check;
      --  Check the charger connection
      CHK_CHRG_B     : USB2_CHRG_DETECT_TOG_CHK_CHRG_B_Field :=
                        NRF_SVD.USB_ANALOG.Check;
      --  Control the charger detector.
      EN_B           : USB2_CHRG_DETECT_TOG_EN_B_Field :=
                        NRF_SVD.USB_ANALOG.Enable;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_CHRG_DETECT_TOG_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CHK_CONTACT    at 0 range 18 .. 18;
      CHK_CHRG_B     at 0 range 19 .. 19;
      EN_B           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  USB VBUS Detect Status Register
   type USB_ANALOG_USB2_VBUS_DETECT_STAT_Register is record
      --  Read-only. Session End for USB OTG
      SESSEND       : Boolean;
      --  Read-only. Indicates VBus is valid for a B-peripheral
      BVALID        : Boolean;
      --  Read-only. Indicates VBus is valid for a A-peripheral
      AVALID        : Boolean;
      --  Read-only. VBus valid for USB OTG
      VBUS_VALID    : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_VBUS_DETECT_STAT_Register use record
      SESSEND       at 0 range 0 .. 0;
      BVALID        at 0 range 1 .. 1;
      AVALID        at 0 range 2 .. 2;
      VBUS_VALID    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  State of the USB plug contact detector.
   type USB2_CHRG_DETECT_STAT_PLUG_CONTACT_Field is
     (
      --  The USB plug has not made contact.
      No_Contact,
      --  The USB plug has made good contact.
      Good_Contact)
     with Size => 1;
   for USB2_CHRG_DETECT_STAT_PLUG_CONTACT_Field use
     (No_Contact => 0,
      Good_Contact => 1);

   --  State of charger detection. This bit is a read only version of the state
   --  of the analog signal.
   type USB2_CHRG_DETECT_STAT_CHRG_DETECTED_Field is
     (
      --  The USB port is not connected to a charger.
      Charger_Not_Present,
      --  A charger (either a dedicated charger or a host charger) is connected
      --  to the USB port.
      Charger_Present)
     with Size => 1;
   for USB2_CHRG_DETECT_STAT_CHRG_DETECTED_Field use
     (Charger_Not_Present => 0,
      Charger_Present => 1);

   --  USB Charger Detect Status Register
   type USB_ANALOG_USB2_CHRG_DETECT_STAT_Register is record
      --  Read-only. State of the USB plug contact detector.
      PLUG_CONTACT  : USB2_CHRG_DETECT_STAT_PLUG_CONTACT_Field;
      --  Read-only. State of charger detection. This bit is a read only
      --  version of the state of the analog signal.
      CHRG_DETECTED : USB2_CHRG_DETECT_STAT_CHRG_DETECTED_Field;
      --  Read-only. DM line state output of the charger detector.
      DM_STATE      : Boolean;
      --  Read-only. DP line state output of the charger detector.
      DP_STATE      : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_CHRG_DETECT_STAT_Register use record
      PLUG_CONTACT  at 0 range 0 .. 0;
      CHRG_DETECTED at 0 range 1 .. 1;
      DM_STATE      at 0 range 2 .. 2;
      DP_STATE      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB2_MISC_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_MISC_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB2_MISC_SET_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_MISC_SET_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB2_MISC_CLR_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_MISC_CLR_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  USB Misc Register
   type USB_ANALOG_USB2_MISC_TOG_Register is record
      --  Use external resistor to generate the current bias for the high speed
      --  transmitter
      HS_USE_EXTERNAL_R : Boolean := False;
      --  Enable the deglitching circuit of the USB PLL output.
      EN_DEGLITCH       : Boolean := True;
      --  unspecified
      Reserved_2_29     : HAL.UInt28 := 16#0#;
      --  Enables the clk to the UTMI block.
      EN_CLK_UTMI       : Boolean := False;
      --  unspecified
      Reserved_31_31    : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_USB2_MISC_TOG_Register use record
      HS_USE_EXTERNAL_R at 0 range 0 .. 0;
      EN_DEGLITCH       at 0 range 1 .. 1;
      Reserved_2_29     at 0 range 2 .. 29;
      EN_CLK_UTMI       at 0 range 30 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   --  MINOR lower byte - Read-only value representing a minor silicon
   --  revision.
   type DIGPROG_MINOR_Field is
     (
      --  silicon revision x.0
      Minor_0,
      --  silicon revision x.1
      Minor_1,
      --  silicon revision x.2
      Minor_2,
      --  silicon revision x.3
      Minor_3)
     with Size => 8;
   for DIGPROG_MINOR_Field use
     (Minor_0 => 0,
      Minor_1 => 1,
      Minor_2 => 2,
      Minor_3 => 3);

   --  MAJOR lower byte - Read-only value representing a major silicon
   --  revision.
   type DIGPROG_MAJOR_LOWER_Field is
     (
      --  silicon revision 1.x
      Major_Lower_0,
      --  silicon revision 2.x
      Major_Lower_1)
     with Size => 8;
   for DIGPROG_MAJOR_LOWER_Field use
     (Major_Lower_0 => 0,
      Major_Lower_1 => 1);

   subtype USB_ANALOG_DIGPROG_MAJOR_UPPER_Field is HAL.UInt8;

   --  Chip Silicon Version
   type USB_ANALOG_DIGPROG_Register is record
      --  Read-only. MINOR lower byte - Read-only value representing a minor
      --  silicon revision.
      MINOR          : DIGPROG_MINOR_Field;
      --  Read-only. MAJOR lower byte - Read-only value representing a major
      --  silicon revision.
      MAJOR_LOWER    : DIGPROG_MAJOR_LOWER_Field;
      --  Read-only. MAJOR upper byte-Read-only value representing the chip
      --  type.
      MAJOR_UPPER    : USB_ANALOG_DIGPROG_MAJOR_UPPER_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ANALOG_DIGPROG_Register use record
      MINOR          at 0 range 0 .. 7;
      MAJOR_LOWER    at 0 range 8 .. 15;
      MAJOR_UPPER    at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB Analog
   type USB_ANALOG_Peripheral is record
      --  USB VBUS Detect Register
      USB1_VBUS_DETECT      : aliased USB_ANALOG_USB1_VBUS_DETECT_Register;
      --  USB VBUS Detect Register
      USB1_VBUS_DETECT_SET  : aliased USB_ANALOG_USB1_VBUS_DETECT_SET_Register;
      --  USB VBUS Detect Register
      USB1_VBUS_DETECT_CLR  : aliased USB_ANALOG_USB1_VBUS_DETECT_CLR_Register;
      --  USB VBUS Detect Register
      USB1_VBUS_DETECT_TOG  : aliased USB_ANALOG_USB1_VBUS_DETECT_TOG_Register;
      --  USB Charger Detect Register
      USB1_CHRG_DETECT      : aliased USB_ANALOG_USB1_CHRG_DETECT_Register;
      --  USB Charger Detect Register
      USB1_CHRG_DETECT_SET  : aliased USB_ANALOG_USB1_CHRG_DETECT_SET_Register;
      --  USB Charger Detect Register
      USB1_CHRG_DETECT_CLR  : aliased USB_ANALOG_USB1_CHRG_DETECT_CLR_Register;
      --  USB Charger Detect Register
      USB1_CHRG_DETECT_TOG  : aliased USB_ANALOG_USB1_CHRG_DETECT_TOG_Register;
      --  USB VBUS Detect Status Register
      USB1_VBUS_DETECT_STAT : aliased USB_ANALOG_USB1_VBUS_DETECT_STAT_Register;
      --  USB Charger Detect Status Register
      USB1_CHRG_DETECT_STAT : aliased USB_ANALOG_USB1_CHRG_DETECT_STAT_Register;
      --  USB Misc Register
      USB1_MISC             : aliased USB_ANALOG_USB1_MISC_Register;
      --  USB Misc Register
      USB1_MISC_SET         : aliased USB_ANALOG_USB1_MISC_SET_Register;
      --  USB Misc Register
      USB1_MISC_CLR         : aliased USB_ANALOG_USB1_MISC_CLR_Register;
      --  USB Misc Register
      USB1_MISC_TOG         : aliased USB_ANALOG_USB1_MISC_TOG_Register;
      --  USB VBUS Detect Register
      USB2_VBUS_DETECT      : aliased USB_ANALOG_USB2_VBUS_DETECT_Register;
      --  USB VBUS Detect Register
      USB2_VBUS_DETECT_SET  : aliased USB_ANALOG_USB2_VBUS_DETECT_SET_Register;
      --  USB VBUS Detect Register
      USB2_VBUS_DETECT_CLR  : aliased USB_ANALOG_USB2_VBUS_DETECT_CLR_Register;
      --  USB VBUS Detect Register
      USB2_VBUS_DETECT_TOG  : aliased USB_ANALOG_USB2_VBUS_DETECT_TOG_Register;
      --  USB Charger Detect Register
      USB2_CHRG_DETECT      : aliased USB_ANALOG_USB2_CHRG_DETECT_Register;
      --  USB Charger Detect Register
      USB2_CHRG_DETECT_SET  : aliased USB_ANALOG_USB2_CHRG_DETECT_SET_Register;
      --  USB Charger Detect Register
      USB2_CHRG_DETECT_CLR  : aliased USB_ANALOG_USB2_CHRG_DETECT_CLR_Register;
      --  USB Charger Detect Register
      USB2_CHRG_DETECT_TOG  : aliased USB_ANALOG_USB2_CHRG_DETECT_TOG_Register;
      --  USB VBUS Detect Status Register
      USB2_VBUS_DETECT_STAT : aliased USB_ANALOG_USB2_VBUS_DETECT_STAT_Register;
      --  USB Charger Detect Status Register
      USB2_CHRG_DETECT_STAT : aliased USB_ANALOG_USB2_CHRG_DETECT_STAT_Register;
      --  USB Misc Register
      USB2_MISC             : aliased USB_ANALOG_USB2_MISC_Register;
      --  USB Misc Register
      USB2_MISC_SET         : aliased USB_ANALOG_USB2_MISC_SET_Register;
      --  USB Misc Register
      USB2_MISC_CLR         : aliased USB_ANALOG_USB2_MISC_CLR_Register;
      --  USB Misc Register
      USB2_MISC_TOG         : aliased USB_ANALOG_USB2_MISC_TOG_Register;
      --  Chip Silicon Version
      DIGPROG               : aliased USB_ANALOG_DIGPROG_Register;
   end record
     with Volatile;

   for USB_ANALOG_Peripheral use record
      USB1_VBUS_DETECT      at 16#1A0# range 0 .. 31;
      USB1_VBUS_DETECT_SET  at 16#1A4# range 0 .. 31;
      USB1_VBUS_DETECT_CLR  at 16#1A8# range 0 .. 31;
      USB1_VBUS_DETECT_TOG  at 16#1AC# range 0 .. 31;
      USB1_CHRG_DETECT      at 16#1B0# range 0 .. 31;
      USB1_CHRG_DETECT_SET  at 16#1B4# range 0 .. 31;
      USB1_CHRG_DETECT_CLR  at 16#1B8# range 0 .. 31;
      USB1_CHRG_DETECT_TOG  at 16#1BC# range 0 .. 31;
      USB1_VBUS_DETECT_STAT at 16#1C0# range 0 .. 31;
      USB1_CHRG_DETECT_STAT at 16#1D0# range 0 .. 31;
      USB1_MISC             at 16#1F0# range 0 .. 31;
      USB1_MISC_SET         at 16#1F4# range 0 .. 31;
      USB1_MISC_CLR         at 16#1F8# range 0 .. 31;
      USB1_MISC_TOG         at 16#1FC# range 0 .. 31;
      USB2_VBUS_DETECT      at 16#200# range 0 .. 31;
      USB2_VBUS_DETECT_SET  at 16#204# range 0 .. 31;
      USB2_VBUS_DETECT_CLR  at 16#208# range 0 .. 31;
      USB2_VBUS_DETECT_TOG  at 16#20C# range 0 .. 31;
      USB2_CHRG_DETECT      at 16#210# range 0 .. 31;
      USB2_CHRG_DETECT_SET  at 16#214# range 0 .. 31;
      USB2_CHRG_DETECT_CLR  at 16#218# range 0 .. 31;
      USB2_CHRG_DETECT_TOG  at 16#21C# range 0 .. 31;
      USB2_VBUS_DETECT_STAT at 16#220# range 0 .. 31;
      USB2_CHRG_DETECT_STAT at 16#230# range 0 .. 31;
      USB2_MISC             at 16#250# range 0 .. 31;
      USB2_MISC_SET         at 16#254# range 0 .. 31;
      USB2_MISC_CLR         at 16#258# range 0 .. 31;
      USB2_MISC_TOG         at 16#25C# range 0 .. 31;
      DIGPROG               at 16#260# range 0 .. 31;
   end record;

   --  USB Analog
   USB_ANALOG_Periph : aliased USB_ANALOG_Peripheral
     with Import, Address => System'To_Address (16#400D8000#);

end NRF_SVD.USB_ANALOG;
