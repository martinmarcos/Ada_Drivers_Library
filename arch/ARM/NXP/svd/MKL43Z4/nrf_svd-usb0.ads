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

--  This spec has been automatically generated from MKL43Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Universal Serial Bus, OTG Capable Controller
package NRF_SVD.USB0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USB0_PERID_ID_Field is HAL.UInt6;

   --  Peripheral ID register
   type USB0_PERID_Register is record
      --  Read-only. Peripheral Identification
      ID           : USB0_PERID_ID_Field;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_PERID_Register use record
      ID           at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   subtype USB0_IDCOMP_NID_Field is HAL.UInt6;

   --  Peripheral ID Complement register
   type USB0_IDCOMP_Register is record
      --  Read-only. Ones' complement of PERID[ID]. bits.
      NID          : USB0_IDCOMP_NID_Field;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_IDCOMP_Register use record
      NID          at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
   end record;

   --  Peripheral Additional Info register
   type USB0_ADDINFO_Register is record
      --  Read-only. This bit is set if host mode is enabled.
      IEHOST       : Boolean;
      --  unspecified
      Reserved_1_7 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_ADDINFO_Register use record
      IEHOST       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
   end record;

   --  Interrupt Status register
   type USB0_ISTAT_Register is record
      --  This bit is set when the USB Module has decoded a valid USB reset
      USBRST       : Boolean := False;
      --  This bit is set when any of the error conditions within Error
      --  Interrupt Status (ERRSTAT) register occur
      ERROR        : Boolean := False;
      --  This bit is set when the USB Module receives a Start Of Frame (SOF)
      --  token.
      SOFTOK       : Boolean := False;
      --  This bit is set when the current token being processed has completed
      TOKDNE       : Boolean := False;
      --  This bit is set when the USB Module detects a constant idle on the
      --  USB bus for 3 ms
      SLEEP        : Boolean := False;
      --  This bit is set when a K-state is observed on the DP/DM signals for 2
      RESUME       : Boolean := False;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Stall Interrupt
      STALL        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_ISTAT_Register use record
      USBRST       at 0 range 0 .. 0;
      ERROR        at 0 range 1 .. 1;
      SOFTOK       at 0 range 2 .. 2;
      TOKDNE       at 0 range 3 .. 3;
      SLEEP        at 0 range 4 .. 4;
      RESUME       at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      STALL        at 0 range 7 .. 7;
   end record;

   --  USBRST Interrupt Enable
   type INTEN_USBRSTEN_Field is
     (
      --  Disables the USBRST interrupt.
      INTEN_USBRSTEN_Field_0,
      --  Enables the USBRST interrupt.
      INTEN_USBRSTEN_Field_1)
     with Size => 1;
   for INTEN_USBRSTEN_Field use
     (INTEN_USBRSTEN_Field_0 => 0,
      INTEN_USBRSTEN_Field_1 => 1);

   --  ERROR Interrupt Enable
   type INTEN_ERROREN_Field is
     (
      --  Disables the ERROR interrupt.
      INTEN_ERROREN_Field_0,
      --  Enables the ERROR interrupt.
      INTEN_ERROREN_Field_1)
     with Size => 1;
   for INTEN_ERROREN_Field use
     (INTEN_ERROREN_Field_0 => 0,
      INTEN_ERROREN_Field_1 => 1);

   --  SOFTOK Interrupt Enable
   type INTEN_SOFTOKEN_Field is
     (
      --  Disbles the SOFTOK interrupt.
      INTEN_SOFTOKEN_Field_0,
      --  Enables the SOFTOK interrupt.
      INTEN_SOFTOKEN_Field_1)
     with Size => 1;
   for INTEN_SOFTOKEN_Field use
     (INTEN_SOFTOKEN_Field_0 => 0,
      INTEN_SOFTOKEN_Field_1 => 1);

   --  TOKDNE Interrupt Enable
   type INTEN_TOKDNEEN_Field is
     (
      --  Disables the TOKDNE interrupt.
      INTEN_TOKDNEEN_Field_0,
      --  Enables the TOKDNE interrupt.
      INTEN_TOKDNEEN_Field_1)
     with Size => 1;
   for INTEN_TOKDNEEN_Field use
     (INTEN_TOKDNEEN_Field_0 => 0,
      INTEN_TOKDNEEN_Field_1 => 1);

   --  SLEEP Interrupt Enable
   type INTEN_SLEEPEN_Field is
     (
      --  Disables the SLEEP interrupt.
      INTEN_SLEEPEN_Field_0,
      --  Enables the SLEEP interrupt.
      INTEN_SLEEPEN_Field_1)
     with Size => 1;
   for INTEN_SLEEPEN_Field use
     (INTEN_SLEEPEN_Field_0 => 0,
      INTEN_SLEEPEN_Field_1 => 1);

   --  RESUME Interrupt Enable
   type INTEN_RESUMEEN_Field is
     (
      --  Disables the RESUME interrupt.
      INTEN_RESUMEEN_Field_0,
      --  Enables the RESUME interrupt.
      INTEN_RESUMEEN_Field_1)
     with Size => 1;
   for INTEN_RESUMEEN_Field use
     (INTEN_RESUMEEN_Field_0 => 0,
      INTEN_RESUMEEN_Field_1 => 1);

   --  STALL Interrupt Enable
   type INTEN_STALLEN_Field is
     (
      --  Diasbles the STALL interrupt.
      INTEN_STALLEN_Field_0,
      --  Enables the STALL interrupt.
      INTEN_STALLEN_Field_1)
     with Size => 1;
   for INTEN_STALLEN_Field use
     (INTEN_STALLEN_Field_0 => 0,
      INTEN_STALLEN_Field_1 => 1);

   --  Interrupt Enable register
   type USB0_INTEN_Register is record
      --  USBRST Interrupt Enable
      USBRSTEN     : INTEN_USBRSTEN_Field :=
                      NRF_SVD.USB0.INTEN_USBRSTEN_Field_0;
      --  ERROR Interrupt Enable
      ERROREN      : INTEN_ERROREN_Field :=
                      NRF_SVD.USB0.INTEN_ERROREN_Field_0;
      --  SOFTOK Interrupt Enable
      SOFTOKEN     : INTEN_SOFTOKEN_Field :=
                      NRF_SVD.USB0.INTEN_SOFTOKEN_Field_0;
      --  TOKDNE Interrupt Enable
      TOKDNEEN     : INTEN_TOKDNEEN_Field :=
                      NRF_SVD.USB0.INTEN_TOKDNEEN_Field_0;
      --  SLEEP Interrupt Enable
      SLEEPEN      : INTEN_SLEEPEN_Field :=
                      NRF_SVD.USB0.INTEN_SLEEPEN_Field_0;
      --  RESUME Interrupt Enable
      RESUMEEN     : INTEN_RESUMEEN_Field :=
                      NRF_SVD.USB0.INTEN_RESUMEEN_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  STALL Interrupt Enable
      STALLEN      : INTEN_STALLEN_Field :=
                      NRF_SVD.USB0.INTEN_STALLEN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_INTEN_Register use record
      USBRSTEN     at 0 range 0 .. 0;
      ERROREN      at 0 range 1 .. 1;
      SOFTOKEN     at 0 range 2 .. 2;
      TOKDNEEN     at 0 range 3 .. 3;
      SLEEPEN      at 0 range 4 .. 4;
      RESUMEEN     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      STALLEN      at 0 range 7 .. 7;
   end record;

   --  USB0_ERRSTAT_CRC array
   type USB0_ERRSTAT_CRC_Field_Array is array (5 .. 6) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USB0_ERRSTAT_CRC
   type USB0_ERRSTAT_CRC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CRC as a value
            Val : HAL.UInt2;
         when True =>
            --  CRC as an array
            Arr : USB0_ERRSTAT_CRC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USB0_ERRSTAT_CRC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Error Interrupt Status register
   type USB0_ERRSTAT_Register is record
      --  This bit is set when the PID check field fails.
      PIDERR       : Boolean := False;
      --  This error interrupt has two functions
      CRC          : USB0_ERRSTAT_CRC_Field :=
                      (As_Array => False, Val => 16#0#);
      --  This bit is set if the data field received was not 8 bits in length
      DFN8         : Boolean := False;
      --  This bit is set when a bus turnaround timeout error occurs
      BTOERR       : Boolean := False;
      --  This bit is set if the USB Module has requested a DMA access to read
      --  a new BDT but has not been given the bus before it needs to receive
      --  or transmit data
      DMAERR       : Boolean := False;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  This bit is set when a bit stuff error is detected
      BTSERR       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_ERRSTAT_Register use record
      PIDERR       at 0 range 0 .. 0;
      CRC          at 0 range 1 .. 2;
      DFN8         at 0 range 3 .. 3;
      BTOERR       at 0 range 4 .. 4;
      DMAERR       at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      BTSERR       at 0 range 7 .. 7;
   end record;

   --  PIDERR Interrupt Enable
   type ERREN_PIDERREN_Field is
     (
      --  Disables the PIDERR interrupt.
      ERREN_PIDERREN_Field_0,
      --  Enters the PIDERR interrupt.
      ERREN_PIDERREN_Field_1)
     with Size => 1;
   for ERREN_PIDERREN_Field use
     (ERREN_PIDERREN_Field_0 => 0,
      ERREN_PIDERREN_Field_1 => 1);

   --  CRC5/EOF Interrupt Enable
   type ERREN_CRC5EOFEN_Field is
     (
      --  Disables the CRC5/EOF interrupt.
      ERREN_CRC5EOFEN_Field_0,
      --  Enables the CRC5/EOF interrupt.
      ERREN_CRC5EOFEN_Field_1)
     with Size => 1;
   for ERREN_CRC5EOFEN_Field use
     (ERREN_CRC5EOFEN_Field_0 => 0,
      ERREN_CRC5EOFEN_Field_1 => 1);

   --  CRC16 Interrupt Enable
   type ERREN_CRC16EN_Field is
     (
      --  Disables the CRC16 interrupt.
      ERREN_CRC16EN_Field_0,
      --  Enables the CRC16 interrupt.
      ERREN_CRC16EN_Field_1)
     with Size => 1;
   for ERREN_CRC16EN_Field use
     (ERREN_CRC16EN_Field_0 => 0,
      ERREN_CRC16EN_Field_1 => 1);

   --  DFN8 Interrupt Enable
   type ERREN_DFN8EN_Field is
     (
      --  Disables the DFN8 interrupt.
      ERREN_DFN8EN_Field_0,
      --  Enables the DFN8 interrupt.
      ERREN_DFN8EN_Field_1)
     with Size => 1;
   for ERREN_DFN8EN_Field use
     (ERREN_DFN8EN_Field_0 => 0,
      ERREN_DFN8EN_Field_1 => 1);

   --  BTOERR Interrupt Enable
   type ERREN_BTOERREN_Field is
     (
      --  Disables the BTOERR interrupt.
      ERREN_BTOERREN_Field_0,
      --  Enables the BTOERR interrupt.
      ERREN_BTOERREN_Field_1)
     with Size => 1;
   for ERREN_BTOERREN_Field use
     (ERREN_BTOERREN_Field_0 => 0,
      ERREN_BTOERREN_Field_1 => 1);

   --  DMAERR Interrupt Enable
   type ERREN_DMAERREN_Field is
     (
      --  Disables the DMAERR interrupt.
      ERREN_DMAERREN_Field_0,
      --  Enables the DMAERR interrupt.
      ERREN_DMAERREN_Field_1)
     with Size => 1;
   for ERREN_DMAERREN_Field use
     (ERREN_DMAERREN_Field_0 => 0,
      ERREN_DMAERREN_Field_1 => 1);

   --  BTSERR Interrupt Enable
   type ERREN_BTSERREN_Field is
     (
      --  Disables the BTSERR interrupt.
      ERREN_BTSERREN_Field_0,
      --  Enables the BTSERR interrupt.
      ERREN_BTSERREN_Field_1)
     with Size => 1;
   for ERREN_BTSERREN_Field use
     (ERREN_BTSERREN_Field_0 => 0,
      ERREN_BTSERREN_Field_1 => 1);

   --  Error Interrupt Enable register
   type USB0_ERREN_Register is record
      --  PIDERR Interrupt Enable
      PIDERREN     : ERREN_PIDERREN_Field :=
                      NRF_SVD.USB0.ERREN_PIDERREN_Field_0;
      --  CRC5/EOF Interrupt Enable
      CRC5EOFEN    : ERREN_CRC5EOFEN_Field :=
                      NRF_SVD.USB0.ERREN_CRC5EOFEN_Field_0;
      --  CRC16 Interrupt Enable
      CRC16EN      : ERREN_CRC16EN_Field :=
                      NRF_SVD.USB0.ERREN_CRC16EN_Field_0;
      --  DFN8 Interrupt Enable
      DFN8EN       : ERREN_DFN8EN_Field := NRF_SVD.USB0.ERREN_DFN8EN_Field_0;
      --  BTOERR Interrupt Enable
      BTOERREN     : ERREN_BTOERREN_Field :=
                      NRF_SVD.USB0.ERREN_BTOERREN_Field_0;
      --  DMAERR Interrupt Enable
      DMAERREN     : ERREN_DMAERREN_Field :=
                      NRF_SVD.USB0.ERREN_DMAERREN_Field_0;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  BTSERR Interrupt Enable
      BTSERREN     : ERREN_BTSERREN_Field :=
                      NRF_SVD.USB0.ERREN_BTSERREN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_ERREN_Register use record
      PIDERREN     at 0 range 0 .. 0;
      CRC5EOFEN    at 0 range 1 .. 1;
      CRC16EN      at 0 range 2 .. 2;
      DFN8EN       at 0 range 3 .. 3;
      BTOERREN     at 0 range 4 .. 4;
      DMAERREN     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      BTSERREN     at 0 range 7 .. 7;
   end record;

   --  Transmit Indicator
   type STAT_TX_Field is
     (
      --  The most recent transaction was a receive operation.
      STAT_TX_Field_0,
      --  The most recent transaction was a transmit operation.
      STAT_TX_Field_1)
     with Size => 1;
   for STAT_TX_Field use
     (STAT_TX_Field_0 => 0,
      STAT_TX_Field_1 => 1);

   subtype USB0_STAT_ENDP_Field is HAL.UInt4;

   --  Status register
   type USB0_STAT_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2;
      --  Read-only. This bit is set if the last buffer descriptor updated was
      --  in the odd bank of the BDT.
      ODD          : Boolean;
      --  Read-only. Transmit Indicator
      TX           : STAT_TX_Field;
      --  Read-only. This four-bit field encodes the endpoint address that
      --  received or transmitted the previous token
      ENDP         : USB0_STAT_ENDP_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_STAT_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      ODD          at 0 range 2 .. 2;
      TX           at 0 range 3 .. 3;
      ENDP         at 0 range 4 .. 7;
   end record;

   --  USB Enable
   type CTL_USBENSOFEN_Field is
     (
      --  Disables the USB Module.
      CTL_USBENSOFEN_Field_0,
      --  Enables the USB Module.
      CTL_USBENSOFEN_Field_1)
     with Size => 1;
   for CTL_USBENSOFEN_Field use
     (CTL_USBENSOFEN_Field_0 => 0,
      CTL_USBENSOFEN_Field_1 => 1);

   --  Control register
   type USB0_CTL_Register is record
      --  USB Enable
      USBENSOFEN         : CTL_USBENSOFEN_Field :=
                            NRF_SVD.USB0.CTL_USBENSOFEN_Field_0;
      --  Setting this bit to 1 resets all the BDT ODD ping/pong fields to 0,
      --  which then specifies the EVEN BDT bank
      ODDRST             : Boolean := False;
      --  When set to 1 this bit enables the USB Module to execute resume
      --  signaling
      RESUME             : Boolean := False;
      --  unspecified
      Reserved_3_4       : HAL.UInt2 := 16#0#;
      --  In Device mode, TXD_SUSPEND is set when the SIE has disabled packet
      --  transmission and reception
      TXSUSPENDTOKENBUSY : Boolean := False;
      --  Live USB Single Ended Zero signal
      SE0                : Boolean := False;
      --  Live USB differential receiver JSTATE signal
      JSTATE             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_CTL_Register use record
      USBENSOFEN         at 0 range 0 .. 0;
      ODDRST             at 0 range 1 .. 1;
      RESUME             at 0 range 2 .. 2;
      Reserved_3_4       at 0 range 3 .. 4;
      TXSUSPENDTOKENBUSY at 0 range 5 .. 5;
      SE0                at 0 range 6 .. 6;
      JSTATE             at 0 range 7 .. 7;
   end record;

   subtype USB0_ADDR_ADDR_Field is HAL.UInt7;

   --  Address register
   type USB0_ADDR_Register is record
      --  USB Address
      ADDR         : USB0_ADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_ADDR_Register use record
      ADDR         at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype USB0_BDTPAGE1_BDTBA_Field is HAL.UInt7;

   --  BDT Page register 1
   type USB0_BDTPAGE1_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Provides address bits 15 through 9 of the BDT base address.
      BDTBA        : USB0_BDTPAGE1_BDTBA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_BDTPAGE1_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      BDTBA        at 0 range 1 .. 7;
   end record;

   subtype USB0_FRMNUMH_FRM_Field is HAL.UInt3;

   --  Frame Number register High
   type USB0_FRMNUMH_Register is record
      --  This 3-bit field and the 8-bit field in the Frame Number Register Low
      --  are used to compute the address where the current Buffer Descriptor
      --  Table (BDT) resides in system memory
      FRM          : USB0_FRMNUMH_FRM_Field := 16#0#;
      --  unspecified
      Reserved_3_7 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_FRMNUMH_Register use record
      FRM          at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Endpoint Control register
   type ENDPT_Register is record
      --  When set this bit enables an endpoint to perform handshaking during a
      --  transaction to this endpoint
      EPHSHK       : Boolean := False;
      --  When set this bit indicates that the endpoint is stalled
      EPSTALL      : Boolean := False;
      --  This bit, when set, enables the endpoint for TX transfers. See
      EPTXEN       : Boolean := False;
      --  This bit, when set, enables the endpoint for RX transfers. See
      EPRXEN       : Boolean := False;
      --  This bit, when set, disables control (SETUP) transfers
      EPCTLDIS     : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for ENDPT_Register use record
      EPHSHK       at 0 range 0 .. 0;
      EPSTALL      at 0 range 1 .. 1;
      EPTXEN       at 0 range 2 .. 2;
      EPRXEN       at 0 range 3 .. 3;
      EPCTLDIS     at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Enables the weak pulldowns on the USB transceiver.
   type USBCTRL_PDE_Field is
     (
      --  Weak pulldowns are disabled on D+ and D-.
      USBCTRL_PDE_Field_0,
      --  Weak pulldowns are enabled on D+ and D-.
      USBCTRL_PDE_Field_1)
     with Size => 1;
   for USBCTRL_PDE_Field use
     (USBCTRL_PDE_Field_0 => 0,
      USBCTRL_PDE_Field_1 => 1);

   --  Places the USB transceiver into the suspend state.
   type USBCTRL_SUSP_Field is
     (
      --  USB transceiver is not in suspend state.
      USBCTRL_SUSP_Field_0,
      --  USB transceiver is in suspend state.
      USBCTRL_SUSP_Field_1)
     with Size => 1;
   for USBCTRL_SUSP_Field use
     (USBCTRL_SUSP_Field_0 => 0,
      USBCTRL_SUSP_Field_1 => 1);

   --  USB Control register
   type USB0_USBCTRL_Register is record
      --  unspecified
      Reserved_0_5 : HAL.UInt6 := 16#0#;
      --  Enables the weak pulldowns on the USB transceiver.
      PDE          : USBCTRL_PDE_Field := NRF_SVD.USB0.USBCTRL_PDE_Field_1;
      --  Places the USB transceiver into the suspend state.
      SUSP         : USBCTRL_SUSP_Field := NRF_SVD.USB0.USBCTRL_SUSP_Field_1;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_USBCTRL_Register use record
      Reserved_0_5 at 0 range 0 .. 5;
      PDE          at 0 range 6 .. 6;
      SUSP         at 0 range 7 .. 7;
   end record;

   --  Provides observability of the D- Pulldown signal output from USB.
   type OBSERVE_DMPD_Field is
     (
      --  D- pulldown disabled.
      OBSERVE_DMPD_Field_0,
      --  D- pulldown enabled.
      OBSERVE_DMPD_Field_1)
     with Size => 1;
   for OBSERVE_DMPD_Field use
     (OBSERVE_DMPD_Field_0 => 0,
      OBSERVE_DMPD_Field_1 => 1);

   --  Provides observability of the D+ Pulldown signal output from USB.
   type OBSERVE_DPPD_Field is
     (
      --  D+ pulldown disabled.
      OBSERVE_DPPD_Field_0,
      --  D+ pulldown enabled.
      OBSERVE_DPPD_Field_1)
     with Size => 1;
   for OBSERVE_DPPD_Field use
     (OBSERVE_DPPD_Field_0 => 0,
      OBSERVE_DPPD_Field_1 => 1);

   --  Provides observability of the D+ Pullup signal output from USB .
   type OBSERVE_DPPU_Field is
     (
      --  D+ pullup disabled.
      OBSERVE_DPPU_Field_0,
      --  D+ pullup enabled.
      OBSERVE_DPPU_Field_1)
     with Size => 1;
   for OBSERVE_DPPU_Field use
     (OBSERVE_DPPU_Field_0 => 0,
      OBSERVE_DPPU_Field_1 => 1);

   --  USB OTG Observe register
   type USB0_OBSERVE_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4;
      --  Read-only. Provides observability of the D- Pulldown signal output
      --  from USB.
      DMPD         : OBSERVE_DMPD_Field;
      --  unspecified
      Reserved_5_5 : HAL.Bit;
      --  Read-only. Provides observability of the D+ Pulldown signal output
      --  from USB.
      DPPD         : OBSERVE_DPPD_Field;
      --  Read-only. Provides observability of the D+ Pullup signal output from
      --  USB .
      DPPU         : OBSERVE_DPPU_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_OBSERVE_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      DMPD         at 0 range 4 .. 4;
      Reserved_5_5 at 0 range 5 .. 5;
      DPPD         at 0 range 6 .. 6;
      DPPU         at 0 range 7 .. 7;
   end record;

   --  Provides control of the DP Pullup in USB, if USB is configured in
   --  non-OTG device mode.
   type CONTROL_DPPULLUPNONOTG_Field is
     (
      --  DP Pullup in non-OTG device mode is not enabled.
      CONTROL_DPPULLUPNONOTG_Field_0,
      --  DP Pullup in non-OTG device mode is enabled.
      CONTROL_DPPULLUPNONOTG_Field_1)
     with Size => 1;
   for CONTROL_DPPULLUPNONOTG_Field use
     (CONTROL_DPPULLUPNONOTG_Field_0 => 0,
      CONTROL_DPPULLUPNONOTG_Field_1 => 1);

   --  USB OTG Control register
   type USB0_CONTROL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Provides control of the DP Pullup in USB, if USB is configured in
      --  non-OTG device mode.
      DPPULLUPNONOTG : CONTROL_DPPULLUPNONOTG_Field :=
                        NRF_SVD.USB0.CONTROL_DPPULLUPNONOTG_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_CONTROL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DPPULLUPNONOTG at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
   end record;

   --  USB Asynchronous Interrupt
   type USBTRC0_USB_RESUME_INT_Field is
     (
      --  No interrupt was generated.
      USBTRC0_USB_RESUME_INT_Field_0,
      --  Interrupt was generated because of the USB asynchronous interrupt.
      USBTRC0_USB_RESUME_INT_Field_1)
     with Size => 1;
   for USBTRC0_USB_RESUME_INT_Field use
     (USBTRC0_USB_RESUME_INT_Field_0 => 0,
      USBTRC0_USB_RESUME_INT_Field_1 => 1);

   --  Synchronous USB Interrupt Detect
   type USBTRC0_SYNC_DET_Field is
     (
      --  Synchronous interrupt has not been detected.
      USBTRC0_SYNC_DET_Field_0,
      --  Synchronous interrupt has been detected.
      USBTRC0_SYNC_DET_Field_1)
     with Size => 1;
   for USBTRC0_SYNC_DET_Field use
     (USBTRC0_SYNC_DET_Field_0 => 0,
      USBTRC0_SYNC_DET_Field_1 => 1);

   --  Asynchronous Resume Interrupt Enable
   type USBTRC0_USBRESMEN_Field is
     (
      --  USB asynchronous wakeup from suspend mode disabled.
      USBTRC0_USBRESMEN_Field_0,
      --  USB asynchronous wakeup from suspend mode enabled. The asynchronous
      --  resume interrupt differs from the synchronous resume interrupt in
      --  that it asynchronously detects K-state using the unfiltered state of
      --  the D+ and D- pins. This interrupt should only be enabled when the
      --  Transceiver is suspended.
      USBTRC0_USBRESMEN_Field_1)
     with Size => 1;
   for USBTRC0_USBRESMEN_Field use
     (USBTRC0_USBRESMEN_Field_0 => 0,
      USBTRC0_USBRESMEN_Field_1 => 1);

   --  USB Reset
   type USBTRC0_USBRESET_Field is
     (
      --  Normal USB module operation.
      USBTRC0_USBRESET_Field_0,
      --  Returns the USB module to its reset state.
      USBTRC0_USBRESET_Field_1)
     with Size => 1;
   for USBTRC0_USBRESET_Field use
     (USBTRC0_USBRESET_Field_0 => 0,
      USBTRC0_USBRESET_Field_1 => 1);

   --  USB Transceiver Control register 0
   type USB0_USBTRC0_Register is record
      --  Read-only. USB Asynchronous Interrupt
      USB_RESUME_INT       : USBTRC0_USB_RESUME_INT_Field :=
                              NRF_SVD.USB0.USBTRC0_USB_RESUME_INT_Field_0;
      --  Read-only. Synchronous USB Interrupt Detect
      SYNC_DET             : USBTRC0_SYNC_DET_Field :=
                              NRF_SVD.USB0.USBTRC0_SYNC_DET_Field_0;
      --  Read-only. Combined USB Clock Recovery interrupt status
      USB_CLK_RECOVERY_INT : Boolean := False;
      --  unspecified
      Reserved_3_4         : HAL.UInt2 := 16#0#;
      --  Asynchronous Resume Interrupt Enable
      USBRESMEN            : USBTRC0_USBRESMEN_Field :=
                              NRF_SVD.USB0.USBTRC0_USBRESMEN_Field_0;
      --  unspecified
      Reserved_6_6         : HAL.Bit := 16#0#;
      --  Write-only. USB Reset
      USBRESET             : USBTRC0_USBRESET_Field :=
                              NRF_SVD.USB0.USBTRC0_USBRESET_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_USBTRC0_Register use record
      USB_RESUME_INT       at 0 range 0 .. 0;
      SYNC_DET             at 0 range 1 .. 1;
      USB_CLK_RECOVERY_INT at 0 range 2 .. 2;
      Reserved_3_4         at 0 range 3 .. 4;
      USBRESMEN            at 0 range 5 .. 5;
      Reserved_6_6         at 0 range 6 .. 6;
      USBRESET             at 0 range 7 .. 7;
   end record;

   --  Restart from IFR trim value
   type CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field is
     (
      --  Trim fine adjustment always works based on the previous updated trim
      --  fine value (default)
      CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field_0,
      --  Trim fine restarts from the IFR trim value whenever
      --  bus_reset/bus_resume is detected or module enable is desasserted
      CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field_1)
     with Size => 1;
   for CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field use
     (CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field_0 => 0,
      CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field_1 => 1);

   --  Reset/resume to rough phase enable
   type CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field is
     (
      --  Always works in tracking phase after the first time rough to track
      --  transition (default)
      CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field_0,
      --  Go back to rough stage whenever bus reset or bus resume occurs
      CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field_1)
     with Size => 1;
   for CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field use
     (CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field_0 => 0,
      CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field_1 => 1);

   --  Crystal-less USB enable
   type CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field is
     (
      --  Disable clock recovery block (default)
      CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field_0,
      --  Enable clock recovery block
      CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field_1)
     with Size => 1;
   for CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field use
     (CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field_0 => 0,
      CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field_1 => 1);

   --  USB Clock recovery control
   type USB0_CLK_RECOVER_CTRL_Register is record
      --  unspecified
      Reserved_0_4          : HAL.UInt5 := 16#0#;
      --  Restart from IFR trim value
      RESTART_IFRTRIM_EN    : CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field :=
                               NRF_SVD.USB0.CLK_RECOVER_CTRL_RESTART_IFRTRIM_EN_Field_0;
      --  Reset/resume to rough phase enable
      RESET_RESUME_ROUGH_EN : CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field :=
                               NRF_SVD.USB0.CLK_RECOVER_CTRL_RESET_RESUME_ROUGH_EN_Field_0;
      --  Crystal-less USB enable
      CLOCK_RECOVER_EN      : CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field :=
                               NRF_SVD.USB0.CLK_RECOVER_CTRL_CLOCK_RECOVER_EN_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_CLK_RECOVER_CTRL_Register use record
      Reserved_0_4          at 0 range 0 .. 4;
      RESTART_IFRTRIM_EN    at 0 range 5 .. 5;
      RESET_RESUME_ROUGH_EN at 0 range 6 .. 6;
      CLOCK_RECOVER_EN      at 0 range 7 .. 7;
   end record;

   --  IRC48M enable
   type CLK_RECOVER_IRC_EN_IRC_EN_Field is
     (
      --  Disable the IRC48M module (default)
      CLK_RECOVER_IRC_EN_IRC_EN_Field_0,
      --  Enable the IRC48M module
      CLK_RECOVER_IRC_EN_IRC_EN_Field_1)
     with Size => 1;
   for CLK_RECOVER_IRC_EN_IRC_EN_Field use
     (CLK_RECOVER_IRC_EN_IRC_EN_Field_0 => 0,
      CLK_RECOVER_IRC_EN_IRC_EN_Field_1 => 1);

   --  IRC48M oscillator enable register
   type USB0_CLK_RECOVER_IRC_EN_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#1#;
      --  IRC48M enable
      IRC_EN       : CLK_RECOVER_IRC_EN_IRC_EN_Field :=
                      NRF_SVD.USB0.CLK_RECOVER_IRC_EN_IRC_EN_Field_0;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_CLK_RECOVER_IRC_EN_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      IRC_EN       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   --  Determines whether OVF_ERROR condition signal is used in generation of
   --  USB_CLK_RECOVERY_INT.
   type CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field is
     (
      --  The interrupt will be masked
      CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field_0,
      --  The interrupt will be enabled (default)
      CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field_1)
     with Size => 1;
   for CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field use
     (CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field_0 => 0,
      CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field_1 => 1);

   --  Clock recovery combined interrupt enable
   type USB0_CLK_RECOVER_INT_EN_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Determines whether OVF_ERROR condition signal is used in generation
      --  of USB_CLK_RECOVERY_INT.
      OVF_ERROR_EN : CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field :=
                      NRF_SVD.USB0.CLK_RECOVER_INT_EN_OVF_ERROR_EN_Field_1;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_CLK_RECOVER_INT_EN_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      OVF_ERROR_EN at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Indicates that the USB clock recovery algorithm has detected that the
   --  frequency trim adjustment needed for the IRC48M output clock is outside
   --  the available TRIM_FINE adjustment range for the IRC48M module
   type CLK_RECOVER_INT_STATUS_OVF_ERROR_Field is
     (
      --  No interrupt is reported
      CLK_RECOVER_INT_STATUS_OVF_ERROR_Field_0,
      --  Unmasked interrupt has been generated
      CLK_RECOVER_INT_STATUS_OVF_ERROR_Field_1)
     with Size => 1;
   for CLK_RECOVER_INT_STATUS_OVF_ERROR_Field use
     (CLK_RECOVER_INT_STATUS_OVF_ERROR_Field_0 => 0,
      CLK_RECOVER_INT_STATUS_OVF_ERROR_Field_1 => 1);

   --  Clock recovery separated interrupt status
   type USB0_CLK_RECOVER_INT_STATUS_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Indicates that the USB clock recovery algorithm has detected that the
      --  frequency trim adjustment needed for the IRC48M output clock is
      --  outside the available TRIM_FINE adjustment range for the IRC48M
      --  module
      OVF_ERROR    : CLK_RECOVER_INT_STATUS_OVF_ERROR_Field :=
                      NRF_SVD.USB0.CLK_RECOVER_INT_STATUS_OVF_ERROR_Field_0;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB0_CLK_RECOVER_INT_STATUS_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      OVF_ERROR    at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Serial Bus, OTG Capable Controller
   type USB0_Peripheral is record
      --  Peripheral ID register
      PERID                  : aliased USB0_PERID_Register;
      --  Peripheral ID Complement register
      IDCOMP                 : aliased USB0_IDCOMP_Register;
      --  Peripheral Revision register
      REV                    : aliased HAL.UInt8;
      --  Peripheral Additional Info register
      ADDINFO                : aliased USB0_ADDINFO_Register;
      --  Interrupt Status register
      ISTAT                  : aliased USB0_ISTAT_Register;
      --  Interrupt Enable register
      INTEN                  : aliased USB0_INTEN_Register;
      --  Error Interrupt Status register
      ERRSTAT                : aliased USB0_ERRSTAT_Register;
      --  Error Interrupt Enable register
      ERREN                  : aliased USB0_ERREN_Register;
      --  Status register
      STAT                   : aliased USB0_STAT_Register;
      --  Control register
      CTL                    : aliased USB0_CTL_Register;
      --  Address register
      ADDR                   : aliased USB0_ADDR_Register;
      --  BDT Page register 1
      BDTPAGE1               : aliased USB0_BDTPAGE1_Register;
      --  Frame Number register Low
      FRMNUML                : aliased HAL.UInt8;
      --  Frame Number register High
      FRMNUMH                : aliased USB0_FRMNUMH_Register;
      --  BDT Page Register 2
      BDTPAGE2               : aliased HAL.UInt8;
      --  BDT Page Register 3
      BDTPAGE3               : aliased HAL.UInt8;
      --  Endpoint Control register
      ENDPT0                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT1                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT2                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT3                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT4                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT5                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT6                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT7                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT8                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT9                 : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT10                : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT11                : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT12                : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT13                : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT14                : aliased ENDPT_Register;
      --  Endpoint Control register
      ENDPT15                : aliased ENDPT_Register;
      --  USB Control register
      USBCTRL                : aliased USB0_USBCTRL_Register;
      --  USB OTG Observe register
      OBSERVE                : aliased USB0_OBSERVE_Register;
      --  USB OTG Control register
      CONTROL                : aliased USB0_CONTROL_Register;
      --  USB Transceiver Control register 0
      USBTRC0                : aliased USB0_USBTRC0_Register;
      --  Frame Adjust Register
      USBFRMADJUST           : aliased HAL.UInt8;
      --  USB Clock recovery control
      CLK_RECOVER_CTRL       : aliased USB0_CLK_RECOVER_CTRL_Register;
      --  IRC48M oscillator enable register
      CLK_RECOVER_IRC_EN     : aliased USB0_CLK_RECOVER_IRC_EN_Register;
      --  Clock recovery combined interrupt enable
      CLK_RECOVER_INT_EN     : aliased USB0_CLK_RECOVER_INT_EN_Register;
      --  Clock recovery separated interrupt status
      CLK_RECOVER_INT_STATUS : aliased USB0_CLK_RECOVER_INT_STATUS_Register;
   end record
     with Volatile;

   for USB0_Peripheral use record
      PERID                  at 16#0# range 0 .. 7;
      IDCOMP                 at 16#4# range 0 .. 7;
      REV                    at 16#8# range 0 .. 7;
      ADDINFO                at 16#C# range 0 .. 7;
      ISTAT                  at 16#80# range 0 .. 7;
      INTEN                  at 16#84# range 0 .. 7;
      ERRSTAT                at 16#88# range 0 .. 7;
      ERREN                  at 16#8C# range 0 .. 7;
      STAT                   at 16#90# range 0 .. 7;
      CTL                    at 16#94# range 0 .. 7;
      ADDR                   at 16#98# range 0 .. 7;
      BDTPAGE1               at 16#9C# range 0 .. 7;
      FRMNUML                at 16#A0# range 0 .. 7;
      FRMNUMH                at 16#A4# range 0 .. 7;
      BDTPAGE2               at 16#B0# range 0 .. 7;
      BDTPAGE3               at 16#B4# range 0 .. 7;
      ENDPT0                 at 16#C0# range 0 .. 7;
      ENDPT1                 at 16#C4# range 0 .. 7;
      ENDPT2                 at 16#C8# range 0 .. 7;
      ENDPT3                 at 16#CC# range 0 .. 7;
      ENDPT4                 at 16#D0# range 0 .. 7;
      ENDPT5                 at 16#D4# range 0 .. 7;
      ENDPT6                 at 16#D8# range 0 .. 7;
      ENDPT7                 at 16#DC# range 0 .. 7;
      ENDPT8                 at 16#E0# range 0 .. 7;
      ENDPT9                 at 16#E4# range 0 .. 7;
      ENDPT10                at 16#E8# range 0 .. 7;
      ENDPT11                at 16#EC# range 0 .. 7;
      ENDPT12                at 16#F0# range 0 .. 7;
      ENDPT13                at 16#F4# range 0 .. 7;
      ENDPT14                at 16#F8# range 0 .. 7;
      ENDPT15                at 16#FC# range 0 .. 7;
      USBCTRL                at 16#100# range 0 .. 7;
      OBSERVE                at 16#104# range 0 .. 7;
      CONTROL                at 16#108# range 0 .. 7;
      USBTRC0                at 16#10C# range 0 .. 7;
      USBFRMADJUST           at 16#114# range 0 .. 7;
      CLK_RECOVER_CTRL       at 16#140# range 0 .. 7;
      CLK_RECOVER_IRC_EN     at 16#144# range 0 .. 7;
      CLK_RECOVER_INT_EN     at 16#154# range 0 .. 7;
      CLK_RECOVER_INT_STATUS at 16#15C# range 0 .. 7;
   end record;

   --  Universal Serial Bus, OTG Capable Controller
   USB0_Periph : aliased USB0_Peripheral
     with Import, Address => USB0_Base;

end NRF_SVD.USB0;
