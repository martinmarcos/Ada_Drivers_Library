--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USBHSH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CAPLENGTH_CHIPID_CAPLENGTH_Field is HAL.UInt8;
   subtype CAPLENGTH_CHIPID_CHIPID_Field is HAL.UInt16;

   --  This register contains the offset value towards the start of the
   --  operational register space and the version number of the IP block
   type CAPLENGTH_CHIPID_Register is record
      --  Read-only. Capability Length: This is used as an offset.
      CAPLENGTH     : CAPLENGTH_CHIPID_CAPLENGTH_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
      --  Read-only. Chip identification: indicates major and minor revision of
      --  the IP: [31:24] = Major revision [23:16] = Minor revision Major
      --  revisions used: 0x01: USB2.
      CHIPID        : CAPLENGTH_CHIPID_CHIPID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPLENGTH_CHIPID_Register use record
      CAPLENGTH     at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      CHIPID        at 0 range 16 .. 31;
   end record;

   subtype HCSPARAMS_N_PORTS_Field is HAL.UInt4;

   --  Host Controller Structural Parameters
   type HCSPARAMS_Register is record
      --  Read-only. This register specifies the number of physical downstream
      --  ports implemented on this host controller.
      N_PORTS        : HCSPARAMS_N_PORTS_Field;
      --  Read-only. This field indicates whether the host controller
      --  implementation includes port power control.
      PPC            : Boolean;
      --  unspecified
      Reserved_5_15  : HAL.UInt11;
      --  Read-only. This bit indicates whether the ports support port
      --  indicator control.
      P_INDICATOR    : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCSPARAMS_Register use record
      N_PORTS        at 0 range 0 .. 3;
      PPC            at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      P_INDICATOR    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Host Controller Capability Parameters
   type HCCPARAMS_Register is record
      --  unspecified
      Reserved_0_16  : HAL.UInt17;
      --  Read-only. Link Power Management Capability.
      LPMC           : Boolean;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCPARAMS_Register use record
      Reserved_0_16  at 0 range 0 .. 16;
      LPMC           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FLADJ_FRINDEX_FLADJ_Field is HAL.UInt6;
   subtype FLADJ_FRINDEX_FRINDEX_Field is HAL.UInt14;

   --  Frame Length Adjustment
   type FLADJ_FRINDEX_Register is record
      --  Frame Length Timing Value.
      FLADJ          : FLADJ_FRINDEX_FLADJ_Field := 16#20#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Frame Index: Bits 29 to16 in this register are used for the frame
      --  number field in the SOF packet.
      FRINDEX        : FLADJ_FRINDEX_FRINDEX_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLADJ_FRINDEX_Register use record
      FLADJ          at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FRINDEX        at 0 range 16 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ATL_PTD_BASE_ADDR_ATL_CUR_Field is HAL.UInt5;
   subtype ATL_PTD_BASE_ADDR_ATL_BASE_Field is HAL.UInt23;

   --  Memory base address where ATL PTD0 is stored
   type ATL_PTD_BASE_ADDR_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  This indicates the current PTD that is used by the hardware when it
      --  is processing the ATL list.
      ATL_CUR      : ATL_PTD_BASE_ADDR_ATL_CUR_Field := 16#0#;
      --  Base address to be used by the hardware to find the start of the ATL
      --  list.
      ATL_BASE     : ATL_PTD_BASE_ADDR_ATL_BASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ATL_PTD_BASE_ADDR_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      ATL_CUR      at 0 range 4 .. 8;
      ATL_BASE     at 0 range 9 .. 31;
   end record;

   subtype ISO_PTD_BASE_ADDR_ISO_FIRST_Field is HAL.UInt5;
   subtype ISO_PTD_BASE_ADDR_ISO_BASE_Field is HAL.UInt22;

   --  Memory base address where ISO PTD0 is stored
   type ISO_PTD_BASE_ADDR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  This indicates the first PTD that is used by the hardware when it is
      --  processing the ISO list.
      ISO_FIRST    : ISO_PTD_BASE_ADDR_ISO_FIRST_Field := 16#0#;
      --  Base address to be used by the hardware to find the start of the ISO
      --  list.
      ISO_BASE     : ISO_PTD_BASE_ADDR_ISO_BASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISO_PTD_BASE_ADDR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      ISO_FIRST    at 0 range 5 .. 9;
      ISO_BASE     at 0 range 10 .. 31;
   end record;

   subtype INT_PTD_BASE_ADDR_INT_FIRST_Field is HAL.UInt5;
   subtype INT_PTD_BASE_ADDR_INT_BASE_Field is HAL.UInt22;

   --  Memory base address where INT PTD0 is stored
   type INT_PTD_BASE_ADDR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  This indicates the first PTD that is used by the hardware when it is
      --  processing the INT list.
      INT_FIRST    : INT_PTD_BASE_ADDR_INT_FIRST_Field := 16#0#;
      --  Base address to be used by the hardware to find the start of the INT
      --  list.
      INT_BASE     : INT_PTD_BASE_ADDR_INT_BASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_PTD_BASE_ADDR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      INT_FIRST    at 0 range 5 .. 9;
      INT_BASE     at 0 range 10 .. 31;
   end record;

   subtype DATA_PAYLOAD_BASE_ADDR_DAT_BASE_Field is HAL.UInt16;

   --  Memory base address that indicates the start of the data payload buffers
   type DATA_PAYLOAD_BASE_ADDR_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Base address to be used by the hardware to find the start of the data
      --  payload section.
      DAT_BASE      : DATA_PAYLOAD_BASE_ADDR_DAT_BASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_PAYLOAD_BASE_ADDR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      DAT_BASE      at 0 range 16 .. 31;
   end record;

   subtype USBCMD_FLS_Field is HAL.UInt2;
   subtype USBCMD_HIRD_Field is HAL.UInt4;

   --  USB Command register
   type USBCMD_Register is record
      --  Run/Stop: 1b = Run.
      RS             : Boolean := False;
      --  Host Controller Reset: This control bit is used by the software to
      --  reset the host controller.
      HCRESET        : Boolean := False;
      --  Frame List Size: This field specifies the size of the frame list.
      FLS            : USBCMD_FLS_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Light Host Controller Reset: This bit allows the driver software to
      --  reset the host controller without affecting the state of the ports.
      LHCR           : Boolean := False;
      --  ATL List enabled.
      ATL_EN         : Boolean := False;
      --  ISO List enabled.
      ISO_EN         : Boolean := False;
      --  INT List enabled.
      INT_EN         : Boolean := False;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  Host-Initiated Resume Duration.
      HIRD           : USBCMD_HIRD_Field := 16#0#;
      --  bRemoteWake field.
      LPM_RWU        : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCMD_Register use record
      RS             at 0 range 0 .. 0;
      HCRESET        at 0 range 1 .. 1;
      FLS            at 0 range 2 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      LHCR           at 0 range 7 .. 7;
      ATL_EN         at 0 range 8 .. 8;
      ISO_EN         at 0 range 9 .. 9;
      INT_EN         at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      HIRD           at 0 range 24 .. 27;
      LPM_RWU        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  USB Interrupt Status register
   type USBSTS_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Port Change Detect: The host controller sets this bit to logic 1 when
      --  any port has a change bit transition from a 0 to a one or a Force
      --  Port Resume bit transition from a 0 to a 1 as a result of a J-K
      --  transition detected on a suspended port.
      PCD            : Boolean := False;
      --  Frame List Rollover: The host controller sets this bit to logic 1
      --  when the frame list index rolls over its maximum value to 0.
      FLR            : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  ATL IRQ: Indicates that an ATL PTD (with I-bit set) was completed.
      ATL_IRQ        : Boolean := False;
      --  ISO IRQ: Indicates that an ISO PTD (with I-bit set) was completed.
      ISO_IRQ        : Boolean := False;
      --  INT IRQ: Indicates that an INT PTD (with I-bit set) was completed.
      INT_IRQ        : Boolean := False;
      --  SOF interrupt: Every time when the host sends a Start of Frame token
      --  on the USB bus, this bit is set.
      SOF_IRQ        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBSTS_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PCD            at 0 range 2 .. 2;
      FLR            at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      ATL_IRQ        at 0 range 16 .. 16;
      ISO_IRQ        at 0 range 17 .. 17;
      INT_IRQ        at 0 range 18 .. 18;
      SOF_IRQ        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  USB Interrupt Enable register
   type USBINTR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Port Change Detect Interrupt Enable: 1: enable 0: disable.
      PCDE           : Boolean := False;
      --  Frame List Rollover Interrupt Enable: 1: enable 0: disable.
      FLRE           : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  ATL IRQ Enable bit: 1: enable 0: disable.
      ATL_IRQ_E      : Boolean := False;
      --  ISO IRQ Enable bit: 1: enable 0: disable.
      ISO_IRQ_E      : Boolean := False;
      --  INT IRQ Enable bit: 1: enable 0: disable.
      INT_IRQ_E      : Boolean := False;
      --  SOF Interrupt Enable bit: 1: enable 0: disable.
      SOF_E          : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBINTR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PCDE           at 0 range 2 .. 2;
      FLRE           at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      ATL_IRQ_E      at 0 range 16 .. 16;
      ISO_IRQ_E      at 0 range 17 .. 17;
      INT_IRQ_E      at 0 range 18 .. 18;
      SOF_E          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PORTSC1_LS_Field is HAL.UInt2;
   subtype PORTSC1_PIC_Field is HAL.UInt2;
   subtype PORTSC1_PTC_Field is HAL.UInt4;
   subtype PORTSC1_PSPD_Field is HAL.UInt2;
   subtype PORTSC1_SUS_STAT_Field is HAL.UInt2;
   subtype PORTSC1_DEV_ADD_Field is HAL.UInt7;

   --  Port Status and Control register
   type PORTSC1_Register is record
      --  Current Connect Status: Logic 1 indicates a device is present on the
      --  port.
      CCS            : Boolean := False;
      --  Connect Status Change: Logic 1 means that the value of CCS has
      --  changed.
      CSC            : Boolean := False;
      --  Port Enabled/Disabled.
      PED            : Boolean := False;
      --  Port Enabled/Disabled Change: Logic 1 means that the value of PED has
      --  changed.
      PEDC           : Boolean := False;
      --  Over-current active: Logic 1 means that this port has an over-current
      --  condition.
      OCA            : Boolean := False;
      --  Over-current change: Logic 1 means that the value of OCA has changed.
      OCC            : Boolean := False;
      --  Force Port Resume: Logic 1 means resume (K-state) detected or driven
      --  on the port.
      FPR            : Boolean := False;
      --  Suspend: Logic 1 means port is in the suspend state.
      SUSP           : Boolean := False;
      --  Port Reset: Logic 1 means the port is in the reset state.
      PR             : Boolean := False;
      --  Suspend using L1 0b = Suspend using L2 1b = Suspend using L1 When
      --  this bit is set to a 1 and a non-zero value is specified in the
      --  Device Address field, the host controller will generate an LPM Token
      --  to enter the L1 state whenever software writes a one to the Suspend
      --  bit, as well as L1 exit timing during any device or host-initiated
      --  resume.
      SUS_L1         : Boolean := False;
      --  Read-only. Line Status: This field reflects the current logical
      --  levels of the DP (bit 11) and DM (bit 10) signal lines.
      LS             : PORTSC1_LS_Field := 16#0#;
      --  Port Power: The function of this bit depends on the value of the Port
      --  Power Control (PPC) bit in the HCSPARAMS register.
      PP             : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Port Indicator Control : Writing to this field has no effect if the
      --  P_INDICATOR bit in the HCSPARAMS register is logic 0.
      PIC            : PORTSC1_PIC_Field := 16#0#;
      --  Port Test Control: A non-zero value indicates that the port is
      --  operating in the test mode as indicated by the value.
      PTC            : PORTSC1_PTC_Field := 16#0#;
      --  Port Speed: 00b: Low-speed 01b: Full-speed 10b: High-speed 11b:
      --  Reserved.
      PSPD           : PORTSC1_PSPD_Field := 16#0#;
      --  Wake on overcurrent enable: Writing this bit to a one enables the
      --  port to be sensitive to overcurrent conditions as wake-up events.
      WOO            : Boolean := False;
      --  These two bits are used by software to determine whether the most
      --  recent L1 suspend request was successful: 00b: Success-state
      --  transition was successful (ACK) 01b: Not Yet - Device was unable to
      --  enter the L1 state at this time (NYET) 10b: Not supported - Device
      --  does not support the L1 state (STALL) 11b: Timeout/Error - Device
      --  failed to respond or an error occurred.
      SUS_STAT       : PORTSC1_SUS_STAT_Field := 16#0#;
      --  Device Address for LPM tokens.
      DEV_ADD        : PORTSC1_DEV_ADD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTSC1_Register use record
      CCS            at 0 range 0 .. 0;
      CSC            at 0 range 1 .. 1;
      PED            at 0 range 2 .. 2;
      PEDC           at 0 range 3 .. 3;
      OCA            at 0 range 4 .. 4;
      OCC            at 0 range 5 .. 5;
      FPR            at 0 range 6 .. 6;
      SUSP           at 0 range 7 .. 7;
      PR             at 0 range 8 .. 8;
      SUS_L1         at 0 range 9 .. 9;
      LS             at 0 range 10 .. 11;
      PP             at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PIC            at 0 range 14 .. 15;
      PTC            at 0 range 16 .. 19;
      PSPD           at 0 range 20 .. 21;
      WOO            at 0 range 22 .. 22;
      SUS_STAT       at 0 range 23 .. 24;
      DEV_ADD        at 0 range 25 .. 31;
   end record;

   subtype LAST_PTD_INUSE_ATL_LAST_Field is HAL.UInt5;
   subtype LAST_PTD_INUSE_ISO_LAST_Field is HAL.UInt5;
   subtype LAST_PTD_INUSE_INT_LAST_Field is HAL.UInt5;

   --  Marks the last PTD in the list for ISO, INT and ATL
   type LAST_PTD_INUSE_Register is record
      --  If hardware has reached this PTD and the J bit is not set, it will go
      --  to PTD0 as the next PTD to be processed.
      ATL_LAST       : LAST_PTD_INUSE_ATL_LAST_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  This indicates the last PTD in the ISO list.
      ISO_LAST       : LAST_PTD_INUSE_ISO_LAST_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  This indicates the last PTD in the INT list.
      INT_LAST       : LAST_PTD_INUSE_INT_LAST_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LAST_PTD_INUSE_Register use record
      ATL_LAST       at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ISO_LAST       at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      INT_LAST       at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype UTMIPLUS_ULPI_DEBUG_PHY_ADDR_Field is HAL.UInt8;
   subtype UTMIPLUS_ULPI_DEBUG_PHY_WDATA_Field is HAL.UInt8;
   subtype UTMIPLUS_ULPI_DEBUG_PHY_RDATA_Field is HAL.UInt8;

   --  Register to read/write registers in the attached USB PHY
   type UTMIPLUS_ULPI_DEBUG_Register is record
      --  UTMI+ mode: Bits 3:0 are used to control VControl signal on Vendor
      --  Interface of UTMI+ ULPI mode: Bits 7:0 are used as the address when
      --  doing a register access over the ULPI interface.
      PHY_ADDR       : UTMIPLUS_ULPI_DEBUG_PHY_ADDR_Field := 16#0#;
      --  UTMI+ mode: Reserved.
      PHY_WDATA      : UTMIPLUS_ULPI_DEBUG_PHY_WDATA_Field := 16#0#;
      --  UTMI+ mode: Bits 7:0 contains the value returned by the VStatus
      --  signal on Vendor Interface of UTMI+ ULPI mode: Bits 7:0 are used for
      --  the read data when reading a value to a ULPI PHY register.
      PHY_RDATA      : UTMIPLUS_ULPI_DEBUG_PHY_RDATA_Field := 16#0#;
      --  UTMI+ mode: Reserved.
      PHY_RW         : Boolean := False;
      --  Software writes this bit to one to start a read or write operation.
      PHY_ACCESS     : Boolean := False;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  This bit indicates if the interface between the controller is UTMI+
      --  or ULPI 0b: UTMI+ 1b: ULPI If the hardware supports both modes, this
      --  bit is RW by SW.
      PHY_MODE       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UTMIPLUS_ULPI_DEBUG_Register use record
      PHY_ADDR       at 0 range 0 .. 7;
      PHY_WDATA      at 0 range 8 .. 15;
      PHY_RDATA      at 0 range 16 .. 23;
      PHY_RW         at 0 range 24 .. 24;
      PHY_ACCESS     at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      PHY_MODE       at 0 range 31 .. 31;
   end record;

   --  Controls the port if it is attached to the host block or the device
   --  block
   type PORTMODE_Register is record
      --  Port 0 ID pin value.
      ID0            : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Port 0 ID pin pull-up enable.
      ID0_EN         : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  If this bit is set to one, one of the ports will behave as a USB
      --  device.
      DEV_ENABLE     : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  This bit indicates if the PHY power-down input is controlled by
      --  software or by hardware.
      SW_CTRL_PDCOM  : Boolean := True;
      --  This bit is only used when SW_CTRL_PDCOM is set to 1b.
      SW_PDCOM       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORTMODE_Register use record
      ID0            at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      ID0_EN         at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DEV_ENABLE     at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      SW_CTRL_PDCOM  at 0 range 18 .. 18;
      SW_PDCOM       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x USB1 High-speed Host Controller
   type USBHSH_Peripheral is record
      --  This register contains the offset value towards the start of the
      --  operational register space and the version number of the IP block
      CAPLENGTH_CHIPID       : aliased CAPLENGTH_CHIPID_Register;
      --  Host Controller Structural Parameters
      HCSPARAMS              : aliased HCSPARAMS_Register;
      --  Host Controller Capability Parameters
      HCCPARAMS              : aliased HCCPARAMS_Register;
      --  Frame Length Adjustment
      FLADJ_FRINDEX          : aliased FLADJ_FRINDEX_Register;
      --  Memory base address where ATL PTD0 is stored
      ATL_PTD_BASE_ADDR      : aliased ATL_PTD_BASE_ADDR_Register;
      --  Memory base address where ISO PTD0 is stored
      ISO_PTD_BASE_ADDR      : aliased ISO_PTD_BASE_ADDR_Register;
      --  Memory base address where INT PTD0 is stored
      INT_PTD_BASE_ADDR      : aliased INT_PTD_BASE_ADDR_Register;
      --  Memory base address that indicates the start of the data payload
      --  buffers
      DATA_PAYLOAD_BASE_ADDR : aliased DATA_PAYLOAD_BASE_ADDR_Register;
      --  USB Command register
      USBCMD                 : aliased USBCMD_Register;
      --  USB Interrupt Status register
      USBSTS                 : aliased USBSTS_Register;
      --  USB Interrupt Enable register
      USBINTR                : aliased USBINTR_Register;
      --  Port Status and Control register
      PORTSC1                : aliased PORTSC1_Register;
      --  Done map for each ATL PTD
      ATL_PTD_DONE_MAP       : aliased HAL.UInt32;
      --  Skip map for each ATL PTD
      ATL_PTD_SKIP_MAP       : aliased HAL.UInt32;
      --  Done map for each ISO PTD
      ISO_PTD_DONE_MAP       : aliased HAL.UInt32;
      --  Skip map for each ISO PTD
      ISO_PTD_SKIP_MAP       : aliased HAL.UInt32;
      --  Done map for each INT PTD
      INT_PTD_DONE_MAP       : aliased HAL.UInt32;
      --  Skip map for each INT PTD
      INT_PTD_SKIP_MAP       : aliased HAL.UInt32;
      --  Marks the last PTD in the list for ISO, INT and ATL
      LAST_PTD_INUSE         : aliased LAST_PTD_INUSE_Register;
      --  Register to read/write registers in the attached USB PHY
      UTMIPLUS_ULPI_DEBUG    : aliased UTMIPLUS_ULPI_DEBUG_Register;
      --  Controls the port if it is attached to the host block or the device
      --  block
      PORTMODE               : aliased PORTMODE_Register;
   end record
     with Volatile;

   for USBHSH_Peripheral use record
      CAPLENGTH_CHIPID       at 16#0# range 0 .. 31;
      HCSPARAMS              at 16#4# range 0 .. 31;
      HCCPARAMS              at 16#8# range 0 .. 31;
      FLADJ_FRINDEX          at 16#C# range 0 .. 31;
      ATL_PTD_BASE_ADDR      at 16#10# range 0 .. 31;
      ISO_PTD_BASE_ADDR      at 16#14# range 0 .. 31;
      INT_PTD_BASE_ADDR      at 16#18# range 0 .. 31;
      DATA_PAYLOAD_BASE_ADDR at 16#1C# range 0 .. 31;
      USBCMD                 at 16#20# range 0 .. 31;
      USBSTS                 at 16#24# range 0 .. 31;
      USBINTR                at 16#28# range 0 .. 31;
      PORTSC1                at 16#2C# range 0 .. 31;
      ATL_PTD_DONE_MAP       at 16#30# range 0 .. 31;
      ATL_PTD_SKIP_MAP       at 16#34# range 0 .. 31;
      ISO_PTD_DONE_MAP       at 16#38# range 0 .. 31;
      ISO_PTD_SKIP_MAP       at 16#3C# range 0 .. 31;
      INT_PTD_DONE_MAP       at 16#40# range 0 .. 31;
      INT_PTD_SKIP_MAP       at 16#44# range 0 .. 31;
      LAST_PTD_INUSE         at 16#48# range 0 .. 31;
      UTMIPLUS_ULPI_DEBUG    at 16#4C# range 0 .. 31;
      PORTMODE               at 16#50# range 0 .. 31;
   end record;

   --  LPC54S60x/LPC5460x USB1 High-speed Host Controller
   USBHSH_Periph : aliased USBHSH_Peripheral
     with Import, Address => System'To_Address (16#400A3000#);

end NRF_SVD.USBHSH;
