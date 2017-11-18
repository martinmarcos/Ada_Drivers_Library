--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USBPHY is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USBPHY1_PWD_RSVD0_Field is HAL.UInt10;
   subtype USBPHY1_PWD_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_PWD_RSVD2_Field is HAL.UInt11;

   --  USB PHY Power-Down Register
   type USBPHY1_PWD_Register is record
      --  Read-only. Reserved.
      RSVD0      : USBPHY1_PWD_RSVD0_Field := 16#0#;
      --  0 = Normal operation
      TXPWDFS    : Boolean := True;
      --  0 = Normal operation
      TXPWDIBIAS : Boolean := True;
      --  0 = Normal operation
      TXPWDV2I   : Boolean := True;
      --  Read-only. Reserved.
      RSVD1      : USBPHY1_PWD_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXPWDENV   : Boolean := True;
      --  0 = Normal operation
      RXPWD1PT1  : Boolean := True;
      --  0 = Normal operation
      RXPWDDIFF  : Boolean := True;
      --  0 = Normal operation
      RXPWDRX    : Boolean := True;
      --  Read-only. Reserved.
      RSVD2      : USBPHY1_PWD_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_PWD_Register use record
      RSVD0      at 0 range 0 .. 9;
      TXPWDFS    at 0 range 10 .. 10;
      TXPWDIBIAS at 0 range 11 .. 11;
      TXPWDV2I   at 0 range 12 .. 12;
      RSVD1      at 0 range 13 .. 16;
      RXPWDENV   at 0 range 17 .. 17;
      RXPWD1PT1  at 0 range 18 .. 18;
      RXPWDDIFF  at 0 range 19 .. 19;
      RXPWDRX    at 0 range 20 .. 20;
      RSVD2      at 0 range 21 .. 31;
   end record;

   subtype USBPHY1_PWD_SET_RSVD0_Field is HAL.UInt10;
   subtype USBPHY1_PWD_SET_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_PWD_SET_RSVD2_Field is HAL.UInt11;

   --  USB PHY Power-Down Register
   type USBPHY1_PWD_SET_Register is record
      --  Read-only. Reserved.
      RSVD0      : USBPHY1_PWD_SET_RSVD0_Field := 16#0#;
      --  0 = Normal operation
      TXPWDFS    : Boolean := True;
      --  0 = Normal operation
      TXPWDIBIAS : Boolean := True;
      --  0 = Normal operation
      TXPWDV2I   : Boolean := True;
      --  Read-only. Reserved.
      RSVD1      : USBPHY1_PWD_SET_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXPWDENV   : Boolean := True;
      --  0 = Normal operation
      RXPWD1PT1  : Boolean := True;
      --  0 = Normal operation
      RXPWDDIFF  : Boolean := True;
      --  0 = Normal operation
      RXPWDRX    : Boolean := True;
      --  Read-only. Reserved.
      RSVD2      : USBPHY1_PWD_SET_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_PWD_SET_Register use record
      RSVD0      at 0 range 0 .. 9;
      TXPWDFS    at 0 range 10 .. 10;
      TXPWDIBIAS at 0 range 11 .. 11;
      TXPWDV2I   at 0 range 12 .. 12;
      RSVD1      at 0 range 13 .. 16;
      RXPWDENV   at 0 range 17 .. 17;
      RXPWD1PT1  at 0 range 18 .. 18;
      RXPWDDIFF  at 0 range 19 .. 19;
      RXPWDRX    at 0 range 20 .. 20;
      RSVD2      at 0 range 21 .. 31;
   end record;

   subtype USBPHY1_PWD_CLR_RSVD0_Field is HAL.UInt10;
   subtype USBPHY1_PWD_CLR_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_PWD_CLR_RSVD2_Field is HAL.UInt11;

   --  USB PHY Power-Down Register
   type USBPHY1_PWD_CLR_Register is record
      --  Read-only. Reserved.
      RSVD0      : USBPHY1_PWD_CLR_RSVD0_Field := 16#0#;
      --  0 = Normal operation
      TXPWDFS    : Boolean := True;
      --  0 = Normal operation
      TXPWDIBIAS : Boolean := True;
      --  0 = Normal operation
      TXPWDV2I   : Boolean := True;
      --  Read-only. Reserved.
      RSVD1      : USBPHY1_PWD_CLR_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXPWDENV   : Boolean := True;
      --  0 = Normal operation
      RXPWD1PT1  : Boolean := True;
      --  0 = Normal operation
      RXPWDDIFF  : Boolean := True;
      --  0 = Normal operation
      RXPWDRX    : Boolean := True;
      --  Read-only. Reserved.
      RSVD2      : USBPHY1_PWD_CLR_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_PWD_CLR_Register use record
      RSVD0      at 0 range 0 .. 9;
      TXPWDFS    at 0 range 10 .. 10;
      TXPWDIBIAS at 0 range 11 .. 11;
      TXPWDV2I   at 0 range 12 .. 12;
      RSVD1      at 0 range 13 .. 16;
      RXPWDENV   at 0 range 17 .. 17;
      RXPWD1PT1  at 0 range 18 .. 18;
      RXPWDDIFF  at 0 range 19 .. 19;
      RXPWDRX    at 0 range 20 .. 20;
      RSVD2      at 0 range 21 .. 31;
   end record;

   subtype USBPHY1_PWD_TOG_RSVD0_Field is HAL.UInt10;
   subtype USBPHY1_PWD_TOG_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_PWD_TOG_RSVD2_Field is HAL.UInt11;

   --  USB PHY Power-Down Register
   type USBPHY1_PWD_TOG_Register is record
      --  Read-only. Reserved.
      RSVD0      : USBPHY1_PWD_TOG_RSVD0_Field := 16#0#;
      --  0 = Normal operation
      TXPWDFS    : Boolean := True;
      --  0 = Normal operation
      TXPWDIBIAS : Boolean := True;
      --  0 = Normal operation
      TXPWDV2I   : Boolean := True;
      --  Read-only. Reserved.
      RSVD1      : USBPHY1_PWD_TOG_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXPWDENV   : Boolean := True;
      --  0 = Normal operation
      RXPWD1PT1  : Boolean := True;
      --  0 = Normal operation
      RXPWDDIFF  : Boolean := True;
      --  0 = Normal operation
      RXPWDRX    : Boolean := True;
      --  Read-only. Reserved.
      RSVD2      : USBPHY1_PWD_TOG_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_PWD_TOG_Register use record
      RSVD0      at 0 range 0 .. 9;
      TXPWDFS    at 0 range 10 .. 10;
      TXPWDIBIAS at 0 range 11 .. 11;
      TXPWDV2I   at 0 range 12 .. 12;
      RSVD1      at 0 range 13 .. 16;
      RXPWDENV   at 0 range 17 .. 17;
      RXPWD1PT1  at 0 range 18 .. 18;
      RXPWDDIFF  at 0 range 19 .. 19;
      RXPWDRX    at 0 range 20 .. 20;
      RSVD2      at 0 range 21 .. 31;
   end record;

   subtype USBPHY1_TX_D_CAL_Field is HAL.UInt4;
   subtype USBPHY1_TX_RSVD0_Field is HAL.UInt4;
   subtype USBPHY1_TX_TXCAL45DN_Field is HAL.UInt4;
   subtype USBPHY1_TX_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_TX_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY1_TX_RSVD2_Field is HAL.UInt6;
   subtype USBPHY1_TX_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;
   subtype USBPHY1_TX_RSVD5_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY1_TX_Register is record
      --  Resistor Trimming Code: 0000 = 0.16% 0111 = Nominal 1111 = +25%
      D_CAL              : USBPHY1_TX_D_CAL_Field := 16#7#;
      --  Reserved. Note: This bit should remain clear.
      RSVD0              : USBPHY1_TX_RSVD0_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DN output pin
      TXCAL45DN          : USBPHY1_TX_TXCAL45DN_Field := 16#6#;
      --  Reserved. Note: This bit should remain clear.
      RSVD1              : USBPHY1_TX_RSVD1_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DP output pin
      TXCAL45DP          : USBPHY1_TX_TXCAL45DP_Field := 16#6#;
      --  Read-only. Reserved.
      RSVD2              : USBPHY1_TX_RSVD2_Field := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY1_TX_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  Read-only. Reserved.
      RSVD5              : USBPHY1_TX_RSVD5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_TX_Register use record
      D_CAL              at 0 range 0 .. 3;
      RSVD0              at 0 range 4 .. 7;
      TXCAL45DN          at 0 range 8 .. 11;
      RSVD1              at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      RSVD2              at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      RSVD5              at 0 range 29 .. 31;
   end record;

   subtype USBPHY1_TX_SET_D_CAL_Field is HAL.UInt4;
   subtype USBPHY1_TX_SET_RSVD0_Field is HAL.UInt4;
   subtype USBPHY1_TX_SET_TXCAL45DN_Field is HAL.UInt4;
   subtype USBPHY1_TX_SET_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_TX_SET_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY1_TX_SET_RSVD2_Field is HAL.UInt6;
   subtype USBPHY1_TX_SET_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;
   subtype USBPHY1_TX_SET_RSVD5_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY1_TX_SET_Register is record
      --  Resistor Trimming Code: 0000 = 0.16% 0111 = Nominal 1111 = +25%
      D_CAL              : USBPHY1_TX_SET_D_CAL_Field := 16#7#;
      --  Reserved. Note: This bit should remain clear.
      RSVD0              : USBPHY1_TX_SET_RSVD0_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DN output pin
      TXCAL45DN          : USBPHY1_TX_SET_TXCAL45DN_Field := 16#6#;
      --  Reserved. Note: This bit should remain clear.
      RSVD1              : USBPHY1_TX_SET_RSVD1_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DP output pin
      TXCAL45DP          : USBPHY1_TX_SET_TXCAL45DP_Field := 16#6#;
      --  Read-only. Reserved.
      RSVD2              : USBPHY1_TX_SET_RSVD2_Field := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY1_TX_SET_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  Read-only. Reserved.
      RSVD5              : USBPHY1_TX_SET_RSVD5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_TX_SET_Register use record
      D_CAL              at 0 range 0 .. 3;
      RSVD0              at 0 range 4 .. 7;
      TXCAL45DN          at 0 range 8 .. 11;
      RSVD1              at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      RSVD2              at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      RSVD5              at 0 range 29 .. 31;
   end record;

   subtype USBPHY1_TX_CLR_D_CAL_Field is HAL.UInt4;
   subtype USBPHY1_TX_CLR_RSVD0_Field is HAL.UInt4;
   subtype USBPHY1_TX_CLR_TXCAL45DN_Field is HAL.UInt4;
   subtype USBPHY1_TX_CLR_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_TX_CLR_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY1_TX_CLR_RSVD2_Field is HAL.UInt6;
   subtype USBPHY1_TX_CLR_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;
   subtype USBPHY1_TX_CLR_RSVD5_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY1_TX_CLR_Register is record
      --  Resistor Trimming Code: 0000 = 0.16% 0111 = Nominal 1111 = +25%
      D_CAL              : USBPHY1_TX_CLR_D_CAL_Field := 16#7#;
      --  Reserved. Note: This bit should remain clear.
      RSVD0              : USBPHY1_TX_CLR_RSVD0_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DN output pin
      TXCAL45DN          : USBPHY1_TX_CLR_TXCAL45DN_Field := 16#6#;
      --  Reserved. Note: This bit should remain clear.
      RSVD1              : USBPHY1_TX_CLR_RSVD1_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DP output pin
      TXCAL45DP          : USBPHY1_TX_CLR_TXCAL45DP_Field := 16#6#;
      --  Read-only. Reserved.
      RSVD2              : USBPHY1_TX_CLR_RSVD2_Field := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY1_TX_CLR_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  Read-only. Reserved.
      RSVD5              : USBPHY1_TX_CLR_RSVD5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_TX_CLR_Register use record
      D_CAL              at 0 range 0 .. 3;
      RSVD0              at 0 range 4 .. 7;
      TXCAL45DN          at 0 range 8 .. 11;
      RSVD1              at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      RSVD2              at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      RSVD5              at 0 range 29 .. 31;
   end record;

   subtype USBPHY1_TX_TOG_D_CAL_Field is HAL.UInt4;
   subtype USBPHY1_TX_TOG_RSVD0_Field is HAL.UInt4;
   subtype USBPHY1_TX_TOG_TXCAL45DN_Field is HAL.UInt4;
   subtype USBPHY1_TX_TOG_RSVD1_Field is HAL.UInt4;
   subtype USBPHY1_TX_TOG_TXCAL45DP_Field is HAL.UInt4;
   subtype USBPHY1_TX_TOG_RSVD2_Field is HAL.UInt6;
   subtype USBPHY1_TX_TOG_USBPHY_TX_EDGECTRL_Field is HAL.UInt3;
   subtype USBPHY1_TX_TOG_RSVD5_Field is HAL.UInt3;

   --  USB PHY Transmitter Control Register
   type USBPHY1_TX_TOG_Register is record
      --  Resistor Trimming Code: 0000 = 0.16% 0111 = Nominal 1111 = +25%
      D_CAL              : USBPHY1_TX_TOG_D_CAL_Field := 16#7#;
      --  Reserved. Note: This bit should remain clear.
      RSVD0              : USBPHY1_TX_TOG_RSVD0_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DN output pin
      TXCAL45DN          : USBPHY1_TX_TOG_TXCAL45DN_Field := 16#6#;
      --  Reserved. Note: This bit should remain clear.
      RSVD1              : USBPHY1_TX_TOG_RSVD1_Field := 16#0#;
      --  Decode to select a 45-Ohm resistance to the USB_DP output pin
      TXCAL45DP          : USBPHY1_TX_TOG_TXCAL45DP_Field := 16#6#;
      --  Read-only. Reserved.
      RSVD2              : USBPHY1_TX_TOG_RSVD2_Field := 16#0#;
      --  Controls the edge-rate of the current sensing transistors used in HS
      --  transmit
      USBPHY_TX_EDGECTRL : USBPHY1_TX_TOG_USBPHY_TX_EDGECTRL_Field := 16#4#;
      --  Read-only. Reserved.
      RSVD5              : USBPHY1_TX_TOG_RSVD5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_TX_TOG_Register use record
      D_CAL              at 0 range 0 .. 3;
      RSVD0              at 0 range 4 .. 7;
      TXCAL45DN          at 0 range 8 .. 11;
      RSVD1              at 0 range 12 .. 15;
      TXCAL45DP          at 0 range 16 .. 19;
      RSVD2              at 0 range 20 .. 25;
      USBPHY_TX_EDGECTRL at 0 range 26 .. 28;
      RSVD5              at 0 range 29 .. 31;
   end record;

   subtype USBPHY1_RX_ENVADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_DISCONADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_RSVD1_Field is HAL.UInt15;
   subtype USBPHY1_RX_RSVD2_Field is HAL.UInt9;

   --  USB PHY Receiver Control Register
   type USBPHY1_RX_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ    : USBPHY1_RX_ENVADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0     : Boolean := False;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector: 000 = Trip-Level Voltage is 0
      DISCONADJ : USBPHY1_RX_DISCONADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1     : USBPHY1_RX_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXDBYPASS : Boolean := False;
      --  Read-only. Reserved.
      RSVD2     : USBPHY1_RX_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_RX_Register use record
      ENVADJ    at 0 range 0 .. 2;
      RSVD0     at 0 range 3 .. 3;
      DISCONADJ at 0 range 4 .. 6;
      RSVD1     at 0 range 7 .. 21;
      RXDBYPASS at 0 range 22 .. 22;
      RSVD2     at 0 range 23 .. 31;
   end record;

   subtype USBPHY1_RX_SET_ENVADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_SET_DISCONADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_SET_RSVD1_Field is HAL.UInt15;
   subtype USBPHY1_RX_SET_RSVD2_Field is HAL.UInt9;

   --  USB PHY Receiver Control Register
   type USBPHY1_RX_SET_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ    : USBPHY1_RX_SET_ENVADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0     : Boolean := False;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector: 000 = Trip-Level Voltage is 0
      DISCONADJ : USBPHY1_RX_SET_DISCONADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1     : USBPHY1_RX_SET_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXDBYPASS : Boolean := False;
      --  Read-only. Reserved.
      RSVD2     : USBPHY1_RX_SET_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_RX_SET_Register use record
      ENVADJ    at 0 range 0 .. 2;
      RSVD0     at 0 range 3 .. 3;
      DISCONADJ at 0 range 4 .. 6;
      RSVD1     at 0 range 7 .. 21;
      RXDBYPASS at 0 range 22 .. 22;
      RSVD2     at 0 range 23 .. 31;
   end record;

   subtype USBPHY1_RX_CLR_ENVADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_CLR_DISCONADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_CLR_RSVD1_Field is HAL.UInt15;
   subtype USBPHY1_RX_CLR_RSVD2_Field is HAL.UInt9;

   --  USB PHY Receiver Control Register
   type USBPHY1_RX_CLR_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ    : USBPHY1_RX_CLR_ENVADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0     : Boolean := False;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector: 000 = Trip-Level Voltage is 0
      DISCONADJ : USBPHY1_RX_CLR_DISCONADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1     : USBPHY1_RX_CLR_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXDBYPASS : Boolean := False;
      --  Read-only. Reserved.
      RSVD2     : USBPHY1_RX_CLR_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_RX_CLR_Register use record
      ENVADJ    at 0 range 0 .. 2;
      RSVD0     at 0 range 3 .. 3;
      DISCONADJ at 0 range 4 .. 6;
      RSVD1     at 0 range 7 .. 21;
      RXDBYPASS at 0 range 22 .. 22;
      RSVD2     at 0 range 23 .. 31;
   end record;

   subtype USBPHY1_RX_TOG_ENVADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_TOG_DISCONADJ_Field is HAL.UInt3;
   subtype USBPHY1_RX_TOG_RSVD1_Field is HAL.UInt15;
   subtype USBPHY1_RX_TOG_RSVD2_Field is HAL.UInt9;

   --  USB PHY Receiver Control Register
   type USBPHY1_RX_TOG_Register is record
      --  The ENVADJ field adjusts the trip point for the envelope detector
      ENVADJ    : USBPHY1_RX_TOG_ENVADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0     : Boolean := False;
      --  The DISCONADJ field adjusts the trip point for the disconnect
      --  detector: 000 = Trip-Level Voltage is 0
      DISCONADJ : USBPHY1_RX_TOG_DISCONADJ_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1     : USBPHY1_RX_TOG_RSVD1_Field := 16#0#;
      --  0 = Normal operation
      RXDBYPASS : Boolean := False;
      --  Read-only. Reserved.
      RSVD2     : USBPHY1_RX_TOG_RSVD2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_RX_TOG_Register use record
      ENVADJ    at 0 range 0 .. 2;
      RSVD0     at 0 range 3 .. 3;
      DISCONADJ at 0 range 4 .. 6;
      RSVD1     at 0 range 7 .. 21;
      RXDBYPASS at 0 range 22 .. 22;
      RSVD2     at 0 range 23 .. 31;
   end record;

   --  USBPHY1_CTRL_ENUTMILEVEL array
   type USBPHY1_CTRL_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY1_CTRL_ENUTMILEVEL
   type USBPHY1_CTRL_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY1_CTRL_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY1_CTRL_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY1_CTRL_RSVD1_Field is HAL.UInt2;

   --  USB PHY General Control Register
   type USBPHY1_CTRL_Register is record
      --  Enable OTG_ID_CHG_IRQ.
      ENOTG_ID_CHG_IRQ     : Boolean := False;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  Enables interrupt for detection of disconnection to Device when in
      --  high-speed host mode
      ENIRQHOSTDISCON      : Boolean := False;
      --  Indicates that the device has disconnected in high-speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  For device mode, enables 200-KOhm pullups for detecting connectivity
      --  to the host.
      ENDEVPLUGINDETECT    : Boolean := False;
      --  For device mode, if this bit is cleared to 0, then it trips the
      --  interrupt if the device is plugged in
      DEVPLUGIN_POLARITY   : Boolean := False;
      --  OTG ID change interrupt. Indicates the value of ID pin changed.
      OTG_ID_CHG_IRQ       : Boolean := False;
      --  Enables circuit to detect resistance of MiniAB ID pin.
      ENOTGIDDETECT        : Boolean := False;
      --  Set to 1 will make RESUME_IRQ bit a sticky bit until software clear
      --  it
      RESUMEIRQSTICKY      : Boolean := False;
      --  Enables interrupt for detection of a non-J state on the USB line
      ENIRQRESUMEDETECT    : Boolean := False;
      --  Indicates that the host is sending a wake-up after suspend
      RESUME_IRQ           : Boolean := False;
      --  Enables interrupt for the detection of connectivity to the USB line.
      ENIRQDEVPLUGIN       : Boolean := False;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  Enables the LRADC to monitor USB_DP and USB_DM. This is for use in
      --  non-USB modes only.
      DATA_ON_LRADC        : Boolean := False;
      --  Enables UTMI+ Level2. This should be enabled if needs to support LS
      --  device
      ENUTMILEVEL          : USBPHY1_CTRL_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  Enables interrupt for the wakeup events.
      ENIRQWAKEUP          : Boolean := False;
      --  Indicates that there is a wakeup event
      WAKEUP_IRQ           : Boolean := False;
      --  Enables the feature to auto-enable the POWER bit of
      --  HW_CLKCTRL_PLLxCTRL0 if there is wakeup event if USB is suspended
      ENAUTO_PWRON_PLL     : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in
      --  USBPHYx_PWD if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  Enables the feature to wakeup USB if DP/DM is toggled when USB is
      --  suspended
      ENDPDMCHG_WKUP       : Boolean := True;
      --  Enables the feature to wakeup USB if ID is toggled when USB is
      --  suspended.
      ENIDCHG_WKUP         : Boolean := False;
      --  Enables the feature to wakeup USB if VBUS is toggled when USB is
      --  suspended.
      ENVBUSCHG_WKUP       : Boolean := False;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_CTRL_RSVD1_Field := 16#0#;
      --  Read-only. Almost same as OTGID_STATUS in USBPHYx_STATUS Register
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with LS
      --  timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHYx_PWD, USBPHYx_TX,
      --  USBPHYx_RX, and USBPHYx_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_CTRL_Register use record
      ENOTG_ID_CHG_IRQ     at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      ENIRQHOSTDISCON      at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDETECT    at 0 range 4 .. 4;
      DEVPLUGIN_POLARITY   at 0 range 5 .. 5;
      OTG_ID_CHG_IRQ       at 0 range 6 .. 6;
      ENOTGIDDETECT        at 0 range 7 .. 7;
      RESUMEIRQSTICKY      at 0 range 8 .. 8;
      ENIRQRESUMEDETECT    at 0 range 9 .. 9;
      RESUME_IRQ           at 0 range 10 .. 10;
      ENIRQDEVPLUGIN       at 0 range 11 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      DATA_ON_LRADC        at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      ENIRQWAKEUP          at 0 range 16 .. 16;
      WAKEUP_IRQ           at 0 range 17 .. 17;
      ENAUTO_PWRON_PLL     at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      ENDPDMCHG_WKUP       at 0 range 21 .. 21;
      ENIDCHG_WKUP         at 0 range 22 .. 22;
      ENVBUSCHG_WKUP       at 0 range 23 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      RSVD1                at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  USBPHY1_CTRL_SET_ENUTMILEVEL array
   type USBPHY1_CTRL_SET_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY1_CTRL_SET_ENUTMILEVEL
   type USBPHY1_CTRL_SET_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY1_CTRL_SET_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY1_CTRL_SET_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY1_CTRL_SET_RSVD1_Field is HAL.UInt2;

   --  USB PHY General Control Register
   type USBPHY1_CTRL_SET_Register is record
      --  Enable OTG_ID_CHG_IRQ.
      ENOTG_ID_CHG_IRQ     : Boolean := False;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  Enables interrupt for detection of disconnection to Device when in
      --  high-speed host mode
      ENIRQHOSTDISCON      : Boolean := False;
      --  Indicates that the device has disconnected in high-speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  For device mode, enables 200-KOhm pullups for detecting connectivity
      --  to the host.
      ENDEVPLUGINDETECT    : Boolean := False;
      --  For device mode, if this bit is cleared to 0, then it trips the
      --  interrupt if the device is plugged in
      DEVPLUGIN_POLARITY   : Boolean := False;
      --  OTG ID change interrupt. Indicates the value of ID pin changed.
      OTG_ID_CHG_IRQ       : Boolean := False;
      --  Enables circuit to detect resistance of MiniAB ID pin.
      ENOTGIDDETECT        : Boolean := False;
      --  Set to 1 will make RESUME_IRQ bit a sticky bit until software clear
      --  it
      RESUMEIRQSTICKY      : Boolean := False;
      --  Enables interrupt for detection of a non-J state on the USB line
      ENIRQRESUMEDETECT    : Boolean := False;
      --  Indicates that the host is sending a wake-up after suspend
      RESUME_IRQ           : Boolean := False;
      --  Enables interrupt for the detection of connectivity to the USB line.
      ENIRQDEVPLUGIN       : Boolean := False;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  Enables the LRADC to monitor USB_DP and USB_DM. This is for use in
      --  non-USB modes only.
      DATA_ON_LRADC        : Boolean := False;
      --  Enables UTMI+ Level2. This should be enabled if needs to support LS
      --  device
      ENUTMILEVEL          : USBPHY1_CTRL_SET_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  Enables interrupt for the wakeup events.
      ENIRQWAKEUP          : Boolean := False;
      --  Indicates that there is a wakeup event
      WAKEUP_IRQ           : Boolean := False;
      --  Enables the feature to auto-enable the POWER bit of
      --  HW_CLKCTRL_PLLxCTRL0 if there is wakeup event if USB is suspended
      ENAUTO_PWRON_PLL     : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in
      --  USBPHYx_PWD if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  Enables the feature to wakeup USB if DP/DM is toggled when USB is
      --  suspended
      ENDPDMCHG_WKUP       : Boolean := True;
      --  Enables the feature to wakeup USB if ID is toggled when USB is
      --  suspended.
      ENIDCHG_WKUP         : Boolean := False;
      --  Enables the feature to wakeup USB if VBUS is toggled when USB is
      --  suspended.
      ENVBUSCHG_WKUP       : Boolean := False;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_CTRL_SET_RSVD1_Field := 16#0#;
      --  Read-only. Almost same as OTGID_STATUS in USBPHYx_STATUS Register
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with LS
      --  timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHYx_PWD, USBPHYx_TX,
      --  USBPHYx_RX, and USBPHYx_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_CTRL_SET_Register use record
      ENOTG_ID_CHG_IRQ     at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      ENIRQHOSTDISCON      at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDETECT    at 0 range 4 .. 4;
      DEVPLUGIN_POLARITY   at 0 range 5 .. 5;
      OTG_ID_CHG_IRQ       at 0 range 6 .. 6;
      ENOTGIDDETECT        at 0 range 7 .. 7;
      RESUMEIRQSTICKY      at 0 range 8 .. 8;
      ENIRQRESUMEDETECT    at 0 range 9 .. 9;
      RESUME_IRQ           at 0 range 10 .. 10;
      ENIRQDEVPLUGIN       at 0 range 11 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      DATA_ON_LRADC        at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      ENIRQWAKEUP          at 0 range 16 .. 16;
      WAKEUP_IRQ           at 0 range 17 .. 17;
      ENAUTO_PWRON_PLL     at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      ENDPDMCHG_WKUP       at 0 range 21 .. 21;
      ENIDCHG_WKUP         at 0 range 22 .. 22;
      ENVBUSCHG_WKUP       at 0 range 23 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      RSVD1                at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  USBPHY1_CTRL_CLR_ENUTMILEVEL array
   type USBPHY1_CTRL_CLR_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY1_CTRL_CLR_ENUTMILEVEL
   type USBPHY1_CTRL_CLR_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY1_CTRL_CLR_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY1_CTRL_CLR_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY1_CTRL_CLR_RSVD1_Field is HAL.UInt2;

   --  USB PHY General Control Register
   type USBPHY1_CTRL_CLR_Register is record
      --  Enable OTG_ID_CHG_IRQ.
      ENOTG_ID_CHG_IRQ     : Boolean := False;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  Enables interrupt for detection of disconnection to Device when in
      --  high-speed host mode
      ENIRQHOSTDISCON      : Boolean := False;
      --  Indicates that the device has disconnected in high-speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  For device mode, enables 200-KOhm pullups for detecting connectivity
      --  to the host.
      ENDEVPLUGINDETECT    : Boolean := False;
      --  For device mode, if this bit is cleared to 0, then it trips the
      --  interrupt if the device is plugged in
      DEVPLUGIN_POLARITY   : Boolean := False;
      --  OTG ID change interrupt. Indicates the value of ID pin changed.
      OTG_ID_CHG_IRQ       : Boolean := False;
      --  Enables circuit to detect resistance of MiniAB ID pin.
      ENOTGIDDETECT        : Boolean := False;
      --  Set to 1 will make RESUME_IRQ bit a sticky bit until software clear
      --  it
      RESUMEIRQSTICKY      : Boolean := False;
      --  Enables interrupt for detection of a non-J state on the USB line
      ENIRQRESUMEDETECT    : Boolean := False;
      --  Indicates that the host is sending a wake-up after suspend
      RESUME_IRQ           : Boolean := False;
      --  Enables interrupt for the detection of connectivity to the USB line.
      ENIRQDEVPLUGIN       : Boolean := False;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  Enables the LRADC to monitor USB_DP and USB_DM. This is for use in
      --  non-USB modes only.
      DATA_ON_LRADC        : Boolean := False;
      --  Enables UTMI+ Level2. This should be enabled if needs to support LS
      --  device
      ENUTMILEVEL          : USBPHY1_CTRL_CLR_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  Enables interrupt for the wakeup events.
      ENIRQWAKEUP          : Boolean := False;
      --  Indicates that there is a wakeup event
      WAKEUP_IRQ           : Boolean := False;
      --  Enables the feature to auto-enable the POWER bit of
      --  HW_CLKCTRL_PLLxCTRL0 if there is wakeup event if USB is suspended
      ENAUTO_PWRON_PLL     : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in
      --  USBPHYx_PWD if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  Enables the feature to wakeup USB if DP/DM is toggled when USB is
      --  suspended
      ENDPDMCHG_WKUP       : Boolean := True;
      --  Enables the feature to wakeup USB if ID is toggled when USB is
      --  suspended.
      ENIDCHG_WKUP         : Boolean := False;
      --  Enables the feature to wakeup USB if VBUS is toggled when USB is
      --  suspended.
      ENVBUSCHG_WKUP       : Boolean := False;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_CTRL_CLR_RSVD1_Field := 16#0#;
      --  Read-only. Almost same as OTGID_STATUS in USBPHYx_STATUS Register
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with LS
      --  timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHYx_PWD, USBPHYx_TX,
      --  USBPHYx_RX, and USBPHYx_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_CTRL_CLR_Register use record
      ENOTG_ID_CHG_IRQ     at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      ENIRQHOSTDISCON      at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDETECT    at 0 range 4 .. 4;
      DEVPLUGIN_POLARITY   at 0 range 5 .. 5;
      OTG_ID_CHG_IRQ       at 0 range 6 .. 6;
      ENOTGIDDETECT        at 0 range 7 .. 7;
      RESUMEIRQSTICKY      at 0 range 8 .. 8;
      ENIRQRESUMEDETECT    at 0 range 9 .. 9;
      RESUME_IRQ           at 0 range 10 .. 10;
      ENIRQDEVPLUGIN       at 0 range 11 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      DATA_ON_LRADC        at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      ENIRQWAKEUP          at 0 range 16 .. 16;
      WAKEUP_IRQ           at 0 range 17 .. 17;
      ENAUTO_PWRON_PLL     at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      ENDPDMCHG_WKUP       at 0 range 21 .. 21;
      ENIDCHG_WKUP         at 0 range 22 .. 22;
      ENVBUSCHG_WKUP       at 0 range 23 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      RSVD1                at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   --  USBPHY1_CTRL_TOG_ENUTMILEVEL array
   type USBPHY1_CTRL_TOG_ENUTMILEVEL_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USBPHY1_CTRL_TOG_ENUTMILEVEL
   type USBPHY1_CTRL_TOG_ENUTMILEVEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENUTMILEVEL as a value
            Val : HAL.UInt2;
         when True =>
            --  ENUTMILEVEL as an array
            Arr : USBPHY1_CTRL_TOG_ENUTMILEVEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBPHY1_CTRL_TOG_ENUTMILEVEL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype USBPHY1_CTRL_TOG_RSVD1_Field is HAL.UInt2;

   --  USB PHY General Control Register
   type USBPHY1_CTRL_TOG_Register is record
      --  Enable OTG_ID_CHG_IRQ.
      ENOTG_ID_CHG_IRQ     : Boolean := False;
      --  For host mode, enables high-speed disconnect detector
      ENHOSTDISCONDETECT   : Boolean := False;
      --  Enables interrupt for detection of disconnection to Device when in
      --  high-speed host mode
      ENIRQHOSTDISCON      : Boolean := False;
      --  Indicates that the device has disconnected in high-speed mode
      HOSTDISCONDETECT_IRQ : Boolean := False;
      --  For device mode, enables 200-KOhm pullups for detecting connectivity
      --  to the host.
      ENDEVPLUGINDETECT    : Boolean := False;
      --  For device mode, if this bit is cleared to 0, then it trips the
      --  interrupt if the device is plugged in
      DEVPLUGIN_POLARITY   : Boolean := False;
      --  OTG ID change interrupt. Indicates the value of ID pin changed.
      OTG_ID_CHG_IRQ       : Boolean := False;
      --  Enables circuit to detect resistance of MiniAB ID pin.
      ENOTGIDDETECT        : Boolean := False;
      --  Set to 1 will make RESUME_IRQ bit a sticky bit until software clear
      --  it
      RESUMEIRQSTICKY      : Boolean := False;
      --  Enables interrupt for detection of a non-J state on the USB line
      ENIRQRESUMEDETECT    : Boolean := False;
      --  Indicates that the host is sending a wake-up after suspend
      RESUME_IRQ           : Boolean := False;
      --  Enables interrupt for the detection of connectivity to the USB line.
      ENIRQDEVPLUGIN       : Boolean := False;
      --  Indicates that the device is connected
      DEVPLUGIN_IRQ        : Boolean := False;
      --  Enables the LRADC to monitor USB_DP and USB_DM. This is for use in
      --  non-USB modes only.
      DATA_ON_LRADC        : Boolean := False;
      --  Enables UTMI+ Level2. This should be enabled if needs to support LS
      --  device
      ENUTMILEVEL          : USBPHY1_CTRL_TOG_ENUTMILEVEL_Field :=
                              (As_Array => False, Val => 16#0#);
      --  Enables interrupt for the wakeup events.
      ENIRQWAKEUP          : Boolean := False;
      --  Indicates that there is a wakeup event
      WAKEUP_IRQ           : Boolean := False;
      --  Enables the feature to auto-enable the POWER bit of
      --  HW_CLKCTRL_PLLxCTRL0 if there is wakeup event if USB is suspended
      ENAUTO_PWRON_PLL     : Boolean := False;
      --  Enables the feature to auto-clear the CLKGATE bit if there is wakeup
      --  event while USB is suspended
      ENAUTOCLR_CLKGATE    : Boolean := False;
      --  Enables the feature to auto-clear the PWD register bits in
      --  USBPHYx_PWD if there is wakeup event while USB is suspended
      ENAUTOCLR_PHY_PWD    : Boolean := False;
      --  Enables the feature to wakeup USB if DP/DM is toggled when USB is
      --  suspended
      ENDPDMCHG_WKUP       : Boolean := True;
      --  Enables the feature to wakeup USB if ID is toggled when USB is
      --  suspended.
      ENIDCHG_WKUP         : Boolean := False;
      --  Enables the feature to wakeup USB if VBUS is toggled when USB is
      --  suspended.
      ENVBUSCHG_WKUP       : Boolean := False;
      --  Enables the feature to reset the FSDLL lock detection logic at the
      --  end of each TX packet.
      FSDLL_RST_EN         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_CTRL_TOG_RSVD1_Field := 16#0#;
      --  Read-only. Almost same as OTGID_STATUS in USBPHYx_STATUS Register
      OTG_ID_VALUE         : Boolean := False;
      --  Forces the next FS packet that is transmitted to have a EOP with LS
      --  timing
      HOST_FORCE_LS_SE0    : Boolean := False;
      --  Read-only. Used by the PHY to indicate a powered-down state
      UTMI_SUSPENDM        : Boolean := False;
      --  Gate UTMI Clocks
      CLKGATE              : Boolean := True;
      --  Writing a 1 to this bit will soft-reset the USBPHYx_PWD, USBPHYx_TX,
      --  USBPHYx_RX, and USBPHYx_CTRL registers
      SFTRST               : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_CTRL_TOG_Register use record
      ENOTG_ID_CHG_IRQ     at 0 range 0 .. 0;
      ENHOSTDISCONDETECT   at 0 range 1 .. 1;
      ENIRQHOSTDISCON      at 0 range 2 .. 2;
      HOSTDISCONDETECT_IRQ at 0 range 3 .. 3;
      ENDEVPLUGINDETECT    at 0 range 4 .. 4;
      DEVPLUGIN_POLARITY   at 0 range 5 .. 5;
      OTG_ID_CHG_IRQ       at 0 range 6 .. 6;
      ENOTGIDDETECT        at 0 range 7 .. 7;
      RESUMEIRQSTICKY      at 0 range 8 .. 8;
      ENIRQRESUMEDETECT    at 0 range 9 .. 9;
      RESUME_IRQ           at 0 range 10 .. 10;
      ENIRQDEVPLUGIN       at 0 range 11 .. 11;
      DEVPLUGIN_IRQ        at 0 range 12 .. 12;
      DATA_ON_LRADC        at 0 range 13 .. 13;
      ENUTMILEVEL          at 0 range 14 .. 15;
      ENIRQWAKEUP          at 0 range 16 .. 16;
      WAKEUP_IRQ           at 0 range 17 .. 17;
      ENAUTO_PWRON_PLL     at 0 range 18 .. 18;
      ENAUTOCLR_CLKGATE    at 0 range 19 .. 19;
      ENAUTOCLR_PHY_PWD    at 0 range 20 .. 20;
      ENDPDMCHG_WKUP       at 0 range 21 .. 21;
      ENIDCHG_WKUP         at 0 range 22 .. 22;
      ENVBUSCHG_WKUP       at 0 range 23 .. 23;
      FSDLL_RST_EN         at 0 range 24 .. 24;
      RSVD1                at 0 range 25 .. 26;
      OTG_ID_VALUE         at 0 range 27 .. 27;
      HOST_FORCE_LS_SE0    at 0 range 28 .. 28;
      UTMI_SUSPENDM        at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      SFTRST               at 0 range 31 .. 31;
   end record;

   subtype USBPHY1_STATUS_RSVD0_Field is HAL.UInt3;
   subtype USBPHY1_STATUS_RSVD1_Field is HAL.UInt2;
   subtype USBPHY1_STATUS_RSVD4_Field is HAL.UInt21;

   --  USB PHY Status Register
   type USBPHY1_STATUS_Register is record
      --  Read-only. Reserved.
      RSVD0                   : USBPHY1_STATUS_RSVD0_Field := 16#0#;
      --  Read-only. Indicates that the device has disconnected while in
      --  high-speed host mode.
      HOSTDISCONDETECT_STATUS : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                   : USBPHY1_STATUS_RSVD1_Field := 16#0#;
      --  Read-only. Indicates that the device has been connected on the USB_DP
      --  and USB_DM lines.
      DEVPLUGIN_STATUS        : Boolean := False;
      --  Read-only. Reserved.
      RSVD2                   : Boolean := False;
      --  Indicates the results of ID pin on MiniAB plug
      OTGID_STATUS            : Boolean := False;
      --  Read-only. Reserved.
      RSVD3                   : Boolean := False;
      --  Read-only. Indicates that the host is sending a wake-up after suspend
      --  and has triggered an interrupt.
      RESUME_STATUS           : Boolean := False;
      --  Read-only. Reserved.
      RSVD4                   : USBPHY1_STATUS_RSVD4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_STATUS_Register use record
      RSVD0                   at 0 range 0 .. 2;
      HOSTDISCONDETECT_STATUS at 0 range 3 .. 3;
      RSVD1                   at 0 range 4 .. 5;
      DEVPLUGIN_STATUS        at 0 range 6 .. 6;
      RSVD2                   at 0 range 7 .. 7;
      OTGID_STATUS            at 0 range 8 .. 8;
      RSVD3                   at 0 range 9 .. 9;
      RESUME_STATUS           at 0 range 10 .. 10;
      RSVD4                   at 0 range 11 .. 31;
   end record;

   subtype USBPHY1_DEBUG_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_RSVD0_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY1_DEBUG_RSVD1_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY1_DEBUG_RSVD2_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY1_DEBUG_Register is record
      --  Once OTG ID from USBPHYx_STATUS_OTGID_STATUS, use this to hold the
      --  value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  Set bit 3 to 1 to pull down 15-KOhm on USB_DP line
      HSTPULLDOWN          : USBPHY1_DEBUG_HSTPULLDOWN_Field := 16#0#;
      --  Set bit 5 to 1 to override the control of the USB_DP 15-KOhm pulldown
      ENHSTPULLDOWN        : USBPHY1_DEBUG_ENHSTPULLDOWN_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0                : USBPHY1_DEBUG_RSVD0_Field := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY1_DEBUG_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_DEBUG_RSVD1_Field := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY1_DEBUG_SQUELCHRESETCOUNT_Field := 16#18#;
      --  Read-only. Reserved.
      RSVD2                : USBPHY1_DEBUG_RSVD2_Field := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY1_DEBUG_SQUELCHRESETLENGTH_Field := 16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  Read-only. Reserved.
      RSVD3                : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      RSVD0                at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      RSVD1                at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      RSVD2                at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      RSVD3                at 0 range 31 .. 31;
   end record;

   subtype USBPHY1_DEBUG_SET_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_SET_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_SET_RSVD0_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_SET_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY1_DEBUG_SET_RSVD1_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_SET_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY1_DEBUG_SET_RSVD2_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_SET_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY1_DEBUG_SET_Register is record
      --  Once OTG ID from USBPHYx_STATUS_OTGID_STATUS, use this to hold the
      --  value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  Set bit 3 to 1 to pull down 15-KOhm on USB_DP line
      HSTPULLDOWN          : USBPHY1_DEBUG_SET_HSTPULLDOWN_Field := 16#0#;
      --  Set bit 5 to 1 to override the control of the USB_DP 15-KOhm pulldown
      ENHSTPULLDOWN        : USBPHY1_DEBUG_SET_ENHSTPULLDOWN_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0                : USBPHY1_DEBUG_SET_RSVD0_Field := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY1_DEBUG_SET_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_DEBUG_SET_RSVD1_Field := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY1_DEBUG_SET_SQUELCHRESETCOUNT_Field :=
                              16#18#;
      --  Read-only. Reserved.
      RSVD2                : USBPHY1_DEBUG_SET_RSVD2_Field := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY1_DEBUG_SET_SQUELCHRESETLENGTH_Field :=
                              16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  Read-only. Reserved.
      RSVD3                : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG_SET_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      RSVD0                at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      RSVD1                at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      RSVD2                at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      RSVD3                at 0 range 31 .. 31;
   end record;

   subtype USBPHY1_DEBUG_CLR_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_CLR_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_CLR_RSVD0_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_CLR_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY1_DEBUG_CLR_RSVD1_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_CLR_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY1_DEBUG_CLR_RSVD2_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_CLR_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY1_DEBUG_CLR_Register is record
      --  Once OTG ID from USBPHYx_STATUS_OTGID_STATUS, use this to hold the
      --  value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  Set bit 3 to 1 to pull down 15-KOhm on USB_DP line
      HSTPULLDOWN          : USBPHY1_DEBUG_CLR_HSTPULLDOWN_Field := 16#0#;
      --  Set bit 5 to 1 to override the control of the USB_DP 15-KOhm pulldown
      ENHSTPULLDOWN        : USBPHY1_DEBUG_CLR_ENHSTPULLDOWN_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0                : USBPHY1_DEBUG_CLR_RSVD0_Field := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY1_DEBUG_CLR_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_DEBUG_CLR_RSVD1_Field := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY1_DEBUG_CLR_SQUELCHRESETCOUNT_Field :=
                              16#18#;
      --  Read-only. Reserved.
      RSVD2                : USBPHY1_DEBUG_CLR_RSVD2_Field := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY1_DEBUG_CLR_SQUELCHRESETLENGTH_Field :=
                              16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  Read-only. Reserved.
      RSVD3                : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG_CLR_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      RSVD0                at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      RSVD1                at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      RSVD2                at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      RSVD3                at 0 range 31 .. 31;
   end record;

   subtype USBPHY1_DEBUG_TOG_HSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_TOG_ENHSTPULLDOWN_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_TOG_RSVD0_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG_TOG_TX2RXCOUNT_Field is HAL.UInt4;
   subtype USBPHY1_DEBUG_TOG_RSVD1_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_TOG_SQUELCHRESETCOUNT_Field is HAL.UInt5;
   subtype USBPHY1_DEBUG_TOG_RSVD2_Field is HAL.UInt3;
   subtype USBPHY1_DEBUG_TOG_SQUELCHRESETLENGTH_Field is HAL.UInt4;

   --  USB PHY Debug Register
   type USBPHY1_DEBUG_TOG_Register is record
      --  Once OTG ID from USBPHYx_STATUS_OTGID_STATUS, use this to hold the
      --  value
      OTGIDPIOLOCK         : Boolean := False;
      --  Use holding registers to assist in timing for external UTMI
      --  interface.
      DEBUG_INTERFACE_HOLD : Boolean := False;
      --  Set bit 3 to 1 to pull down 15-KOhm on USB_DP line
      HSTPULLDOWN          : USBPHY1_DEBUG_TOG_HSTPULLDOWN_Field := 16#0#;
      --  Set bit 5 to 1 to override the control of the USB_DP 15-KOhm pulldown
      ENHSTPULLDOWN        : USBPHY1_DEBUG_TOG_ENHSTPULLDOWN_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD0                : USBPHY1_DEBUG_TOG_RSVD0_Field := 16#0#;
      --  Delay in between the end of transmit to the beginning of receive
      TX2RXCOUNT           : USBPHY1_DEBUG_TOG_TX2RXCOUNT_Field := 16#0#;
      --  Set this bit to allow a countdown to transition in between TX and RX.
      ENTX2RXCOUNT         : Boolean := False;
      --  Read-only. Reserved.
      RSVD1                : USBPHY1_DEBUG_TOG_RSVD1_Field := 16#0#;
      --  Delay in between the detection of squelch to the reset of high-speed
      --  RX.
      SQUELCHRESETCOUNT    : USBPHY1_DEBUG_TOG_SQUELCHRESETCOUNT_Field :=
                              16#18#;
      --  Read-only. Reserved.
      RSVD2                : USBPHY1_DEBUG_TOG_RSVD2_Field := 16#0#;
      --  Set bit to allow squelch to reset high-speed receive.
      ENSQUELCHRESET       : Boolean := True;
      --  Duration of RESET in terms of the number of 480-MHz cycles.
      SQUELCHRESETLENGTH   : USBPHY1_DEBUG_TOG_SQUELCHRESETLENGTH_Field :=
                              16#F#;
      --  Choose to trigger the host resume SE0 with HOST_FORCE_LS_SE0 = 0 or
      --  UTMI_SUSPEND = 1.
      HOST_RESUME_DEBUG    : Boolean := True;
      --  Gate Test Clocks
      CLKGATE              : Boolean := True;
      --  Read-only. Reserved.
      RSVD3                : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG_TOG_Register use record
      OTGIDPIOLOCK         at 0 range 0 .. 0;
      DEBUG_INTERFACE_HOLD at 0 range 1 .. 1;
      HSTPULLDOWN          at 0 range 2 .. 3;
      ENHSTPULLDOWN        at 0 range 4 .. 5;
      RSVD0                at 0 range 6 .. 7;
      TX2RXCOUNT           at 0 range 8 .. 11;
      ENTX2RXCOUNT         at 0 range 12 .. 12;
      RSVD1                at 0 range 13 .. 15;
      SQUELCHRESETCOUNT    at 0 range 16 .. 20;
      RSVD2                at 0 range 21 .. 23;
      ENSQUELCHRESET       at 0 range 24 .. 24;
      SQUELCHRESETLENGTH   at 0 range 25 .. 28;
      HOST_RESUME_DEBUG    at 0 range 29 .. 29;
      CLKGATE              at 0 range 30 .. 30;
      RSVD3                at 0 range 31 .. 31;
   end record;

   subtype USBPHY1_DEBUG0_STATUS_LOOP_BACK_FAIL_COUNT_Field is HAL.UInt16;
   subtype USBPHY1_DEBUG0_STATUS_UTMI_RXERROR_FAIL_COUNT_Field is HAL.UInt10;
   subtype USBPHY1_DEBUG0_STATUS_SQUELCH_COUNT_Field is HAL.UInt6;

   --  UTMI Debug Status Register 0
   type USBPHY1_DEBUG0_STATUS_Register is record
      --  Read-only. Running count of the failed pseudo-random generator
      --  loopback
      LOOP_BACK_FAIL_COUNT    : USBPHY1_DEBUG0_STATUS_LOOP_BACK_FAIL_COUNT_Field;
      --  Read-only. Running count of the UTMI_RXERROR.
      UTMI_RXERROR_FAIL_COUNT : USBPHY1_DEBUG0_STATUS_UTMI_RXERROR_FAIL_COUNT_Field;
      --  Read-only. Running count of the squelch reset instead of normal end
      --  for HS RX.
      SQUELCH_COUNT           : USBPHY1_DEBUG0_STATUS_SQUELCH_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG0_STATUS_Register use record
      LOOP_BACK_FAIL_COUNT    at 0 range 0 .. 15;
      UTMI_RXERROR_FAIL_COUNT at 0 range 16 .. 25;
      SQUELCH_COUNT           at 0 range 26 .. 31;
   end record;

   subtype USBPHY1_DEBUG1_RSVD0_Field is HAL.UInt13;
   subtype USBPHY1_DEBUG1_ENTAILADJVD_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG1_RSVD1_Field is HAL.UInt17;

   --  UTMI Debug Status Register 1
   type USBPHY1_DEBUG1_Register is record
      --  Reserved. Note: This bit should remain clear.
      RSVD0       : USBPHY1_DEBUG1_RSVD0_Field := 16#1000#;
      --  Delay increment of the rise of squelch: 00 = Delay is nominal 01 =
      --  Delay is +20% 10 = Delay is -20% 11 = Delay is -40%
      ENTAILADJVD : USBPHY1_DEBUG1_ENTAILADJVD_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1       : USBPHY1_DEBUG1_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG1_Register use record
      RSVD0       at 0 range 0 .. 12;
      ENTAILADJVD at 0 range 13 .. 14;
      RSVD1       at 0 range 15 .. 31;
   end record;

   subtype USBPHY1_DEBUG1_SET_RSVD0_Field is HAL.UInt13;
   subtype USBPHY1_DEBUG1_SET_ENTAILADJVD_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG1_SET_RSVD1_Field is HAL.UInt17;

   --  UTMI Debug Status Register 1
   type USBPHY1_DEBUG1_SET_Register is record
      --  Reserved. Note: This bit should remain clear.
      RSVD0       : USBPHY1_DEBUG1_SET_RSVD0_Field := 16#1000#;
      --  Delay increment of the rise of squelch: 00 = Delay is nominal 01 =
      --  Delay is +20% 10 = Delay is -20% 11 = Delay is -40%
      ENTAILADJVD : USBPHY1_DEBUG1_SET_ENTAILADJVD_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1       : USBPHY1_DEBUG1_SET_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG1_SET_Register use record
      RSVD0       at 0 range 0 .. 12;
      ENTAILADJVD at 0 range 13 .. 14;
      RSVD1       at 0 range 15 .. 31;
   end record;

   subtype USBPHY1_DEBUG1_CLR_RSVD0_Field is HAL.UInt13;
   subtype USBPHY1_DEBUG1_CLR_ENTAILADJVD_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG1_CLR_RSVD1_Field is HAL.UInt17;

   --  UTMI Debug Status Register 1
   type USBPHY1_DEBUG1_CLR_Register is record
      --  Reserved. Note: This bit should remain clear.
      RSVD0       : USBPHY1_DEBUG1_CLR_RSVD0_Field := 16#1000#;
      --  Delay increment of the rise of squelch: 00 = Delay is nominal 01 =
      --  Delay is +20% 10 = Delay is -20% 11 = Delay is -40%
      ENTAILADJVD : USBPHY1_DEBUG1_CLR_ENTAILADJVD_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1       : USBPHY1_DEBUG1_CLR_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG1_CLR_Register use record
      RSVD0       at 0 range 0 .. 12;
      ENTAILADJVD at 0 range 13 .. 14;
      RSVD1       at 0 range 15 .. 31;
   end record;

   subtype USBPHY1_DEBUG1_TOG_RSVD0_Field is HAL.UInt13;
   subtype USBPHY1_DEBUG1_TOG_ENTAILADJVD_Field is HAL.UInt2;
   subtype USBPHY1_DEBUG1_TOG_RSVD1_Field is HAL.UInt17;

   --  UTMI Debug Status Register 1
   type USBPHY1_DEBUG1_TOG_Register is record
      --  Reserved. Note: This bit should remain clear.
      RSVD0       : USBPHY1_DEBUG1_TOG_RSVD0_Field := 16#1000#;
      --  Delay increment of the rise of squelch: 00 = Delay is nominal 01 =
      --  Delay is +20% 10 = Delay is -20% 11 = Delay is -40%
      ENTAILADJVD : USBPHY1_DEBUG1_TOG_ENTAILADJVD_Field := 16#0#;
      --  Read-only. Reserved.
      RSVD1       : USBPHY1_DEBUG1_TOG_RSVD1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_DEBUG1_TOG_Register use record
      RSVD0       at 0 range 0 .. 12;
      ENTAILADJVD at 0 range 13 .. 14;
      RSVD1       at 0 range 15 .. 31;
   end record;

   subtype USBPHY1_VERSION_STEP_Field is HAL.UInt16;
   subtype USBPHY1_VERSION_MINOR_Field is HAL.UInt8;
   subtype USBPHY1_VERSION_MAJOR_Field is HAL.UInt8;

   --  UTMI RTL Version
   type USBPHY1_VERSION_Register is record
      --  Read-only. Fixed read-only value reflecting the stepping of the RTL
      --  version.
      STEP  : USBPHY1_VERSION_STEP_Field;
      --  Read-only. Fixed read-only value reflecting the MINOR field of the
      --  RTL version.
      MINOR : USBPHY1_VERSION_MINOR_Field;
      --  Read-only. Fixed read-only value reflecting the MAJOR field of the
      --  RTL version.
      MAJOR : USBPHY1_VERSION_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBPHY1_VERSION_Register use record
      STEP  at 0 range 0 .. 15;
      MINOR at 0 range 16 .. 23;
      MAJOR at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USBPHY Register Reference Index
   type USBPHY_Peripheral is record
      --  USB PHY Power-Down Register
      PWD           : aliased USBPHY1_PWD_Register;
      --  USB PHY Power-Down Register
      PWD_SET       : aliased USBPHY1_PWD_SET_Register;
      --  USB PHY Power-Down Register
      PWD_CLR       : aliased USBPHY1_PWD_CLR_Register;
      --  USB PHY Power-Down Register
      PWD_TOG       : aliased USBPHY1_PWD_TOG_Register;
      --  USB PHY Transmitter Control Register
      TX            : aliased USBPHY1_TX_Register;
      --  USB PHY Transmitter Control Register
      TX_SET        : aliased USBPHY1_TX_SET_Register;
      --  USB PHY Transmitter Control Register
      TX_CLR        : aliased USBPHY1_TX_CLR_Register;
      --  USB PHY Transmitter Control Register
      TX_TOG        : aliased USBPHY1_TX_TOG_Register;
      --  USB PHY Receiver Control Register
      RX            : aliased USBPHY1_RX_Register;
      --  USB PHY Receiver Control Register
      RX_SET        : aliased USBPHY1_RX_SET_Register;
      --  USB PHY Receiver Control Register
      RX_CLR        : aliased USBPHY1_RX_CLR_Register;
      --  USB PHY Receiver Control Register
      RX_TOG        : aliased USBPHY1_RX_TOG_Register;
      --  USB PHY General Control Register
      CTRL          : aliased USBPHY1_CTRL_Register;
      --  USB PHY General Control Register
      CTRL_SET      : aliased USBPHY1_CTRL_SET_Register;
      --  USB PHY General Control Register
      CTRL_CLR      : aliased USBPHY1_CTRL_CLR_Register;
      --  USB PHY General Control Register
      CTRL_TOG      : aliased USBPHY1_CTRL_TOG_Register;
      --  USB PHY Status Register
      STATUS        : aliased USBPHY1_STATUS_Register;
      --  USB PHY Debug Register
      DEBUG         : aliased USBPHY1_DEBUG_Register;
      --  USB PHY Debug Register
      DEBUG_SET     : aliased USBPHY1_DEBUG_SET_Register;
      --  USB PHY Debug Register
      DEBUG_CLR     : aliased USBPHY1_DEBUG_CLR_Register;
      --  USB PHY Debug Register
      DEBUG_TOG     : aliased USBPHY1_DEBUG_TOG_Register;
      --  UTMI Debug Status Register 0
      DEBUG0_STATUS : aliased USBPHY1_DEBUG0_STATUS_Register;
      --  UTMI Debug Status Register 1
      DEBUG1        : aliased USBPHY1_DEBUG1_Register;
      --  UTMI Debug Status Register 1
      DEBUG1_SET    : aliased USBPHY1_DEBUG1_SET_Register;
      --  UTMI Debug Status Register 1
      DEBUG1_CLR    : aliased USBPHY1_DEBUG1_CLR_Register;
      --  UTMI Debug Status Register 1
      DEBUG1_TOG    : aliased USBPHY1_DEBUG1_TOG_Register;
      --  UTMI RTL Version
      VERSION       : aliased USBPHY1_VERSION_Register;
   end record
     with Volatile;

   for USBPHY_Peripheral use record
      PWD           at 16#0# range 0 .. 31;
      PWD_SET       at 16#4# range 0 .. 31;
      PWD_CLR       at 16#8# range 0 .. 31;
      PWD_TOG       at 16#C# range 0 .. 31;
      TX            at 16#10# range 0 .. 31;
      TX_SET        at 16#14# range 0 .. 31;
      TX_CLR        at 16#18# range 0 .. 31;
      TX_TOG        at 16#1C# range 0 .. 31;
      RX            at 16#20# range 0 .. 31;
      RX_SET        at 16#24# range 0 .. 31;
      RX_CLR        at 16#28# range 0 .. 31;
      RX_TOG        at 16#2C# range 0 .. 31;
      CTRL          at 16#30# range 0 .. 31;
      CTRL_SET      at 16#34# range 0 .. 31;
      CTRL_CLR      at 16#38# range 0 .. 31;
      CTRL_TOG      at 16#3C# range 0 .. 31;
      STATUS        at 16#40# range 0 .. 31;
      DEBUG         at 16#50# range 0 .. 31;
      DEBUG_SET     at 16#54# range 0 .. 31;
      DEBUG_CLR     at 16#58# range 0 .. 31;
      DEBUG_TOG     at 16#5C# range 0 .. 31;
      DEBUG0_STATUS at 16#60# range 0 .. 31;
      DEBUG1        at 16#70# range 0 .. 31;
      DEBUG1_SET    at 16#74# range 0 .. 31;
      DEBUG1_CLR    at 16#78# range 0 .. 31;
      DEBUG1_TOG    at 16#7C# range 0 .. 31;
      VERSION       at 16#80# range 0 .. 31;
   end record;

   --  USBPHY Register Reference Index
   USBPHY1_Periph : aliased USBPHY_Peripheral
     with Import, Address => System'To_Address (16#400D9000#);

   --  USBPHY Register Reference Index
   USBPHY2_Periph : aliased USBPHY_Peripheral
     with Import, Address => System'To_Address (16#400DA000#);

end NRF_SVD.USBPHY;
