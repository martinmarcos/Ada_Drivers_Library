--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.USB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USB_ID_ID_Field is HAL.UInt6;
   subtype USB_ID_NID_Field is HAL.UInt6;
   subtype USB_ID_REVISION_Field is HAL.UInt8;

   --  Identification register
   type USB_ID_Register is record
      --  Read-only. Configuration number
      ID             : USB_ID_ID_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Complement version of ID
      NID            : USB_ID_NID_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Revision number of the controller core.
      REVISION       : USB_ID_REVISION_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ID_Register use record
      ID             at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      NID            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      REVISION       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Data width of the transciever connected to the controller core. PHYW bit
   --  reset value is
   type HWGENERAL_PHYW_Field is
     (
      --  8 bit wide data bus Software non-programmable
      Phyw_0,
      --  16 bit wide data bus Software non-programmable
      Phyw_1,
      --  Reset to 8 bit wide data bus Software programmable
      Phyw_2,
      --  Reset to 16 bit wide data bus Software programmable
      Phyw_3)
     with Size => 2;
   for HWGENERAL_PHYW_Field use
     (Phyw_0 => 0,
      Phyw_1 => 1,
      Phyw_2 => 2,
      Phyw_3 => 3);

   --  Transciever type
   type HWGENERAL_PHYM_Field is
     (
      --  UTMI/UMTI+
      Phym_0,
      --  ULPI DDR
      Phym_1,
      --  ULPI
      Phym_2,
      --  Serial Only
      Phym_3,
      --  Software programmable - reset to UTMI/UTMI+
      Phym_4,
      --  Software programmable - reset to ULPI DDR
      Phym_5,
      --  Software programmable - reset to ULPI
      Phym_6,
      --  Software programmable - reset to Serial
      Phym_7)
     with Size => 3;
   for HWGENERAL_PHYM_Field use
     (Phym_0 => 0,
      Phym_1 => 1,
      Phym_2 => 2,
      Phym_3 => 3,
      Phym_4 => 4,
      Phym_5 => 5,
      Phym_6 => 6,
      Phym_7 => 7);

   --  Serial interface mode capability
   type HWGENERAL_SM_Field is
     (
      --  No Serial Engine, always use parallel signalling.
      Sm_0,
      --  Serial Engine present, always use serial signalling for FS/LS.
      Sm_1,
      --  Software programmable - Reset to use parallel signalling for FS/LS
      Sm_2,
      --  Software programmable - Reset to use serial signalling for FS/LS
      Sm_3)
     with Size => 2;
   for HWGENERAL_SM_Field use
     (Sm_0 => 0,
      Sm_1 => 1,
      Sm_2 => 2,
      Sm_3 => 3);

   --  Hardware General
   type USB_HWGENERAL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4;
      --  Read-only. Data width of the transciever connected to the controller
      --  core. PHYW bit reset value is
      PHYW           : HWGENERAL_PHYW_Field;
      --  Read-only. Transciever type
      PHYM           : HWGENERAL_PHYM_Field;
      --  Read-only. Serial interface mode capability
      SM             : HWGENERAL_SM_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HWGENERAL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PHYW           at 0 range 4 .. 5;
      PHYM           at 0 range 6 .. 8;
      SM             at 0 range 9 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Host Capable. Indicating whether host operation mode is supported or
   --  not.
   type HWHOST_HC_Field is
     (
      --  Not supported
      Hc_0,
      --  Supported
      Hc_1)
     with Size => 1;
   for HWHOST_HC_Field use
     (Hc_0 => 0,
      Hc_1 => 1);

   subtype USB_HWHOST_NPORT_Field is HAL.UInt3;

   --  Host Hardware Parameters
   type USB_HWHOST_Register is record
      --  Read-only. Host Capable. Indicating whether host operation mode is
      --  supported or not.
      HC            : HWHOST_HC_Field;
      --  Read-only. The Nmber of downstream ports supported by the host
      --  controller is (NPORT+1)
      NPORT         : USB_HWHOST_NPORT_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HWHOST_Register use record
      HC            at 0 range 0 .. 0;
      NPORT         at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Device Capable. Indicating whether device operation mode is supported or
   --  not.
   type HWDEVICE_DC_Field is
     (
      --  Not supported
      Dc_0,
      --  Supported
      Dc_1)
     with Size => 1;
   for HWDEVICE_DC_Field use
     (Dc_0 => 0,
      Dc_1 => 1);

   subtype USB_HWDEVICE_DEVEP_Field is HAL.UInt5;

   --  Device Hardware Parameters
   type USB_HWDEVICE_Register is record
      --  Read-only. Device Capable. Indicating whether device operation mode
      --  is supported or not.
      DC            : HWDEVICE_DC_Field;
      --  Read-only. Device Endpoint Number
      DEVEP         : USB_HWDEVICE_DEVEP_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HWDEVICE_Register use record
      DC            at 0 range 0 .. 0;
      DEVEP         at 0 range 1 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype USB_HWTXBUF_TXBURST_Field is HAL.UInt8;
   subtype USB_HWTXBUF_TXCHANADD_Field is HAL.UInt8;

   --  TX Buffer Hardware Parameters
   type USB_HWTXBUF_Register is record
      --  Read-only. Default burst size for memory to TX buffer transfer
      TXBURST        : USB_HWTXBUF_TXBURST_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. TX FIFO Buffer size is: (2^TXCHANADD) * 4 Bytes
      TXCHANADD      : USB_HWTXBUF_TXCHANADD_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HWTXBUF_Register use record
      TXBURST        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TXCHANADD      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_HWRXBUF_RXBURST_Field is HAL.UInt8;
   subtype USB_HWRXBUF_RXADD_Field is HAL.UInt8;

   --  RX Buffer Hardware Parameters
   type USB_HWRXBUF_Register is record
      --  Read-only. Default burst size for memory to RX buffer transfer
      RXBURST        : USB_HWRXBUF_RXBURST_Field;
      --  Read-only. Buffer total size for all receive endpoints is (2^RXADD)
      RXADD          : USB_HWRXBUF_RXADD_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HWRXBUF_Register use record
      RXBURST        at 0 range 0 .. 7;
      RXADD          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_GPTIMER0LD_GPTLD_Field is HAL.UInt24;

   --  General Purpose Timer #0 Load
   type USB_GPTIMER0LD_Register is record
      --  General Purpose Timer Load Value These bit fields are loaded to
      --  GPTCNT bits when GPTRST bit is set '1b'
      GPTLD          : USB_GPTIMER0LD_GPTLD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_GPTIMER0LD_Register use record
      GPTLD          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_GPTIMER0CTRL_GPTCNT_Field is HAL.UInt24;

   --  General Purpose Timer Mode In one shot mode, the timer will count down
   --  to zero, generate an interrupt, and stop until the counter is reset by
   --  software; In repeat mode, the timer will count down to zero, generate an
   --  interrupt and automatically reload the counter value from GPTLD bits to
   --  start again
   type GPTIMER0CTRL_GPTMODE_Field is
     (
      --  One Shot Mode
      Gptmode_0,
      --  Repeat Mode
      Gptmode_1)
     with Size => 1;
   for GPTIMER0CTRL_GPTMODE_Field use
     (Gptmode_0 => 0,
      Gptmode_1 => 1);

   --  General Purpose Timer Reset
   type GPTIMER0CTRL_GPTRST_Field is
     (
      --  No action
      Gptrst_0,
      --  Load counter value from GPTLD bits in n_GPTIMER0LD
      Gptrst_1)
     with Size => 1;
   for GPTIMER0CTRL_GPTRST_Field use
     (Gptrst_0 => 0,
      Gptrst_1 => 1);

   --  General Purpose Timer Run GPTCNT bits are not effected when setting or
   --  clearing this bit.
   type GPTIMER0CTRL_GPTRUN_Field is
     (
      --  Stop counting
      Gptrun_0,
      --  Run
      Gptrun_1)
     with Size => 1;
   for GPTIMER0CTRL_GPTRUN_Field use
     (Gptrun_0 => 0,
      Gptrun_1 => 1);

   --  General Purpose Timer #0 Controller
   type USB_GPTIMER0CTRL_Register is record
      --  General Purpose Timer Counter. This field is the count value of the
      --  countdown timer.
      GPTCNT         : USB_GPTIMER0CTRL_GPTCNT_Field := 16#0#;
      --  General Purpose Timer Mode In one shot mode, the timer will count
      --  down to zero, generate an interrupt, and stop until the counter is
      --  reset by software; In repeat mode, the timer will count down to zero,
      --  generate an interrupt and automatically reload the counter value from
      --  GPTLD bits to start again
      GPTMODE        : GPTIMER0CTRL_GPTMODE_Field := NRF_SVD.USB.Gptmode_0;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  General Purpose Timer Reset
      GPTRST         : GPTIMER0CTRL_GPTRST_Field := NRF_SVD.USB.Gptrst_0;
      --  General Purpose Timer Run GPTCNT bits are not effected when setting
      --  or clearing this bit.
      GPTRUN         : GPTIMER0CTRL_GPTRUN_Field := NRF_SVD.USB.Gptrun_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_GPTIMER0CTRL_Register use record
      GPTCNT         at 0 range 0 .. 23;
      GPTMODE        at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      GPTRST         at 0 range 30 .. 30;
      GPTRUN         at 0 range 31 .. 31;
   end record;

   subtype USB_GPTIMER1LD_GPTLD_Field is HAL.UInt24;

   --  General Purpose Timer #1 Load
   type USB_GPTIMER1LD_Register is record
      --  General Purpose Timer Load Value These bit fields are loaded to
      --  GPTCNT bits when GPTRST bit is set '1b'
      GPTLD          : USB_GPTIMER1LD_GPTLD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_GPTIMER1LD_Register use record
      GPTLD          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_GPTIMER1CTRL_GPTCNT_Field is HAL.UInt24;

   --  General Purpose Timer Mode In one shot mode, the timer will count down
   --  to zero, generate an interrupt, and stop until the counter is reset by
   --  software
   type GPTIMER1CTRL_GPTMODE_Field is
     (
      --  One Shot Mode
      Gptmode_0,
      --  Repeat Mode
      Gptmode_1)
     with Size => 1;
   for GPTIMER1CTRL_GPTMODE_Field use
     (Gptmode_0 => 0,
      Gptmode_1 => 1);

   --  General Purpose Timer Reset
   type GPTIMER1CTRL_GPTRST_Field is
     (
      --  No action
      Gptrst_0,
      --  Load counter value from GPTLD bits in USB_n_GPTIMER0LD
      Gptrst_1)
     with Size => 1;
   for GPTIMER1CTRL_GPTRST_Field use
     (Gptrst_0 => 0,
      Gptrst_1 => 1);

   --  General Purpose Timer Run GPTCNT bits are not effected when setting or
   --  clearing this bit.
   type GPTIMER1CTRL_GPTRUN_Field is
     (
      --  Stop counting
      Gptrun_0,
      --  Run
      Gptrun_1)
     with Size => 1;
   for GPTIMER1CTRL_GPTRUN_Field use
     (Gptrun_0 => 0,
      Gptrun_1 => 1);

   --  General Purpose Timer #1 Controller
   type USB_GPTIMER1CTRL_Register is record
      --  General Purpose Timer Counter. This field is the count value of the
      --  countdown timer.
      GPTCNT         : USB_GPTIMER1CTRL_GPTCNT_Field := 16#0#;
      --  General Purpose Timer Mode In one shot mode, the timer will count
      --  down to zero, generate an interrupt, and stop until the counter is
      --  reset by software
      GPTMODE        : GPTIMER1CTRL_GPTMODE_Field := NRF_SVD.USB.Gptmode_0;
      --  unspecified
      Reserved_25_29 : HAL.UInt5 := 16#0#;
      --  General Purpose Timer Reset
      GPTRST         : GPTIMER1CTRL_GPTRST_Field := NRF_SVD.USB.Gptrst_0;
      --  General Purpose Timer Run GPTCNT bits are not effected when setting
      --  or clearing this bit.
      GPTRUN         : GPTIMER1CTRL_GPTRUN_Field := NRF_SVD.USB.Gptrun_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_GPTIMER1CTRL_Register use record
      GPTCNT         at 0 range 0 .. 23;
      GPTMODE        at 0 range 24 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      GPTRST         at 0 range 30 .. 30;
      GPTRUN         at 0 range 31 .. 31;
   end record;

   --  AHB master interface Burst configuration These bits control AHB master
   --  transfer type sequence (or priority)
   type SBUSCFG_AHBBRST_Field is
     (
      --  Incremental burst of unspecified length only
      Ahbbrst_0,
      --  INCR4 burst, then single transfer
      Ahbbrst_1,
      --  INCR8 burst, INCR4 burst, then single transfer
      Ahbbrst_2,
      --  INCR16 burst, INCR8 burst, INCR4 burst, then single transfer
      Ahbbrst_3,
      --  INCR4 burst, then incremental burst of unspecified length
      Ahbbrst_5,
      --  INCR8 burst, INCR4 burst, then incremental burst of unspecified
      --  length
      Ahbbrst_6,
      --  INCR16 burst, INCR8 burst, INCR4 burst, then incremental burst of
      --  unspecified length
      Ahbbrst_7)
     with Size => 3;
   for SBUSCFG_AHBBRST_Field use
     (Ahbbrst_0 => 0,
      Ahbbrst_1 => 1,
      Ahbbrst_2 => 2,
      Ahbbrst_3 => 3,
      Ahbbrst_5 => 5,
      Ahbbrst_6 => 6,
      Ahbbrst_7 => 7);

   --  System Bus Config
   type USB_SBUSCFG_Register is record
      --  AHB master interface Burst configuration These bits control AHB
      --  master transfer type sequence (or priority)
      AHBBRST       : SBUSCFG_AHBBRST_Field := NRF_SVD.USB.Ahbbrst_2;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_SBUSCFG_Register use record
      AHBBRST       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype USB_HCSPARAMS_N_PORTS_Field is HAL.UInt4;
   subtype USB_HCSPARAMS_N_PCC_Field is HAL.UInt4;

   --  Number of Companion Controller (N_CC)
   type HCSPARAMS_N_CC_Field is
     (
      --  There is no internal Companion Controller and port-ownership hand-off
      --  is not supported.
      N_Cc_0,
      --  There are internal companion controller(s) and port-ownership
      --  hand-offs is supported.
      N_Cc_1)
     with Size => 4;
   for HCSPARAMS_N_CC_Field use
     (N_Cc_0 => 0,
      N_Cc_1 => 1);

   subtype USB_HCSPARAMS_N_PTT_Field is HAL.UInt4;
   subtype USB_HCSPARAMS_N_TT_Field is HAL.UInt4;

   --  Host Controller Structural Parameters
   type USB_HCSPARAMS_Register is record
      --  Read-only. Number of downstream ports
      N_PORTS        : USB_HCSPARAMS_N_PORTS_Field;
      --  Read-only. Port Power Control This field indicates whether the host
      --  controller implementation includes port power control
      PPC            : Boolean;
      --  unspecified
      Reserved_5_7   : HAL.UInt3;
      --  Read-only. Number of Ports per Companion Controller This field
      --  indicates the number of ports supported per internal Companion
      --  Controller
      N_PCC          : USB_HCSPARAMS_N_PCC_Field;
      --  Read-only. Number of Companion Controller (N_CC)
      N_CC           : HCSPARAMS_N_CC_Field;
      --  Read-only. Port Indicators (P INDICATOR) This bit indicates whether
      --  the ports support port indicator control
      PI             : Boolean;
      --  unspecified
      Reserved_17_19 : HAL.UInt3;
      --  Read-only. Number of Ports per Transaction Translator (N_PTT)
      N_PTT          : USB_HCSPARAMS_N_PTT_Field;
      --  Read-only. Number of Transaction Translators (N_TT)
      N_TT           : USB_HCSPARAMS_N_TT_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HCSPARAMS_Register use record
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

   subtype USB_HCCPARAMS_IST_Field is HAL.UInt4;
   subtype USB_HCCPARAMS_EECP_Field is HAL.UInt8;

   --  Host Controller Capability Parameters
   type USB_HCCPARAMS_Register is record
      --  Read-only. 64-bit Addressing Capability This bit is set '0b' in all
      --  controller core, no 64-bit addressing capability is supported
      ADC            : Boolean;
      --  Read-only. Programmable Frame List Flag If this bit is set to zero,
      --  then the system software must use a frame list length of 1024
      --  elements with this host controller
      PFL            : Boolean;
      --  Read-only. Asynchronous Schedule Park Capability If this bit is set
      --  to a one, then the host controller supports the park feature for
      --  high-speed queue heads in the Asynchronous Schedule
      ASP            : Boolean;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Isochronous Scheduling Threshold
      IST            : USB_HCCPARAMS_IST_Field;
      --  Read-only. EHCI Extended Capabilities Pointer
      EECP           : USB_HCCPARAMS_EECP_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_HCCPARAMS_Register use record
      ADC            at 0 range 0 .. 0;
      PFL            at 0 range 1 .. 1;
      ASP            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      IST            at 0 range 4 .. 7;
      EECP           at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_DCCPARAMS_DEN_Field is HAL.UInt5;

   --  Device Controller Capability Parameters
   type USB_DCCPARAMS_Register is record
      --  Read-only. Device Endpoint Number This field indicates the number of
      --  endpoints built into the device controller
      DEN           : USB_DCCPARAMS_DEN_Field;
      --  unspecified
      Reserved_5_6  : HAL.UInt2;
      --  Read-only. Device Capable When this bit is 1, this controller is
      --  capable of operating as a USB 2.0 device.
      DC            : Boolean;
      --  Read-only. Host Capable When this bit is 1, this controller is
      --  capable of operating as an EHCI compatible USB 2
      HC            : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_DCCPARAMS_Register use record
      DEN           at 0 range 0 .. 4;
      Reserved_5_6  at 0 range 5 .. 6;
      DC            at 0 range 7 .. 7;
      HC            at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype USB_USBCMD_FS_1_Field is HAL.UInt2;

   --  Periodic Schedule Enable- Read/Write
   type USBCMD_PSE_Field is
     (
      --  Do not process the Periodic Schedule
      Pse_0,
      --  Use the PERIODICLISTBASE register to access the Periodic Schedule.
      Pse_1)
     with Size => 1;
   for USBCMD_PSE_Field use
     (Pse_0 => 0,
      Pse_1 => 1);

   --  Asynchronous Schedule Enable - Read/Write
   type USBCMD_ASE_Field is
     (
      --  Do not process the Asynchronous Schedule.
      Ase_0,
      --  Use the ASYNCLISTADDR register to access the Asynchronous Schedule.
      Ase_1)
     with Size => 1;
   for USBCMD_ASE_Field use
     (Ase_0 => 0,
      Ase_1 => 1);

   subtype USB_USBCMD_ASP_Field is HAL.UInt2;

   --  See also bits 3-2 Frame List Size - (Read/Write or Read Only)
   type USBCMD_FS_2_Field is
     (
      --  1024 elements (4096 bytes) Default value
      Fs_2_0,
      --  512 elements (2048 bytes)
      Fs_2_1)
     with Size => 1;
   for USBCMD_FS_2_Field use
     (Fs_2_0 => 0,
      Fs_2_1 => 1);

   --  Interrupt Threshold Control -Read/Write
   type USBCMD_ITC_Field is
     (
      --  Immediate (no threshold)
      Itc_0,
      --  1 micro-frame
      Itc_1,
      --  2 micro-frames
      Itc_2,
      --  4 micro-frames
      Itc_4,
      --  8 micro-frames
      Itc_8,
      --  16 micro-frames
      Itc_16,
      --  32 micro-frames
      Itc_32,
      --  64 micro-frames
      Itc_64)
     with Size => 8;
   for USBCMD_ITC_Field use
     (Itc_0 => 0,
      Itc_1 => 1,
      Itc_2 => 2,
      Itc_4 => 4,
      Itc_8 => 8,
      Itc_16 => 16,
      Itc_32 => 32,
      Itc_64 => 64);

   --  USB Command Register
   type USB_USBCMD_Register is record
      --  Run/Stop (RS) - Read/Write
      RS             : Boolean := False;
      --  Controller Reset (RESET) - Read/Write
      RST            : Boolean := False;
      --  See description at bit 15
      FS_1           : USB_USBCMD_FS_1_Field := 16#0#;
      --  Periodic Schedule Enable- Read/Write
      PSE            : USBCMD_PSE_Field := NRF_SVD.USB.Pse_0;
      --  Asynchronous Schedule Enable - Read/Write
      ASE            : USBCMD_ASE_Field := NRF_SVD.USB.Ase_0;
      --  Interrupt on Async Advance Doorbell - Read/Write
      IAA            : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Asynchronous Schedule Park Mode Count - Read/Write
      ASP            : USB_USBCMD_ASP_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Asynchronous Schedule Park Mode Enable - Read/Write
      ASPE           : Boolean := False;
      --  Add dTD TripWire - Read/Write
      ATDTW          : Boolean := False;
      --  Setup TripWire - Read/Write
      SUTW           : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  See also bits 3-2 Frame List Size - (Read/Write or Read Only)
      FS_2           : USBCMD_FS_2_Field := NRF_SVD.USB.Fs_2_0;
      --  Interrupt Threshold Control -Read/Write
      ITC            : USBCMD_ITC_Field := NRF_SVD.USB.Itc_8;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_USBCMD_Register use record
      RS             at 0 range 0 .. 0;
      RST            at 0 range 1 .. 1;
      FS_1           at 0 range 2 .. 3;
      PSE            at 0 range 4 .. 4;
      ASE            at 0 range 5 .. 5;
      IAA            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ASP            at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      ASPE           at 0 range 11 .. 11;
      ATDTW          at 0 range 12 .. 12;
      SUTW           at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      FS_2           at 0 range 15 .. 15;
      ITC            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  USB_USBSTS_TI array
   type USB_USBSTS_TI_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USB_USBSTS_TI
   type USB_USBSTS_TI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TI as a value
            Val : HAL.UInt2;
         when True =>
            --  TI as an array
            Arr : USB_USBSTS_TI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USB_USBSTS_TI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  USB Status Register
   type USB_USBSTS_Register is record
      --  USB Interrupt (USBINT) - R/WC
      UI             : Boolean := False;
      --  USB Error Interrupt (USBERRINT) - R/WC
      UEI            : Boolean := False;
      --  Port Change Detect - R/WC
      PCI            : Boolean := False;
      --  Frame List Rollover - R/WC
      FRI            : Boolean := False;
      --  System Error- R/WC
      SEI            : Boolean := False;
      --  Interrupt on Async Advance - R/WC
      AAI            : Boolean := False;
      --  USB Reset Received - R/WC
      URI            : Boolean := False;
      --  SOF Received - R/WC
      SRI            : Boolean := False;
      --  DCSuspend - R/WC
      SLI            : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  ULPI Interrupt - R/WC
      ULPII          : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  HCHaIted - Read Only
      HCH            : Boolean := False;
      --  Reclamation - Read Only
      RCL            : Boolean := False;
      --  Periodic Schedule Status - Read Only
      PS             : Boolean := False;
      --  Asynchronous Schedule Status - Read Only
      AS             : Boolean := False;
      --  Read-only. NAK Interrupt Bit--RO
      NAKI           : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  General Purpose Timer Interrupt 0(GPTINT0)--R/WC
      TI             : USB_USBSTS_TI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_USBSTS_Register use record
      UI             at 0 range 0 .. 0;
      UEI            at 0 range 1 .. 1;
      PCI            at 0 range 2 .. 2;
      FRI            at 0 range 3 .. 3;
      SEI            at 0 range 4 .. 4;
      AAI            at 0 range 5 .. 5;
      URI            at 0 range 6 .. 6;
      SRI            at 0 range 7 .. 7;
      SLI            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ULPII          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      HCH            at 0 range 12 .. 12;
      RCL            at 0 range 13 .. 13;
      PS             at 0 range 14 .. 14;
      AS             at 0 range 15 .. 15;
      NAKI           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      TI             at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  USB_USBINTR_TIE array
   type USB_USBINTR_TIE_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for USB_USBINTR_TIE
   type USB_USBINTR_TIE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIE as a value
            Val : HAL.UInt2;
         when True =>
            --  TIE as an array
            Arr : USB_USBINTR_TIE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for USB_USBINTR_TIE_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Register
   type USB_USBINTR_Register is record
      --  USB Interrupt Enable When this bit is one and the UI bit in n_USBSTS
      --  register is a one the controller will issue an interrupt
      UE             : Boolean := False;
      --  USB Error Interrupt Enable When this bit is one and the UEI bit in
      --  n_USBSTS register is a one the controller will issue an interrupt
      UEE            : Boolean := False;
      --  Port Change Detect Interrupt Enable When this bit is one and the PCI
      --  bit in n_USBSTS register is a one the controller will issue an
      --  interrupt
      PCE            : Boolean := False;
      --  Frame List Rollover Interrupt Enable When this bit is one and the FRI
      --  bit in n_USBSTS register is a one the controller will issue an
      --  interrupt
      FRE            : Boolean := False;
      --  System Error Interrupt Enable When this bit is one and the SEI bit in
      --  n_USBSTS register is a one the controller will issue an interrupt
      SEE            : Boolean := False;
      --  Async Advance Interrupt Enable When this bit is one and the AAI bit
      --  in n_USBSTS register is a one the controller will issue an interrupt
      AAE            : Boolean := False;
      --  USB Reset Interrupt Enable When this bit is one and the URI bit in
      --  n_USBSTS register is a one the controller will issue an interrupt
      URE            : Boolean := False;
      --  SOF Received Interrupt Enable When this bit is one and the SRI bit in
      --  n_USBSTS register is a one the controller will issue an interrupt
      SRE            : Boolean := False;
      --  Sleep Interrupt Enable When this bit is one and the SLI bit in
      --  n_n_USBSTS register is a one the controller will issue an interrupt
      SLE            : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  ULPI Interrupt Enable When this bit is one and the UPLII bit in
      --  n_USBSTS register is a one the controller will issue an interrupt
      ULPIE          : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  NAK Interrupt Enable When this bit is one and the NAKI bit in
      --  n_USBSTS register is a one the controller will issue an interrupt
      NAKE           : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  USB Host Asynchronous Interrupt Enable When this bit is one, and the
      --  UAI bit in the n_USBSTS register is one, host controller will issue
      --  an interrupt at the next interrupt threshold
      UAIE           : Boolean := False;
      --  USB Host Periodic Interrupt Enable When this bit is one, and the UPI
      --  bit in the n_USBSTS register is one, host controller will issue an
      --  interrupt at the next interrupt threshold
      UPIE           : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  General Purpose Timer #0 Interrupt Enable When this bit is one and
      --  the TI0 bit in n_USBSTS register is a one the controller will issue
      --  an interrupt
      TIE            : USB_USBINTR_TIE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_USBINTR_Register use record
      UE             at 0 range 0 .. 0;
      UEE            at 0 range 1 .. 1;
      PCE            at 0 range 2 .. 2;
      FRE            at 0 range 3 .. 3;
      SEE            at 0 range 4 .. 4;
      AAE            at 0 range 5 .. 5;
      URE            at 0 range 6 .. 6;
      SRE            at 0 range 7 .. 7;
      SLE            at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ULPIE          at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      NAKE           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      UAIE           at 0 range 18 .. 18;
      UPIE           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TIE            at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Frame Index
   type FRINDEX_FRINDEX_Field is
     (
      --  (1024) 12
      Frindex_0,
      --  (512) 11
      Frindex_1,
      --  (256) 10
      Frindex_2,
      --  (128) 9
      Frindex_3,
      --  (64) 8
      Frindex_4,
      --  (32) 7
      Frindex_5,
      --  (16) 6
      Frindex_6,
      --  (8) 5
      Frindex_7)
     with Size => 14;
   for FRINDEX_FRINDEX_Field use
     (Frindex_0 => 0,
      Frindex_1 => 1,
      Frindex_2 => 2,
      Frindex_3 => 3,
      Frindex_4 => 4,
      Frindex_5 => 5,
      Frindex_6 => 6,
      Frindex_7 => 7);

   --  USB Frame Index
   type USB_FRINDEX_Register is record
      --  Frame Index
      FRINDEX        : FRINDEX_FRINDEX_Field := NRF_SVD.USB.Frindex_0;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_FRINDEX_Register use record
      FRINDEX        at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype USB_DEVICEADDR_USBADR_Field is HAL.UInt7;

   --  Device Address
   type USB_DEVICEADDR_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#0#;
      --  Device Address Advance
      USBADRA       : Boolean := False;
      --  Device Address. These bits correspond to the USB device address
      USBADR        : USB_DEVICEADDR_USBADR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_DEVICEADDR_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      USBADRA       at 0 range 24 .. 24;
      USBADR        at 0 range 25 .. 31;
   end record;

   subtype USB_PERIODICLISTBASE_BASEADR_Field is HAL.UInt20;

   --  Frame List Base Address
   type USB_PERIODICLISTBASE_Register is record
      --  unspecified
      Reserved_0_11 : HAL.UInt12 := 16#0#;
      --  Base Address (Low)
      BASEADR       : USB_PERIODICLISTBASE_BASEADR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_PERIODICLISTBASE_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      BASEADR       at 0 range 12 .. 31;
   end record;

   subtype USB_ASYNCLISTADDR_ASYBASE_Field is HAL.UInt27;

   --  Next Asynch. Address
   type USB_ASYNCLISTADDR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Link Pointer Low (LPL)
      ASYBASE      : USB_ASYNCLISTADDR_ASYBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ASYNCLISTADDR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      ASYBASE      at 0 range 5 .. 31;
   end record;

   subtype USB_ENDPTLISTADDR_EPBASE_Field is HAL.UInt21;

   --  Endpoint List Address
   type USB_ENDPTLISTADDR_Register is record
      --  unspecified
      Reserved_0_10 : HAL.UInt11 := 16#0#;
      --  Endpoint List Pointer(Low)
      EPBASE        : USB_ENDPTLISTADDR_EPBASE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTLISTADDR_Register use record
      Reserved_0_10 at 0 range 0 .. 10;
      EPBASE        at 0 range 11 .. 31;
   end record;

   subtype USB_BURSTSIZE_RXPBURST_Field is HAL.UInt8;
   subtype USB_BURSTSIZE_TXPBURST_Field is HAL.UInt9;

   --  Programmable Burst Size
   type USB_BURSTSIZE_Register is record
      --  Programmable RX Burst Size
      RXPBURST       : USB_BURSTSIZE_RXPBURST_Field := 16#8#;
      --  Programmable TX Burst Size
      TXPBURST       : USB_BURSTSIZE_TXPBURST_Field := 16#8#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_BURSTSIZE_Register use record
      RXPBURST       at 0 range 0 .. 7;
      TXPBURST       at 0 range 8 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype USB_TXFILLTUNING_TXSCHOH_Field is HAL.UInt8;
   subtype USB_TXFILLTUNING_TXSCHHEALTH_Field is HAL.UInt5;
   subtype USB_TXFILLTUNING_TXFIFOTHRES_Field is HAL.UInt6;

   --  TX FIFO Fill Tuning
   type USB_TXFILLTUNING_Register is record
      --  Scheduler Overhead
      TXSCHOH        : USB_TXFILLTUNING_TXSCHOH_Field := 16#0#;
      --  Scheduler Health Counter
      TXSCHHEALTH    : USB_TXFILLTUNING_TXSCHHEALTH_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  FIFO Burst Threshold
      TXFIFOTHRES    : USB_TXFILLTUNING_TXFIFOTHRES_Field := 16#A#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_TXFILLTUNING_Register use record
      TXSCHOH        at 0 range 0 .. 7;
      TXSCHHEALTH    at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TXFIFOTHRES    at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype USB_ENDPTNAK_EPRN_Field is HAL.UInt8;
   subtype USB_ENDPTNAK_EPTN_Field is HAL.UInt8;

   --  Endpoint NAK
   type USB_ENDPTNAK_Register is record
      --  RX Endpoint NAK - R/WC
      EPRN           : USB_ENDPTNAK_EPRN_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TX Endpoint NAK - R/WC
      EPTN           : USB_ENDPTNAK_EPTN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTNAK_Register use record
      EPRN           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      EPTN           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_ENDPTNAKEN_EPRNE_Field is HAL.UInt8;
   subtype USB_ENDPTNAKEN_EPTNE_Field is HAL.UInt8;

   --  Endpoint NAK Enable
   type USB_ENDPTNAKEN_Register is record
      --  RX Endpoint NAK Enable - R/W
      EPRNE          : USB_ENDPTNAKEN_EPRNE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TX Endpoint NAK Enable - R/W
      EPTNE          : USB_ENDPTNAKEN_EPTNE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTNAKEN_Register use record
      EPRNE          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      EPTNE          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Configure Flag Host software sets this bit as the last action in its
   --  process of configuring the Host Controller
   type CONFIGFLAG_CF_Field is
     (
      --  Port routing control logic default-routes each port to an
      --  implementation dependent classic host controller.
      Cf_0,
      --  Port routing control logic default-routes all ports to this host
      --  controller.
      Cf_1)
     with Size => 1;
   for CONFIGFLAG_CF_Field use
     (Cf_0 => 0,
      Cf_1 => 1);

   --  Configure Flag Register
   type USB_CONFIGFLAG_Register is record
      --  Read-only. Configure Flag Host software sets this bit as the last
      --  action in its process of configuring the Host Controller
      CF            : CONFIGFLAG_CF_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_CONFIGFLAG_Register use record
      CF            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Over-current Active-Read Only
   type PORTSC1_OCA_Field is
     (
      --  This port does not have an over-current condition.
      Oca_0,
      --  This port currently has an over-current condition
      Oca_1)
     with Size => 1;
   for PORTSC1_OCA_Field use
     (Oca_0 => 0,
      Oca_1 => 1);

   --  Line Status-Read Only
   type PORTSC1_LS_Field is
     (
      --  SE0
      Ls_0,
      --  K-state
      Ls_1,
      --  J-state
      Ls_2,
      --  Undefined
      Ls_3)
     with Size => 2;
   for PORTSC1_LS_Field use
     (Ls_0 => 0,
      Ls_1 => 1,
      Ls_2 => 2,
      Ls_3 => 3);

   --  Port Indicator Control - Read/Write
   type PORTSC1_PIC_Field is
     (
      --  Port indicators are off
      Pic_0,
      --  Amber
      Pic_1,
      --  Green
      Pic_2,
      --  Undefined
      Pic_3)
     with Size => 2;
   for PORTSC1_PIC_Field use
     (Pic_0 => 0,
      Pic_1 => 1,
      Pic_2 => 2,
      Pic_3 => 3);

   --  Port Test Control - Read/Write
   type PORTSC1_PTC_Field is
     (
      --  TEST_MODE_DISABLE
      Ptc_0,
      --  J_STATE
      Ptc_1,
      --  K_STATE
      Ptc_2,
      --  SE0 (host) / NAK (device)
      Ptc_3,
      --  Packet
      Ptc_4,
      --  FORCE_ENABLE_HS
      Ptc_5,
      --  FORCE_ENABLE_FS
      Ptc_6,
      --  FORCE_ENABLE_LS
      Ptc_7)
     with Size => 4;
   for PORTSC1_PTC_Field use
     (Ptc_0 => 0,
      Ptc_1 => 1,
      Ptc_2 => 2,
      Ptc_3 => 3,
      Ptc_4 => 4,
      Ptc_5 => 5,
      Ptc_6 => 6,
      Ptc_7 => 7);

   --  PHY Low Power Suspend - Clock Disable (PLPSCD) - Read/Write
   type PORTSC1_PHCD_Field is
     (
      --  Enable PHY clock
      Phcd_0,
      --  Disable PHY clock
      Phcd_1)
     with Size => 1;
   for PORTSC1_PHCD_Field use
     (Phcd_0 => 0,
      Phcd_1 => 1);

   --  Port Force Full Speed Connect - Read/Write
   type PORTSC1_PFSC_Field is
     (
      --  Normal operation
      Pfsc_0,
      --  Forced to full speed
      Pfsc_1)
     with Size => 1;
   for PORTSC1_PFSC_Field use
     (Pfsc_0 => 0,
      Pfsc_1 => 1);

   --  Port Speed - Read Only. This register field indicates the speed at which
   --  the port is operating.
   type PORTSC1_PSPD_Field is
     (
      --  Full Speed
      Pspd_0,
      --  Low Speed
      Pspd_1,
      --  High Speed
      Pspd_2,
      --  Undefined
      Pspd_3)
     with Size => 2;
   for PORTSC1_PSPD_Field use
     (Pspd_0 => 0,
      Pspd_1 => 1,
      Pspd_2 => 2,
      Pspd_3 => 3);

   --  Parallel Transceiver Width This bit has no effect if serial interface
   --  engine is used
   type PORTSC1_PTW_Field is
     (
      --  Select the 8-bit UTMI interface [60MHz]
      Ptw_0,
      --  Select the 16-bit UTMI interface [30MHz]
      Ptw_1)
     with Size => 1;
   for PORTSC1_PTW_Field use
     (Ptw_0 => 0,
      Ptw_1 => 1);

   subtype USB_PORTSC1_PTS_1_Field is HAL.UInt2;

   --  Port Status & Control
   type USB_PORTSC1_Register is record
      --  Read-only. Current Connect Status-Read Only
      CCS   : Boolean := False;
      --  Connect Status Change-R/WC
      CSC   : Boolean := False;
      --  Port Enabled/Disabled-Read/Write
      PE    : Boolean := False;
      --  Port Enable/Disable Change-R/WC
      PEC   : Boolean := False;
      --  Read-only. Over-current Active-Read Only
      OCA   : PORTSC1_OCA_Field := NRF_SVD.USB.Oca_0;
      --  Over-current Change-R/WC
      OCC   : Boolean := False;
      --  Force Port Resume -Read/Write
      FPR   : Boolean := False;
      --  Suspend - Read/Write or Read Only
      SUSP  : Boolean := False;
      --  Port Reset - Read/Write or Read Only
      PR    : Boolean := False;
      --  Read-only. High-Speed Port - Read Only
      HSP   : Boolean := False;
      --  Line Status-Read Only
      LS    : PORTSC1_LS_Field := NRF_SVD.USB.Ls_0;
      --  Port Power (PP)-Read/Write or Read Only
      PP    : Boolean := False;
      --  Port Owner-Read/Write
      PO    : Boolean := False;
      --  Port Indicator Control - Read/Write
      PIC   : PORTSC1_PIC_Field := NRF_SVD.USB.Pic_0;
      --  Port Test Control - Read/Write
      PTC   : PORTSC1_PTC_Field := NRF_SVD.USB.Ptc_0;
      --  Wake on Connect Enable (WKCNNT_E) - Read/Write
      WKCN  : Boolean := False;
      --  Wake on Disconnect Enable (WKDSCNNT_E) - Read/Write
      WKDC  : Boolean := False;
      --  Wake on Over-current Enable (WKOC_E) - Read/Write
      WKOC  : Boolean := False;
      --  PHY Low Power Suspend - Clock Disable (PLPSCD) - Read/Write
      PHCD  : PORTSC1_PHCD_Field := NRF_SVD.USB.Phcd_0;
      --  Port Force Full Speed Connect - Read/Write
      PFSC  : PORTSC1_PFSC_Field := NRF_SVD.USB.Pfsc_0;
      --  See description at bits 31-30
      PTS_2 : Boolean := False;
      --  Port Speed - Read Only. This register field indicates the speed at
      --  which the port is operating.
      PSPD  : PORTSC1_PSPD_Field := NRF_SVD.USB.Pspd_0;
      --  Parallel Transceiver Width This bit has no effect if serial interface
      --  engine is used
      PTW   : PORTSC1_PTW_Field := NRF_SVD.USB.Ptw_1;
      --  Serial Transceiver Select 1 Serial Interface Engine is selected 0
      --  Parallel Interface signals is selected Serial Interface Engine can be
      --  used in combination with UTMI+/ULPI physical interface to provide
      --  FS/LS signaling instead of the parallel interface signals
      STS   : Boolean := False;
      --  All USB port interface modes are listed in this field description,
      --  but not all are supported
      PTS_1 : USB_PORTSC1_PTS_1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_PORTSC1_Register use record
      CCS   at 0 range 0 .. 0;
      CSC   at 0 range 1 .. 1;
      PE    at 0 range 2 .. 2;
      PEC   at 0 range 3 .. 3;
      OCA   at 0 range 4 .. 4;
      OCC   at 0 range 5 .. 5;
      FPR   at 0 range 6 .. 6;
      SUSP  at 0 range 7 .. 7;
      PR    at 0 range 8 .. 8;
      HSP   at 0 range 9 .. 9;
      LS    at 0 range 10 .. 11;
      PP    at 0 range 12 .. 12;
      PO    at 0 range 13 .. 13;
      PIC   at 0 range 14 .. 15;
      PTC   at 0 range 16 .. 19;
      WKCN  at 0 range 20 .. 20;
      WKDC  at 0 range 21 .. 21;
      WKOC  at 0 range 22 .. 22;
      PHCD  at 0 range 23 .. 23;
      PFSC  at 0 range 24 .. 24;
      PTS_2 at 0 range 25 .. 25;
      PSPD  at 0 range 26 .. 27;
      PTW   at 0 range 28 .. 28;
      STS   at 0 range 29 .. 29;
      PTS_1 at 0 range 30 .. 31;
   end record;

   --  On-The-Go Status & control
   type USB_OTGSC_Register is record
      --  VBUS_Discharge - Read/Write. Setting this bit causes VBus to
      --  discharge through a resistor.
      VD             : Boolean := False;
      --  VBUS Charge - Read/Write
      VC             : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  OTG Termination - Read/Write
      OT             : Boolean := False;
      --  Data Pulsing - Read/Write
      DP             : Boolean := False;
      --  ID Pullup - Read/Write This bit provide control over the ID pull-up
      --  resistor; 0 = off, 1 = on [default]
      IDPU           : Boolean := True;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. USB ID - Read Only. 0 = A device, 1 = B device
      ID             : Boolean := True;
      --  Read-only. A VBus Valid - Read Only. Indicates VBus is above the A
      --  VBus valid threshold.
      AVV            : Boolean := False;
      --  Read-only. A Session Valid - Read Only. Indicates VBus is above the A
      --  session valid threshold.
      ASV            : Boolean := False;
      --  Read-only. B Session Valid - Read Only. Indicates VBus is above the B
      --  session valid threshold.
      BSV            : Boolean := False;
      --  Read-only. B Session End - Read Only. Indicates VBus is below the B
      --  session end threshold.
      BSE            : Boolean := True;
      --  Read-only. 1 millisecond timer toggle - Read Only. This bit toggles
      --  once per millisecond.
      TOG_1MS        : Boolean := False;
      --  Read-only. Data Bus Pulsing Status - Read Only
      DPS            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  USB ID Interrupt Status - Read/Write
      IDIS           : Boolean := False;
      --  A VBus Valid Interrupt Status - Read/Write to Clear
      AVVIS          : Boolean := False;
      --  A Session Valid Interrupt Status - Read/Write to Clear
      ASVIS          : Boolean := False;
      --  B Session Valid Interrupt Status - Read/Write to Clear
      BSVIS          : Boolean := False;
      --  B Session End Interrupt Status - Read/Write to Clear
      BSEIS          : Boolean := False;
      --  1 millisecond timer Interrupt Status - Read/Write to Clear
      STATUS_1MS     : Boolean := False;
      --  Data Pulse Interrupt Status - Read/Write to Clear
      DPIS           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  USB ID Interrupt Enable - Read/Write. Setting this bit enables the
      --  USB ID interrupt.
      IDIE           : Boolean := False;
      --  A VBus Valid Interrupt Enable - Read/Write. Setting this bit enables
      --  the A VBus valid interrupt.
      AVVIE          : Boolean := False;
      --  A Session Valid Interrupt Enable - Read/Write
      ASVIE          : Boolean := False;
      --  B Session Valid Interrupt Enable - Read/Write
      BSVIE          : Boolean := False;
      --  B Session End Interrupt Enable - Read/Write. Setting this bit enables
      --  the B session end interrupt.
      BSEIE          : Boolean := False;
      --  1 millisecond timer Interrupt Enable - Read/Write
      EN_1MS         : Boolean := False;
      --  Data Pulse Interrupt Enable
      DPIE           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_OTGSC_Register use record
      VD             at 0 range 0 .. 0;
      VC             at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      OT             at 0 range 3 .. 3;
      DP             at 0 range 4 .. 4;
      IDPU           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ID             at 0 range 8 .. 8;
      AVV            at 0 range 9 .. 9;
      ASV            at 0 range 10 .. 10;
      BSV            at 0 range 11 .. 11;
      BSE            at 0 range 12 .. 12;
      TOG_1MS        at 0 range 13 .. 13;
      DPS            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      IDIS           at 0 range 16 .. 16;
      AVVIS          at 0 range 17 .. 17;
      ASVIS          at 0 range 18 .. 18;
      BSVIS          at 0 range 19 .. 19;
      BSEIS          at 0 range 20 .. 20;
      STATUS_1MS     at 0 range 21 .. 21;
      DPIS           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      IDIE           at 0 range 24 .. 24;
      AVVIE          at 0 range 25 .. 25;
      ASVIE          at 0 range 26 .. 26;
      BSVIE          at 0 range 27 .. 27;
      BSEIE          at 0 range 28 .. 28;
      EN_1MS         at 0 range 29 .. 29;
      DPIE           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Controller Mode - R/WO
   type USBMODE_CM_Field is
     (
      --  Idle [Default for combination host/device]
      Cm_0,
      --  Device Controller [Default for device only controller]
      Cm_2,
      --  Host Controller [Default for host only controller]
      Cm_3)
     with Size => 2;
   for USBMODE_CM_Field use
     (Cm_0 => 0,
      Cm_2 => 2,
      Cm_3 => 3);

   --  Endian Select - Read/Write
   type USBMODE_ES_Field is
     (
      --  Little Endian [Default]
      Es_0,
      --  Big Endian
      Es_1)
     with Size => 1;
   for USBMODE_ES_Field use
     (Es_0 => 0,
      Es_1 => 1);

   --  Setup Lockout Mode
   type USBMODE_SLOM_Field is
     (
      --  Setup Lockouts On (default);
      Slom_0,
      --  Setup Lockouts Off (DCD requires use of Setup Data Buffer Tripwire in
      --  USBCMDUSB Command Register .
      Slom_1)
     with Size => 1;
   for USBMODE_SLOM_Field use
     (Slom_0 => 0,
      Slom_1 => 1);

   --  USB Device Mode
   type USB_USBMODE_Register is record
      --  Controller Mode - R/WO
      CM            : USBMODE_CM_Field := NRF_SVD.USB.Cm_0;
      --  Endian Select - Read/Write
      ES            : USBMODE_ES_Field := NRF_SVD.USB.Es_0;
      --  Setup Lockout Mode
      SLOM          : USBMODE_SLOM_Field := NRF_SVD.USB.Slom_0;
      --  Stream Disable Mode
      SDIS          : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#280#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_USBMODE_Register use record
      CM            at 0 range 0 .. 1;
      ES            at 0 range 2 .. 2;
      SLOM          at 0 range 3 .. 3;
      SDIS          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype USB_ENDPTSETUPSTAT_ENDPTSETUPSTAT_Field is HAL.UInt16;

   --  Endpoint Setup Status
   type USB_ENDPTSETUPSTAT_Register is record
      --  Setup Endpoint Status
      ENDPTSETUPSTAT : USB_ENDPTSETUPSTAT_ENDPTSETUPSTAT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTSETUPSTAT_Register use record
      ENDPTSETUPSTAT at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype USB_ENDPTPRIME_PERB_Field is HAL.UInt8;
   subtype USB_ENDPTPRIME_PETB_Field is HAL.UInt8;

   --  Endpoint Prime
   type USB_ENDPTPRIME_Register is record
      --  Prime Endpoint Receive Buffer - R/WS
      PERB           : USB_ENDPTPRIME_PERB_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Prime Endpoint Transmit Buffer - R/WS
      PETB           : USB_ENDPTPRIME_PETB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTPRIME_Register use record
      PERB           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      PETB           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_ENDPTFLUSH_FERB_Field is HAL.UInt8;
   subtype USB_ENDPTFLUSH_FETB_Field is HAL.UInt8;

   --  Endpoint Flush
   type USB_ENDPTFLUSH_Register is record
      --  Flush Endpoint Receive Buffer - R/WS
      FERB           : USB_ENDPTFLUSH_FERB_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Flush Endpoint Transmit Buffer - R/WS
      FETB           : USB_ENDPTFLUSH_FETB_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTFLUSH_Register use record
      FERB           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FETB           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_ENDPTSTAT_ERBR_Field is HAL.UInt8;
   subtype USB_ENDPTSTAT_ETBR_Field is HAL.UInt8;

   --  Endpoint Status
   type USB_ENDPTSTAT_Register is record
      --  Read-only. Endpoint Receive Buffer Ready -- Read Only
      ERBR           : USB_ENDPTSTAT_ERBR_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Endpoint Transmit Buffer Ready -- Read Only
      ETBR           : USB_ENDPTSTAT_ETBR_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTSTAT_Register use record
      ERBR           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ETBR           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_ENDPTCOMPLETE_ERCE_Field is HAL.UInt8;
   subtype USB_ENDPTCOMPLETE_ETCE_Field is HAL.UInt8;

   --  Endpoint Complete
   type USB_ENDPTCOMPLETE_Register is record
      --  Endpoint Receive Complete Event - RW/C
      ERCE           : USB_ENDPTCOMPLETE_ERCE_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Endpoint Transmit Complete Event - R/WC
      ETCE           : USB_ENDPTCOMPLETE_ETCE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTCOMPLETE_Register use record
      ERCE           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ETCE           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USB_ENDPTCTRL0_RXT_Field is HAL.UInt2;
   subtype USB_ENDPTCTRL0_TXT_Field is HAL.UInt2;

   --  Endpoint Control0
   type USB_ENDPTCTRL0_Register is record
      --  RX Endpoint Stall - Read/Write 0 End Point OK
      RXS            : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  RX Endpoint Type - Read/Write 00 Control Endpoint0 is fixed as a
      --  Control End Point.
      RXT            : USB_ENDPTCTRL0_RXT_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  RX Endpoint Enable 1 Enabled Endpoint0 is always enabled.
      RXE            : Boolean := True;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TX Endpoint Stall - Read/Write 0 End Point OK [Default] 1 End Point
      --  Stalled Software can write a one to this bit to force the endpoint to
      --  return a STALL handshake to the Host
      TXS            : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  TX Endpoint Type - Read/Write 00 - Control Endpoint0 is fixed as a
      --  Control End Point.
      TXT            : USB_ENDPTCTRL0_TXT_Field := 16#0#;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  TX Endpoint Enable 1 Enabled Endpoint0 is always enabled.
      TXE            : Boolean := True;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_ENDPTCTRL0_Register use record
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

   subtype ENDPTCTRL_RXT_Field is HAL.UInt2;
   subtype ENDPTCTRL_TXT_Field is HAL.UInt2;

   --  Endpoint Control 1
   type ENDPTCTRL_Register is record
      --  RX Endpoint Stall - Read/Write 0 End Point OK
      RXS            : Boolean := False;
      --  RX Endpoint Data Sink - Read/Write 0 Dual Port Memory Buffer/DMA
      --  Engine [Default] Should always be written as zero
      RXD            : Boolean := False;
      --  RX Endpoint Type - Read/Write 00 Control 01 Isochronous 10 Bulk 11
      --  Interrupt
      RXT            : ENDPTCTRL_RXT_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  RX Data Toggle Inhibit 0 Disabled [Default] 1 Enabled This bit is
      --  only used for test and should always be written as zero
      RXI            : Boolean := False;
      --  RX Data Toggle Reset (WS) Write 1 - Reset PID Sequence Whenever a
      --  configuration event is received for this Endpoint, software must
      --  write a one to this bit in order to synchronize the data PID's
      --  between the host and device
      RXR            : Boolean := False;
      --  RX Endpoint Enable 0 Disabled [Default] 1 Enabled An Endpoint should
      --  be enabled only after it has been configured
      RXE            : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TX Endpoint Stall - Read/Write 0 End Point OK 1 End Point Stalled
      --  This bit will be cleared automatically upon receipt of a SETUP
      --  request if this Endpoint is configured as a Control Endpoint and this
      --  bit will continue to be cleared by hardware until the associated
      --  ENDPTSETUPSTAT bit is cleared
      TXS            : Boolean := False;
      --  TX Endpoint Data Source - Read/Write 0 Dual Port Memory Buffer/DMA
      --  Engine [DEFAULT] Should always be written as 0
      TXD            : Boolean := False;
      --  TX Endpoint Type - Read/Write 00 Control 01 Isochronous 10 Bulk 11
      --  Interrupt
      TXT            : ENDPTCTRL_TXT_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  TX Data Toggle Inhibit 0 PID Sequencing Enabled
      TXI            : Boolean := False;
      --  TX Data Toggle Reset (WS) Write 1 - Reset PID Sequence Whenever a
      --  configuration event is received for this Endpoint, software must
      --  write a one to this bit in order to synchronize the data PID's
      --  between the Host and device
      TXR            : Boolean := False;
      --  TX Endpoint Enable 0 Disabled [Default] 1 Enabled An Endpoint should
      --  be enabled only after it has been configured
      TXE            : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDPTCTRL_Register use record
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

   -----------------
   -- Peripherals --
   -----------------

   type USB_Disc is
     (
      Mode_1,
      Mode_2);

   --  USB
   type USB_Peripheral
     (Discriminent : USB_Disc := Mode_1)
   is record
      --  Identification register
      ID               : aliased USB_ID_Register;
      --  Hardware General
      HWGENERAL        : aliased USB_HWGENERAL_Register;
      --  Host Hardware Parameters
      HWHOST           : aliased USB_HWHOST_Register;
      --  Device Hardware Parameters
      HWDEVICE         : aliased USB_HWDEVICE_Register;
      --  TX Buffer Hardware Parameters
      HWTXBUF          : aliased USB_HWTXBUF_Register;
      --  RX Buffer Hardware Parameters
      HWRXBUF          : aliased USB_HWRXBUF_Register;
      --  General Purpose Timer #0 Load
      GPTIMER0LD       : aliased USB_GPTIMER0LD_Register;
      --  General Purpose Timer #0 Controller
      GPTIMER0CTRL     : aliased USB_GPTIMER0CTRL_Register;
      --  General Purpose Timer #1 Load
      GPTIMER1LD       : aliased USB_GPTIMER1LD_Register;
      --  General Purpose Timer #1 Controller
      GPTIMER1CTRL     : aliased USB_GPTIMER1CTRL_Register;
      --  System Bus Config
      SBUSCFG          : aliased USB_SBUSCFG_Register;
      --  Capability Registers Length
      CAPLENGTH        : aliased HAL.UInt8;
      --  Host Controller Interface Version
      HCIVERSION       : aliased HAL.UInt16;
      --  Host Controller Structural Parameters
      HCSPARAMS        : aliased USB_HCSPARAMS_Register;
      --  Host Controller Capability Parameters
      HCCPARAMS        : aliased USB_HCCPARAMS_Register;
      --  Device Controller Interface Version
      DCIVERSION       : aliased HAL.UInt16;
      --  Device Controller Capability Parameters
      DCCPARAMS        : aliased USB_DCCPARAMS_Register;
      --  USB Command Register
      USBCMD           : aliased USB_USBCMD_Register;
      --  USB Status Register
      USBSTS           : aliased USB_USBSTS_Register;
      --  Interrupt Enable Register
      USBINTR          : aliased USB_USBINTR_Register;
      --  USB Frame Index
      FRINDEX          : aliased USB_FRINDEX_Register;
      --  Programmable Burst Size
      BURSTSIZE        : aliased USB_BURSTSIZE_Register;
      --  TX FIFO Fill Tuning
      TXFILLTUNING     : aliased USB_TXFILLTUNING_Register;
      --  Endpoint NAK
      ENDPTNAK         : aliased USB_ENDPTNAK_Register;
      --  Endpoint NAK Enable
      ENDPTNAKEN       : aliased USB_ENDPTNAKEN_Register;
      --  Configure Flag Register
      CONFIGFLAG       : aliased USB_CONFIGFLAG_Register;
      --  Port Status & Control
      PORTSC1          : aliased USB_PORTSC1_Register;
      --  On-The-Go Status & control
      OTGSC            : aliased USB_OTGSC_Register;
      --  USB Device Mode
      USBMODE          : aliased USB_USBMODE_Register;
      --  Endpoint Setup Status
      ENDPTSETUPSTAT   : aliased USB_ENDPTSETUPSTAT_Register;
      --  Endpoint Prime
      ENDPTPRIME       : aliased USB_ENDPTPRIME_Register;
      --  Endpoint Flush
      ENDPTFLUSH       : aliased USB_ENDPTFLUSH_Register;
      --  Endpoint Status
      ENDPTSTAT        : aliased USB_ENDPTSTAT_Register;
      --  Endpoint Complete
      ENDPTCOMPLETE    : aliased USB_ENDPTCOMPLETE_Register;
      --  Endpoint Control0
      ENDPTCTRL0       : aliased USB_ENDPTCTRL0_Register;
      --  Endpoint Control 1
      ENDPTCTRL1       : aliased ENDPTCTRL_Register;
      --  Endpoint Control 2
      ENDPTCTRL2       : aliased ENDPTCTRL_Register;
      --  Endpoint Control 3
      ENDPTCTRL3       : aliased ENDPTCTRL_Register;
      --  Endpoint Control 4
      ENDPTCTRL4       : aliased ENDPTCTRL_Register;
      --  Endpoint Control 5
      ENDPTCTRL5       : aliased ENDPTCTRL_Register;
      --  Endpoint Control 6
      ENDPTCTRL6       : aliased ENDPTCTRL_Register;
      --  Endpoint Control 7
      ENDPTCTRL7       : aliased ENDPTCTRL_Register;
      case Discriminent is
         when Mode_1 =>
            --  Device Address
            DEVICEADDR : aliased USB_DEVICEADDR_Register;
            --  Next Asynch. Address
            ASYNCLISTADDR : aliased USB_ASYNCLISTADDR_Register;
         when Mode_2 =>
            --  Frame List Base Address
            PERIODICLISTBASE : aliased USB_PERIODICLISTBASE_Register;
            --  Endpoint List Address
            ENDPTLISTADDR : aliased USB_ENDPTLISTADDR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for USB_Peripheral use record
      ID               at 16#0# range 0 .. 31;
      HWGENERAL        at 16#4# range 0 .. 31;
      HWHOST           at 16#8# range 0 .. 31;
      HWDEVICE         at 16#C# range 0 .. 31;
      HWTXBUF          at 16#10# range 0 .. 31;
      HWRXBUF          at 16#14# range 0 .. 31;
      GPTIMER0LD       at 16#80# range 0 .. 31;
      GPTIMER0CTRL     at 16#84# range 0 .. 31;
      GPTIMER1LD       at 16#88# range 0 .. 31;
      GPTIMER1CTRL     at 16#8C# range 0 .. 31;
      SBUSCFG          at 16#90# range 0 .. 31;
      CAPLENGTH        at 16#100# range 0 .. 7;
      HCIVERSION       at 16#102# range 0 .. 15;
      HCSPARAMS        at 16#104# range 0 .. 31;
      HCCPARAMS        at 16#108# range 0 .. 31;
      DCIVERSION       at 16#120# range 0 .. 15;
      DCCPARAMS        at 16#124# range 0 .. 31;
      USBCMD           at 16#140# range 0 .. 31;
      USBSTS           at 16#144# range 0 .. 31;
      USBINTR          at 16#148# range 0 .. 31;
      FRINDEX          at 16#14C# range 0 .. 31;
      BURSTSIZE        at 16#160# range 0 .. 31;
      TXFILLTUNING     at 16#164# range 0 .. 31;
      ENDPTNAK         at 16#178# range 0 .. 31;
      ENDPTNAKEN       at 16#17C# range 0 .. 31;
      CONFIGFLAG       at 16#180# range 0 .. 31;
      PORTSC1          at 16#184# range 0 .. 31;
      OTGSC            at 16#1A4# range 0 .. 31;
      USBMODE          at 16#1A8# range 0 .. 31;
      ENDPTSETUPSTAT   at 16#1AC# range 0 .. 31;
      ENDPTPRIME       at 16#1B0# range 0 .. 31;
      ENDPTFLUSH       at 16#1B4# range 0 .. 31;
      ENDPTSTAT        at 16#1B8# range 0 .. 31;
      ENDPTCOMPLETE    at 16#1BC# range 0 .. 31;
      ENDPTCTRL0       at 16#1C0# range 0 .. 31;
      ENDPTCTRL1       at 16#1C4# range 0 .. 31;
      ENDPTCTRL2       at 16#1C8# range 0 .. 31;
      ENDPTCTRL3       at 16#1CC# range 0 .. 31;
      ENDPTCTRL4       at 16#1D0# range 0 .. 31;
      ENDPTCTRL5       at 16#1D4# range 0 .. 31;
      ENDPTCTRL6       at 16#1D8# range 0 .. 31;
      ENDPTCTRL7       at 16#1DC# range 0 .. 31;
      DEVICEADDR       at 16#154# range 0 .. 31;
      ASYNCLISTADDR    at 16#158# range 0 .. 31;
      PERIODICLISTBASE at 16#154# range 0 .. 31;
      ENDPTLISTADDR    at 16#158# range 0 .. 31;
   end record;

   --  USB
   USB1_Periph : aliased USB_Peripheral
     with Import, Address => System'To_Address (16#402E0000#);

   --  USB
   USB2_Periph : aliased USB_Peripheral
     with Import, Address => System'To_Address (16#402E0200#);

end NRF_SVD.USB;
