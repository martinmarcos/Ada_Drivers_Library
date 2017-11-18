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

--  This spec has been automatically generated from MK27F15.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  USB HS/FS/LS OTG Controller
package NRF_SVD.USBHS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USBHS_ID_ID_Field is HAL.UInt6;
   subtype USBHS_ID_NID_Field is HAL.UInt6;
   subtype USBHS_ID_TAG_Field is HAL.UInt5;
   subtype USBHS_ID_REVISION_Field is HAL.UInt4;
   subtype USBHS_ID_VERSION_Field is HAL.UInt4;
   subtype USBHS_ID_VERSIONID_Field is HAL.UInt3;

   --  Identification Register
   type USBHS_ID_Register is record
      --  Read-only. Configuration number
      ID             : USBHS_ID_ID_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Ones complement version of ID.
      NID            : USBHS_ID_NID_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Tag
      TAG            : USBHS_ID_TAG_Field;
      --  Read-only. Revision
      REVISION       : USBHS_ID_REVISION_Field;
      --  Read-only. Version
      VERSION        : USBHS_ID_VERSION_Field;
      --  Read-only. Version ID
      VERSIONID      : USBHS_ID_VERSIONID_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_ID_Register use record
      ID             at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NID            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TAG            at 0 range 16 .. 20;
      REVISION       at 0 range 21 .. 24;
      VERSION        at 0 range 25 .. 28;
      VERSIONID      at 0 range 29 .. 31;
   end record;

   --  PHY Width
   type HWGENERAL_PHYW_Field is
     (
      --  16 bit wide data bus
      HWGENERAL_PHYW_Field_01)
     with Size => 2;
   for HWGENERAL_PHYW_Field use
     (HWGENERAL_PHYW_Field_01 => 1);

   --  PHY Mode
   type HWGENERAL_PHYM_Field is
     (
      --  Controller configured for UTMI/UTMI+ interface.
      HWGENERAL_PHYM_Field_000)
     with Size => 3;
   for HWGENERAL_PHYM_Field use
     (HWGENERAL_PHYM_Field_000 => 0);

   --  Serial mode
   type HWGENERAL_SM_Field is
     (
      --  No Serial Engine, always use parallel signaling.
      HWGENERAL_SM_Field_00)
     with Size => 2;
   for HWGENERAL_SM_Field use
     (HWGENERAL_SM_Field_00 => 0);

   --  General Hardware Parameters Register
   type USBHS_HWGENERAL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. PHY Width
      PHYW           : HWGENERAL_PHYW_Field;
      --  Read-only. PHY Mode
      PHYM           : HWGENERAL_PHYM_Field;
      --  Read-only. Serial mode
      SM             : HWGENERAL_SM_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HWGENERAL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PHYW           at 0 range 4 .. 5;
      PHYM           at 0 range 6 .. 8;
      SM             at 0 range 9 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype USBHS_HWHOST_NPORT_Field is HAL.UInt3;
   subtype USBHS_HWHOST_TTASY_Field is HAL.UInt8;
   subtype USBHS_HWHOST_TTPER_Field is HAL.UInt8;

   --  Host Hardware Parameters Register
   type USBHS_HWHOST_Register is record
      --  Read-only. Host Capable
      HC            : Boolean;
      --  Read-only. Number of Ports
      NPORT         : USBHS_HWHOST_NPORT_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
      --  Read-only. Transaction translator contexts.
      TTASY         : USBHS_HWHOST_TTASY_Field;
      --  Read-only. Transaction translator periodic contexts.
      TTPER         : USBHS_HWHOST_TTPER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HWHOST_Register use record
      HC            at 0 range 0 .. 0;
      NPORT         at 0 range 1 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
      TTASY         at 0 range 16 .. 23;
      TTPER         at 0 range 24 .. 31;
   end record;

   subtype USBHS_HWDEVICE_DEVEP_Field is HAL.UInt5;

   --  Device Hardware Parameters Register
   type USBHS_HWDEVICE_Register is record
      --  Read-only. Device Capable
      DC            : Boolean;
      --  Read-only. Device endpoints.
      DEVEP         : USBHS_HWDEVICE_DEVEP_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HWDEVICE_Register use record
      DC            at 0 range 0 .. 0;
      DEVEP         at 0 range 1 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype USBHS_HWTXBUF_TXBURST_Field is HAL.UInt8;
   subtype USBHS_HWTXBUF_TXADD_Field is HAL.UInt8;
   subtype USBHS_HWTXBUF_TXCHANADD_Field is HAL.UInt8;

   --  Transmit local Context Registers
   type HWTXBUF_TXLC_Field is
     (
      --  Store device transmit contexts in the TX FIFO
      HWTXBUF_TXLC_Field_0,
      --  Store device transmit contexts in a register file
      HWTXBUF_TXLC_Field_1)
     with Size => 1;
   for HWTXBUF_TXLC_Field use
     (HWTXBUF_TXLC_Field_0 => 0,
      HWTXBUF_TXLC_Field_1 => 1);

   --  Transmit Buffer Hardware Parameters Register
   type USBHS_HWTXBUF_Register is record
      --  Read-only. Transmit Burst.
      TXBURST        : USBHS_HWTXBUF_TXBURST_Field;
      --  Read-only. Transmit Address.
      TXADD          : USBHS_HWTXBUF_TXADD_Field;
      --  Read-only. Transmit Channel Address
      TXCHANADD      : USBHS_HWTXBUF_TXCHANADD_Field;
      --  unspecified
      Reserved_24_30 : HAL.UInt7;
      --  Read-only. Transmit local Context Registers
      TXLC           : HWTXBUF_TXLC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HWTXBUF_Register use record
      TXBURST        at 0 range 0 .. 7;
      TXADD          at 0 range 8 .. 15;
      TXCHANADD      at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      TXLC           at 0 range 31 .. 31;
   end record;

   subtype USBHS_HWRXBUF_RXBURST_Field is HAL.UInt8;
   subtype USBHS_HWRXBUF_RXADD_Field is HAL.UInt8;

   --  Receive Buffer Hardware Parameters Register
   type USBHS_HWRXBUF_Register is record
      --  Read-only. Receive Burst.
      RXBURST        : USBHS_HWRXBUF_RXBURST_Field;
      --  Read-only. Receive Address.
      RXADD          : USBHS_HWRXBUF_RXADD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HWRXBUF_Register use record
      RXBURST        at 0 range 0 .. 7;
      RXADD          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPTIMERLD_GPTLD_Field is HAL.UInt24;

   --  General Purpose Timer n Load Register
   type GPTIMERLD_Register is record
      --  Specifies the value to be loaded into the countdown timer on a reset
      GPTLD          : GPTIMERLD_GPTLD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPTIMERLD_Register use record
      GPTLD          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GPTIMERCTL_GPTCNT_Field is HAL.UInt24;

   --  Timer Mode
   type GPTIMERCTL0_MODE_Field is
     (
      --  One shot
      GPTIMERCTL0_MODE_Field_0,
      --  Repeat
      GPTIMERCTL0_MODE_Field_1)
     with Size => 1;
   for GPTIMERCTL0_MODE_Field use
     (GPTIMERCTL0_MODE_Field_0 => 0,
      GPTIMERCTL0_MODE_Field_1 => 1);

   --  Timer Reset
   type GPTIMERCTL0_RST_Field is
     (
      --  No action
      GPTIMERCTL0_RST_Field_0,
      --  Load counter value
      GPTIMERCTL0_RST_Field_1)
     with Size => 1;
   for GPTIMERCTL0_RST_Field use
     (GPTIMERCTL0_RST_Field_0 => 0,
      GPTIMERCTL0_RST_Field_1 => 1);

   --  Timer Run
   type GPTIMERCTL0_RUN_Field is
     (
      --  Timer stop
      GPTIMERCTL0_RUN_Field_0,
      --  Timer run
      GPTIMERCTL0_RUN_Field_1)
     with Size => 1;
   for GPTIMERCTL0_RUN_Field use
     (GPTIMERCTL0_RUN_Field_0 => 0,
      GPTIMERCTL0_RUN_Field_1 => 1);

   --  General Purpose Timer n Control Register
   type GPTIMERCTL_Register is record
      --  Read-only. Timer Count
      GPTCNT         : GPTIMERCTL_GPTCNT_Field := 16#0#;
      --  Timer Mode
      MODE           : GPTIMERCTL0_MODE_Field :=
                        NRF_SVD.USBHS.GPTIMERCTL0_MODE_Field_0;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  Write-only. Timer Reset
      RST            : GPTIMERCTL0_RST_Field :=
                        NRF_SVD.USBHS.GPTIMERCTL0_RST_Field_0;
      --  Timer Run
      RUN            : GPTIMERCTL0_RUN_Field :=
                        NRF_SVD.USBHS.GPTIMERCTL0_RUN_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPTIMERCTL_Register use record
      GPTCNT         at 0 range 0 .. 23;
      MODE           at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      RST            at 0 range 30 .. 30;
      RUN            at 0 range 31 .. 31;
   end record;

   --  Burst mode
   type USB_SBUSCFG_BURSTMODE_Field is
     (
      --  INCR burst of unspecified length
      USB_SBUSCFG_BURSTMODE_Field_000,
      --  INCR4, non-multiple transfers of INCR4 is decomposed into singles.
      USB_SBUSCFG_BURSTMODE_Field_001,
      --  INCR8, non-multiple transfers of INCR8, is decomposed into INCR4 or
      --  singles.
      USB_SBUSCFG_BURSTMODE_Field_010,
      --  INCR16, non-multiple transfers of INCR16, is decomposed into INCR8,
      --  INCR4 or singles.
      USB_SBUSCFG_BURSTMODE_Field_011,
      --  Reserved, do not use.
      USB_SBUSCFG_BURSTMODE_Field_100,
      --  INCR4, non-multiple transfers of INCR4 is decomposed into smaller
      --  unspecified length bursts.
      USB_SBUSCFG_BURSTMODE_Field_101,
      --  INCR8, non-multiple transfers of INCR8 is decomposed into smaller
      --  unspecified length bursts.
      USB_SBUSCFG_BURSTMODE_Field_110,
      --  INCR16, non-multiple transfers of INCR16 is decomposed into smaller
      --  unspecified length bursts.
      USB_SBUSCFG_BURSTMODE_Field_111)
     with Size => 3;
   for USB_SBUSCFG_BURSTMODE_Field use
     (USB_SBUSCFG_BURSTMODE_Field_000 => 0,
      USB_SBUSCFG_BURSTMODE_Field_001 => 1,
      USB_SBUSCFG_BURSTMODE_Field_010 => 2,
      USB_SBUSCFG_BURSTMODE_Field_011 => 3,
      USB_SBUSCFG_BURSTMODE_Field_100 => 4,
      USB_SBUSCFG_BURSTMODE_Field_101 => 5,
      USB_SBUSCFG_BURSTMODE_Field_110 => 6,
      USB_SBUSCFG_BURSTMODE_Field_111 => 7);

   --  System Bus Interface Configuration Register
   type USBHS_USB_SBUSCFG_Register is record
      --  Burst mode
      BURSTMODE     : USB_SBUSCFG_BURSTMODE_Field :=
                       NRF_SVD.USBHS.USB_SBUSCFG_BURSTMODE_Field_000;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_USB_SBUSCFG_Register use record
      BURSTMODE     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype USBHS_HCIVERSION_CAPLENGTH_Field is HAL.UInt8;
   subtype USBHS_HCIVERSION_HCIVERSION_Field is HAL.UInt16;

   --  Host Controller Interface Version and Capability Registers Length
   --  Register
   type USBHS_HCIVERSION_Register is record
      --  Read-only. Capability registers length
      CAPLENGTH     : USBHS_HCIVERSION_CAPLENGTH_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
      --  Read-only. EHCI revision number
      HCIVERSION    : USBHS_HCIVERSION_HCIVERSION_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HCIVERSION_Register use record
      CAPLENGTH     at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      HCIVERSION    at 0 range 16 .. 31;
   end record;

   subtype USBHS_HCSPARAMS_N_PORTS_Field is HAL.UInt4;

   --  Power Port Control
   type HCSPARAMS_PPC_Field is
     (
      --  Ports have power port switches
      HCSPARAMS_PPC_Field_1)
     with Size => 1;
   for HCSPARAMS_PPC_Field use
     (HCSPARAMS_PPC_Field_1 => 1);

   subtype USBHS_HCSPARAMS_N_PCC_Field is HAL.UInt4;
   subtype USBHS_HCSPARAMS_N_CC_Field is HAL.UInt4;

   --  Port Indicators
   type HCSPARAMS_PI_Field is
     (
      --  No port indicator fields
      HCSPARAMS_PI_Field_0,
      --  The port status and control registers include a R/W field for
      --  controlling the state of the port indicator
      HCSPARAMS_PI_Field_1)
     with Size => 1;
   for HCSPARAMS_PI_Field use
     (HCSPARAMS_PI_Field_0 => 0,
      HCSPARAMS_PI_Field_1 => 1);

   subtype USBHS_HCSPARAMS_N_PTT_Field is HAL.UInt4;
   subtype USBHS_HCSPARAMS_N_TT_Field is HAL.UInt4;

   --  Host Controller Structural Parameters Register
   type USBHS_HCSPARAMS_Register is record
      --  Read-only. Number of Ports
      N_PORTS        : USBHS_HCSPARAMS_N_PORTS_Field;
      --  Read-only. Power Port Control
      PPC            : HCSPARAMS_PPC_Field;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Number Ports per CC
      N_PCC          : USBHS_HCSPARAMS_N_PCC_Field;
      --  Read-only. Number of Companion Controllers
      N_CC           : USBHS_HCSPARAMS_N_CC_Field;
      --  Read-only. Port Indicators
      PI             : HCSPARAMS_PI_Field;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. Ports per Transaction Translator
      N_PTT          : USBHS_HCSPARAMS_N_PTT_Field;
      --  Read-only. Number of Transaction Translators.
      N_TT           : USBHS_HCSPARAMS_N_TT_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HCSPARAMS_Register use record
      N_PORTS        at 0 range 0 .. 3;
      PPC            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      N_PCC          at 0 range 8 .. 11;
      N_CC           at 0 range 12 .. 15;
      PI             at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      N_PTT          at 0 range 20 .. 23;
      N_TT           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Asynchronous Schedule Park capability
   type HCCPARAMS_ASP_Field is
     (
      --  Park not supported.
      HCCPARAMS_ASP_Field_0,
      --  Park supported.
      HCCPARAMS_ASP_Field_1)
     with Size => 1;
   for HCCPARAMS_ASP_Field use
     (HCCPARAMS_ASP_Field_0 => 0,
      HCCPARAMS_ASP_Field_1 => 1);

   --  Isochronous Scheduling Threshold
   type HCCPARAMS_IST_Field is
     (
      --  The value of the least significant 3 bits indicates the number of
      --  microframes a host controller can hold a set of isochronous data
      --  structures (one or more) before flushing the state
      HCCPARAMS_IST_Field_0)
     with Size => 4;
   for HCCPARAMS_IST_Field use
     (HCCPARAMS_IST_Field_0 => 0);

   --  EHCI Extended Capabilities Pointer
   type HCCPARAMS_EECP_Field is
     (
      --  No extended capabilities are implemented
      HCCPARAMS_EECP_Field_0)
     with Size => 8;
   for HCCPARAMS_EECP_Field use
     (HCCPARAMS_EECP_Field_0 => 0);

   --  Host Controller Capability Parameters Register
   type USBHS_HCCPARAMS_Register is record
      --  Read-only. 64-bit addressing capability.
      ADC            : Boolean;
      --  Read-only. Programmable Frame List flag
      PFL            : Boolean;
      --  Read-only. Asynchronous Schedule Park capability
      ASP            : HCCPARAMS_ASP_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Isochronous Scheduling Threshold
      IST            : HCCPARAMS_IST_Field;
      --  Read-only. EHCI Extended Capabilities Pointer
      EECP           : HCCPARAMS_EECP_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_HCCPARAMS_Register use record
      ADC            at 0 range 0 .. 0;
      PFL            at 0 range 1 .. 1;
      ASP            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      IST            at 0 range 4 .. 7;
      EECP           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USBHS_DCCPARAMS_DEN_Field is HAL.UInt5;

   --  Device Controller Capability Parameters
   type USBHS_DCCPARAMS_Register is record
      --  Read-only. Device Endpoint Number
      DEN           : USBHS_DCCPARAMS_DEN_Field;
      --  unspecified
      Reserved_5_6  : HAL.UInt2;
      --  Read-only. Device Capable
      DC            : Boolean;
      --  Read-only. Host Capable
      HC            : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DCCPARAMS_Register use record
      DEN           at 0 range 0 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      DC            at 0 range 7 .. 7;
      HC            at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Frame list Size
   type USBCMD_FS_Field is
     (
      --  When FS2 = 0, the size is 1024 elements (4096 bytes). When FS2 = 1,
      --  the size is 64 elements (256 bytes).
      USBCMD_FS_Field_00,
      --  When FS2 = 0, the size is 512 elements (2048 bytes). When FS2 = 1,
      --  the size is 32 elements (128 bytes).
      USBCMD_FS_Field_01,
      --  When FS2 = 0, the size is 256 elements (1024 bytes). When FS2 = 1,
      --  the size is 16 elements (64 bytes).
      USBCMD_FS_Field_10,
      --  When FS2 = 0, the size is 128 elements (512 bytes). When FS2 = 1, the
      --  size is 8 elements (32 bytes).
      USBCMD_FS_Field_11)
     with Size => 2;
   for USBCMD_FS_Field use
     (USBCMD_FS_Field_00 => 0,
      USBCMD_FS_Field_01 => 1,
      USBCMD_FS_Field_10 => 2,
      USBCMD_FS_Field_11 => 3);

   --  Periodic Schedule Enable
   type USBCMD_PSE_Field is
     (
      --  Do not process periodic schedule.
      USBCMD_PSE_Field_0,
      --  Use the PERIODICLISTBASE register to access the periodic schedule.
      USBCMD_PSE_Field_1)
     with Size => 1;
   for USBCMD_PSE_Field use
     (USBCMD_PSE_Field_0 => 0,
      USBCMD_PSE_Field_1 => 1);

   --  Asynchronous Schedule Enable
   type USBCMD_ASE_Field is
     (
      --  Do not process asynchronous schedule.
      USBCMD_ASE_Field_0,
      --  Use the ASYNCLISTADDR register to access asynchronous schedule.
      USBCMD_ASE_Field_1)
     with Size => 1;
   for USBCMD_ASE_Field use
     (USBCMD_ASE_Field_0 => 0,
      USBCMD_ASE_Field_1 => 1);

   subtype USBHS_USBCMD_ASP_Field is HAL.UInt2;

   --  Asynchronous Schedule Park mode Enable
   type USBCMD_ASPE_Field is
     (
      --  Park mode disabled
      USBCMD_ASPE_Field_0,
      --  Park mode enabled
      USBCMD_ASPE_Field_1)
     with Size => 1;
   for USBCMD_ASPE_Field use
     (USBCMD_ASPE_Field_0 => 0,
      USBCMD_ASPE_Field_1 => 1);

   --  Interrupt Threshold Control
   type USBCMD_ITC_Field is
     (
      --  Immediate (no threshold)
      USBCMD_ITC_Field_0,
      --  1 microframe
      USBCMD_ITC_Field_1,
      --  2 microframes
      USBCMD_ITC_Field_10,
      --  4 microframes
      USBCMD_ITC_Field_100,
      --  8 microframes
      USBCMD_ITC_Field_1000,
      --  16 microframes
      USBCMD_ITC_Field_10000,
      --  32 microframes
      USBCMD_ITC_Field_100000,
      --  64 microframes
      USBCMD_ITC_Field_1000000)
     with Size => 8;
   for USBCMD_ITC_Field use
     (USBCMD_ITC_Field_0 => 0,
      USBCMD_ITC_Field_1 => 1,
      USBCMD_ITC_Field_10 => 2,
      USBCMD_ITC_Field_100 => 4,
      USBCMD_ITC_Field_1000 => 8,
      USBCMD_ITC_Field_10000 => 16,
      USBCMD_ITC_Field_100000 => 32,
      USBCMD_ITC_Field_1000000 => 64);

   --  USB Command Register
   type USBHS_USBCMD_Register is record
      --  Run/Stop
      RS             : Boolean := False;
      --  Controller Reset
      RST            : Boolean := False;
      --  Frame list Size
      FS             : USBCMD_FS_Field := NRF_SVD.USBHS.USBCMD_FS_Field_00;
      --  Periodic Schedule Enable
      PSE            : USBCMD_PSE_Field := NRF_SVD.USBHS.USBCMD_PSE_Field_0;
      --  Asynchronous Schedule Enable
      ASE            : USBCMD_ASE_Field := NRF_SVD.USBHS.USBCMD_ASE_Field_0;
      --  Interrupt on Async Advance doorbell
      IAA            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Asynchronous Schedule Park mode count
      ASP            : USBHS_USBCMD_ASP_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Asynchronous Schedule Park mode Enable
      ASPE           : USBCMD_ASPE_Field := NRF_SVD.USBHS.USBCMD_ASPE_Field_0;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Setup TripWire
      SUTW           : Boolean := False;
      --  Add dTD TripWire
      ATDTW          : Boolean := False;
      --  Frame list Size 2
      FS2            : Boolean := False;
      --  Interrupt Threshold Control
      ITC            : USBCMD_ITC_Field :=
                        NRF_SVD.USBHS.USBCMD_ITC_Field_1000;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_USBCMD_Register use record
      RS             at 0 range 0 .. 0;
      RST            at 0 range 1 .. 1;
      FS             at 0 range 2 .. 3;
      PSE            at 0 range 4 .. 4;
      ASE            at 0 range 5 .. 5;
      IAA            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ASP            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      ASPE           at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      SUTW           at 0 range 13 .. 13;
      ATDTW          at 0 range 14 .. 14;
      FS2            at 0 range 15 .. 15;
      ITC            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  USB Error Interrupt
   type USBSTS_UEI_Field is
     (
      --  No error
      USBSTS_UEI_Field_0,
      --  Error detected
      USBSTS_UEI_Field_1)
     with Size => 1;
   for USBSTS_UEI_Field use
     (USBSTS_UEI_Field_0 => 0,
      USBSTS_UEI_Field_1 => 1);

   --  System Error
   type USBSTS_SEI_Field is
     (
      --  Normal operation
      USBSTS_SEI_Field_0,
      --  Error
      USBSTS_SEI_Field_1)
     with Size => 1;
   for USBSTS_SEI_Field use
     (USBSTS_SEI_Field_0 => 0,
      USBSTS_SEI_Field_1 => 1);

   --  Interrupt on Async Advance
   type USBSTS_AAI_Field is
     (
      --  No async advance interrupt
      USBSTS_AAI_Field_0,
      --  Async advance interrupt
      USBSTS_AAI_Field_1)
     with Size => 1;
   for USBSTS_AAI_Field use
     (USBSTS_AAI_Field_0 => 0,
      USBSTS_AAI_Field_1 => 1);

   --  USB Reset received
   type USBSTS_URI_Field is
     (
      --  No reset received
      USBSTS_URI_Field_0,
      --  Reset received
      USBSTS_URI_Field_1)
     with Size => 1;
   for USBSTS_URI_Field use
     (USBSTS_URI_Field_0 => 0,
      USBSTS_URI_Field_1 => 1);

   --  Device-controller suspend
   type USBSTS_SLI_Field is
     (
      --  Active
      USBSTS_SLI_Field_0,
      --  Suspended
      USBSTS_SLI_Field_1)
     with Size => 1;
   for USBSTS_SLI_Field use
     (USBSTS_SLI_Field_0 => 0,
      USBSTS_SLI_Field_1 => 1);

   --  Host Controller Halted
   type USBSTS_HCH_Field is
     (
      --  Running
      USBSTS_HCH_Field_0,
      --  Halted
      USBSTS_HCH_Field_1)
     with Size => 1;
   for USBSTS_HCH_Field use
     (USBSTS_HCH_Field_0 => 0,
      USBSTS_HCH_Field_1 => 1);

   --  Reclamation
   type USBSTS_RCL_Field is
     (
      --  Non-empty asynchronous schedule
      USBSTS_RCL_Field_0,
      --  Empty asynchronous schedule
      USBSTS_RCL_Field_1)
     with Size => 1;
   for USBSTS_RCL_Field use
     (USBSTS_RCL_Field_0 => 0,
      USBSTS_RCL_Field_1 => 1);

   --  Periodic schedule Status
   type USBSTS_PS_Field is
     (
      --  Disabled
      USBSTS_PS_Field_0,
      --  Enabled
      USBSTS_PS_Field_1)
     with Size => 1;
   for USBSTS_PS_Field use
     (USBSTS_PS_Field_0 => 0,
      USBSTS_PS_Field_1 => 1);

   --  Asynchronous schedule Status
   type USBSTS_AS_Field is
     (
      --  Disabled
      USBSTS_AS_Field_0,
      --  Enabled
      USBSTS_AS_Field_1)
     with Size => 1;
   for USBSTS_AS_Field use
     (USBSTS_AS_Field_0 => 0,
      USBSTS_AS_Field_1 => 1);

   --  General purpose Timer 0 Interrupt
   type USBSTS_TI0_Field is
     (
      --  No interrupt
      USBSTS_TI0_Field_0,
      --  Interrupt occurred
      USBSTS_TI0_Field_1)
     with Size => 1;
   for USBSTS_TI0_Field use
     (USBSTS_TI0_Field_0 => 0,
      USBSTS_TI0_Field_1 => 1);

   --  USBHS_USBSTS_TI array
   type USBHS_USBSTS_TI_Field_Array is array (0 .. 1) of USBSTS_TI0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for USBHS_USBSTS_TI
   type USBHS_USBSTS_TI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TI as a value
            Val : HAL.UInt2;
         when True =>
            --  TI as an array
            Arr : USBHS_USBSTS_TI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBHS_USBSTS_TI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB Status Register
   type USBHS_USBSTS_Register is record
      --  USB Interrupt (USBINT)
      UI             : Boolean := False;
      --  USB Error Interrupt
      UEI            : USBSTS_UEI_Field := NRF_SVD.USBHS.USBSTS_UEI_Field_0;
      --  Port Change detect
      PCI            : Boolean := False;
      --  Frame-list Rollover
      FRI            : Boolean := False;
      --  System Error
      SEI            : USBSTS_SEI_Field := NRF_SVD.USBHS.USBSTS_SEI_Field_0;
      --  Interrupt on Async Advance
      AAI            : USBSTS_AAI_Field := NRF_SVD.USBHS.USBSTS_AAI_Field_0;
      --  USB Reset received
      URI            : USBSTS_URI_Field := NRF_SVD.USBHS.USBSTS_URI_Field_0;
      --  SOF Received
      SRI            : Boolean := False;
      --  Device-controller suspend
      SLI            : USBSTS_SLI_Field := NRF_SVD.USBHS.USBSTS_SLI_Field_0;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Read-only. Host Controller Halted
      HCH            : USBSTS_HCH_Field := NRF_SVD.USBHS.USBSTS_HCH_Field_0;
      --  Read-only. Reclamation
      RCL            : USBSTS_RCL_Field := NRF_SVD.USBHS.USBSTS_RCL_Field_0;
      --  Read-only. Periodic schedule Status
      PS             : USBSTS_PS_Field := NRF_SVD.USBHS.USBSTS_PS_Field_0;
      --  Read-only. Asynchronous schedule Status
      AS             : USBSTS_AS_Field := NRF_SVD.USBHS.USBSTS_AS_Field_0;
      --  Read-only. NAK Interrupt
      NAKI           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  USB host Asynchronous Interrupt
      UAI            : Boolean := False;
      --  USB host Periodic Interrupt
      UPI            : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  General purpose Timer 0 Interrupt
      TI             : USBHS_USBSTS_TI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_USBSTS_Register use record
      UI             at 0 range 0 .. 0;
      UEI            at 0 range 1 .. 1;
      PCI            at 0 range 2 .. 2;
      FRI            at 0 range 3 .. 3;
      SEI            at 0 range 4 .. 4;
      AAI            at 0 range 5 .. 5;
      URI            at 0 range 6 .. 6;
      SRI            at 0 range 7 .. 7;
      SLI            at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      HCH            at 0 range 12 .. 12;
      RCL            at 0 range 13 .. 13;
      PS             at 0 range 14 .. 14;
      AS             at 0 range 15 .. 15;
      NAKI           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      UAI            at 0 range 18 .. 18;
      UPI            at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TI             at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  USB interrupt Enable
   type USBINTR_UE_Field is
     (
      --  Disabled
      USBINTR_UE_Field_0,
      --  Enabled
      USBINTR_UE_Field_1)
     with Size => 1;
   for USBINTR_UE_Field use
     (USBINTR_UE_Field_0 => 0,
      USBINTR_UE_Field_1 => 1);

   --  USB Error interrupt Enable
   type USBINTR_UEE_Field is
     (
      --  Disabled
      USBINTR_UEE_Field_0,
      --  Enabled
      USBINTR_UEE_Field_1)
     with Size => 1;
   for USBINTR_UEE_Field use
     (USBINTR_UEE_Field_0 => 0,
      USBINTR_UEE_Field_1 => 1);

   --  Port Change detect Enable
   type USBINTR_PCE_Field is
     (
      --  Disabled
      USBINTR_PCE_Field_0,
      --  Enabled
      USBINTR_PCE_Field_1)
     with Size => 1;
   for USBINTR_PCE_Field use
     (USBINTR_PCE_Field_0 => 0,
      USBINTR_PCE_Field_1 => 1);

   --  Frame list Rollover Enable
   type USBINTR_FRE_Field is
     (
      --  Disabled
      USBINTR_FRE_Field_0,
      --  Enabled
      USBINTR_FRE_Field_1)
     with Size => 1;
   for USBINTR_FRE_Field use
     (USBINTR_FRE_Field_0 => 0,
      USBINTR_FRE_Field_1 => 1);

   --  System Error Enable
   type USBINTR_SEE_Field is
     (
      --  Disabled
      USBINTR_SEE_Field_0,
      --  Enabled
      USBINTR_SEE_Field_1)
     with Size => 1;
   for USBINTR_SEE_Field use
     (USBINTR_SEE_Field_0 => 0,
      USBINTR_SEE_Field_1 => 1);

   --  Interrupt on Async advance Enable
   type USBINTR_AAE_Field is
     (
      --  Disabled
      USBINTR_AAE_Field_0,
      --  Enabled
      USBINTR_AAE_Field_1)
     with Size => 1;
   for USBINTR_AAE_Field use
     (USBINTR_AAE_Field_0 => 0,
      USBINTR_AAE_Field_1 => 1);

   --  USB-Reset Enable
   type USBINTR_URE_Field is
     (
      --  Disabled
      USBINTR_URE_Field_0,
      --  Enabled
      USBINTR_URE_Field_1)
     with Size => 1;
   for USBINTR_URE_Field use
     (USBINTR_URE_Field_0 => 0,
      USBINTR_URE_Field_1 => 1);

   --  SOF-Received Enable
   type USBINTR_SRE_Field is
     (
      --  Disabled
      USBINTR_SRE_Field_0,
      --  Enabled
      USBINTR_SRE_Field_1)
     with Size => 1;
   for USBINTR_SRE_Field use
     (USBINTR_SRE_Field_0 => 0,
      USBINTR_SRE_Field_1 => 1);

   --  Sleep (DC suspend) Enable
   type USBINTR_SLE_Field is
     (
      --  Disabled
      USBINTR_SLE_Field_0,
      --  Enabled
      USBINTR_SLE_Field_1)
     with Size => 1;
   for USBINTR_SLE_Field use
     (USBINTR_SLE_Field_0 => 0,
      USBINTR_SLE_Field_1 => 1);

   --  NAK Interrupt Enable
   type USBINTR_NAKE_Field is
     (
      --  Disabled
      USBINTR_NAKE_Field_0,
      --  Enabled
      USBINTR_NAKE_Field_1)
     with Size => 1;
   for USBINTR_NAKE_Field use
     (USBINTR_NAKE_Field_0 => 0,
      USBINTR_NAKE_Field_1 => 1);

   --  General purpose Timer 0 Interrupt Enable
   type USBINTR_TIE0_Field is
     (
      --  Disabled
      USBINTR_TIE0_Field_0,
      --  Enabled
      USBINTR_TIE0_Field_1)
     with Size => 1;
   for USBINTR_TIE0_Field use
     (USBINTR_TIE0_Field_0 => 0,
      USBINTR_TIE0_Field_1 => 1);

   --  USBHS_USBINTR_TIE array
   type USBHS_USBINTR_TIE_Field_Array is array (0 .. 1) of USBINTR_TIE0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for USBHS_USBINTR_TIE
   type USBHS_USBINTR_TIE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIE as a value
            Val : HAL.UInt2;
         when True =>
            --  TIE as an array
            Arr : USBHS_USBINTR_TIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USBHS_USBINTR_TIE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB Interrupt Enable Register
   type USBHS_USBINTR_Register is record
      --  USB interrupt Enable
      UE             : USBINTR_UE_Field := NRF_SVD.USBHS.USBINTR_UE_Field_0;
      --  USB Error interrupt Enable
      UEE            : USBINTR_UEE_Field := NRF_SVD.USBHS.USBINTR_UEE_Field_0;
      --  Port Change detect Enable
      PCE            : USBINTR_PCE_Field := NRF_SVD.USBHS.USBINTR_PCE_Field_0;
      --  Frame list Rollover Enable
      FRE            : USBINTR_FRE_Field := NRF_SVD.USBHS.USBINTR_FRE_Field_0;
      --  System Error Enable
      SEE            : USBINTR_SEE_Field := NRF_SVD.USBHS.USBINTR_SEE_Field_0;
      --  Interrupt on Async advance Enable
      AAE            : USBINTR_AAE_Field := NRF_SVD.USBHS.USBINTR_AAE_Field_0;
      --  USB-Reset Enable
      URE            : USBINTR_URE_Field := NRF_SVD.USBHS.USBINTR_URE_Field_0;
      --  SOF-Received Enable
      SRE            : USBINTR_SRE_Field := NRF_SVD.USBHS.USBINTR_SRE_Field_0;
      --  Sleep (DC suspend) Enable
      SLE            : USBINTR_SLE_Field := NRF_SVD.USBHS.USBINTR_SLE_Field_0;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  NAK Interrupt Enable
      NAKE           : USBINTR_NAKE_Field :=
                        NRF_SVD.USBHS.USBINTR_NAKE_Field_0;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  USB host Asynchronous Interrupt Enable
      UAIE           : Boolean := False;
      --  USB host Periodic Interrupt Enable
      UPIE           : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  General purpose Timer 0 Interrupt Enable
      TIE            : USBHS_USBINTR_TIE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_USBINTR_Register use record
      UE             at 0 range 0 .. 0;
      UEE            at 0 range 1 .. 1;
      PCE            at 0 range 2 .. 2;
      FRE            at 0 range 3 .. 3;
      SEE            at 0 range 4 .. 4;
      AAE            at 0 range 5 .. 5;
      URE            at 0 range 6 .. 6;
      SRE            at 0 range 7 .. 7;
      SLE            at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      NAKE           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      UAIE           at 0 range 18 .. 18;
      UPIE           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TIE            at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBHS_FRINDEX_FRINDEX_Field is HAL.UInt14;

   --  Frame Index Register
   type USBHS_FRINDEX_Register is record
      --  Frame Index
      FRINDEX        : USBHS_FRINDEX_FRINDEX_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_FRINDEX_Register use record
      FRINDEX        at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Device Address Advance
   type DEVICEADDR_USBADRA_Field is
     (
      --  Writes to USBADR are instantaneous.
      DEVICEADDR_USBADRA_Field_0,
      --  When this bit is written to a 1 at the same time or before USBADR is
      --  written, the write to the USBADR field is staged and held in a hidden
      --  register. After an IN occurs on endpoint 0 and is ACKed, USBADR is
      --  loaded from the holding register.
      DEVICEADDR_USBADRA_Field_1)
     with Size => 1;
   for DEVICEADDR_USBADRA_Field use
     (DEVICEADDR_USBADRA_Field_0 => 0,
      DEVICEADDR_USBADRA_Field_1 => 1);

   subtype USBHS_DEVICEADDR_USBADR_Field is HAL.UInt7;

   --  Device Address Register
   type USBHS_DEVICEADDR_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#0#;
      --  Device Address Advance
      USBADRA       : DEVICEADDR_USBADRA_Field :=
                       NRF_SVD.USBHS.DEVICEADDR_USBADRA_Field_0;
      --  Device Address
      USBADR        : USBHS_DEVICEADDR_USBADR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_DEVICEADDR_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      USBADRA       at 0 range 24 .. 24;
      USBADR        at 0 range 25 .. 31;
   end record;

   subtype USBHS_PERIODICLISTBASE_PERBASE_Field is HAL.UInt20;

   --  Periodic Frame List Base Address Register
   type USBHS_PERIODICLISTBASE_Register is record
      --  unspecified
      Reserved_0_11 : HAL.UInt12 := 16#0#;
      --  Base address
      PERBASE       : USBHS_PERIODICLISTBASE_PERBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_PERIODICLISTBASE_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      PERBASE       at 0 range 12 .. 31;
   end record;

   subtype USBHS_ASYNCLISTADDR_ASYBASE_Field is HAL.UInt27;

   --  Current Asynchronous List Address Register
   type USBHS_ASYNCLISTADDR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Link pointer low (LPL)
      ASYBASE      : USBHS_ASYNCLISTADDR_ASYBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_ASYNCLISTADDR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      ASYBASE      at 0 range 5 .. 31;
   end record;

   subtype USBHS_EPLISTADDR_EPBASE_Field is HAL.UInt21;

   --  Endpoint List Address Register
   type USBHS_EPLISTADDR_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Endpoint list address
      EPBASE        : USBHS_EPLISTADDR_EPBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPLISTADDR_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      EPBASE        at 0 range 11 .. 31;
   end record;

   subtype USBHS_TTCTRL_TTHA_Field is HAL.UInt7;

   --  Host TT Asynchronous Buffer Control
   type USBHS_TTCTRL_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24;
      --  Read-only. TT Hub Address
      TTHA           : USBHS_TTCTRL_TTHA_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_TTCTRL_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      TTHA           at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype USBHS_BURSTSIZE_RXPBURST_Field is HAL.UInt8;
   subtype USBHS_BURSTSIZE_TXPBURST_Field is HAL.UInt8;

   --  Master Interface Data Burst Size Register
   type USBHS_BURSTSIZE_Register is record
      --  Programable RX Burst length
      RXPBURST       : USBHS_BURSTSIZE_RXPBURST_Field := 16#8#;
      --  Programable TX Burst length
      TXPBURST       : USBHS_BURSTSIZE_TXPBURST_Field := 16#8#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_BURSTSIZE_Register use record
      RXPBURST       at 0 range 0 .. 7;
      TXPBURST       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USBHS_TXFILLTUNING_TXSCHOH_Field is HAL.UInt7;
   subtype USBHS_TXFILLTUNING_TXSCHHEALTH_Field is HAL.UInt5;
   subtype USBHS_TXFILLTUNING_TXFIFOTHRES_Field is HAL.UInt6;

   --  Transmit FIFO Tuning Control Register
   type USBHS_TXFILLTUNING_Register is record
      --  Scheduler Overhead
      TXSCHOH        : USBHS_TXFILLTUNING_TXSCHOH_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Scheduler Health counter
      TXSCHHEALTH    : USBHS_TXFILLTUNING_TXSCHHEALTH_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  FIFO burst Threshold
      TXFIFOTHRES    : USBHS_TXFILLTUNING_TXFIFOTHRES_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_TXFILLTUNING_Register use record
      TXSCHOH        at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TXSCHHEALTH    at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TXFIFOTHRES    at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype USBHS_ENDPTNAK_EPRN_Field is HAL.UInt4;
   subtype USBHS_ENDPTNAK_EPTN_Field is HAL.UInt4;

   --  Endpoint NAK Register
   type USBHS_ENDPTNAK_Register is record
      --  RX Endpoint NAK
      EPRN           : USBHS_ENDPTNAK_EPRN_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  TX Endpoint NAK
      EPTN           : USBHS_ENDPTNAK_EPTN_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_ENDPTNAK_Register use record
      EPRN           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      EPTN           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype USBHS_ENDPTNAKEN_EPRNE_Field is HAL.UInt4;
   subtype USBHS_ENDPTNAKEN_EPTNE_Field is HAL.UInt4;

   --  Endpoint NAK Enable Register
   type USBHS_ENDPTNAKEN_Register is record
      --  RX Endpoint NAK
      EPRNE          : USBHS_ENDPTNAKEN_EPRNE_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  TX Endpoint NAK
      EPTNE          : USBHS_ENDPTNAKEN_EPTNE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_ENDPTNAKEN_Register use record
      EPRNE          at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      EPTNE          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Current Connect Status
   type PORTSC1_CCS_Field is
     (
      --  No device present (host mode) or attached (device mode)
      PORTSC1_CCS_Field_0,
      --  Device is present (host mode) or attached (device mode)
      PORTSC1_CCS_Field_1)
     with Size => 1;
   for PORTSC1_CCS_Field use
     (PORTSC1_CCS_Field_0 => 0,
      PORTSC1_CCS_Field_1 => 1);

   --  Connect Change Status
   type PORTSC1_CSC_Field is
     (
      --  No change
      PORTSC1_CSC_Field_0,
      --  Connect status has changed
      PORTSC1_CSC_Field_1)
     with Size => 1;
   for PORTSC1_CSC_Field use
     (PORTSC1_CSC_Field_0 => 0,
      PORTSC1_CSC_Field_1 => 1);

   --  Port Enable/disable Change
   type PORTSC1_PEC_Field is
     (
      --  No change
      PORTSC1_PEC_Field_0,
      --  Port disabled
      PORTSC1_PEC_Field_1)
     with Size => 1;
   for PORTSC1_PEC_Field use
     (PORTSC1_PEC_Field_0 => 0,
      PORTSC1_PEC_Field_1 => 1);

   --  Over-current active
   type PORTSC1_OCA_Field is
     (
      --  Port not in over-current condition
      PORTSC1_OCA_Field_0,
      --  Port currently in over-current condition
      PORTSC1_OCA_Field_1)
     with Size => 1;
   for PORTSC1_OCA_Field use
     (PORTSC1_OCA_Field_0 => 0,
      PORTSC1_OCA_Field_1 => 1);

   --  Over-Current Change
   type PORTSC1_OCC_Field is
     (
      --  No over-current
      PORTSC1_OCC_Field_0,
      --  Over-current detect
      PORTSC1_OCC_Field_1)
     with Size => 1;
   for PORTSC1_OCC_Field use
     (PORTSC1_OCC_Field_0 => 0,
      PORTSC1_OCC_Field_1 => 1);

   --  Force Port Resume
   type PORTSC1_FPR_Field is
     (
      --  No resume (K-state) detected/driven on port
      PORTSC1_FPR_Field_0,
      --  Resume detected/driven on port
      PORTSC1_FPR_Field_1)
     with Size => 1;
   for PORTSC1_FPR_Field use
     (PORTSC1_FPR_Field_0 => 0,
      PORTSC1_FPR_Field_1 => 1);

   --  Suspend
   type PORTSC1_SUSP_Field is
     (
      --  Port not in suspend state
      PORTSC1_SUSP_Field_0,
      --  Port in suspend state
      PORTSC1_SUSP_Field_1)
     with Size => 1;
   for PORTSC1_SUSP_Field use
     (PORTSC1_SUSP_Field_0 => 0,
      PORTSC1_SUSP_Field_1 => 1);

   --  Port Reset
   type PORTSC1_PR_Field is
     (
      --  Port is not in reset
      PORTSC1_PR_Field_0,
      --  Port is in reset
      PORTSC1_PR_Field_1)
     with Size => 1;
   for PORTSC1_PR_Field use
     (PORTSC1_PR_Field_0 => 0,
      PORTSC1_PR_Field_1 => 1);

   --  High Speed Port.
   type PORTSC1_HSP_Field is
     (
      --  FS or LS
      PORTSC1_HSP_Field_0,
      --  HS
      PORTSC1_HSP_Field_1)
     with Size => 1;
   for PORTSC1_HSP_Field use
     (PORTSC1_HSP_Field_0 => 0,
      PORTSC1_HSP_Field_1 => 1);

   --  Line Status
   type PORTSC1_LS_Field is
     (
      --  SE0
      PORTSC1_LS_Field_00,
      --  J-state
      PORTSC1_LS_Field_01,
      --  K-state
      PORTSC1_LS_Field_10,
      --  Undefined
      PORTSC1_LS_Field_11)
     with Size => 2;
   for PORTSC1_LS_Field use
     (PORTSC1_LS_Field_00 => 0,
      PORTSC1_LS_Field_01 => 1,
      PORTSC1_LS_Field_10 => 2,
      PORTSC1_LS_Field_11 => 3);

   subtype USBHS_PORTSC1_PIC_Field is HAL.UInt2;

   --  Port Test Control
   type PORTSC1_PTC_Field is
     (
      --  Not enabled
      PORTSC1_PTC_Field_0000,
      --  J_STATE
      PORTSC1_PTC_Field_0001,
      --  K_STATE
      PORTSC1_PTC_Field_0010,
      --  SE0_NAK
      PORTSC1_PTC_Field_0011,
      --  Packet
      PORTSC1_PTC_Field_0100,
      --  FORCE_ENABLE_HS
      PORTSC1_PTC_Field_0101,
      --  FORCE_ENABLE_FS
      PORTSC1_PTC_Field_0110,
      --  FORCE_ENABLE_LS
      PORTSC1_PTC_Field_0111)
     with Size => 4;
   for PORTSC1_PTC_Field use
     (PORTSC1_PTC_Field_0000 => 0,
      PORTSC1_PTC_Field_0001 => 1,
      PORTSC1_PTC_Field_0010 => 2,
      PORTSC1_PTC_Field_0011 => 3,
      PORTSC1_PTC_Field_0100 => 4,
      PORTSC1_PTC_Field_0101 => 5,
      PORTSC1_PTC_Field_0110 => 6,
      PORTSC1_PTC_Field_0111 => 7);

   --  Port force Full-Speed Connect
   type PORTSC1_PFSC_Field is
     (
      --  Allow the port to identify itself as high speed
      PORTSC1_PFSC_Field_0,
      --  Force the port to only connect at full speed
      PORTSC1_PFSC_Field_1)
     with Size => 1;
   for PORTSC1_PFSC_Field use
     (PORTSC1_PFSC_Field_0 => 0,
      PORTSC1_PFSC_Field_1 => 1);

   --  Port Speed
   type PORTSC1_PSPD_Field is
     (
      --  Full speed
      PORTSC1_PSPD_Field_00,
      --  Low speed
      PORTSC1_PSPD_Field_01,
      --  High speed
      PORTSC1_PSPD_Field_10,
      --  Undefined
      PORTSC1_PSPD_Field_11)
     with Size => 2;
   for PORTSC1_PSPD_Field use
     (PORTSC1_PSPD_Field_00 => 0,
      PORTSC1_PSPD_Field_01 => 1,
      PORTSC1_PSPD_Field_10 => 2,
      PORTSC1_PSPD_Field_11 => 3);

   --  Port Transceiver Select [1:0]
   type PORTSC1_PTS_Field is
     (
      --  Use UTMI transceiver interface.
      PORTSC1_PTS_Field_000)
     with Size => 2;
   for PORTSC1_PTS_Field use
     (PORTSC1_PTS_Field_000 => 0);

   --  Port Status and Control Registers
   type USBHS_PORTSC1_Register is record
      --  Read-only. Current Connect Status
      CCS            : PORTSC1_CCS_Field := NRF_SVD.USBHS.PORTSC1_CCS_Field_0;
      --  Connect Change Status
      CSC            : PORTSC1_CSC_Field := NRF_SVD.USBHS.PORTSC1_CSC_Field_0;
      --  Port Enabled/disabled
      PE             : Boolean := False;
      --  Port Enable/disable Change
      PEC            : PORTSC1_PEC_Field := NRF_SVD.USBHS.PORTSC1_PEC_Field_0;
      --  Read-only. Over-current active
      OCA            : PORTSC1_OCA_Field := NRF_SVD.USBHS.PORTSC1_OCA_Field_0;
      --  Over-Current Change
      OCC            : PORTSC1_OCC_Field := NRF_SVD.USBHS.PORTSC1_OCC_Field_0;
      --  Force Port Resume
      FPR            : PORTSC1_FPR_Field := NRF_SVD.USBHS.PORTSC1_FPR_Field_0;
      --  Suspend
      SUSP           : PORTSC1_SUSP_Field :=
                        NRF_SVD.USBHS.PORTSC1_SUSP_Field_0;
      --  Port Reset
      PR             : PORTSC1_PR_Field := NRF_SVD.USBHS.PORTSC1_PR_Field_0;
      --  Read-only. High Speed Port.
      HSP            : PORTSC1_HSP_Field := NRF_SVD.USBHS.PORTSC1_HSP_Field_0;
      --  Read-only. Line Status
      LS             : PORTSC1_LS_Field := NRF_SVD.USBHS.PORTSC1_LS_Field_00;
      --  Port Power
      PP             : Boolean := False;
      --  Port Owner
      PO             : Boolean := False;
      --  Port Indicator Control
      PIC            : USBHS_PORTSC1_PIC_Field := 16#0#;
      --  Port Test Control
      PTC            : PORTSC1_PTC_Field :=
                        NRF_SVD.USBHS.PORTSC1_PTC_Field_0000;
      --  Wake on Connect enable
      WKCN           : Boolean := False;
      --  Wake on Disconnect enable
      WKDS           : Boolean := False;
      --  Wake on Over-Current enable
      WKOC           : Boolean := False;
      --  PHY low power suspend
      PHCD           : Boolean := False;
      --  Port force Full-Speed Connect
      PFSC           : PORTSC1_PFSC_Field :=
                        NRF_SVD.USBHS.PORTSC1_PFSC_Field_0;
      --  Read-only. Port Transceiver Select [2]
      PTS2           : Boolean := False;
      --  Read-only. Port Speed
      PSPD           : PORTSC1_PSPD_Field :=
                        NRF_SVD.USBHS.PORTSC1_PSPD_Field_00;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Port Transceiver Select [1:0]
      PTS            : PORTSC1_PTS_Field :=
                        NRF_SVD.USBHS.PORTSC1_PTS_Field_000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_PORTSC1_Register use record
      CCS            at 0 range 0 .. 0;
      CSC            at 0 range 1 .. 1;
      PE             at 0 range 2 .. 2;
      PEC            at 0 range 3 .. 3;
      OCA            at 0 range 4 .. 4;
      OCC            at 0 range 5 .. 5;
      FPR            at 0 range 6 .. 6;
      SUSP           at 0 range 7 .. 7;
      PR             at 0 range 8 .. 8;
      HSP            at 0 range 9 .. 9;
      LS             at 0 range 10 .. 11;
      PP             at 0 range 12 .. 12;
      PO             at 0 range 13 .. 13;
      PIC            at 0 range 14 .. 15;
      PTC            at 0 range 16 .. 19;
      WKCN           at 0 range 20 .. 20;
      WKDS           at 0 range 21 .. 21;
      WKOC           at 0 range 22 .. 22;
      PHCD           at 0 range 23 .. 23;
      PFSC           at 0 range 24 .. 24;
      PTS2           at 0 range 25 .. 25;
      PSPD           at 0 range 26 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      PTS            at 0 range 30 .. 31;
   end record;

   --  Hardware Assist Auto-Reset
   type OTGSC_HAAR_Field is
     (
      --  Disabled.
      OTGSC_HAAR_Field_0,
      --  Enable automatic reset after connect on host port.
      OTGSC_HAAR_Field_1)
     with Size => 1;
   for OTGSC_HAAR_Field use
     (OTGSC_HAAR_Field_0 => 0,
      OTGSC_HAAR_Field_1 => 1);

   --  OTG Termination
   type OTGSC_OT_Field is
     (
      --  Disable pull-down on DM
      OTGSC_OT_Field_0,
      --  Enable pull-down on DM
      OTGSC_OT_Field_1)
     with Size => 1;
   for OTGSC_OT_Field use
     (OTGSC_OT_Field_0 => 0,
      OTGSC_OT_Field_1 => 1);

   --  Data Pulsing
   type OTGSC_DP_Field is
     (
      --  The pull-up on DP is not asserted
      OTGSC_DP_Field_0,
      --  The pull-up on DP is asserted for data pulsing during SRP
      OTGSC_DP_Field_1)
     with Size => 1;
   for OTGSC_DP_Field use
     (OTGSC_DP_Field_0 => 0,
      OTGSC_DP_Field_1 => 1);

   --  ID Pull-Up
   type OTGSC_IDPU_Field is
     (
      --  Disable pull-up. ID input not sampled.
      OTGSC_IDPU_Field_0,
      --  Enable pull-up
      OTGSC_IDPU_Field_1)
     with Size => 1;
   for OTGSC_IDPU_Field use
     (OTGSC_IDPU_Field_0 => 0,
      OTGSC_IDPU_Field_1 => 1);

   --  Hardware Assist B-Disconnect to A-connect
   type OTGSC_HABA_Field is
     (
      --  Disabled.
      OTGSC_HABA_Field_0,
      --  Enable automatic B-disconnect to A-connect sequence.
      OTGSC_HABA_Field_1)
     with Size => 1;
   for OTGSC_HABA_Field use
     (OTGSC_HABA_Field_0 => 0,
      OTGSC_HABA_Field_1 => 1);

   --  USB ID
   type OTGSC_ID_Field is
     (
      --  A device
      OTGSC_ID_Field_0,
      --  B device
      OTGSC_ID_Field_1)
     with Size => 1;
   for OTGSC_ID_Field use
     (OTGSC_ID_Field_0 => 0,
      OTGSC_ID_Field_1 => 1);

   --  A VBus Valid
   type OTGSC_AVV_Field is
     (
      --  VBus is below A VBus valid threshold
      OTGSC_AVV_Field_0,
      --  VBus is above A VBus valid threshold
      OTGSC_AVV_Field_1)
     with Size => 1;
   for OTGSC_AVV_Field use
     (OTGSC_AVV_Field_0 => 0,
      OTGSC_AVV_Field_1 => 1);

   --  A Session Valid
   type OTGSC_ASV_Field is
     (
      --  VBus is below A session valid threshold
      OTGSC_ASV_Field_0,
      --  VBus is above A session valid threshold
      OTGSC_ASV_Field_1)
     with Size => 1;
   for OTGSC_ASV_Field use
     (OTGSC_ASV_Field_0 => 0,
      OTGSC_ASV_Field_1 => 1);

   --  B Session Valid
   type OTGSC_BSV_Field is
     (
      --  VBus is below B session valid threshold
      OTGSC_BSV_Field_0,
      --  VBus is above B session valid threshold
      OTGSC_BSV_Field_1)
     with Size => 1;
   for OTGSC_BSV_Field use
     (OTGSC_BSV_Field_0 => 0,
      OTGSC_BSV_Field_1 => 1);

   --  B Session End
   type OTGSC_BSE_Field is
     (
      --  VBus is above B session end threshold
      OTGSC_BSE_Field_0,
      --  VBus is below B session end threshold
      OTGSC_BSE_Field_1)
     with Size => 1;
   for OTGSC_BSE_Field use
     (OTGSC_BSE_Field_0 => 0,
      OTGSC_BSE_Field_1 => 1);

   --  Data bus Pulsing Status
   type OTGSC_DPS_Field is
     (
      --  No pulsing on port
      OTGSC_DPS_Field_0,
      --  Pulsing detected on port
      OTGSC_DPS_Field_1)
     with Size => 1;
   for OTGSC_DPS_Field use
     (OTGSC_DPS_Field_0 => 0,
      OTGSC_DPS_Field_1 => 1);

   --  USB ID Interrupt Enable
   type OTGSC_IDIE_Field is
     (
      --  Disable
      OTGSC_IDIE_Field_0,
      --  Enable
      OTGSC_IDIE_Field_1)
     with Size => 1;
   for OTGSC_IDIE_Field use
     (OTGSC_IDIE_Field_0 => 0,
      OTGSC_IDIE_Field_1 => 1);

   --  A VBUS Valid Interrupt Enable
   type OTGSC_AVVIE_Field is
     (
      --  Disable
      OTGSC_AVVIE_Field_0,
      --  Enable
      OTGSC_AVVIE_Field_1)
     with Size => 1;
   for OTGSC_AVVIE_Field use
     (OTGSC_AVVIE_Field_0 => 0,
      OTGSC_AVVIE_Field_1 => 1);

   --  A Session Valid Interrupt Enable
   type OTGSC_ASVIE_Field is
     (
      --  Disable
      OTGSC_ASVIE_Field_0,
      --  Enable
      OTGSC_ASVIE_Field_1)
     with Size => 1;
   for OTGSC_ASVIE_Field use
     (OTGSC_ASVIE_Field_0 => 0,
      OTGSC_ASVIE_Field_1 => 1);

   --  B Session Valid Interrupt Enable
   type OTGSC_BSVIE_Field is
     (
      --  Disable
      OTGSC_BSVIE_Field_0,
      --  Enable
      OTGSC_BSVIE_Field_1)
     with Size => 1;
   for OTGSC_BSVIE_Field use
     (OTGSC_BSVIE_Field_0 => 0,
      OTGSC_BSVIE_Field_1 => 1);

   --  B Session End Interrupt Enable
   type OTGSC_BSEIE_Field is
     (
      --  Disable
      OTGSC_BSEIE_Field_0,
      --  Enable
      OTGSC_BSEIE_Field_1)
     with Size => 1;
   for OTGSC_BSEIE_Field use
     (OTGSC_BSEIE_Field_0 => 0,
      OTGSC_BSEIE_Field_1 => 1);

   --  1 Milli-Second timer interrupt Enable
   type OTGSC_MSE_Field is
     (
      --  Disable
      OTGSC_MSE_Field_0,
      --  Enable
      OTGSC_MSE_Field_1)
     with Size => 1;
   for OTGSC_MSE_Field use
     (OTGSC_MSE_Field_0 => 0,
      OTGSC_MSE_Field_1 => 1);

   --  Data Pulse Interrupt Enable
   type OTGSC_DPIE_Field is
     (
      --  Disable
      OTGSC_DPIE_Field_0,
      --  Enable
      OTGSC_DPIE_Field_1)
     with Size => 1;
   for OTGSC_DPIE_Field use
     (OTGSC_DPIE_Field_0 => 0,
      OTGSC_DPIE_Field_1 => 1);

   --  On-the-Go Status and Control Register
   type USBHS_OTGSC_Register is record
      --  VBUS Discharge
      VD             : Boolean := False;
      --  VBUS Charge
      VC             : Boolean := False;
      --  Hardware Assist Auto-Reset
      HAAR           : OTGSC_HAAR_Field := NRF_SVD.USBHS.OTGSC_HAAR_Field_0;
      --  OTG Termination
      OT             : OTGSC_OT_Field := NRF_SVD.USBHS.OTGSC_OT_Field_0;
      --  Data Pulsing
      DP             : OTGSC_DP_Field := NRF_SVD.USBHS.OTGSC_DP_Field_0;
      --  ID Pull-Up
      IDPU           : OTGSC_IDPU_Field := NRF_SVD.USBHS.OTGSC_IDPU_Field_1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Hardware Assist B-Disconnect to A-connect
      HABA           : OTGSC_HABA_Field := NRF_SVD.USBHS.OTGSC_HABA_Field_0;
      --  Read-only. USB ID
      ID             : OTGSC_ID_Field := NRF_SVD.USBHS.OTGSC_ID_Field_0;
      --  Read-only. A VBus Valid
      AVV            : OTGSC_AVV_Field := NRF_SVD.USBHS.OTGSC_AVV_Field_0;
      --  Read-only. A Session Valid
      ASV            : OTGSC_ASV_Field := NRF_SVD.USBHS.OTGSC_ASV_Field_0;
      --  Read-only. B Session Valid
      BSV            : OTGSC_BSV_Field := NRF_SVD.USBHS.OTGSC_BSV_Field_0;
      --  Read-only. B Session End
      BSE            : OTGSC_BSE_Field := NRF_SVD.USBHS.OTGSC_BSE_Field_1;
      --  Read-only. 1 Milli-Second timer Toggle
      MST            : Boolean := False;
      --  Read-only. Data bus Pulsing Status
      DPS            : OTGSC_DPS_Field := NRF_SVD.USBHS.OTGSC_DPS_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  USB ID Interrupt Status
      IDIS           : Boolean := False;
      --  A VBUS Valid Interrupt Status
      AVVIS          : Boolean := False;
      --  A Session Valid Interrupt Status
      ASVIS          : Boolean := False;
      --  B Session Valid Interrupt Status
      BSVIS          : Boolean := False;
      --  B Session End Interrupt Status
      BSEIS          : Boolean := False;
      --  1 Milli-Second timer interrupt Status
      MSS            : Boolean := False;
      --  Data Pulse interrupt Status
      DPIS           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  USB ID Interrupt Enable
      IDIE           : OTGSC_IDIE_Field := NRF_SVD.USBHS.OTGSC_IDIE_Field_0;
      --  A VBUS Valid Interrupt Enable
      AVVIE          : OTGSC_AVVIE_Field := NRF_SVD.USBHS.OTGSC_AVVIE_Field_0;
      --  A Session Valid Interrupt Enable
      ASVIE          : OTGSC_ASVIE_Field := NRF_SVD.USBHS.OTGSC_ASVIE_Field_0;
      --  B Session Valid Interrupt Enable
      BSVIE          : OTGSC_BSVIE_Field := NRF_SVD.USBHS.OTGSC_BSVIE_Field_0;
      --  B Session End Interrupt Enable
      BSEIE          : OTGSC_BSEIE_Field := NRF_SVD.USBHS.OTGSC_BSEIE_Field_0;
      --  1 Milli-Second timer interrupt Enable
      MSE            : OTGSC_MSE_Field := NRF_SVD.USBHS.OTGSC_MSE_Field_0;
      --  Data Pulse Interrupt Enable
      DPIE           : OTGSC_DPIE_Field := NRF_SVD.USBHS.OTGSC_DPIE_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_OTGSC_Register use record
      VD             at 0 range 0 .. 0;
      VC             at 0 range 1 .. 1;
      HAAR           at 0 range 2 .. 2;
      OT             at 0 range 3 .. 3;
      DP             at 0 range 4 .. 4;
      IDPU           at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      HABA           at 0 range 7 .. 7;
      ID             at 0 range 8 .. 8;
      AVV            at 0 range 9 .. 9;
      ASV            at 0 range 10 .. 10;
      BSV            at 0 range 11 .. 11;
      BSE            at 0 range 12 .. 12;
      MST            at 0 range 13 .. 13;
      DPS            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      IDIS           at 0 range 16 .. 16;
      AVVIS          at 0 range 17 .. 17;
      ASVIS          at 0 range 18 .. 18;
      BSVIS          at 0 range 19 .. 19;
      BSEIS          at 0 range 20 .. 20;
      MSS            at 0 range 21 .. 21;
      DPIS           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      IDIE           at 0 range 24 .. 24;
      AVVIE          at 0 range 25 .. 25;
      ASVIE          at 0 range 26 .. 26;
      BSVIE          at 0 range 27 .. 27;
      BSEIE          at 0 range 28 .. 28;
      MSE            at 0 range 29 .. 29;
      DPIE           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Controller Mode
   type USBMODE_CM_Field is
     (
      --  Idle (default for the USBHS module)
      USBMODE_CM_Field_00,
      --  Device controller
      USBMODE_CM_Field_10,
      --  Host controller
      USBMODE_CM_Field_11)
     with Size => 2;
   for USBMODE_CM_Field use
     (USBMODE_CM_Field_00 => 0,
      USBMODE_CM_Field_10 => 2,
      USBMODE_CM_Field_11 => 3);

   --  Endian Select
   type USBMODE_ES_Field is
     (
      --  Little endian. First byte referenced in least significant byte of
      --  32-bit word.
      USBMODE_ES_Field_0,
      --  Big endian. First byte referenced in most significant byte of 32-bit
      --  word.
      USBMODE_ES_Field_1)
     with Size => 1;
   for USBMODE_ES_Field use
     (USBMODE_ES_Field_0 => 0,
      USBMODE_ES_Field_1 => 1);

   --  Stream DISable
   type USBMODE_SDIS_Field is
     (
      --  Inactive
      USBMODE_SDIS_Field_0,
      --  Active
      USBMODE_SDIS_Field_1)
     with Size => 1;
   for USBMODE_SDIS_Field use
     (USBMODE_SDIS_Field_0 => 0,
      USBMODE_SDIS_Field_1 => 1);

   --  Tx to Tx HS Delay
   type USBMODE_TXHSD_Field is
     (
      --  10
      USBMODE_TXHSD_Field_000,
      --  11
      USBMODE_TXHSD_Field_001,
      --  12
      USBMODE_TXHSD_Field_010,
      --  13
      USBMODE_TXHSD_Field_011,
      --  14
      USBMODE_TXHSD_Field_100,
      --  15
      USBMODE_TXHSD_Field_101,
      --  16
      USBMODE_TXHSD_Field_110,
      --  17
      USBMODE_TXHSD_Field_111)
     with Size => 3;
   for USBMODE_TXHSD_Field use
     (USBMODE_TXHSD_Field_000 => 0,
      USBMODE_TXHSD_Field_001 => 1,
      USBMODE_TXHSD_Field_010 => 2,
      USBMODE_TXHSD_Field_011 => 3,
      USBMODE_TXHSD_Field_100 => 4,
      USBMODE_TXHSD_Field_101 => 5,
      USBMODE_TXHSD_Field_110 => 6,
      USBMODE_TXHSD_Field_111 => 7);

   --  USB Mode Register
   type USBHS_USBMODE_Register is record
      --  Controller Mode
      CM             : USBMODE_CM_Field := NRF_SVD.USBHS.USBMODE_CM_Field_00;
      --  Endian Select
      ES             : USBMODE_ES_Field := NRF_SVD.USBHS.USBMODE_ES_Field_0;
      --  Setup Lock-Out Mode
      SLOM           : Boolean := False;
      --  Stream DISable
      SDIS           : USBMODE_SDIS_Field :=
                        NRF_SVD.USBHS.USBMODE_SDIS_Field_0;
      --  unspecified
      Reserved_5_11  : HAL.UInt7 := 16#0#;
      --  Tx to Tx HS Delay
      TXHSD          : USBMODE_TXHSD_Field :=
                        NRF_SVD.USBHS.USBMODE_TXHSD_Field_101;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_USBMODE_Register use record
      CM             at 0 range 0 .. 1;
      ES             at 0 range 2 .. 2;
      SLOM           at 0 range 3 .. 3;
      SDIS           at 0 range 4 .. 4;
      Reserved_5_11  at 0 range 5 .. 11;
      TXHSD          at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype USBHS_EPSETUPSR_EPSETUPSTAT_Field is HAL.UInt4;

   --  Endpoint Setup Status Register
   type USBHS_EPSETUPSR_Register is record
      --  Setup Endpoint Status
      EPSETUPSTAT   : USBHS_EPSETUPSR_EPSETUPSTAT_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPSETUPSR_Register use record
      EPSETUPSTAT   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype USBHS_EPPRIME_PERB_Field is HAL.UInt4;
   subtype USBHS_EPPRIME_PETB_Field is HAL.UInt4;

   --  Endpoint Initialization Register
   type USBHS_EPPRIME_Register is record
      --  Prime Endpoint Receive Buffer
      PERB           : USBHS_EPPRIME_PERB_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Prime Endpoint tTansmit Buffer
      PETB           : USBHS_EPPRIME_PETB_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPPRIME_Register use record
      PERB           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      PETB           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype USBHS_EPFLUSH_FERB_Field is HAL.UInt4;
   subtype USBHS_EPFLUSH_FETB_Field is HAL.UInt4;

   --  Endpoint Flush Register
   type USBHS_EPFLUSH_Register is record
      --  Flush Endpoint Receive Buffer
      FERB           : USBHS_EPFLUSH_FERB_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Flush Endpoint Transmit Buffer
      FETB           : USBHS_EPFLUSH_FETB_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPFLUSH_Register use record
      FERB           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      FETB           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype USBHS_EPSR_ERBR_Field is HAL.UInt4;
   subtype USBHS_EPSR_ETBR_Field is HAL.UInt4;

   --  Endpoint Status Register
   type USBHS_EPSR_Register is record
      --  Read-only. Endpoint Receive Buffer Ready
      ERBR           : USBHS_EPSR_ERBR_Field;
      --  unspecified
      Reserved_4_15  : HAL.UInt12;
      --  Read-only. Endpoint Transmit Buffer Ready
      ETBR           : USBHS_EPSR_ETBR_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPSR_Register use record
      ERBR           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      ETBR           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype USBHS_EPCOMPLETE_ERCE_Field is HAL.UInt4;
   subtype USBHS_EPCOMPLETE_ETCE_Field is HAL.UInt4;

   --  Endpoint Complete Register
   type USBHS_EPCOMPLETE_Register is record
      --  Endpoint Receive Complete Event
      ERCE           : USBHS_EPCOMPLETE_ERCE_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Endpoint Transmit Complete Event
      ETCE           : USBHS_EPCOMPLETE_ETCE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPCOMPLETE_Register use record
      ERCE           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      ETCE           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RX endpoint Stall
   type EPCR0_RXS_Field is
     (
      --  Endpoint OK
      EPCR0_RXS_Field_0,
      --  Endpoint stalled
      EPCR0_RXS_Field_1)
     with Size => 1;
   for EPCR0_RXS_Field use
     (EPCR0_RXS_Field_0 => 0,
      EPCR0_RXS_Field_1 => 1);

   --  RX endpoint Type
   type EPCR0_RXT_Field is
     (
      --  Control
      EPCR0_RXT_Field_00)
     with Size => 2;
   for EPCR0_RXT_Field use
     (EPCR0_RXT_Field_00 => 0);

   --  RX endpoint Enable
   type EPCR0_RXE_Field is
     (
      --  Enabled
      EPCR0_RXE_Field_1)
     with Size => 1;
   for EPCR0_RXE_Field use
     (EPCR0_RXE_Field_1 => 1);

   --  TX Endpoint Stall
   type EPCR0_TXS_Field is
     (
      --  Endpoint OK
      EPCR0_TXS_Field_0,
      --  Endpoint stalled
      EPCR0_TXS_Field_1)
     with Size => 1;
   for EPCR0_TXS_Field use
     (EPCR0_TXS_Field_0 => 0,
      EPCR0_TXS_Field_1 => 1);

   --  TX Endpoint Type
   type EPCR0_TXT_Field is
     (
      --  Control
      EPCR0_TXT_Field_00)
     with Size => 2;
   for EPCR0_TXT_Field use
     (EPCR0_TXT_Field_00 => 0);

   --  TX Endpoint Enable
   type EPCR0_TXE_Field is
     (
      --  Enable
      EPCR0_TXE_Field_1)
     with Size => 1;
   for EPCR0_TXE_Field use
     (EPCR0_TXE_Field_1 => 1);

   --  Endpoint Control Register 0
   type USBHS_EPCR0_Register is record
      --  RX endpoint Stall
      RXS            : EPCR0_RXS_Field := NRF_SVD.USBHS.EPCR0_RXS_Field_0;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Read-only. RX endpoint Type
      RXT            : EPCR0_RXT_Field := NRF_SVD.USBHS.EPCR0_RXT_Field_00;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Read-only. RX endpoint Enable
      RXE            : EPCR0_RXE_Field := NRF_SVD.USBHS.EPCR0_RXE_Field_1;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TX Endpoint Stall
      TXS            : EPCR0_TXS_Field := NRF_SVD.USBHS.EPCR0_TXS_Field_0;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Read-only. TX Endpoint Type
      TXT            : EPCR0_TXT_Field := NRF_SVD.USBHS.EPCR0_TXT_Field_00;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Read-only. TX Endpoint Enable
      TXE            : EPCR0_TXE_Field := NRF_SVD.USBHS.EPCR0_TXE_Field_1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPCR0_Register use record
      RXS            at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RXT            at 0 range 2 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      RXE            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TXS            at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      TXT            at 0 range 18 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      TXE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  RX endpoint Stall
   type EPCR_RXS_Field is
     (
      --  Endpoint OK
      EPCR_RXS_Field_0,
      --  Endpoint stalled
      EPCR_RXS_Field_1)
     with Size => 1;
   for EPCR_RXS_Field use
     (EPCR_RXS_Field_0 => 0,
      EPCR_RXS_Field_1 => 1);

   --  RX endpoint Type
   type EPCR_RXT_Field is
     (
      --  Control
      EPCR_RXT_Field_00,
      --  Isochronous
      EPCR_RXT_Field_01,
      --  Bulk
      EPCR_RXT_Field_10,
      --  Interrupt
      EPCR_RXT_Field_11)
     with Size => 2;
   for EPCR_RXT_Field use
     (EPCR_RXT_Field_00 => 0,
      EPCR_RXT_Field_01 => 1,
      EPCR_RXT_Field_10 => 2,
      EPCR_RXT_Field_11 => 3);

   --  RX data toggle Inhibit
   type EPCR_RXI_Field is
     (
      --  PID sequencing enabled
      EPCR_RXI_Field_0,
      --  PID sequencing disabled
      EPCR_RXI_Field_1)
     with Size => 1;
   for EPCR_RXI_Field use
     (EPCR_RXI_Field_0 => 0,
      EPCR_RXI_Field_1 => 1);

   --  RX endpoint Enable
   type EPCR_RXE_Field is
     (
      --  Disabled
      EPCR_RXE_Field_0,
      --  Enabled
      EPCR_RXE_Field_1)
     with Size => 1;
   for EPCR_RXE_Field use
     (EPCR_RXE_Field_0 => 0,
      EPCR_RXE_Field_1 => 1);

   --  TX endpoint Stall
   type EPCR_TXS_Field is
     (
      --  Endpoint OK
      EPCR_TXS_Field_0,
      --  Endpoint stalled
      EPCR_TXS_Field_1)
     with Size => 1;
   for EPCR_TXS_Field use
     (EPCR_TXS_Field_0 => 0,
      EPCR_TXS_Field_1 => 1);

   --  TX endpoint Type
   type EPCR_TXT_Field is
     (
      --  Control
      EPCR_TXT_Field_00,
      --  Isochronous
      EPCR_TXT_Field_01,
      --  Bulk
      EPCR_TXT_Field_10,
      --  Interrupt
      EPCR_TXT_Field_11)
     with Size => 2;
   for EPCR_TXT_Field use
     (EPCR_TXT_Field_00 => 0,
      EPCR_TXT_Field_01 => 1,
      EPCR_TXT_Field_10 => 2,
      EPCR_TXT_Field_11 => 3);

   --  TX data toggle Inhibit
   type EPCR_TXI_Field is
     (
      --  PID sequencing enabled
      EPCR_TXI_Field_0,
      --  PID sequencing disabled
      EPCR_TXI_Field_1)
     with Size => 1;
   for EPCR_TXI_Field use
     (EPCR_TXI_Field_0 => 0,
      EPCR_TXI_Field_1 => 1);

   --  TX endpoint Enable
   type EPCR_TXE_Field is
     (
      --  Disabled
      EPCR_TXE_Field_0,
      --  Enabled
      EPCR_TXE_Field_1)
     with Size => 1;
   for EPCR_TXE_Field use
     (EPCR_TXE_Field_0 => 0,
      EPCR_TXE_Field_1 => 1);

   --  Endpoint Control Register n
   type USBHS_EPCR_Register is record
      --  RX endpoint Stall
      RXS            : EPCR_RXS_Field := NRF_SVD.USBHS.EPCR_RXS_Field_0;
      --  RX endpoint Data sink
      RXD            : Boolean := False;
      --  RX endpoint Type
      RXT            : EPCR_RXT_Field := NRF_SVD.USBHS.EPCR_RXT_Field_00;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  RX data toggle Inhibit
      RXI            : EPCR_RXI_Field := NRF_SVD.USBHS.EPCR_RXI_Field_0;
      --  Write-only. RX data toggle Reset
      RXR            : Boolean := False;
      --  RX endpoint Enable
      RXE            : EPCR_RXE_Field := NRF_SVD.USBHS.EPCR_RXE_Field_0;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TX endpoint Stall
      TXS            : EPCR_TXS_Field := NRF_SVD.USBHS.EPCR_TXS_Field_0;
      --  TX endpoint Data source
      TXD            : Boolean := False;
      --  TX endpoint Type
      TXT            : EPCR_TXT_Field := NRF_SVD.USBHS.EPCR_TXT_Field_00;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  TX data toggle Inhibit
      TXI            : EPCR_TXI_Field := NRF_SVD.USBHS.EPCR_TXI_Field_0;
      --  Write-only. TX data toggle Reset
      TXR            : Boolean := False;
      --  TX endpoint Enable
      TXE            : EPCR_TXE_Field := NRF_SVD.USBHS.EPCR_TXE_Field_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_EPCR_Register use record
      RXS            at 0 range 0 .. 0;
      RXD            at 0 range 1 .. 1;
      RXT            at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      RXI            at 0 range 5 .. 5;
      RXR            at 0 range 6 .. 6;
      RXE            at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TXS            at 0 range 16 .. 16;
      TXD            at 0 range 17 .. 17;
      TXT            at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      TXI            at 0 range 21 .. 21;
      TXR            at 0 range 22 .. 22;
      TXE            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Endpoint Control Register n
   type USBHS_EPCR_Registers is array (0 .. 6) of USBHS_EPCR_Register
     with Volatile;

   --  Wakeup Interrupt Enable
   type USBGENCTRL_WU_IE_Field is
     (
      --  Disabled
      USBGENCTRL_WU_IE_Field_0,
      --  Enabled
      USBGENCTRL_WU_IE_Field_1)
     with Size => 1;
   for USBGENCTRL_WU_IE_Field use
     (USBGENCTRL_WU_IE_Field_0 => 0,
      USBGENCTRL_WU_IE_Field_1 => 1);

   --  Wakeup Interrupt Clear
   type USBGENCTRL_WU_INT_CLR_Field is
     (
      --  Default, no action.
      USBGENCTRL_WU_INT_CLR_Field_0,
      --  Clear the wake-up interrupt.
      USBGENCTRL_WU_INT_CLR_Field_1)
     with Size => 1;
   for USBGENCTRL_WU_INT_CLR_Field use
     (USBGENCTRL_WU_INT_CLR_Field_0 => 0,
      USBGENCTRL_WU_INT_CLR_Field_1 => 1);

   --  USB General Control Register
   type USBHS_USBGENCTRL_Register is record
      --  Wakeup Interrupt Enable
      WU_IE         : USBGENCTRL_WU_IE_Field :=
                       NRF_SVD.USBHS.USBGENCTRL_WU_IE_Field_0;
      --  unspecified
      Reserved_1_4  : HAL.UInt4 := 16#0#;
      --  Wakeup Interrupt Clear
      WU_INT_CLR    : USBGENCTRL_WU_INT_CLR_Field :=
                       NRF_SVD.USBHS.USBGENCTRL_WU_INT_CLR_Field_0;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBHS_USBGENCTRL_Register use record
      WU_IE         at 0 range 0 .. 0;
      Reserved_1_4  at 0 range 1 .. 4;
      WU_INT_CLR    at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type USBHS_Disc is
     (
      Mode_1,
      Mode_2);

   --  USB HS/FS/LS OTG Controller
   type USBHS_Peripheral
     (Discriminent : USBHS_Disc := Mode_1)
   is record
      --  Identification Register
      ID               : aliased USBHS_ID_Register;
      --  General Hardware Parameters Register
      HWGENERAL        : aliased USBHS_HWGENERAL_Register;
      --  Host Hardware Parameters Register
      HWHOST           : aliased USBHS_HWHOST_Register;
      --  Device Hardware Parameters Register
      HWDEVICE         : aliased USBHS_HWDEVICE_Register;
      --  Transmit Buffer Hardware Parameters Register
      HWTXBUF          : aliased USBHS_HWTXBUF_Register;
      --  Receive Buffer Hardware Parameters Register
      HWRXBUF          : aliased USBHS_HWRXBUF_Register;
      --  General Purpose Timer n Load Register
      GPTIMERLD0       : aliased GPTIMERLD_Register;
      --  General Purpose Timer n Control Register
      GPTIMERCTL0      : aliased GPTIMERCTL_Register;
      --  General Purpose Timer n Load Register
      GPTIMERLD1       : aliased GPTIMERLD_Register;
      --  General Purpose Timer n Control Register
      GPTIMERCTL1      : aliased GPTIMERCTL_Register;
      --  System Bus Interface Configuration Register
      USB_SBUSCFG      : aliased USBHS_USB_SBUSCFG_Register;
      --  Host Controller Interface Version and Capability Registers Length
      --  Register
      HCIVERSION       : aliased USBHS_HCIVERSION_Register;
      --  Host Controller Structural Parameters Register
      HCSPARAMS        : aliased USBHS_HCSPARAMS_Register;
      --  Host Controller Capability Parameters Register
      HCCPARAMS        : aliased USBHS_HCCPARAMS_Register;
      --  Device Controller Interface Version
      DCIVERSION       : aliased HAL.UInt16;
      --  Device Controller Capability Parameters
      DCCPARAMS        : aliased USBHS_DCCPARAMS_Register;
      --  USB Command Register
      USBCMD           : aliased USBHS_USBCMD_Register;
      --  USB Status Register
      USBSTS           : aliased USBHS_USBSTS_Register;
      --  USB Interrupt Enable Register
      USBINTR          : aliased USBHS_USBINTR_Register;
      --  Frame Index Register
      FRINDEX          : aliased USBHS_FRINDEX_Register;
      --  Host TT Asynchronous Buffer Control
      TTCTRL           : aliased USBHS_TTCTRL_Register;
      --  Master Interface Data Burst Size Register
      BURSTSIZE        : aliased USBHS_BURSTSIZE_Register;
      --  Transmit FIFO Tuning Control Register
      TXFILLTUNING     : aliased USBHS_TXFILLTUNING_Register;
      --  Endpoint NAK Register
      ENDPTNAK         : aliased USBHS_ENDPTNAK_Register;
      --  Endpoint NAK Enable Register
      ENDPTNAKEN       : aliased USBHS_ENDPTNAKEN_Register;
      --  Configure Flag Register
      CONFIGFLAG       : aliased HAL.UInt32;
      --  Port Status and Control Registers
      PORTSC1          : aliased USBHS_PORTSC1_Register;
      --  On-the-Go Status and Control Register
      OTGSC            : aliased USBHS_OTGSC_Register;
      --  USB Mode Register
      USBMODE          : aliased USBHS_USBMODE_Register;
      --  Endpoint Setup Status Register
      EPSETUPSR        : aliased USBHS_EPSETUPSR_Register;
      --  Endpoint Initialization Register
      EPPRIME          : aliased USBHS_EPPRIME_Register;
      --  Endpoint Flush Register
      EPFLUSH          : aliased USBHS_EPFLUSH_Register;
      --  Endpoint Status Register
      EPSR             : aliased USBHS_EPSR_Register;
      --  Endpoint Complete Register
      EPCOMPLETE       : aliased USBHS_EPCOMPLETE_Register;
      --  Endpoint Control Register 0
      EPCR0            : aliased USBHS_EPCR0_Register;
      --  Endpoint Control Register n
      EPCR             : aliased USBHS_EPCR_Registers;
      --  USB General Control Register
      USBGENCTRL       : aliased USBHS_USBGENCTRL_Register;
      case Discriminent is
         when Mode_1 =>
            --  Device Address Register
            DEVICEADDR : aliased USBHS_DEVICEADDR_Register;
            --  Current Asynchronous List Address Register
            ASYNCLISTADDR : aliased USBHS_ASYNCLISTADDR_Register;
         when Mode_2 =>
            --  Periodic Frame List Base Address Register
            PERIODICLISTBASE : aliased USBHS_PERIODICLISTBASE_Register;
            --  Endpoint List Address Register
            EPLISTADDR : aliased USBHS_EPLISTADDR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USBHS_Peripheral use record
      ID               at 16#0# range 0 .. 31;
      HWGENERAL        at 16#4# range 0 .. 31;
      HWHOST           at 16#8# range 0 .. 31;
      HWDEVICE         at 16#C# range 0 .. 31;
      HWTXBUF          at 16#10# range 0 .. 31;
      HWRXBUF          at 16#14# range 0 .. 31;
      GPTIMERLD0       at 16#80# range 0 .. 31;
      GPTIMERCTL0      at 16#84# range 0 .. 31;
      GPTIMERLD1       at 16#88# range 0 .. 31;
      GPTIMERCTL1      at 16#8C# range 0 .. 31;
      USB_SBUSCFG      at 16#90# range 0 .. 31;
      HCIVERSION       at 16#100# range 0 .. 31;
      HCSPARAMS        at 16#104# range 0 .. 31;
      HCCPARAMS        at 16#108# range 0 .. 31;
      DCIVERSION       at 16#122# range 0 .. 15;
      DCCPARAMS        at 16#124# range 0 .. 31;
      USBCMD           at 16#140# range 0 .. 31;
      USBSTS           at 16#144# range 0 .. 31;
      USBINTR          at 16#148# range 0 .. 31;
      FRINDEX          at 16#14C# range 0 .. 31;
      TTCTRL           at 16#15C# range 0 .. 31;
      BURSTSIZE        at 16#160# range 0 .. 31;
      TXFILLTUNING     at 16#164# range 0 .. 31;
      ENDPTNAK         at 16#178# range 0 .. 31;
      ENDPTNAKEN       at 16#17C# range 0 .. 31;
      CONFIGFLAG       at 16#180# range 0 .. 31;
      PORTSC1          at 16#184# range 0 .. 31;
      OTGSC            at 16#1A4# range 0 .. 31;
      USBMODE          at 16#1A8# range 0 .. 31;
      EPSETUPSR        at 16#1AC# range 0 .. 31;
      EPPRIME          at 16#1B0# range 0 .. 31;
      EPFLUSH          at 16#1B4# range 0 .. 31;
      EPSR             at 16#1B8# range 0 .. 31;
      EPCOMPLETE       at 16#1BC# range 0 .. 31;
      EPCR0            at 16#1C0# range 0 .. 31;
      EPCR             at 16#1C4# range 0 .. 223;
      USBGENCTRL       at 16#200# range 0 .. 31;
      DEVICEADDR       at 16#154# range 0 .. 31;
      ASYNCLISTADDR    at 16#158# range 0 .. 31;
      PERIODICLISTBASE at 16#154# range 0 .. 31;
      EPLISTADDR       at 16#158# range 0 .. 31;
   end record;

   --  USB HS/FS/LS OTG Controller
   USBHS_Periph : aliased USBHS_Peripheral
     with Import, Address => USBHS_Base;

end NRF_SVD.USBHS;
