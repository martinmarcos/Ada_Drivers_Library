--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54608.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ENET is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MAC_CONFIG_PRELEN_Field is HAL.UInt2;
   subtype MAC_CONFIG_BL_Field is HAL.UInt2;
   subtype MAC_CONFIG_IPG_Field is HAL.UInt3;

   --  MAC configuration register
   type MAC_CONFIG_Register is record
      --  Receiver Enable When this bit is set, the receiver state machine of
      --  the MAC is enabled for receiving frames from the MII.
      RE             : Boolean := False;
      --  Transmitter Enable When this bit is set, the transmit state machine
      --  of the MAC is enabled for transmission on the MII.
      TE             : Boolean := False;
      --  Preamble Length for Transmit packets These bits control the number of
      --  preamble bytes that are added to the beginning of every Tx packet.
      PRELEN         : MAC_CONFIG_PRELEN_Field := 16#0#;
      --  Deferral Check When this bit is set, the deferral check function is
      --  enabled in the MAC.
      DC             : Boolean := False;
      --  Back-Off Limit The Back-Off limit determines the random integer
      --  number (r) of slot time delays (4,096 bit times for 1000 Mbps and 512
      --  bit times for 10/100 Mbps) the MAC waits before rescheduling a
      --  transmission attempt during retries after a collision.
      BL             : MAC_CONFIG_BL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Disable Retry When this bit is set, the MAC will attempt only one
      --  transmission.
      DR             : Boolean := False;
      --  Disable Carrier Sense During Transmission When this bit is set, the
      --  MAC transmitter ignores the MII CRS signal during packet transmission
      --  in the half-duplex mode.
      DCRS           : Boolean := False;
      --  Disable Receive Own When this bit is set, the MAC disables the
      --  reception of frames when the gmii_txen_o is asserted in Half-Duplex
      --  mode.
      DO_k           : Boolean := False;
      --  Enable Carrier Sense Before Transmission in Full-Duplex Mode When
      --  this bit is set, the MAC transmitter checks the CRS signal before
      --  packet transmission in the full-duplex mode.
      ECRSFD         : Boolean := False;
      --  Loopback Mode When this bit is set, the MAC operates in loopback mode
      --  at MII.
      LM             : Boolean := False;
      --  Duplex Mode When this bit is set, the MAC operates in a Full-Duplex
      --  mode where it can transmit and receive simultaneously.
      DM             : Boolean := False;
      --  Speed Indicates the speed in Fast Ethernet (MII) mode: This bit is
      --  reserved (RO) by default and is enabled only when RMII/SMII is
      --  enabled during configuration.
      FES            : Boolean := False;
      --  Read-only. Portselect.
      PS             : Boolean := True;
      --  Jumbo Frame Enable When this bit is set, MAC allows Jumbo frames of
      --  9,018 bytes (9,022 bytes for tagged frames) without reporting a giant
      --  frame error in the receive frame status.
      JE             : Boolean := False;
      --  Jabber Disable When this bit is set, the MAC disables the jabber
      --  timer on the transmitter, and can transfer frames of up to 16,384
      --  bytes.
      JD             : Boolean := False;
      --  Packet Burst Enable When this bit is set, the MAC allows packet
      --  bursting during transmission in the MII half-duplex mode.
      BE             : Boolean := False;
      --  Watchdog Disable When this bit is set, the MAC disables the watchdog
      --  timer on the receiver, and can receive frames of up to 16,384 bytes.
      WD             : Boolean := False;
      --  Automatic Pad or CRC Stripping When this bit is set, the MAC strips
      --  the Pad or FCS field on the incoming packets only if the value of the
      --  length field is less than 1,536 bytes.
      ACS            : Boolean := False;
      --  CRC stripping for Type packets When this bit is set, the last four
      --  bytes (FCS) of all packets of Ether type (type field greater than
      --  1,536) are stripped and dropped before forwarding the packet to the
      --  application.
      CST            : Boolean := False;
      --  IEEE 802.
      S2KP           : Boolean := False;
      --  Giant Packet Size Limit Control Enable When this bit is set, the MAC
      --  considers the value in GPSL field in MAC Ext Configuration register
      --  to declare a received packet as Giant packet.
      GPSLCE         : Boolean := False;
      --  Inter-Packet Gap These bits control the minimum IPG between packets
      --  during transmission.
      IPG            : MAC_CONFIG_IPG_Field := 16#0#;
      --  Checksum Offload When set, this bit enables the IPv4 header checksum
      --  checking and IPv4 or IPv6 TCP, UDP, or ICMP payload checksum
      --  checking.
      IPC            : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_CONFIG_Register use record
      RE             at 0 range 0 .. 0;
      TE             at 0 range 1 .. 1;
      PRELEN         at 0 range 2 .. 3;
      DC             at 0 range 4 .. 4;
      BL             at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DR             at 0 range 8 .. 8;
      DCRS           at 0 range 9 .. 9;
      DO_k           at 0 range 10 .. 10;
      ECRSFD         at 0 range 11 .. 11;
      LM             at 0 range 12 .. 12;
      DM             at 0 range 13 .. 13;
      FES            at 0 range 14 .. 14;
      PS             at 0 range 15 .. 15;
      JE             at 0 range 16 .. 16;
      JD             at 0 range 17 .. 17;
      BE             at 0 range 18 .. 18;
      WD             at 0 range 19 .. 19;
      ACS            at 0 range 20 .. 20;
      CST            at 0 range 21 .. 21;
      S2KP           at 0 range 22 .. 22;
      GPSLCE         at 0 range 23 .. 23;
      IPG            at 0 range 24 .. 26;
      IPC            at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype MAC_EXT_CONFIG_GPSL_Field is HAL.UInt14;

   --  no description available
   type MAC_EXT_CONFIG_Register is record
      --  Giant Packet Size Limit If the received packet size is greater than
      --  the value programmed in this field in units of bytes, the MAC
      --  declares the received packet as Giant packet.
      GPSL           : MAC_EXT_CONFIG_GPSL_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Disable CRC Checking for Received Packets When this bit is set, the
      --  MAC receiver does not check the CRC field in the received packets.
      DCRCC          : Boolean := False;
      --  Slow Protocol Detection Enable When this bit is set, MAC processes
      --  the Slow Protocol packets (Ether Type 0x8809) and provides the Rx
      --  status.
      SPEN           : Boolean := False;
      --  Unicast Slow Protocol Packet Detect When this bit is set, the MAC
      --  detects the Slow Protocol packets with unicast address of the station
      --  specified in the MAC Address High Table 747 and MAC Address Low Table
      --  748 registers.
      USP            : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_EXT_CONFIG_Register use record
      GPSL           at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DCRCC          at 0 range 16 .. 16;
      SPEN           at 0 range 17 .. 17;
      USP            at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype MAC_FRAME_FILTER_PCF_Field is HAL.UInt2;

   --  MAC frame filter register
   type MAC_FRAME_FILTER_Register is record
      --  Promiscuous Mode When this bit is set, the Address Filter module
      --  passes all incoming frames regardless of its destination or source
      --  address.
      PR             : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  DA Inverse Filtering When this bit is set, the Address Check block
      --  operates in inverse filtering mode for the DA address comparison for
      --  both unicast and multicast frames.
      DAIF           : Boolean := False;
      --  Pass All Multicast When set, this bit indicates that all received
      --  frames with a multicast destination address (first bit in the
      --  destination address field is '1') are passed.
      PM             : Boolean := False;
      --  Disable Broadcast Frames When this bit is set, the AFM module filters
      --  all incoming broadcast frames.
      DBF            : Boolean := False;
      --  Pass Control Frames These bits control the forwarding of all control
      --  frames (including unicast and multicast PAUSE frames).
      PCF            : MAC_FRAME_FILTER_PCF_Field := 16#0#;
      --  Read-only. SA Inverse Filtering When this bit is set, the Address
      --  Check block operates in the inverse filtering mode for SA address
      --  comparison.
      SAIF           : Boolean := False;
      --  Read-only. Source Address Filter Enable When this bit is set, the MAC
      --  compares the SA field of the received packets with the values
      --  programmed in the enabled SA registers.
      SAF            : Boolean := False;
      --  unspecified
      Reserved_10_30 : HAL.UInt21 := 16#0#;
      --  Receive all When this bit is set, the MAC Receiver module passes to
      --  the Application all frames received irrespective of whether they pass
      --  the address filter.
      RA             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_FRAME_FILTER_Register use record
      PR             at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      DAIF           at 0 range 3 .. 3;
      PM             at 0 range 4 .. 4;
      DBF            at 0 range 5 .. 5;
      PCF            at 0 range 6 .. 7;
      SAIF           at 0 range 8 .. 8;
      SAF            at 0 range 9 .. 9;
      Reserved_10_30 at 0 range 10 .. 30;
      RA             at 0 range 31 .. 31;
   end record;

   subtype MAC_WD_TIMEROUT_WTO_Field is HAL.UInt4;

   --  MAC watchdog Timeout register
   type MAC_WD_TIMEROUT_Register is record
      --  Watchdog Timeout When the PWE bit is set and the WD bit of the MAC
      --  Configuration register Table 722 is reset, this field is used as
      --  watchdog timeout for a received packet.
      WTO           : MAC_WD_TIMEROUT_WTO_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Programmable Watchdog Enable When this bit is set and the WD bit of
      --  the MAC Configuration register Table 722 is reset, the WTO field is
      --  used as watchdog timeout for a received packet.
      PWE           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_WD_TIMEROUT_Register use record
      WTO           at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      PWE           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype MAC_VLAN_TAG_VL_Field is HAL.UInt16;
   subtype MAC_VLAN_TAG_EVLS_Field is HAL.UInt2;
   subtype MAC_VLAN_TAG_EIVLS_Field is HAL.UInt2;

   --  MAC vlan tag register
   type MAC_VLAN_TAG_Register is record
      --  VLAN Tag Identifier for Receive Packets.
      VL             : MAC_VLAN_TAG_VL_Field := 16#0#;
      --  Enable 12-Bit VLAN Tag Comparison.
      ETV            : Boolean := False;
      --  VLAN Tag Inverse Match Enable.
      VTIM           : Boolean := False;
      --  Enable S-VLAN.
      ESVL           : Boolean := False;
      --  Enable Receive S-VLAN Match.
      ERSVLM         : Boolean := False;
      --  Disable VLAN Type Check.
      DOVLTC         : Boolean := False;
      --  Enable VLAN Tag Stripping on Receive.
      EVLS           : MAC_VLAN_TAG_EVLS_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Enable VLAN Tag in Rx status.
      EVLRXS         : Boolean := False;
      --  Disable VLAN Type Check.
      VTHM           : Boolean := False;
      --  Enable Double VLAN Processing.
      EDVLP          : Boolean := False;
      --  Enable Inner VLAN Tag.
      ERIVLT         : Boolean := False;
      --  Enable Inner VLAN Tag Stripping on Receive.
      EIVLS          : MAC_VLAN_TAG_EIVLS_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Enable Inner VLAN Tag in Rx Status.
      EIVLRXS        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_VLAN_TAG_Register use record
      VL             at 0 range 0 .. 15;
      ETV            at 0 range 16 .. 16;
      VTIM           at 0 range 17 .. 17;
      ESVL           at 0 range 18 .. 18;
      ERSVLM         at 0 range 19 .. 19;
      DOVLTC         at 0 range 20 .. 20;
      EVLS           at 0 range 21 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      EVLRXS         at 0 range 24 .. 24;
      VTHM           at 0 range 25 .. 25;
      EDVLP          at 0 range 26 .. 26;
      ERIVLT         at 0 range 27 .. 27;
      EIVLS          at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      EIVLRXS        at 0 range 31 .. 31;
   end record;

   subtype MAC_TX_FLOW_CTRL_Q_PLT_Field is HAL.UInt3;
   subtype MAC_TX_FLOW_CTRL_Q_PT_Field is HAL.UInt16;

   --  Transmit flow control register
   type MAC_TX_FLOW_CTRL_Q_Register is record
      --  Flow Control Busy/Backpressure Activate This register field can be
      --  read by the application (Read), can be set to 1 by the application
      --  with a register write of 1 (Write Set), and is cleared to 0 by the
      --  core (Self Clear).
      FCB           : Boolean := False;
      --  Transmit Flow Control Enable In Full-Duplex mode, when this bit is
      --  set, the MAC enables the flow control operation to transmit Pause
      --  frames.
      TFE           : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Pause Low Threshold This field configures the threshold of the PAUSE
      --  timer at which the input flow control signal is checked for automatic
      --  retransmission of PAUSE Frame.
      PLT           : MAC_TX_FLOW_CTRL_Q_PLT_Field := 16#0#;
      --  Disable Zero-Quanta Pause When set, this bit disables the automatic
      --  generation of Zero-Quanta Pause Control frames on the deassertion of
      --  the flow-control signal from the FIFO layer.
      DZPQ          : Boolean := False;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Pause time This field holds the value to be used in the Pause Time
      --  field in the transmit control frame.
      PT            : MAC_TX_FLOW_CTRL_Q_PT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_TX_FLOW_CTRL_Q_Register use record
      FCB           at 0 range 0 .. 0;
      TFE           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PLT           at 0 range 4 .. 6;
      DZPQ          at 0 range 7 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      PT            at 0 range 16 .. 31;
   end record;

   --  Transmit flow control register
   type MAC_TX_FLOW_CTRL_Q_Registers is array (0 .. 1)
     of MAC_TX_FLOW_CTRL_Q_Register
     with Volatile;

   --  Receive flow control register
   type MAC_RX_FLOW_CTRL_Register is record
      --  Receive Flow Control Enable When this bit is set and the MAC is
      --  operating in full-duplex mode, the MAC decodes the received Pause
      --  packet and disables its transmitter for a specified (Pause) time.
      RFE           : Boolean := False;
      --  Unicast Pause Packet Detect A pause packet is processed when it has
      --  the unique multicast address specified in the IEEE 802.
      UP            : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_RX_FLOW_CTRL_Register use record
      RFE           at 0 range 0 .. 0;
      UP            at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MAC_TXQ_PRIO_MAP_PSTQ array element
   subtype MAC_TXQ_PRIO_MAP_PSTQ_Element is HAL.UInt8;

   --  MAC_TXQ_PRIO_MAP_PSTQ array
   type MAC_TXQ_PRIO_MAP_PSTQ_Field_Array is array (0 .. 1)
     of MAC_TXQ_PRIO_MAP_PSTQ_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for MAC_TXQ_PRIO_MAP_PSTQ
   type MAC_TXQ_PRIO_MAP_PSTQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSTQ as a value
            Val : HAL.UInt16;
         when True =>
            --  PSTQ as an array
            Arr : MAC_TXQ_PRIO_MAP_PSTQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MAC_TXQ_PRIO_MAP_PSTQ_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  no description available
   type MAC_TXQ_PRIO_MAP_Register is record
      --  Priorities Selected in Transmit Queue 0 This field holds the
      --  priorities assigned to Tx Queue 0 by the software.
      PSTQ           : MAC_TXQ_PRIO_MAP_PSTQ_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_TXQ_PRIO_MAP_Register use record
      PSTQ           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MAC_RXQ_CTRL0_RXQ0EN_Field is HAL.UInt2;
   subtype MAC_RXQ_CTRL0_RXQ1EN_Field is HAL.UInt2;

   --  Receive Queue Control 0 register 0x0000
   type MAC_RXQ_CTRL0_Register is record
      --  Receive Queue 0 Enable.
      RXQ0EN        : MAC_RXQ_CTRL0_RXQ0EN_Field := 16#0#;
      --  Receive Queue 1 Enable.
      RXQ1EN        : MAC_RXQ_CTRL0_RXQ1EN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_RXQ_CTRL0_Register use record
      RXQ0EN        at 0 range 0 .. 1;
      RXQ1EN        at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype MAC_RXQ_CTRL1_AVCPQ_Field is HAL.UInt3;
   subtype MAC_RXQ_CTRL1_AVPTPQ_Field is HAL.UInt3;
   subtype MAC_RXQ_CTRL1_UPQ_Field is HAL.UInt3;
   subtype MAC_RXQ_CTRL1_MCBCQ_Field is HAL.UInt3;

   --  Receive Queue Control 0 register 0x0000
   type MAC_RXQ_CTRL1_Register is record
      --  AV Untagged Control Packets Queue.
      AVCPQ          : MAC_RXQ_CTRL1_AVCPQ_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  AV PTP Packets Queue.
      AVPTPQ         : MAC_RXQ_CTRL1_AVPTPQ_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Untagged Packet Queue.
      UPQ            : MAC_RXQ_CTRL1_UPQ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Multicast and Broadcast Queue.
      MCBCQ          : MAC_RXQ_CTRL1_MCBCQ_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Multicast and Broadcast Queue Enable.
      MCBCQEN        : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_RXQ_CTRL1_Register use record
      AVCPQ          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      AVPTPQ         at 0 range 4 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      UPQ            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MCBCQ          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MCBCQEN        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  MAC_RXQ_CTRL2_PSRQ array element
   subtype MAC_RXQ_CTRL2_PSRQ_Element is HAL.UInt8;

   --  MAC_RXQ_CTRL2_PSRQ array
   type MAC_RXQ_CTRL2_PSRQ_Field_Array is array (0 .. 3)
     of MAC_RXQ_CTRL2_PSRQ_Element
     with Component_Size => 8, Size => 32;

   --  Receive Queue Control 0 register 0x0000
   type MAC_RXQ_CTRL2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSRQ as a value
            Val : HAL.UInt32;
         when True =>
            --  PSRQ as an array
            Arr : MAC_RXQ_CTRL2_PSRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MAC_RXQ_CTRL2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Interrupt status register 0x0000
   type MAC_INTR_STAT_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. PHY Interrupt.
      PHYIS          : Boolean;
      --  Read-only. PMT Interrupt Status.
      PMTIS          : Boolean;
      --  Read-only. LPI Interrupt Status.
      LPIIS          : Boolean;
      --  unspecified
      Reserved_6_11  : HAL.UInt6;
      --  Read-only. Timestamp interrupt status.
      TSIS           : Boolean;
      --  Read-only. Transmit Status Interrupt.
      TXSTSIS        : Boolean;
      --  Read-only. Receive Status Interrupt.
      RXSTSIS        : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_INTR_STAT_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PHYIS          at 0 range 3 .. 3;
      PMTIS          at 0 range 4 .. 4;
      LPIIS          at 0 range 5 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TSIS           at 0 range 12 .. 12;
      TXSTSIS        at 0 range 13 .. 13;
      RXSTSIS        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Interrupt enable register 0x0000
   type MAC_INTR_EN_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  PHY Interrupt Enable.
      PHYIE          : Boolean := False;
      --  PMT Interrupt Enable.
      PMTIE          : Boolean := False;
      --  LPI Interrupt Enable.
      LPIIE          : Boolean := False;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Timestamp Interrupt Enable.
      TSIE           : Boolean := False;
      --  Transmit Status Interrupt Enable.
      TXSTSIE        : Boolean := False;
      --  Receive Status Interrupt Enable.
      RXSTSIS        : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_INTR_EN_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      PHYIE          at 0 range 3 .. 3;
      PMTIE          at 0 range 4 .. 4;
      LPIIE          at 0 range 5 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      TSIE           at 0 range 12 .. 12;
      TXSTSIE        at 0 range 13 .. 13;
      RXSTSIS        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Receive Transmit Status register
   type MAC_RXTX_STAT_Register is record
      --  Read-only. PHY Interrupt Enable When this bit is set, it enables the
      --  assertion of the interrupt signal because of the setting of PHYIS bit
      --  in MAC Interrupt Status register Table 731.
      TJT           : Boolean;
      --  Read-only. No Carrier When the DTXSTS bit is set in the MTL Operation
      --  Mode register Table 758, this bit indicates that the carrier signal
      --  from the PHY is not present at the end of preamble transmission.
      NCARR         : Boolean;
      --  Read-only. Loss of Carrier When the DTXSTS bit is set in the MTL
      --  Operation Mode register Table 758, this bit indicates that the loss
      --  of carrier occurred during packet transmission, that is, the PHY
      --  Carrier signal was inactive for one or more transmission clock
      --  periods during packet transmission.
      LCARR         : Boolean;
      --  Read-only. Excessive Deferral When the DTXSTS bit is set in the MTL
      --  Operation Mode register Table 758 and the DC bit is set in the MAC
      --  Configuration register Table 758, this bit indicates that the
      --  transmission ended because of excessive deferral of over 24,288 bit
      --  times (155,680 when Jumbo packet is enabled).
      EXDEF         : Boolean;
      --  Read-only. Late Collision When the DTXSTS bit is set in the MTL
      --  Operation Mode register Table 758, this bit indicates that the packet
      --  transmission aborted because a collision occurred after the collision
      --  window (64 bytes including Preamble in MII mode).
      LCOL          : Boolean;
      --  Read-only. Excessive Collisions When the DTXSTS bit is set in the MTL
      --  Operation Mode register Table 758, this bit indicates that the
      --  transmission aborted after 16 successive collisions while attempting
      --  to transmit the current packet.
      EXCOL         : Boolean;
      --  unspecified
      Reserved_6_7  : HAL.UInt2;
      --  Read-only. Receive Watchdog Timeout This bit is set when a packet
      --  with length greater than 2,048 bytes is received (10,240 bytes when
      --  Jumbo Packet mode is enabled) and the WD bit is reset in the MAC
      --  Configuration register Table 722.
      RWT           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_RXTX_STAT_Register use record
      TJT           at 0 range 0 .. 0;
      NCARR         at 0 range 1 .. 1;
      LCARR         at 0 range 2 .. 2;
      EXDEF         at 0 range 3 .. 3;
      LCOL          at 0 range 4 .. 4;
      EXCOL         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      RWT           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype MAC_PMT_CRTL_STAT_RWKPTR_Field is HAL.UInt5;

   --  no description available
   type MAC_PMT_CRTL_STAT_Register is record
      --  Read-only. Transmit LPI Entry When this bit is set, it indicates that
      --  the MAC Transmitter has entered the LPI state because of the setting
      --  of the LPIEN bit.
      PWRDWN         : Boolean := False;
      --  Read-only. Magic Packet Enable.
      MGKPKTEN       : Boolean := False;
      --  Read-only. Remote Wake-Up Packet Enable When this bit is set, a power
      --  management event is generated when the MAC receives a remote wake-up
      --  packet.
      RWKPKTEN       : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Read-only. Magic Packet Received.
      MGKPRCVD       : Boolean := False;
      --  Read-only. Remote Wake-Up Packet Received.
      RWKPRCVD       : Boolean := False;
      --  unspecified
      Reserved_7_8   : HAL.UInt2 := 16#0#;
      --  Global Unicast When this bit set, any unicast packet filtered by the
      --  MAC (DAF) address recognition is detected as a remote wake-up packet.
      GLBLUCAST      : Boolean := False;
      --  Remote Wake-up Packet Forwarding Enable When this bit is set along
      --  with RWKPKTEN, the MAC receiver drops all received frames until it
      --  receives the expected wake-up frame.
      RWKPFE         : Boolean := False;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  Remote Wake-up FIFO Pointer This field gives the current value (0 to
      --  7) of the Remote Wake-up Packet Filter register pointer.
      RWKPTR         : MAC_PMT_CRTL_STAT_RWKPTR_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Remote Wake-Up Packet Filter Register Pointer Reset When this bit is
      --  set, the remote wake-up packet filter register pointer is reset to
      --  3'b000.
      RWKFILTRST     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_PMT_CRTL_STAT_Register use record
      PWRDWN         at 0 range 0 .. 0;
      MGKPKTEN       at 0 range 1 .. 1;
      RWKPKTEN       at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      MGKPRCVD       at 0 range 5 .. 5;
      RWKPRCVD       at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      GLBLUCAST      at 0 range 9 .. 9;
      RWKPFE         at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      RWKPTR         at 0 range 24 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      RWKFILTRST     at 0 range 31 .. 31;
   end record;

   --  LPI Control and Status Register
   type MAC_LPI_CTRL_STAT_Register is record
      --  Read-only. Transmit LPI Entry When this bit is set, it indicates that
      --  the MAC Transmitter has entered the LPI state because of the setting
      --  of the LPIEN bit.
      TLPIEN         : Boolean := False;
      --  Read-only. Transmit LPI Exit When this bit is set, it indicates that
      --  the MAC transmitter exited the LPI state after the application
      --  cleared the LPIEN bit and the LPI TW Timer has expired.
      TLPIEX         : Boolean := False;
      --  Read-only. Receive LPI Entry When this bit is set, it indicates that
      --  the MAC Receiver has received an LPI pattern and entered the LPI
      --  state.
      RLPIEN         : Boolean := False;
      --  Read-only. Receive LPI Exit When this bit is set, it indicates that
      --  the MAC Receiver has stopped receiving the LPI pattern on the MII
      --  interface, exited the LPI state, and resumed the normal reception.
      RLPIEX         : Boolean := False;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Read-only. Transmit LPI State When this bit is set, it indicates that
      --  the MAC is transmitting the LPI pattern on the MII interface.
      TLPIST         : Boolean := False;
      --  Read-only. Receive LPI State When this bit is set, it indicates that
      --  the MAC is receiving the LPI pattern on the MII interface.
      RLPIST         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  LPI Enable When this bit is set, it instructs the MAC Transmitter to
      --  enter the LPI state.
      LPIEN          : Boolean := False;
      --  PHY Link Status This bit indicates the link status of the PHY.
      PLS            : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  LPI Tx Automate This bit controls the behavior of the MAC when it is
      --  entering or coming out of the LPI mode on the Transmit side.
      LPITXA         : Boolean := False;
      --  LPI Timer Enable This bit controls the automatic entry of the MAC
      --  Transmitter into and exit out of the LPI state.
      LPIATE         : Boolean := False;
      --  LPI Tx Clock Stop Enable When this bit is set, the MAC asserts LPI Tx
      --  Clock Gating Control signal high after it enters Tx LPI mode to
      --  indicate that the Tx clock to MAC can be stopped.
      LPITCSE        : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_LPI_CTRL_STAT_Register use record
      TLPIEN         at 0 range 0 .. 0;
      TLPIEX         at 0 range 1 .. 1;
      RLPIEN         at 0 range 2 .. 2;
      RLPIEX         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      TLPIST         at 0 range 8 .. 8;
      RLPIST         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      LPIEN          at 0 range 16 .. 16;
      PLS            at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      LPITXA         at 0 range 19 .. 19;
      LPIATE         at 0 range 20 .. 20;
      LPITCSE        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype MAC_LPI_TIMER_CTRL_TWT_Field is HAL.UInt16;
   subtype MAC_LPI_TIMER_CTRL_LST_Field is HAL.UInt10;

   --  LPI Timers Control register
   type MAC_LPI_TIMER_CTRL_Register is record
      --  LPI TW Timer This field specifies the minimum time (in microseconds)
      --  for which the MAC waits after it stops transmitting the LPI pattern
      --  to the PHY and before it resumes the normal transmission.
      TWT            : MAC_LPI_TIMER_CTRL_TWT_Field := 16#0#;
      --  LPI LS Timer This field specifies the minimum time (in milliseconds)
      --  for which the link status from the PHY should be up (OKAY) before the
      --  LPI pattern can be transmitted to the PHY.
      LST            : MAC_LPI_TIMER_CTRL_LST_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_LPI_TIMER_CTRL_Register use record
      TWT            at 0 range 0 .. 15;
      LST            at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MAC_LPI_ENTR_TIMR_LPIET_Field is HAL.UInt17;

   --  LPI entry Timer register
   type MAC_LPI_ENTR_TIMR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  LPI Entry Timer This field specifies the time in microseconds the MAC
      --  will wait to enter LPI mode, after it has transmitted all the frames.
      LPIET          : MAC_LPI_ENTR_TIMR_LPIET_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_LPI_ENTR_TIMR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      LPIET          at 0 range 3 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype MAC_1US_TIC_COUNTR_TIC_1US_CNTR_Field is HAL.UInt12;

   --  no description available
   type MAC_1US_TIC_COUNTR_Register is record
      --  1US TIC Counter The application must program this counter so that the
      --  number of clock cycles of CSR clock is 1us.
      TIC_1US_CNTR   : MAC_1US_TIC_COUNTR_TIC_1US_CNTR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_1US_TIC_COUNTR_Register use record
      TIC_1US_CNTR   at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MAC_VERSION_SNPVER_Field is HAL.UInt8;
   subtype MAC_VERSION_USERVER_Field is HAL.UInt8;

   --  MAC version register
   type MAC_VERSION_Register is record
      --  NXP defined version.
      SNPVER         : MAC_VERSION_SNPVER_Field := 16#0#;
      --  User defined version.
      USERVER        : MAC_VERSION_USERVER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_VERSION_Register use record
      SNPVER         at 0 range 0 .. 7;
      USERVER        at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MAC_DBG_RFCFCSTS_Field is HAL.UInt2;
   subtype MAC_DBG_TFCSTS_Field is HAL.UInt2;

   --  MAC debug register
   type MAC_DBG_Register is record
      --  Read-only. MAC MII Receive Protocol Engine Status When this bit is
      --  set, it indicates that the MAC MII receive protocol engine is
      --  actively receiving data, and it is not in the Idle state.
      REPESTS        : Boolean;
      --  Read-only. MAC Receive Packet Controller FIFO Status When this bit is
      --  set, this field indicates the active state of the small FIFO Read and
      --  Write controllers of the MAC Receive Packet Controller module.
      RFCFCSTS       : MAC_DBG_RFCFCSTS_Field;
      --  unspecified
      Reserved_3_15  : HAL.UInt13;
      --  Read-only. MAC MII Transmit Protocol Engine Status When this bit is
      --  set, it indicates that the MAC or MII transmit protocol engine is
      --  actively transmitting data, and it is not in the Idle state.
      TPESTS         : Boolean;
      --  Read-only. MAC Transmit Packet Controller Status This field indicates
      --  the state of the MAC Transmit Packet Controller module.
      TFCSTS         : MAC_DBG_TFCSTS_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_DBG_Register use record
      REPESTS        at 0 range 0 .. 0;
      RFCFCSTS       at 0 range 1 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      TPESTS         at 0 range 16 .. 16;
      TFCSTS         at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype MAC_HW_FEAT0_TSSTSSEL_Field is HAL.UInt2;
   subtype MAC_HW_FEAT0_ACTPHYSEL_Field is HAL.UInt3;

   --  MAC hardware feature register 0x0201
   type MAC_HW_FEAT0_Register is record
      --  Read-only. 10 or 100 Mbps Support.
      MIISEL         : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Read-only. Half-duplex Support.
      HDSEL          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Read-only. Hash Table Based Filtering option.
      VLHASH         : Boolean := False;
      --  Read-only. SMA (MDIO) Interface.
      SMASEL         : Boolean := False;
      --  Read-only. PMT Remote Wake-up Packet Detection.
      RWKSEL         : Boolean := False;
      --  PMT magic packet detection.
      MGKSEL         : Boolean := False;
      --  Read-only. RMON Module Enable.
      MMCSEL         : Boolean := False;
      --  Read-only. ARP Offload Enabled.
      ARPOFFSEL      : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Read-only. IEEE 1588-2008 Timestamp support .
      TSSEL          : Boolean := False;
      --  Read-only. Energy Efficient Ethernet Support .
      EEESEL         : Boolean := False;
      --  Read-only. Transmit Checksum Offload Support.
      TXCOESEL       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Receive Checksum Offload Support.
      RXCOESEL       : Boolean := False;
      --  unspecified
      Reserved_17_24 : HAL.UInt8 := 16#0#;
      --  Read-only. Timestamp System Time Source.
      TSSTSSEL       : MAC_HW_FEAT0_TSSTSSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Read-only. Active PHY Selected.
      ACTPHYSEL      : MAC_HW_FEAT0_ACTPHYSEL_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_HW_FEAT0_Register use record
      MIISEL         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      HDSEL          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      VLHASH         at 0 range 4 .. 4;
      SMASEL         at 0 range 5 .. 5;
      RWKSEL         at 0 range 6 .. 6;
      MGKSEL         at 0 range 7 .. 7;
      MMCSEL         at 0 range 8 .. 8;
      ARPOFFSEL      at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      TSSEL          at 0 range 12 .. 12;
      EEESEL         at 0 range 13 .. 13;
      TXCOESEL       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RXCOESEL       at 0 range 16 .. 16;
      Reserved_17_24 at 0 range 17 .. 24;
      TSSTSSEL       at 0 range 25 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      ACTPHYSEL      at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MAC_HW_FEAT1_RXFIFOSIZE_Field is HAL.UInt5;
   subtype MAC_HW_FEAT1_TXFIFOSIZE_Field is HAL.UInt5;
   subtype MAC_HW_FEAT1_ADDR64_Field is HAL.UInt2;
   subtype MAC_HW_FEAT1_HASHTBLSZ_Field is HAL.UInt2;
   subtype MAC_HW_FEAT1_L3_L4_FILTER_Field is HAL.UInt4;

   --  MAC hardware feature register 0x0201
   type MAC_HW_FEAT1_Register is record
      --  Read-only. MTL Receive FIFO Size.
      RXFIFOSIZE     : MAC_HW_FEAT1_RXFIFOSIZE_Field;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. MTL Transmit FIFO Size.
      TXFIFOSIZE     : MAC_HW_FEAT1_TXFIFOSIZE_Field;
      --  Read-only. One-Step Timestamping Feature.
      OSTEN          : Boolean;
      --  Read-only. PTP OffLoad Feature.
      PTOEN          : Boolean;
      --  Read-only. IEEE 1588 High Word Register Feature.
      ADVTHWORD      : Boolean;
      --  Read-only. Address width.
      ADDR64         : MAC_HW_FEAT1_ADDR64_Field;
      --  Read-only. Data Center Bridging feature.
      DCBEN          : Boolean;
      --  Read-only. Split Header Structure feature.
      SPEN           : Boolean;
      --  Read-only. TCP Segment Offload Feature.
      TSOEN          : Boolean;
      --  Read-only. DMA Debug Register Feature.
      DBGMEMA        : Boolean;
      --  Read-only. Audio Video Bridging Feature.
      AVSEL          : Boolean;
      --  unspecified
      Reserved_21_22 : HAL.UInt2;
      --  Read-only. Low Power Mode Feature Support .
      LPMODEEN       : Boolean;
      --  Read-only. Hash Table Size.
      HASHTBLSZ      : MAC_HW_FEAT1_HASHTBLSZ_Field;
      --  unspecified
      Reserved_26_26 : HAL.Bit;
      --  Read-only. Total Number of L3 and L4 Filters .
      L3_L4_FILTER   : MAC_HW_FEAT1_L3_L4_FILTER_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_HW_FEAT1_Register use record
      RXFIFOSIZE     at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TXFIFOSIZE     at 0 range 6 .. 10;
      OSTEN          at 0 range 11 .. 11;
      PTOEN          at 0 range 12 .. 12;
      ADVTHWORD      at 0 range 13 .. 13;
      ADDR64         at 0 range 14 .. 15;
      DCBEN          at 0 range 16 .. 16;
      SPEN           at 0 range 17 .. 17;
      TSOEN          at 0 range 18 .. 18;
      DBGMEMA        at 0 range 19 .. 19;
      AVSEL          at 0 range 20 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      LPMODEEN       at 0 range 23 .. 23;
      HASHTBLSZ      at 0 range 24 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      L3_L4_FILTER   at 0 range 27 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MAC_HW_FEAT2_RXQCNT_Field is HAL.UInt4;
   subtype MAC_HW_FEAT2_TXQCNT_Field is HAL.UInt4;
   subtype MAC_HW_FEAT2_RXCHCNT_Field is HAL.UInt4;
   subtype MAC_HW_FEAT2_TXCHCNT_Field is HAL.UInt4;
   subtype MAC_HW_FEAT2_PPSOUTNUM_Field is HAL.UInt3;
   subtype MAC_HW_FEAT2_AUXSNAPNUM_Field is HAL.UInt3;

   --  MAC hardware feature register 0x0201
   type MAC_HW_FEAT2_Register is record
      --  Read-only. Number of MTL Receive Queues.
      RXQCNT         : MAC_HW_FEAT2_RXQCNT_Field;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. Number of MTL Transmit Queues.
      TXQCNT         : MAC_HW_FEAT2_TXQCNT_Field;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Number of DMA Receive Channels.
      RXCHCNT        : MAC_HW_FEAT2_RXCHCNT_Field;
      --  unspecified
      Reserved_16_17 : HAL.UInt2;
      --  Read-only. Number of DMA Transmit Channels.
      TXCHCNT        : MAC_HW_FEAT2_TXCHCNT_Field;
      --  unspecified
      Reserved_22_23 : HAL.UInt2;
      --  Read-only. Number of PPS Outputs.
      PPSOUTNUM      : MAC_HW_FEAT2_PPSOUTNUM_Field;
      --  unspecified
      Reserved_27_27 : HAL.Bit;
      --  Read-only. Number of Auxiliary Snapshot Inputs.
      AUXSNAPNUM     : MAC_HW_FEAT2_AUXSNAPNUM_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_HW_FEAT2_Register use record
      RXQCNT         at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      TXQCNT         at 0 range 6 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RXCHCNT        at 0 range 12 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      TXCHCNT        at 0 range 18 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PPSOUTNUM      at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      AUXSNAPNUM     at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MAC_MDIO_ADDR_MOC_Field is HAL.UInt2;
   subtype MAC_MDIO_ADDR_CR_Field is HAL.UInt4;
   subtype MAC_MDIO_ADDR_NTC_Field is HAL.UInt3;
   subtype MAC_MDIO_ADDR_RDA_Field is HAL.UInt5;
   subtype MAC_MDIO_ADDR_PA_Field is HAL.UInt5;

   --  MIDO address Register
   type MAC_MDIO_ADDR_Register is record
      --  MII busy.
      MB             : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  MII Operation Command.
      MOC            : MAC_MDIO_ADDR_MOC_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  CSR Clock Range.
      CR             : MAC_MDIO_ADDR_CR_Field := 16#0#;
      --  Number of Training Clocks This field controls the number of trailing
      --  clock cycles generated on MDC after the end of transmission of MDIO
      --  frame.
      NTC            : MAC_MDIO_ADDR_NTC_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Register/Device Address These bits select the PHY register in
      --  selected PHY device.
      RDA            : MAC_MDIO_ADDR_RDA_Field := 16#0#;
      --  Physical Layer Address This field indicates which PHY devices (out of
      --  32 devices) the MAC is accessing.
      PA             : MAC_MDIO_ADDR_PA_Field := 16#0#;
      --  Back to Back transactions When this bit is set and the NTC has value
      --  greater than 0, then the MAC will inform the completion of a read or
      --  write command at the end of frame transfer (before the trailing
      --  clocks are transmitted).
      BTB            : Boolean := False;
      --  Preamble Suppression Enable When this bit is set, the SMA will
      --  suppress the 32-bit preamble and transmit MDIO frames with only 1
      --  preamble bit.
      PSE            : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_MDIO_ADDR_Register use record
      MB             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      MOC            at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CR             at 0 range 8 .. 11;
      NTC            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RDA            at 0 range 16 .. 20;
      PA             at 0 range 21 .. 25;
      BTB            at 0 range 26 .. 26;
      PSE            at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype MAC_MDIO_DATA_MD_Field is HAL.UInt16;

   --  MDIO Data register
   type MAC_MDIO_DATA_Register is record
      --  MII Data This field contains the 16-bit data value read from the PHY
      --  after a Management Read operation or the 16-bit data value to be
      --  written to the PHY before a Management Write operation.
      MD             : MAC_MDIO_DATA_MD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_MDIO_DATA_Register use record
      MD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MAC_ADDR_HIGH_A47_32_Field is HAL.UInt16;

   --  MAC address0 high register
   type MAC_ADDR_HIGH_Register is record
      --  MAC Address0 [47:32] This field contains the upper 16 bits (47:32) of
      --  the 6-byte first MAC address.
      A47_32         : MAC_ADDR_HIGH_A47_32_Field := 16#FFFF#;
      --  DMA Channel Select This field contains the DMA Channel number to
      --  which the Rx packet whose DA matches the MAC Address content is
      --  routed.
      DCS            : Boolean := False;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Read-only. Address Enable.
      AE             : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_ADDR_HIGH_Register use record
      A47_32         at 0 range 0 .. 15;
      DCS            at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      AE             at 0 range 31 .. 31;
   end record;

   subtype MAC_TIMESTAMP_CTRL_SNAPTYPSEL_Field is HAL.UInt2;

   --  Time stamp control register
   type MAC_TIMESTAMP_CTRL_Register is record
      --  Enable Timestamp When this bit is set, the timestamp is added for
      --  Transmit and Receive packets.
      TSENA          : Boolean := False;
      --  Fine or Coarse Timestamp Update When this bit is set, the Fine method
      --  is used to update system timestamp.
      TSCFUPDT       : Boolean := False;
      --  Initialize Timestamp When this bit is set, the system time is
      --  initialized (overwritten) with the value specified in the MAC
      --  Register 80 (System Time Seconds Update.
      TSINIT         : Boolean := False;
      --  Update Timestamp When this bit is set, the system time is updated
      --  (added or subtracted) with the value specified in MAC System Time
      --  Seconds Update Table 753 and MAC System Time Nanoseconds Update Table
      --  754.
      TSUPDT         : Boolean := False;
      --  Enable Timestamp Interrupt Trigger When this bit is set, the
      --  timestamp interrupt is generated when the System Time becomes greater
      --  than the value written in the Target Time register.
      TSTRIG         : Boolean := False;
      --  Update Addend Register When this bit is set, the content of the
      --  Timestamp Addend register is updated in the PTP block for fine
      --  correction.
      TADDREG        : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Enable Timestamp for All Packets When this bit is set, the timestamp
      --  snapshot is enabled for all packets received by the MAC.
      TSENALL        : Boolean := False;
      --  Timestamp Digital or Binary Rollover Control When this bit is set,
      --  the Timestamp Low register rolls over after 0x3B9AC9FF value (that
      --  is, 1 nanosecond accuracy) and increments the timestamp (High)
      --  seconds.
      TSCTRLSSR      : Boolean := False;
      --  Enable PTP Packet Processing for Version 2 Format When this bit is
      --  set, the IEEE 1588 version 2 format is used to process the PTP
      --  packets.
      TSVER2ENA      : Boolean := False;
      --  Enable Processing of PTP over Ethernet Packets When this bit is set,
      --  the MAC receiver processes the PTP packets encapsulated directly in
      --  the Ethernet packets.
      TSIPENA        : Boolean := False;
      --  Enable Processing of PTP Packets Sent over 1Pv6-UDP When this bit is
      --  set, the MAC receiver processes the PTP packets encapsulated in
      --  IPv6-UDP packets.
      TSIPV6ENA      : Boolean := False;
      --  Enable Processing of PTP Packets Sent over IPv4-UDP When this bit is
      --  set, the MAC receiver processes the PTP packets encapsulated in
      --  IPv4-UDP packets.
      TSIPV4ENA      : Boolean := True;
      --  Enable Timestamp Snapshot for Event Messages When this bit is set,
      --  the timestamp snapshot is taken only for event messages (SYNC,
      --  Delay_Req, Pdelay_Req, or Pdelay_Resp).
      TSEVTENA       : Boolean := False;
      --  Enable Snapshot for Messages Relevant to Master When this bit is set,
      --  the snapshot is taken only for the messages that are relevant to the
      --  master node.
      TSMSTRENA      : Boolean := False;
      --  Select PTP packets for Taking Snapshots These bits, along with Bits
      --  15 and 14, decide the set of PTP packet types for which snapshot
      --  needs to be taken.
      SNAPTYPSEL     : MAC_TIMESTAMP_CTRL_SNAPTYPSEL_Field := 16#0#;
      --  Enable MAC Address for PTP Packet Filtering When this bit is set, the
      --  DA MAC address (that matches any MAC Address register) is used to
      --  filter the PTP packets when PTP is directly sent over Ethernet.
      TSENMACADDR    : Boolean := False;
      --  unspecified
      Reserved_19_23 : HAL.UInt5 := 16#0#;
      --  Transmit Timestamp Status Mode When this bit is set, the MAC
      --  overwrites the earlier transmit timestamp status even if it is not
      --  read by the software.
      TXTTSSTSM      : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  AV 802.
      AV8021ASMEN    : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_TIMESTAMP_CTRL_Register use record
      TSENA          at 0 range 0 .. 0;
      TSCFUPDT       at 0 range 1 .. 1;
      TSINIT         at 0 range 2 .. 2;
      TSUPDT         at 0 range 3 .. 3;
      TSTRIG         at 0 range 4 .. 4;
      TADDREG        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TSENALL        at 0 range 8 .. 8;
      TSCTRLSSR      at 0 range 9 .. 9;
      TSVER2ENA      at 0 range 10 .. 10;
      TSIPENA        at 0 range 11 .. 11;
      TSIPV6ENA      at 0 range 12 .. 12;
      TSIPV4ENA      at 0 range 13 .. 13;
      TSEVTENA       at 0 range 14 .. 14;
      TSMSTRENA      at 0 range 15 .. 15;
      SNAPTYPSEL     at 0 range 16 .. 17;
      TSENMACADDR    at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      TXTTSSTSM      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      AV8021ASMEN    at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype MAC_SUB_SCND_INCR_SSINC_Field is HAL.UInt8;

   --  Sub-second increment register
   type MAC_SUB_SCND_INCR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Sub-second increment value.
      SSINC          : MAC_SUB_SCND_INCR_SSINC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_SUB_SCND_INCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      SSINC          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MAC_SYS_TIME_NSCND_TSSS_Field is HAL.UInt31;

   --  System time nanoseconds register
   type MAC_SYS_TIME_NSCND_Register is record
      --  Read-only. Time stamp sub seconds The value in this field has the sub
      --  second representation of time, with an accuracy of 0.
      TSSS           : MAC_SYS_TIME_NSCND_TSSS_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_SYS_TIME_NSCND_Register use record
      TSSS           at 0 range 0 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype MAC_SYS_TIME_NSCND_UPD_TSSS_Field is HAL.UInt31;

   --  no description available
   type MAC_SYS_TIME_NSCND_UPD_Register is record
      --  Time stamp sub seconds The value in this field has the sub second
      --  representation of time, with an accuracy of 0.
      TSSS   : MAC_SYS_TIME_NSCND_UPD_TSSS_Field := 16#0#;
      --  Add or subtract time When this bit is set, the time value is
      --  subtracted with the contents of the update register.
      ADDSUB : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_SYS_TIME_NSCND_UPD_Register use record
      TSSS   at 0 range 0 .. 30;
      ADDSUB at 0 range 31 .. 31;
   end record;

   subtype MAC_SYS_TIME_HWORD_SCND_TSHWR_Field is HAL.UInt16;

   --  no description available
   type MAC_SYS_TIME_HWORD_SCND_Register is record
      --  Time stamp higher word Contains the most significant 16-bits of the
      --  Time stamp seconds value.
      TSHWR          : MAC_SYS_TIME_HWORD_SCND_TSHWR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_SYS_TIME_HWORD_SCND_Register use record
      TSHWR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Time stamp status register
   type MAC_SYS_TIMESTMP_STAT_Register is record
      --  Read-only. Time stamp seconds overflow When set, indicates that the
      --  seconds value of the Time stamp has overflowed beyond 0xFFFF_FFFF.
      TSSOVF        : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_SYS_TIMESTMP_STAT_Register use record
      TSSOVF        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS_TXTSSTSLO_Field is HAL.UInt31;

   --  Tx timestamp status nanoseconds
   type MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS_Register is record
      --  Read-only. Transmit timestamp status low.
      TXTSSTSLO  : MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS_TXTSSTSLO_Field;
      --  Read-only. Transmit timestamp status missed.
      TXTSSTSMIS : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS_Register use record
      TXTSSTSLO  at 0 range 0 .. 30;
      TXTSSTSMIS at 0 range 31 .. 31;
   end record;

   subtype MTL_OP_MODE_SCHALG_Field is HAL.UInt2;

   --  MTL Operation Mode Register
   type MTL_OP_MODE_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Drop Transmit Status When this bit is set, the Tx packet status
      --  received from the MAC is dropped in the MTL.
      DTXSTS         : Boolean := False;
      --  Read-only. Receive Arbitration Algorithm This field is used to select
      --  the arbitration algorithm for the Rx side.
      RAA            : Boolean := False;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  Tx Scheduling Algorithm This field indicates the algorithm for Tx
      --  scheduling: 0x00: WRR algorithm 0x1: Reserved 0x2: Reserved 0x3:
      --  Strict priority algorithm.
      SCHALG         : MTL_OP_MODE_SCHALG_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Counters Preset When this bit is set, MTL TxQ0 Underflow register
      --  (Table 762) and MTL_TxQ1_Underflow (Table 762) registers are
      --  initialized/preset to 0x7F0.
      CNTPRST        : Boolean := False;
      --  Counters Reset When this bit is set, all counters are reset.
      CNTCLR         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_OP_MODE_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      DTXSTS         at 0 range 1 .. 1;
      RAA            at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SCHALG         at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CNTPRST        at 0 range 8 .. 8;
      CNTCLR         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  MTL Interrupt Status register
   type MTL_INTR_STAT_Register is record
      --  Read-only. Queue 0 Interrupt status This bit indicates that there is
      --  an interrupt from Queue 0.
      Q0IS          : Boolean;
      --  Read-only. Queue 1 Interrupt status This bit indicates that there is
      --  an interrupt from Queue 1.
      Q1IS          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_INTR_STAT_Register use record
      Q0IS          at 0 range 0 .. 0;
      Q1IS          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  MTL Receive Queue and DMA Channel Mapping register
   type MTL_RXQ_DMA_MAP_Register is record
      --  Queue 0 Mapped to DMA Channel This field controls the routing of the
      --  packet received in Queue 0 to the DMA channel: 0: DMA Channel 0 1:
      --  DMA Channel 1 This field is valid when the Q0DDMACH field is reset.
      Q0MDMACH       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Queue 0 Enabled for DA-based DMA Channel Selection When set, this bit
      --  indicates that the packets received in Queue 0 are routed to a
      --  particular DMA channel as decided in the MAC Receiver based on the
      --  DMA channel number programmed in the L3-L4 filter registers, or the
      --  Ethernet DA address.
      Q0DDMACH       : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Queue 1 Mapped to DMA Channel This field controls the routing of the
      --  received packet in Queue 1 to the DMA channel: 0: DMA Channel 0 1:
      --  DMA Channel 1 This field is valid when the Q1DDMACH field is reset.
      Q1MDMACH       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Queue 1 Enabled for DA-based DMA Channel Selection When set, this bit
      --  indicates that the packets received in Queue 1 are routed to a
      --  particular DMA channel as decided in the MAC Receiver based on the
      --  DMA channel number programmed in the L3-L4 filter registers, or the
      --  Ethernet DA address.
      Q1DDMACH       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_RXQ_DMA_MAP_Register use record
      Q0MDMACH       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      Q0DDMACH       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      Q1MDMACH       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      Q1DDMACH       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------------------------
   -- MTL_QUEUE cluster's Registers --
   -----------------------------------

   subtype MTL_TXQx_OP_MODE_MTL_QUEUE_TXQEN_Field is HAL.UInt2;
   subtype MTL_TXQx_OP_MODE_MTL_QUEUE_TTC_Field is HAL.UInt3;
   subtype MTL_TXQx_OP_MODE_MTL_QUEUE_TQS_Field is HAL.UInt3;

   --  MTL TxQx Operation Mode register
   type MTL_TXQx_OP_MODE_MTL_QUEUE_Register is record
      --  Flush Transmit Queue When this bit is set, the Tx queue controller
      --  logic is reset to its default values.
      FTQ            : Boolean := False;
      --  Transmit Store and Forward When this bit is set, the transmission
      --  starts when a full packet resides in the MTL Tx queue.
      TSF            : Boolean := False;
      --  Transmit Queue Enable This field is used to enable/disable the
      --  transmit queue 0.
      TXQEN          : MTL_TXQx_OP_MODE_MTL_QUEUE_TXQEN_Field := 16#0#;
      --  Transmit Threshold Control These bits control the threshold level of
      --  the MTL Tx Queue.
      TTC            : MTL_TXQx_OP_MODE_MTL_QUEUE_TTC_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Transmit Queue Size This field indicates the size of the allocated
      --  Transmit queues in blocks of 256 bytes.
      TQS            : MTL_TXQx_OP_MODE_MTL_QUEUE_TQS_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_OP_MODE_MTL_QUEUE_Register use record
      FTQ            at 0 range 0 .. 0;
      TSF            at 0 range 1 .. 1;
      TXQEN          at 0 range 2 .. 3;
      TTC            at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      TQS            at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype MTL_TXQx_UNDRFLW_MTL_QUEUE_UFFRMCNT_Field is HAL.UInt11;

   --  MTL TxQx Underflow register
   type MTL_TXQx_UNDRFLW_MTL_QUEUE_Register is record
      --  Read-only. Underflow Packet Counter This field indicates the number
      --  of packets aborted by the controller because of Tx Queue Underflow.
      UFFRMCNT       : MTL_TXQx_UNDRFLW_MTL_QUEUE_UFFRMCNT_Field;
      --  Read-only. Overflow Bit for Underflow Packet Counter This bit is set
      --  every time the Tx queue Underflow Packet Counter field overflows,
      --  that is, it has crossed the maximum count.
      UFCNTOVF       : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_UNDRFLW_MTL_QUEUE_Register use record
      UFFRMCNT       at 0 range 0 .. 10;
      UFCNTOVF       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MTL_TXQx_DBG_MTL_QUEUE_TRCSTS_Field is HAL.UInt2;
   subtype MTL_TXQx_DBG_MTL_QUEUE_PTXQ_Field is HAL.UInt3;
   subtype MTL_TXQx_DBG_MTL_QUEUE_STSXSTSF_Field is HAL.UInt3;

   --  MTL TxQx Debug register
   type MTL_TXQx_DBG_MTL_QUEUE_Register is record
      --  Read-only. Transmit Queue in Pause When this bit is high and the Rx
      --  flow control is enabled, it indicates that the Tx Queue is in the
      --  Pause condition (in the full-duplex only mode) because of the
      --  following: - Reception of the PFC packet for the priorities assigned
      --  to the Tx Queue when PFC is enabled - Reception of 802.
      TXQPAUSED      : Boolean;
      --  Read-only. MTL Tx Queue Read Controller Status This field indicates
      --  the state of the Tx Queue Read Controller: 00: Idle state 01: Read
      --  state (transferring data to the MAC transmitter) 10: Waiting for
      --  pending Tx Status from the MAC transmitter 11: Flushing the Tx queue
      --  because of the Packet Abort request from the MAC.
      TRCSTS         : MTL_TXQx_DBG_MTL_QUEUE_TRCSTS_Field;
      --  Read-only. MTL Tx Queue Write Controller Status When high, this bit
      --  indicates that the MTL Tx Queue Write Controller is active, and it is
      --  transferring the data to the Tx Queue.
      TWCSTS         : Boolean;
      --  Read-only. MTL Tx Queue Not Empty Status When this bit is high, it
      --  indicates that the MTL Tx Queue is not empty and some data is left
      --  for transmission.
      TXQSTS         : Boolean;
      --  Read-only. MTL Tx Status FIFO Full Status When high, this bit
      --  indicates that the MTL Tx Status FIFO is full.
      TXSTSFSTS      : Boolean;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Number of Packets in the Transmit Queue This field
      --  indicates the current number of packets in the Tx Queue.
      PTXQ           : MTL_TXQx_DBG_MTL_QUEUE_PTXQ_Field;
      --  unspecified
      Reserved_19_19 : HAL.Bit;
      --  Read-only. Number of Status Words in Tx Status FIFO of Queue This
      --  field indicates the current number of status in the Tx Status FIFO of
      --  this queue.
      STSXSTSF       : MTL_TXQx_DBG_MTL_QUEUE_STSXSTSF_Field;
      --  unspecified
      Reserved_23_31 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_DBG_MTL_QUEUE_Register use record
      TXQPAUSED      at 0 range 0 .. 0;
      TRCSTS         at 0 range 1 .. 2;
      TWCSTS         at 0 range 3 .. 3;
      TXQSTS         at 0 range 4 .. 4;
      TXSTSFSTS      at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PTXQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      STSXSTSF       at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype MTL_TXQx_ETS_CTRL_MTL_QUEUE_SLC_Field is HAL.UInt3;

   --  MTL TxQx ETS control register, only TxQ1 support
   type MTL_TXQx_ETS_CTRL_MTL_QUEUE_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  AV Algorithm.
      AVALG         : Boolean := False;
      --  Credit Control.
      CC            : Boolean := False;
      --  Read-only. Credit Control.
      SLC           : MTL_TXQx_ETS_CTRL_MTL_QUEUE_SLC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_ETS_CTRL_MTL_QUEUE_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      AVALG         at 0 range 2 .. 2;
      CC            at 0 range 3 .. 3;
      SLC           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype MTL_TXQx_ETS_STAT_MTL_QUEUE_ABS_Field is HAL.UInt24;

   --  MTL TxQx ETS Status register
   type MTL_TXQx_ETS_STAT_MTL_QUEUE_Register is record
      --  Read-only. Average Bits per Slot.
      ABS_k          : MTL_TXQx_ETS_STAT_MTL_QUEUE_ABS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_ETS_STAT_MTL_QUEUE_Register use record
      ABS_k          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MTL_TXQx_QNTM_WGHT_MTL_QUEUE_ISCQW_Field is HAL.UInt21;

   --  no description available
   type MTL_TXQx_QNTM_WGHT_MTL_QUEUE_Register is record
      --  Average Bits per Slot.
      ISCQW          : MTL_TXQx_QNTM_WGHT_MTL_QUEUE_ISCQW_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_QNTM_WGHT_MTL_QUEUE_Register use record
      ISCQW          at 0 range 0 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype MTL_TXQx_SNDSLP_CRDT_MTL_QUEUE_SSC_Field is HAL.UInt14;

   --  MTL TxQx SendSlopCredit register, only TxQ1 support
   type MTL_TXQx_SNDSLP_CRDT_MTL_QUEUE_Register is record
      --  sendSlopeCredit.
      SSC            : MTL_TXQx_SNDSLP_CRDT_MTL_QUEUE_SSC_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_SNDSLP_CRDT_MTL_QUEUE_Register use record
      SSC            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype MTL_TXQx_HI_CRDT_MTL_QUEUE_HC_Field is HAL.UInt29;

   --  MTL TxQx hiCredit register, only TxQ1 support
   type MTL_TXQx_HI_CRDT_MTL_QUEUE_Register is record
      --  hiCredit.
      HC             : MTL_TXQx_HI_CRDT_MTL_QUEUE_HC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_HI_CRDT_MTL_QUEUE_Register use record
      HC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype MTL_TXQx_LO_CRDT_MTL_QUEUE_LC_Field is HAL.UInt29;

   --  MTL TxQx loCredit register, only TxQ1 support
   type MTL_TXQx_LO_CRDT_MTL_QUEUE_Register is record
      --  loCredit.
      LC             : MTL_TXQx_LO_CRDT_MTL_QUEUE_LC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_LO_CRDT_MTL_QUEUE_Register use record
      LC             at 0 range 0 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  no description available
   type MTL_TXQx_INTCTRL_STAT_MTL_QUEUE_Register is record
      --  Transmit Queue Underflow Interrupt Status This bit indicates that the
      --  Transmit Queue had an underflow while transmitting the packet.
      TXUNFIS        : Boolean := False;
      --  Average Bits Per Slot Interrupt Status When set, this bit indicates
      --  that the MAC has updated the ABS value.
      ABPSIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Transmit Queue Underflow Interrupt Enable When this bit is set, the
      --  Transmit Queue Underflow interrupt is enabled.
      TXUIE          : Boolean := False;
      --  Average Bits Per Slot Interrupt Enable When this bit is set, the MAC
      --  asserts the interrupt when the average bits per slot status is
      --  updated.
      ABPSIE         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Receive Queue Overflow Interrupt Status This bit indicates that the
      --  Receive Queue had an overflow while receiving the packet.
      RXOVFIS        : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Receive Queue Overflow Interrupt Enable When this bit is set, the
      --  Receive Queue Overflow interrupt is enabled.
      RXOIE          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_TXQx_INTCTRL_STAT_MTL_QUEUE_Register use record
      TXUNFIS        at 0 range 0 .. 0;
      ABPSIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXUIE          at 0 range 8 .. 8;
      ABPSIE         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RXOVFIS        at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      RXOIE          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype MTL_RXQx_OP_MODE_MTL_QUEUE_RTC_Field is HAL.UInt2;
   subtype MTL_RXQx_OP_MODE_MTL_QUEUE_RQS_Field is HAL.UInt3;

   --  MTL RxQx Operation Mode register
   type MTL_RXQx_OP_MODE_MTL_QUEUE_Register is record
      --  Receive Queue Threshold Control These bits control the threshold
      --  level of the MTL Rx queue (in bytes): 00: 64 01: 32 10: 96 11: 128
      --  The packet received is transferred to the application or DMA when the
      --  packet size within the MTL Rx queue is larger than the threshold.
      RTC            : MTL_RXQx_OP_MODE_MTL_QUEUE_RTC_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Forward Undersized Good Packets When this bit is set, the Rx queue
      --  forwards the undersized good packets (packets with no error and
      --  length less than 64 bytes), including pad-bytes and CRC.
      FUP            : Boolean := False;
      --  Forward Error Packets When this bit is reset, the Rx queue drops
      --  packets with error status (CRC error, Mll_ER, watchdog timeout, or
      --  overflow).
      FEP            : Boolean := False;
      --  Receive Queue Store and Forward When this bit is set, the ethernet
      --  block on this chip reads a packet from the Rx queue only after the
      --  complete packet has been written to it, ignoring the RTC field of
      --  this register.
      RSF            : Boolean := False;
      --  Disable Dropping of TCP/IP Checksum Error Packets When this bit is
      --  set, the MAC does not drop the packets which only have the errors
      --  detected by the Receive Checksum Offload engine.
      DIS_TCP_EF     : Boolean := False;
      --  unspecified
      Reserved_7_19  : HAL.UInt13 := 16#0#;
      --  This field indicates the size of the allocated Receive queues in
      --  blocks of 256 bytes.
      RQS            : MTL_RXQx_OP_MODE_MTL_QUEUE_RQS_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_RXQx_OP_MODE_MTL_QUEUE_Register use record
      RTC            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      FUP            at 0 range 3 .. 3;
      FEP            at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      DIS_TCP_EF     at 0 range 6 .. 6;
      Reserved_7_19  at 0 range 7 .. 19;
      RQS            at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype MTL_RXQx_MISSPKT_OVRFLW_CNT_MTL_QUEUE_OVFPKTCNT_Field is HAL.UInt11;

   --  MTL RxQx Missed Packet Overflow Counter register
   type MTL_RXQx_MISSPKT_OVRFLW_CNT_MTL_QUEUE_Register is record
      --  Read-only. Overflow Packet Counter This field indicates the number of
      --  packets discarded by the Ethernet block because of Receive queue
      --  overflow.
      OVFPKTCNT      : MTL_RXQx_MISSPKT_OVRFLW_CNT_MTL_QUEUE_OVFPKTCNT_Field;
      --  Read-only. Overflow Counter Overflow Bit When set, this bit indicates
      --  that the Rx Queue Overflow Packet Counter field crossed the maximum
      --  limit.
      OVFCNTOVF      : Boolean;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_RXQx_MISSPKT_OVRFLW_CNT_MTL_QUEUE_Register use record
      OVFPKTCNT      at 0 range 0 .. 10;
      OVFCNTOVF      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MTL_RXQx_DBG_MTL_QUEUE_RRCSTS_Field is HAL.UInt2;
   subtype MTL_RXQx_DBG_MTL_QUEUE_RXQSTS_Field is HAL.UInt2;
   subtype MTL_RXQx_DBG_MTL_QUEUE_PRXQ_Field is HAL.UInt14;

   --  MTL RxQx Debug register
   type MTL_RXQx_DBG_MTL_QUEUE_Register is record
      --  Read-only. MTL Rx Queue Write Controller Active Status When high,
      --  this bit indicates that the MTL Rx queue Write controller is active,
      --  and it is transferring a received packet to the Rx Queue.
      RWCSTS         : Boolean;
      --  Read-only. MTL Rx Queue Read Controller State This field gives the
      --  state of the Rx queue Read controller: 00: Idle state 01: Reading
      --  packet data 10: Reading packet status (or timestamp) 11: Flushing the
      --  packet data and status.
      RRCSTS         : MTL_RXQx_DBG_MTL_QUEUE_RRCSTS_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. MTL Rx Queue Fill-Level Status This field gives the status
      --  of the fill-level of the Rx Queue: 0x0: Rx Queue empty 0x1: Rx Queue
      --  fill-level below flow-control deactivate threshold 0x2: Rx Queue
      --  fill-level above flow-control activate threshold 0x3: Rx Queue full.
      RXQSTS         : MTL_RXQx_DBG_MTL_QUEUE_RXQSTS_Field;
      --  unspecified
      Reserved_6_15  : HAL.UInt10;
      --  Read-only. Number of Packets in Receive Queue This field indicates
      --  the current number of packets in the Rx Queue.
      PRXQ           : MTL_RXQx_DBG_MTL_QUEUE_PRXQ_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_RXQx_DBG_MTL_QUEUE_Register use record
      RWCSTS         at 0 range 0 .. 0;
      RRCSTS         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXQSTS         at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      PRXQ           at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MTL_RXQx_CTRL_MTL_QUEUE_RXQ_WEGT_Field is HAL.UInt3;

   --  MTL RxQx Control register
   type MTL_RXQx_CTRL_MTL_QUEUE_Register is record
      --  Receive Queue Weight This field indicates the weight assigned to the
      --  Rx Queue 0.
      RXQ_WEGT      : MTL_RXQx_CTRL_MTL_QUEUE_RXQ_WEGT_Field := 16#0#;
      --  Receive Queue Packet Arbitration When this bit is set, the The
      --  ethernet block drives the packet data to the ARI interface such that
      --  the entire packet data of currently-selected queue is transmitted
      --  before switching to other queue.
      RXQ_FRM_ARBIT : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MTL_RXQx_CTRL_MTL_QUEUE_Register use record
      RXQ_WEGT      at 0 range 0 .. 2;
      RXQ_FRM_ARBIT at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  no description available
   type MTL_QUEUE_Cluster is record
      --  MTL TxQx Operation Mode register
      MTL_TXQx_OP_MODE            : aliased MTL_TXQx_OP_MODE_MTL_QUEUE_Register;
      --  MTL TxQx Underflow register
      MTL_TXQx_UNDRFLW            : aliased MTL_TXQx_UNDRFLW_MTL_QUEUE_Register;
      --  MTL TxQx Debug register
      MTL_TXQx_DBG                : aliased MTL_TXQx_DBG_MTL_QUEUE_Register;
      --  MTL TxQx ETS control register, only TxQ1 support
      MTL_TXQx_ETS_CTRL           : aliased MTL_TXQx_ETS_CTRL_MTL_QUEUE_Register;
      --  MTL TxQx ETS Status register
      MTL_TXQx_ETS_STAT           : aliased MTL_TXQx_ETS_STAT_MTL_QUEUE_Register;
      --  no description available
      MTL_TXQx_QNTM_WGHT          : aliased MTL_TXQx_QNTM_WGHT_MTL_QUEUE_Register;
      --  MTL TxQx SendSlopCredit register, only TxQ1 support
      MTL_TXQx_SNDSLP_CRDT        : aliased MTL_TXQx_SNDSLP_CRDT_MTL_QUEUE_Register;
      --  MTL TxQx hiCredit register, only TxQ1 support
      MTL_TXQx_HI_CRDT            : aliased MTL_TXQx_HI_CRDT_MTL_QUEUE_Register;
      --  MTL TxQx loCredit register, only TxQ1 support
      MTL_TXQx_LO_CRDT            : aliased MTL_TXQx_LO_CRDT_MTL_QUEUE_Register;
      --  no description available
      MTL_TXQx_INTCTRL_STAT       : aliased MTL_TXQx_INTCTRL_STAT_MTL_QUEUE_Register;
      --  MTL RxQx Operation Mode register
      MTL_RXQx_OP_MODE            : aliased MTL_RXQx_OP_MODE_MTL_QUEUE_Register;
      --  MTL RxQx Missed Packet Overflow Counter register
      MTL_RXQx_MISSPKT_OVRFLW_CNT : aliased MTL_RXQx_MISSPKT_OVRFLW_CNT_MTL_QUEUE_Register;
      --  MTL RxQx Debug register
      MTL_RXQx_DBG                : aliased MTL_RXQx_DBG_MTL_QUEUE_Register;
      --  MTL RxQx Control register
      MTL_RXQx_CTRL               : aliased MTL_RXQx_CTRL_MTL_QUEUE_Register;
   end record
     with Volatile, Size => 512;

   for MTL_QUEUE_Cluster use record
      MTL_TXQx_OP_MODE            at 16#0# range 0 .. 31;
      MTL_TXQx_UNDRFLW            at 16#4# range 0 .. 31;
      MTL_TXQx_DBG                at 16#8# range 0 .. 31;
      MTL_TXQx_ETS_CTRL           at 16#10# range 0 .. 31;
      MTL_TXQx_ETS_STAT           at 16#14# range 0 .. 31;
      MTL_TXQx_QNTM_WGHT          at 16#18# range 0 .. 31;
      MTL_TXQx_SNDSLP_CRDT        at 16#1C# range 0 .. 31;
      MTL_TXQx_HI_CRDT            at 16#20# range 0 .. 31;
      MTL_TXQx_LO_CRDT            at 16#24# range 0 .. 31;
      MTL_TXQx_INTCTRL_STAT       at 16#2C# range 0 .. 31;
      MTL_RXQx_OP_MODE            at 16#30# range 0 .. 31;
      MTL_RXQx_MISSPKT_OVRFLW_CNT at 16#34# range 0 .. 31;
      MTL_RXQx_DBG                at 16#38# range 0 .. 31;
      MTL_RXQx_CTRL               at 16#3C# range 0 .. 31;
   end record;

   --  no description available
   type MTL_QUEUE_Clusters is array (0 .. 1) of MTL_QUEUE_Cluster;

   subtype DMA_MODE_TAA_Field is HAL.UInt3;
   subtype DMA_MODE_PR_Field is HAL.UInt3;

   --  DMA mode register
   type DMA_MODE_Register is record
      --  Software Reset When this bit is set, the MAC and the OMA controller
      --  reset the logic and all internal registers of the OMA, MTL, and MAC.
      SWR            : Boolean := False;
      --  DMA Tx or Rx Arbitration Scheme This bit specifies the arbitration
      --  scheme between the Transmit and Receive paths of all channels: The Tx
      --  path has priority over the Rx path when the TXPR bit is set.
      DA             : Boolean := False;
      --  Transmit Arbitration Algorithm This field is used to select the
      --  arbitration algorithm for the Transmit side when multiple Tx DMAs are
      --  selected.
      TAA            : DMA_MODE_TAA_Field := 16#0#;
      --  unspecified
      Reserved_5_10  : HAL.UInt6 := 16#0#;
      --  Transmit Priority When set, this bit indicates that the Tx DMA has
      --  higher priority than the Rx DMA during arbitration for the
      --  system-side bus.
      TXPR           : Boolean := False;
      --  Priority Ratio These bits control the priority ratio in weighted
      --  round-robin arbitration between the Rx DMA and Tx DMA.
      PR             : DMA_MODE_PR_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_MODE_Register use record
      SWR            at 0 range 0 .. 0;
      DA             at 0 range 1 .. 1;
      TAA            at 0 range 2 .. 4;
      Reserved_5_10  at 0 range 5 .. 10;
      TXPR           at 0 range 11 .. 11;
      PR             at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  DMA System Bus mode
   type DMA_SYSBUS_MODE_Register is record
      --  Fixed Burst Length When this bit is set to 1, the AHB master will
      --  initiate burst transfers of specified length (INCRx or SINGLE).
      FB             : Boolean := False;
      --  unspecified
      Reserved_1_11  : HAL.UInt11 := 16#0#;
      --  Address-Aligned Beats When this bit is set to 1, the AHB master
      --  performs address-aligned burst transfers on Read and Write channels.
      AAL            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Mixed Burst When this bit is set high and the FB bit is low, the AHB
      --  master performs undefined bursts transfers (INCR) for burst length of
      --  16 or more.
      MB             : Boolean := False;
      --  Rebuild INCRx Burst When this bit is set high and the AHB master gets
      --  SPLIT, RETRY, or EarlyBurst Termination (EBT) response, the AHB
      --  master interface rebuilds the pending beats of any initiated burst
      --  transfer with INCRx and SINGLEtransfers.
      RB             : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_SYSBUS_MODE_Register use record
      FB             at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      AAL            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      MB             at 0 range 14 .. 14;
      RB             at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DMA Interrupt status
   type DMA_INTR_STAT_Register is record
      --  DMA Channel 0 Interrupt Status This bit indicates an interrupt event
      --  in DMA Channel 0.
      DC0IS          : Boolean := False;
      --  DMA Channel 1 Interrupt Status This bit indicates an interrupt event
      --  in DMA Channel 1.
      DC1IS          : Boolean := False;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Read-only. MTL Interrupt Status This bit indicates an interrupt event
      --  in the MTL.
      MTLIS          : Boolean := False;
      --  Read-only. MAC Interrupt Status This bit indicates an interrupt event
      --  in the MAC.
      MACIS          : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_INTR_STAT_Register use record
      DC0IS          at 0 range 0 .. 0;
      DC1IS          at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      MTLIS          at 0 range 16 .. 16;
      MACIS          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype DMA_DBG_STAT_RPS0_Field is HAL.UInt4;
   subtype DMA_DBG_STAT_TPS0_Field is HAL.UInt4;
   subtype DMA_DBG_STAT_RPS1_Field is HAL.UInt4;
   subtype DMA_DBG_STAT_TPS1_Field is HAL.UInt4;

   --  DMA Debug Status
   type DMA_DBG_STAT_Register is record
      --  Read-only. AHB Master Status When high, this bit indicates that the
      --  AHB master FSMs are in the non-idle state.
      AHSTS          : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. DMA Channel 0 Receive Process State This field indicates
      --  the Rx DMA FSM state for Channel 0: 0x0: Stopped (Reset or Stop
      --  Receive Command issued) 0x1: Running (Fetching Rx Transfer ) 0x2:
      --  Reserved 0x3: Running (Waiting for Rx packet) 0x4: Suspended (Rx
      --  Unavailable) 0x5: Running (Closing the Rx) 0x6: Timestamp write state
      --  0x7: Running (Transferring the received packet data from the Rx
      --  buffer to the system memory) This field does not generate an
      --  interrupt.
      RPS0           : DMA_DBG_STAT_RPS0_Field;
      --  Read-only. DMA Channel 0 Transmit Process State This field indicates
      --  the Tx DMA FSM state for Channel 0: 000: Stopped (Reset or Stop
      --  Transmit Command issued) 0x1: Running (Fetching Tx Transfer) 0x2:
      --  Running (Waiting for status) 0x3: Running (Reading Data from system
      --  memory buffer and queuing it to the Tx buffer (Tx FIFO)) 0x4:
      --  Timestamp write state 0x5: Reserved for future use 0x6: Suspended (Tx
      --  Unavailable or Tx Buffer Underflow) 0x7: Running (Closing Tx ) This
      --  field does not generate an interrupt.
      TPS0           : DMA_DBG_STAT_TPS0_Field;
      --  Read-only. DMA Channel 1 Receive Process State This field indicates
      --  the Rx DMA FSM state for Channel 1.
      RPS1           : DMA_DBG_STAT_RPS1_Field;
      --  Read-only. DMA Channel 1 Transmit Process State This field indicates
      --  the Tx DMA FSM state for Channel 1.
      TPS1           : DMA_DBG_STAT_TPS1_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_DBG_STAT_Register use record
      AHSTS          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      RPS0           at 0 range 8 .. 11;
      TPS0           at 0 range 12 .. 15;
      RPS1           at 0 range 16 .. 19;
      TPS1           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --------------------------------
   -- DMA_CH cluster's Registers --
   --------------------------------

   subtype DMA_CHx_CTRL_DMA_CH_DSL_Field is HAL.UInt3;

   --  DMA Channelx Control
   type DMA_CHx_CTRL_DMA_CH_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  8xPBL mode When this bit is set, the PBL value programmed in
      --  Bits[21:16] in DMA Channel Transmit Control Table 780 is multiplied
      --  eight times.
      PBLx8          : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Skip Length This bit specifies the Word, Dword, or Lword number
      --  (depending on the 32- bit, 64-bit, or 128-bit bus) to skip between
      --  two unchained s.
      DSL            : DMA_CHx_CTRL_DMA_CH_DSL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_CTRL_DMA_CH_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      PBLx8          at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      DSL            at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DMA_CHx_TX_CTRL_DMA_CH_TCW_Field is HAL.UInt3;
   subtype DMA_CHx_TX_CTRL_DMA_CH_TxPBL_Field is HAL.UInt6;

   --  DMA Channelx Transmit Control
   type DMA_CHx_TX_CTRL_DMA_CH_Register is record
      --  Start or Stop Transmission Command When this bit is set, transmission
      --  is placed in the Running state.
      ST             : Boolean := False;
      --  Transmit Channel Weight This field indicates the weight assigned to
      --  the corresponding Transmit channel.
      TCW            : DMA_CHx_TX_CTRL_DMA_CH_TCW_Field := 16#0#;
      --  Operate on Second Frame When this bit is set, it instructs the DMA to
      --  process the second packet of the Transmit data even before the status
      --  for the first packet is obtained.
      OSF            : Boolean := False;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Transmit Programmable Burst Length These bits indicate the maximum
      --  number of beats to be transferred in one DMA data transfer.
      TxPBL          : DMA_CHx_TX_CTRL_DMA_CH_TxPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_TX_CTRL_DMA_CH_Register use record
      ST             at 0 range 0 .. 0;
      TCW            at 0 range 1 .. 3;
      OSF            at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      TxPBL          at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DMA_CHx_RX_CTRL_DMA_CH_RBSZ_Field is HAL.UInt12;
   subtype DMA_CHx_RX_CTRL_DMA_CH_RxPBL_Field is HAL.UInt6;

   --  DMA Channelx Receive Control
   type DMA_CHx_RX_CTRL_DMA_CH_Register is record
      --  Start or Stop Receive When this bit is set, the DMA tries to acquire
      --  the from the receive list and processes the incoming packets.
      SR             : Boolean := False;
      --  unspecified
      Reserved_1_2   : HAL.UInt2 := 16#0#;
      --  Receive Buffer size This field indicates the size of the Rx buffers
      --  specified in bytes.
      RBSZ           : DMA_CHx_RX_CTRL_DMA_CH_RBSZ_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Receive Programmable Burst Length These bits indicate the maximum
      --  number of beats to be transferred in one DMA data transfer.
      RxPBL          : DMA_CHx_RX_CTRL_DMA_CH_RxPBL_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  DMA Rx Channel 0 Packet Flush When this bit is set to 1, the DMA will
      --  automatically flush the packet from the Rx Queues destined to DMA Rx
      --  Channel 0 when the DMA Rx Channel 0 is stopped after a system bus
      --  error has occurred.
      RPF            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_RX_CTRL_DMA_CH_Register use record
      SR             at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      RBSZ           at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RxPBL          at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      RPF            at 0 range 31 .. 31;
   end record;

   subtype DMA_CHx_TXDESC_LIST_ADDR_DMA_CH_STL_Field is HAL.UInt30;

   --  no description available
   type DMA_CHx_TXDESC_LIST_ADDR_DMA_CH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Start of transmit list This field contains the base address of the
      --  first in the Transmit list.
      STL          : DMA_CHx_TXDESC_LIST_ADDR_DMA_CH_STL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_TXDESC_LIST_ADDR_DMA_CH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      STL          at 0 range 2 .. 31;
   end record;

   subtype DMA_CHx_RXDESC_LIST_ADDR_DMA_CH_SRL_Field is HAL.UInt30;

   --  no description available
   type DMA_CHx_RXDESC_LIST_ADDR_DMA_CH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Start of receive list This field contains the base address of the
      --  First in the Receive list.
      SRL          : DMA_CHx_RXDESC_LIST_ADDR_DMA_CH_SRL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_RXDESC_LIST_ADDR_DMA_CH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      SRL          at 0 range 2 .. 31;
   end record;

   subtype DMA_CHx_TXDESC_TAIL_PTR_DMA_CH_TDTP_Field is HAL.UInt30;

   --  no description available
   type DMA_CHx_TXDESC_TAIL_PTR_DMA_CH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Transmit Tail Pointer This field contains the tail pointer for the Tx
      --  ring.
      TDTP         : DMA_CHx_TXDESC_TAIL_PTR_DMA_CH_TDTP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_TXDESC_TAIL_PTR_DMA_CH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      TDTP         at 0 range 2 .. 31;
   end record;

   subtype DMA_CHx_RXDESC_TAIL_PTR_DMA_CH_RDTP_Field is HAL.UInt30;

   --  no description available
   type DMA_CHx_RXDESC_TAIL_PTR_DMA_CH_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2 := 16#0#;
      --  Receive Tail Pointer This field contains the tail pointer for the Rx
      --  ring.
      RDTP         : DMA_CHx_RXDESC_TAIL_PTR_DMA_CH_RDTP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_RXDESC_TAIL_PTR_DMA_CH_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      RDTP         at 0 range 2 .. 31;
   end record;

   subtype DMA_CHx_TXDESC_RING_LENGTH_DMA_CH_TDRL_Field is HAL.UInt10;

   --  no description available
   type DMA_CHx_TXDESC_RING_LENGTH_DMA_CH_Register is record
      --  Transmit Ring Length This field sets the maximum number of Tx
      --  descriptors in the circular ring.
      TDRL           : DMA_CHx_TXDESC_RING_LENGTH_DMA_CH_TDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_TXDESC_RING_LENGTH_DMA_CH_Register use record
      TDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DMA_CHx_RXDESC_RING_LENGTH_DMA_CH_RDRL_Field is HAL.UInt10;

   --  Channelx Rx descriptor Ring Length
   type DMA_CHx_RXDESC_RING_LENGTH_DMA_CH_Register is record
      --  Receive Ring Length This register sets the maximum number of Rx
      --  descriptors in the circular ring.
      RDRL           : DMA_CHx_RXDESC_RING_LENGTH_DMA_CH_RDRL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_RXDESC_RING_LENGTH_DMA_CH_Register use record
      RDRL           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Channelx Interrupt Enable
   type DMA_CHx_INT_EN_DMA_CH_Register is record
      --  Transmit interrupt enable When this bit is set with Normal Interrupt
      --  Summary Enable (bit 16 in this register), Transmit Interrupt is
      --  enabled.
      TIE            : Boolean := False;
      --  Transmit stopped enable When this bit is set with Abnormal Interrupt
      --  Summary Enable (bit 15 in this register), Transmission Stopped
      --  Interrupt is enabled.
      TSE            : Boolean := False;
      --  Transmit buffer unavailable enable When this bit is set with Normal
      --  Interrupt Summary Enable (bit 16 in this register), Transmit Buffer
      --  Unavailable Interrupt is enabled.
      TBUE           : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Receive interrupt enable When this bit is set with Normal Interrupt
      --  Summary Enable (bit 16 in this register), Receive Interrupt is
      --  enabled.
      RIE            : Boolean := False;
      --  Receive buffer unavailable enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Receive Buffer
      --  Unavailable Interrupt is enabled.
      RBUE           : Boolean := False;
      --  Received stopped enable When this bit is set with Abnormal Interrupt
      --  Summary Enable (bit 15 in this register), Receive Stopped Interrupt
      --  is enabled.
      RSE            : Boolean := False;
      --  Receive watchdog timeout enable When this bit is set with Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), the Receive
      --  Watchdog Timeout Interrupt is enabled.
      RWTE           : Boolean := False;
      --  Early transmit interrupt enable When this bit is set with an Abnormal
      --  Interrupt Summary Enable (bit 15 in this register), Early Transmit
      --  Interrupt is enabled.
      ETIE           : Boolean := False;
      --  Early receive interrupt enable When this bit is set with Normal
      --  Interrupt Summary Enable (bit 16 in this register), Early Receive
      --  Interrupt is enabled.
      ERIE           : Boolean := False;
      --  Fatal bus error enable When this bit is set with Abnormal Interrupt
      --  Summary Enable (bit 15 in this register), the Fatal Bus Error
      --  Interrupt is enabled.
      FBEE           : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Abnormal interrupt summary enable When this bit is set, an Abnormal
      --  Interrupt summary is enabled.
      AIE            : Boolean := False;
      --  Normal interrupt summary enable When this bit is set, a normal
      --  interrupt is enabled.
      NIE            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_INT_EN_DMA_CH_Register use record
      TIE            at 0 range 0 .. 0;
      TSE            at 0 range 1 .. 1;
      TBUE           at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RIE            at 0 range 6 .. 6;
      RBUE           at 0 range 7 .. 7;
      RSE            at 0 range 8 .. 8;
      RWTE           at 0 range 9 .. 9;
      ETIE           at 0 range 10 .. 10;
      ERIE           at 0 range 11 .. 11;
      FBEE           at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      AIE            at 0 range 14 .. 14;
      NIE            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DMA_CHx_RX_INT_WDTIMER_DMA_CH_RIWT_Field is HAL.UInt8;

   --  Receive Interrupt Watchdog Timer
   type DMA_CHx_RX_INT_WDTIMER_DMA_CH_Register is record
      --  Receive Interrupt Watchdog Timer Count Indicates the number of system
      --  clock cycles multiplied by 256 for which the watchdog timer is set.
      RIWT          : DMA_CHx_RX_INT_WDTIMER_DMA_CH_RIWT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_RX_INT_WDTIMER_DMA_CH_Register use record
      RIWT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DMA_CHx_SLOT_FUNC_CTRL_STAT_DMA_CH_RSN_Field is HAL.UInt4;

   --  Slot Function Control and Status
   type DMA_CHx_SLOT_FUNC_CTRL_STAT_DMA_CH_Register is record
      --  Enable Slot Comparison When set, this bit enables the checking of the
      --  slot numbers programmed in the Tx descriptor with the current
      --  reference given in the RSN field.
      ESC            : Boolean := False;
      --  Advance Slot Check When set, this bit enables the D MA to fetch the
      --  data from the buffer when the slot number (SLOTNUM) programmed in the
      --  Tx descriptor is equal to the reference slot number given in the RSN
      --  field or, ahead of the reference slot number by up to two slots This
      --  bit is applicable only when the ESC bit is set.
      ASC            : Boolean := False;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Read-only. Reference Slot Number This field gives the current value
      --  of the reference slot number in the DMA.
      RSN            : DMA_CHx_SLOT_FUNC_CTRL_STAT_DMA_CH_RSN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_SLOT_FUNC_CTRL_STAT_DMA_CH_Register use record
      ESC            at 0 range 0 .. 0;
      ASC            at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      RSN            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DMA_CHx_STAT_DMA_CH_EB_Field is HAL.UInt3;

   --  Channelx DMA status register
   type DMA_CHx_STAT_DMA_CH_Register is record
      --  Transmit Interrupt This bit indicates that the packet transmission is
      --  complete.
      TI             : Boolean := False;
      --  Transmit Process Stopped This bit is set when the transmission is
      --  stopped.
      TPS            : Boolean := False;
      --  Transmit Buffer Unavailable This bit indicates that the application
      --  owns the next descriptor in the transmit list, and the DMA cannot
      --  acquire it.
      TBU            : Boolean := False;
      --  unspecified
      Reserved_3_5   : HAL.UInt3 := 16#0#;
      --  Receive Interrupt This bit indicates that the packet reception is
      --  complete.
      RI             : Boolean := False;
      --  Receive Buffer Unavailable This bit indicates that the application
      --  owns the next in the receive list, and the DMA cannot acquire it.
      RBU            : Boolean := False;
      --  Receive Process Stopped This bit is asserted when the Rx process
      --  enters the Stopped state.
      RPS            : Boolean := False;
      --  Receive Watchdog time out This bit is asserted when a packet with
      --  length greater than 2,048 bytes (10,240 bytes when Jumbo Packet mode
      --  is enabled) is received.
      RWT            : Boolean := False;
      --  Early Transmit Interrupt This bit indicates that the packet to be
      --  transmitted is fully transferred to the MTL Tx FIFO.
      ETI            : Boolean := False;
      --  Early Receive Interrupt This bit indicates that the DMA filled the
      --  first data buffer of the packet.
      ERI            : Boolean := False;
      --  Fatal Bus Error This bit indicates that a bus error occurred (as
      --  described in the EB field).
      FBE            : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Abnormal Interrupt Summary Abnormal Interrupt Summary bit value is
      --  the logical OR of the following when the corresponding interrupt bits
      --  are enabled in the DMA Channel Interrupt Enable register Table 778:
      --  Bit 1: Transmit Process Stopped Bit 7: Receive Buffer Unavailable Bit
      --  8: Receive Process Stopped Bit 10: Ear1y Transmit Interrupt Bit 12:
      --  Fatal Bus Error Only unmasked bits affect the Abnormal Interrupt
      --  Summary bit.
      AIS            : Boolean := False;
      --  Normal Interrupt Summary Normal Interrupt Summary bit value is the
      --  logical OR of the following bits when the corresponding interrupt
      --  bits are enabled in the DMA Channel Interrupt Enable register Table
      --  778: Bit 0: Transmit Interrupt Bit 2: Transmit Buffer Unavailable Bit
      --  6: Receive Interrupt Bit 11: Early Receive Interrupt Only unmasked
      --  bits (interrupts for which interrupt enable is set in DMA Channel
      --  Interrupt Enable register Table 778) affect the Normal Interrupt
      --  Summary bit.
      NIS            : Boolean := False;
      --  DMA Error Bits This field indicates the type of error that caused a
      --  Bus Error.
      EB             : DMA_CHx_STAT_DMA_CH_EB_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CHx_STAT_DMA_CH_Register use record
      TI             at 0 range 0 .. 0;
      TPS            at 0 range 1 .. 1;
      TBU            at 0 range 2 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      RI             at 0 range 6 .. 6;
      RBU            at 0 range 7 .. 7;
      RPS            at 0 range 8 .. 8;
      RWT            at 0 range 9 .. 9;
      ETI            at 0 range 10 .. 10;
      ERI            at 0 range 11 .. 11;
      FBE            at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      AIS            at 0 range 14 .. 14;
      NIS            at 0 range 15 .. 15;
      EB             at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  no description available
   type DMA_CH_Cluster is record
      --  DMA Channelx Control
      DMA_CHx_CTRL                : aliased DMA_CHx_CTRL_DMA_CH_Register;
      --  DMA Channelx Transmit Control
      DMA_CHx_TX_CTRL             : aliased DMA_CHx_TX_CTRL_DMA_CH_Register;
      --  DMA Channelx Receive Control
      DMA_CHx_RX_CTRL             : aliased DMA_CHx_RX_CTRL_DMA_CH_Register;
      --  no description available
      DMA_CHx_TXDESC_LIST_ADDR    : aliased DMA_CHx_TXDESC_LIST_ADDR_DMA_CH_Register;
      --  no description available
      DMA_CHx_RXDESC_LIST_ADDR    : aliased DMA_CHx_RXDESC_LIST_ADDR_DMA_CH_Register;
      --  no description available
      DMA_CHx_TXDESC_TAIL_PTR     : aliased DMA_CHx_TXDESC_TAIL_PTR_DMA_CH_Register;
      --  no description available
      DMA_CHx_RXDESC_TAIL_PTR     : aliased DMA_CHx_RXDESC_TAIL_PTR_DMA_CH_Register;
      --  no description available
      DMA_CHx_TXDESC_RING_LENGTH  : aliased DMA_CHx_TXDESC_RING_LENGTH_DMA_CH_Register;
      --  Channelx Rx descriptor Ring Length
      DMA_CHx_RXDESC_RING_LENGTH  : aliased DMA_CHx_RXDESC_RING_LENGTH_DMA_CH_Register;
      --  Channelx Interrupt Enable
      DMA_CHx_INT_EN              : aliased DMA_CHx_INT_EN_DMA_CH_Register;
      --  Receive Interrupt Watchdog Timer
      DMA_CHx_RX_INT_WDTIMER      : aliased DMA_CHx_RX_INT_WDTIMER_DMA_CH_Register;
      --  Slot Function Control and Status
      DMA_CHx_SLOT_FUNC_CTRL_STAT : aliased DMA_CHx_SLOT_FUNC_CTRL_STAT_DMA_CH_Register;
      --  Channelx Current Host Transmit descriptor
      DMA_CHx_CUR_HST_TXDESC      : aliased HAL.UInt32;
      --  no description available
      DMA_CHx_CUR_HST_RXDESC      : aliased HAL.UInt32;
      --  no description available
      DMA_CHx_CUR_HST_TXBUF       : aliased HAL.UInt32;
      --  Channelx Current Application Receive Buffer Address
      DMA_CHx_CUR_HST_RXBUF       : aliased HAL.UInt32;
      --  Channelx DMA status register
      DMA_CHx_STAT                : aliased DMA_CHx_STAT_DMA_CH_Register;
   end record
     with Volatile, Size => 1024;

   for DMA_CH_Cluster use record
      DMA_CHx_CTRL                at 16#0# range 0 .. 31;
      DMA_CHx_TX_CTRL             at 16#4# range 0 .. 31;
      DMA_CHx_RX_CTRL             at 16#8# range 0 .. 31;
      DMA_CHx_TXDESC_LIST_ADDR    at 16#14# range 0 .. 31;
      DMA_CHx_RXDESC_LIST_ADDR    at 16#1C# range 0 .. 31;
      DMA_CHx_TXDESC_TAIL_PTR     at 16#20# range 0 .. 31;
      DMA_CHx_RXDESC_TAIL_PTR     at 16#28# range 0 .. 31;
      DMA_CHx_TXDESC_RING_LENGTH  at 16#2C# range 0 .. 31;
      DMA_CHx_RXDESC_RING_LENGTH  at 16#30# range 0 .. 31;
      DMA_CHx_INT_EN              at 16#34# range 0 .. 31;
      DMA_CHx_RX_INT_WDTIMER      at 16#38# range 0 .. 31;
      DMA_CHx_SLOT_FUNC_CTRL_STAT at 16#3C# range 0 .. 31;
      DMA_CHx_CUR_HST_TXDESC      at 16#44# range 0 .. 31;
      DMA_CHx_CUR_HST_RXDESC      at 16#4C# range 0 .. 31;
      DMA_CHx_CUR_HST_TXBUF       at 16#54# range 0 .. 31;
      DMA_CHx_CUR_HST_RXBUF       at 16#5C# range 0 .. 31;
      DMA_CHx_STAT                at 16#60# range 0 .. 31;
   end record;

   --  no description available
   type DMA_CH_Clusters is array (0 .. 1) of DMA_CH_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x Ethernet controller
   type ENET_Peripheral is record
      --  MAC configuration register
      MAC_CONFIG                            : aliased MAC_CONFIG_Register;
      --  no description available
      MAC_EXT_CONFIG                        : aliased MAC_EXT_CONFIG_Register;
      --  MAC frame filter register
      MAC_FRAME_FILTER                      : aliased MAC_FRAME_FILTER_Register;
      --  MAC watchdog Timeout register
      MAC_WD_TIMEROUT                       : aliased MAC_WD_TIMEROUT_Register;
      --  MAC vlan tag register
      MAC_VLAN_TAG                          : aliased MAC_VLAN_TAG_Register;
      --  Transmit flow control register
      MAC_TX_FLOW_CTRL_Q                    : aliased MAC_TX_FLOW_CTRL_Q_Registers;
      --  Receive flow control register
      MAC_RX_FLOW_CTRL                      : aliased MAC_RX_FLOW_CTRL_Register;
      --  no description available
      MAC_TXQ_PRIO_MAP                      : aliased MAC_TXQ_PRIO_MAP_Register;
      --  Receive Queue Control 0 register 0x0000
      MAC_RXQ_CTRL0                         : aliased MAC_RXQ_CTRL0_Register;
      --  Receive Queue Control 0 register 0x0000
      MAC_RXQ_CTRL1                         : aliased MAC_RXQ_CTRL1_Register;
      --  Receive Queue Control 0 register 0x0000
      MAC_RXQ_CTRL2                         : aliased MAC_RXQ_CTRL2_Register;
      --  Interrupt status register 0x0000
      MAC_INTR_STAT                         : aliased MAC_INTR_STAT_Register;
      --  Interrupt enable register 0x0000
      MAC_INTR_EN                           : aliased MAC_INTR_EN_Register;
      --  Receive Transmit Status register
      MAC_RXTX_STAT                         : aliased MAC_RXTX_STAT_Register;
      --  no description available
      MAC_PMT_CRTL_STAT                     : aliased MAC_PMT_CRTL_STAT_Register;
      --  Remote wake-up frame filter
      MAC_RWAKE_FRFLT                       : aliased HAL.UInt32;
      --  LPI Control and Status Register
      MAC_LPI_CTRL_STAT                     : aliased MAC_LPI_CTRL_STAT_Register;
      --  LPI Timers Control register
      MAC_LPI_TIMER_CTRL                    : aliased MAC_LPI_TIMER_CTRL_Register;
      --  LPI entry Timer register
      MAC_LPI_ENTR_TIMR                     : aliased MAC_LPI_ENTR_TIMR_Register;
      --  no description available
      MAC_1US_TIC_COUNTR                    : aliased MAC_1US_TIC_COUNTR_Register;
      --  MAC version register
      MAC_VERSION                           : aliased MAC_VERSION_Register;
      --  MAC debug register
      MAC_DBG                               : aliased MAC_DBG_Register;
      --  MAC hardware feature register 0x0201
      MAC_HW_FEAT0                          : aliased MAC_HW_FEAT0_Register;
      --  MAC hardware feature register 0x0201
      MAC_HW_FEAT1                          : aliased MAC_HW_FEAT1_Register;
      --  MAC hardware feature register 0x0201
      MAC_HW_FEAT2                          : aliased MAC_HW_FEAT2_Register;
      --  MIDO address Register
      MAC_MDIO_ADDR                         : aliased MAC_MDIO_ADDR_Register;
      --  MDIO Data register
      MAC_MDIO_DATA                         : aliased MAC_MDIO_DATA_Register;
      --  MAC address0 high register
      MAC_ADDR_HIGH                         : aliased MAC_ADDR_HIGH_Register;
      --  MAC address0 low register
      MAC_ADDR_LOW                          : aliased HAL.UInt32;
      --  Time stamp control register
      MAC_TIMESTAMP_CTRL                    : aliased MAC_TIMESTAMP_CTRL_Register;
      --  Sub-second increment register
      MAC_SUB_SCND_INCR                     : aliased MAC_SUB_SCND_INCR_Register;
      --  System time seconds register
      MAC_SYS_TIME_SCND                     : aliased HAL.UInt32;
      --  System time nanoseconds register
      MAC_SYS_TIME_NSCND                    : aliased MAC_SYS_TIME_NSCND_Register;
      --  no description available
      MAC_SYS_TIME_SCND_UPD                 : aliased HAL.UInt32;
      --  no description available
      MAC_SYS_TIME_NSCND_UPD                : aliased MAC_SYS_TIME_NSCND_UPD_Register;
      --  Time stamp addend register
      MAC_SYS_TIMESTMP_ADDEND               : aliased HAL.UInt32;
      --  no description available
      MAC_SYS_TIME_HWORD_SCND               : aliased MAC_SYS_TIME_HWORD_SCND_Register;
      --  Time stamp status register
      MAC_SYS_TIMESTMP_STAT                 : aliased MAC_SYS_TIMESTMP_STAT_Register;
      --  Tx timestamp status nanoseconds
      MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS   : aliased MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS_Register;
      --  Tx timestamp status seconds
      MAC_Tx_TIMESTAMP_STATUS_SECONDS       : aliased HAL.UInt32;
      --  Timestamp ingress correction
      MAC_TIMESTAMP_INGRESS_CORR_NANOSECOND : aliased HAL.UInt32;
      --  Timestamp egress correction
      MAC_TIMESTAMP_EGRESS_CORR_NANOSECOND  : aliased HAL.UInt32;
      --  MTL Operation Mode Register
      MTL_OP_MODE                           : aliased MTL_OP_MODE_Register;
      --  MTL Interrupt Status register
      MTL_INTR_STAT                         : aliased MTL_INTR_STAT_Register;
      --  MTL Receive Queue and DMA Channel Mapping register
      MTL_RXQ_DMA_MAP                       : aliased MTL_RXQ_DMA_MAP_Register;
      --  no description available
      MTL_QUEUE                             : aliased MTL_QUEUE_Clusters;
      --  DMA mode register
      DMA_MODE                              : aliased DMA_MODE_Register;
      --  DMA System Bus mode
      DMA_SYSBUS_MODE                       : aliased DMA_SYSBUS_MODE_Register;
      --  DMA Interrupt status
      DMA_INTR_STAT                         : aliased DMA_INTR_STAT_Register;
      --  DMA Debug Status
      DMA_DBG_STAT                          : aliased DMA_DBG_STAT_Register;
      --  no description available
      DMA_CH                                : aliased DMA_CH_Clusters;
   end record
     with Volatile;

   for ENET_Peripheral use record
      MAC_CONFIG                            at 16#0# range 0 .. 31;
      MAC_EXT_CONFIG                        at 16#4# range 0 .. 31;
      MAC_FRAME_FILTER                      at 16#8# range 0 .. 31;
      MAC_WD_TIMEROUT                       at 16#C# range 0 .. 31;
      MAC_VLAN_TAG                          at 16#50# range 0 .. 31;
      MAC_TX_FLOW_CTRL_Q                    at 16#70# range 0 .. 63;
      MAC_RX_FLOW_CTRL                      at 16#90# range 0 .. 31;
      MAC_TXQ_PRIO_MAP                      at 16#98# range 0 .. 31;
      MAC_RXQ_CTRL0                         at 16#A0# range 0 .. 31;
      MAC_RXQ_CTRL1                         at 16#A4# range 0 .. 31;
      MAC_RXQ_CTRL2                         at 16#A8# range 0 .. 31;
      MAC_INTR_STAT                         at 16#B0# range 0 .. 31;
      MAC_INTR_EN                           at 16#B4# range 0 .. 31;
      MAC_RXTX_STAT                         at 16#B8# range 0 .. 31;
      MAC_PMT_CRTL_STAT                     at 16#C0# range 0 .. 31;
      MAC_RWAKE_FRFLT                       at 16#C4# range 0 .. 31;
      MAC_LPI_CTRL_STAT                     at 16#D0# range 0 .. 31;
      MAC_LPI_TIMER_CTRL                    at 16#D4# range 0 .. 31;
      MAC_LPI_ENTR_TIMR                     at 16#D8# range 0 .. 31;
      MAC_1US_TIC_COUNTR                    at 16#DC# range 0 .. 31;
      MAC_VERSION                           at 16#110# range 0 .. 31;
      MAC_DBG                               at 16#114# range 0 .. 31;
      MAC_HW_FEAT0                          at 16#11C# range 0 .. 31;
      MAC_HW_FEAT1                          at 16#120# range 0 .. 31;
      MAC_HW_FEAT2                          at 16#124# range 0 .. 31;
      MAC_MDIO_ADDR                         at 16#200# range 0 .. 31;
      MAC_MDIO_DATA                         at 16#204# range 0 .. 31;
      MAC_ADDR_HIGH                         at 16#300# range 0 .. 31;
      MAC_ADDR_LOW                          at 16#304# range 0 .. 31;
      MAC_TIMESTAMP_CTRL                    at 16#B00# range 0 .. 31;
      MAC_SUB_SCND_INCR                     at 16#B04# range 0 .. 31;
      MAC_SYS_TIME_SCND                     at 16#B08# range 0 .. 31;
      MAC_SYS_TIME_NSCND                    at 16#B0C# range 0 .. 31;
      MAC_SYS_TIME_SCND_UPD                 at 16#B10# range 0 .. 31;
      MAC_SYS_TIME_NSCND_UPD                at 16#B14# range 0 .. 31;
      MAC_SYS_TIMESTMP_ADDEND               at 16#B18# range 0 .. 31;
      MAC_SYS_TIME_HWORD_SCND               at 16#B1C# range 0 .. 31;
      MAC_SYS_TIMESTMP_STAT                 at 16#B20# range 0 .. 31;
      MAC_Tx_TIMESTAMP_STATUS_NANOSECONDS   at 16#B30# range 0 .. 31;
      MAC_Tx_TIMESTAMP_STATUS_SECONDS       at 16#B34# range 0 .. 31;
      MAC_TIMESTAMP_INGRESS_CORR_NANOSECOND at 16#B58# range 0 .. 31;
      MAC_TIMESTAMP_EGRESS_CORR_NANOSECOND  at 16#B5C# range 0 .. 31;
      MTL_OP_MODE                           at 16#C00# range 0 .. 31;
      MTL_INTR_STAT                         at 16#C20# range 0 .. 31;
      MTL_RXQ_DMA_MAP                       at 16#C30# range 0 .. 31;
      MTL_QUEUE                             at 16#D00# range 0 .. 1023;
      DMA_MODE                              at 16#1000# range 0 .. 31;
      DMA_SYSBUS_MODE                       at 16#1004# range 0 .. 31;
      DMA_INTR_STAT                         at 16#1008# range 0 .. 31;
      DMA_DBG_STAT                          at 16#100C# range 0 .. 31;
      DMA_CH                                at 16#1100# range 0 .. 2047;
   end record;

   --  LPC54S60x/LPC5460x Ethernet controller
   ENET_Periph : aliased ENET_Peripheral
     with Import, Address => System'To_Address (16#40092000#);

end NRF_SVD.ENET;
