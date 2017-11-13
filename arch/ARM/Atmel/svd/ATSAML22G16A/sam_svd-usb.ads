--  ============================================================================
--  Atmel Microcontroller Software Support
--  ============================================================================
--  Copyright (c) 2016 Atmel Corporation,
--  a wholly owned subsidiary of Microchip Technology Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the Licence at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--  ============================================================================  

--  This spec has been automatically generated from ATSAML22G16A.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.USB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------------------
   -- UsbDevice cluster's Registers --
   -----------------------------------

   --  Operating Mode
   type CTRLA_MODESelect is
     (
      --  Device Mode
      Device)
     with Size => 1;
   for CTRLA_MODESelect use
     (Device => 0);

   --  Control A
   type USB_CTRLA_USB_DEVICE_Register is record
      --  Software Reset
      SWRST        : Boolean := False;
      --  Enable
      ENABLE       : Boolean := False;
      --  Run in Standby Mode
      RUNSTDBY     : Boolean := False;
      --  unspecified
      Reserved_3_6 : HAL.UInt4 := 16#0#;
      --  Operating Mode
      MODE         : CTRLA_MODESelect := SAM_SVD.USB.Device;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB_CTRLA_USB_DEVICE_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      RUNSTDBY     at 0 range 2 .. 2;
      Reserved_3_6 at 0 range 3 .. 6;
      MODE         at 0 range 7 .. 7;
   end record;

   --  Synchronization Busy
   type USB_SYNCBUSY_USB_DEVICE_Register is record
      --  Read-only. Software Reset Synchronization Busy
      SWRST        : Boolean;
      --  Read-only. Enable Synchronization Busy
      ENABLE       : Boolean;
      --  unspecified
      Reserved_2_7 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB_SYNCBUSY_USB_DEVICE_Register use record
      SWRST        at 0 range 0 .. 0;
      ENABLE       at 0 range 1 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   subtype USB_QOSCTRL_USB_DEVICE_CQOS_Field is HAL.UInt2;
   subtype USB_QOSCTRL_USB_DEVICE_DQOS_Field is HAL.UInt2;

   --  USB Quality Of Service
   type USB_QOSCTRL_USB_DEVICE_Register is record
      --  Configuration Quality of Service
      CQOS         : USB_QOSCTRL_USB_DEVICE_CQOS_Field := 16#3#;
      --  Data Quality of Service
      DQOS         : USB_QOSCTRL_USB_DEVICE_DQOS_Field := 16#3#;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB_QOSCTRL_USB_DEVICE_Register use record
      CQOS         at 0 range 0 .. 1;
      DQOS         at 0 range 2 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   --  Speed Configuration
   type CTRLB_SPDCONFSelect is
     (
      --  FS : Full Speed
      Fs,
      --  LS : Low Speed
      Ls,
      --  HS : High Speed capable
      Hs,
      --  HSTM: High Speed Test Mode (force high-speed mode for test mode)
      Hstm)
     with Size => 2;
   for CTRLB_SPDCONFSelect use
     (Fs => 0,
      Ls => 1,
      Hs => 2,
      Hstm => 3);

   --  Link Power Management Handshake
   type CTRLB_LPMHDSKSelect is
     (
      --  No handshake. LPM is not supported
      No,
      --  ACK
      Ack,
      --  NYET
      Nyet,
      --  STALL
      Stall)
     with Size => 2;
   for CTRLB_LPMHDSKSelect use
     (No => 0,
      Ack => 1,
      Nyet => 2,
      Stall => 3);

   --  DEVICE Control B
   type USB_CTRLB_USB_DEVICE_Register is record
      --  Detach
      DETACH         : Boolean := True;
      --  Upstream Resume
      UPRSM          : Boolean := False;
      --  Speed Configuration
      SPDCONF        : CTRLB_SPDCONFSelect := SAM_SVD.USB.Fs;
      --  No Reply
      NREPLY         : Boolean := False;
      --  Test mode J
      TSTJ           : Boolean := False;
      --  Test mode K
      TSTK           : Boolean := False;
      --  Test packet mode
      TSTPCKT        : Boolean := False;
      --  Specific Operational Mode
      OPMODE2        : Boolean := False;
      --  Global NAK
      GNAK           : Boolean := False;
      --  Link Power Management Handshake
      LPMHDSK        : CTRLB_LPMHDSKSelect := SAM_SVD.USB.No;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_CTRLB_USB_DEVICE_Register use record
      DETACH         at 0 range 0 .. 0;
      UPRSM          at 0 range 1 .. 1;
      SPDCONF        at 0 range 2 .. 3;
      NREPLY         at 0 range 4 .. 4;
      TSTJ           at 0 range 5 .. 5;
      TSTK           at 0 range 6 .. 6;
      TSTPCKT        at 0 range 7 .. 7;
      OPMODE2        at 0 range 8 .. 8;
      GNAK           at 0 range 9 .. 9;
      LPMHDSK        at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype USB_DADD_USB_DEVICE_DADD_Field is HAL.UInt7;

   --  DEVICE Device Address
   type USB_DADD_USB_DEVICE_Register is record
      --  Device Address
      DADD  : USB_DADD_USB_DEVICE_DADD_Field := 16#0#;
      --  Device Address Enable
      ADDEN : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB_DADD_USB_DEVICE_Register use record
      DADD  at 0 range 0 .. 6;
      ADDEN at 0 range 7 .. 7;
   end record;

   --  Speed Status
   type STATUS_SPEEDSelect is
     (
      --  Full-speed mode
      Fs,
      --  High-speed mode
      Hs,
      --  Low-speed mode
      Ls)
     with Size => 2;
   for STATUS_SPEEDSelect use
     (Fs => 0,
      Hs => 1,
      Ls => 2);

   --  USB Line State Status
   type STATUS_LINESTATESelect is
     (
      --  SE0/RESET
      STATUS_LINESTATESelect_0,
      --  FS-J or LS-K State
      STATUS_LINESTATESelect_1,
      --  FS-K or LS-J State
      STATUS_LINESTATESelect_2)
     with Size => 2;
   for STATUS_LINESTATESelect use
     (STATUS_LINESTATESelect_0 => 0,
      STATUS_LINESTATESelect_1 => 1,
      STATUS_LINESTATESelect_2 => 2);

   --  DEVICE Status
   type USB_STATUS_USB_DEVICE_Register is record
      --  unspecified
      Reserved_0_1 : HAL.UInt2;
      --  Read-only. Speed Status
      SPEED        : STATUS_SPEEDSelect;
      --  unspecified
      Reserved_4_5 : HAL.UInt2;
      --  Read-only. USB Line State Status
      LINESTATE    : STATUS_LINESTATESelect;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB_STATUS_USB_DEVICE_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      SPEED        at 0 range 2 .. 3;
      Reserved_4_5 at 0 range 4 .. 5;
      LINESTATE    at 0 range 6 .. 7;
   end record;

   --  Fine State Machine Status
   type FSMSTATUS_FSMSTATESelect is
     (
      --  OFF (L3). It corresponds to the powered-off, disconnected, and
      --  disabled state
      Off,
      --  ON (L0). It corresponds to the Idle and Active states
      On,
      --  SUSPEND (L2)
      Suspend,
      --  SLEEP (L1)
      Sleep,
      --  DNRESUME. Down Stream Resume.
      Dnresume,
      --  UPRESUME. Up Stream Resume.
      Upresume,
      --  RESET. USB lines Reset.
      Reset)
     with Size => 7;
   for FSMSTATUS_FSMSTATESelect use
     (Off => 1,
      On => 2,
      Suspend => 4,
      Sleep => 8,
      Dnresume => 16,
      Upresume => 32,
      Reset => 64);

   --  Finite State Machine Status
   type USB_FSMSTATUS_USB_DEVICE_Register is record
      --  Read-only. Fine State Machine Status
      FSMSTATE     : FSMSTATUS_FSMSTATESelect;
      --  unspecified
      Reserved_7_7 : HAL.Bit;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for USB_FSMSTATUS_USB_DEVICE_Register use record
      FSMSTATE     at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   subtype USB_FNUM_USB_DEVICE_MFNUM_Field is HAL.UInt3;
   subtype USB_FNUM_USB_DEVICE_FNUM_Field is HAL.UInt11;

   --  DEVICE Device Frame Number
   type USB_FNUM_USB_DEVICE_Register is record
      --  Read-only. Micro Frame Number
      MFNUM          : USB_FNUM_USB_DEVICE_MFNUM_Field;
      --  Read-only. Frame Number
      FNUM           : USB_FNUM_USB_DEVICE_FNUM_Field;
      --  unspecified
      Reserved_14_14 : HAL.Bit;
      --  Read-only. Frame Number CRC Error
      FNCERR         : Boolean;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_FNUM_USB_DEVICE_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      FNCERR         at 0 range 15 .. 15;
   end record;

   --  DEVICE Device Interrupt Enable Clear
   type USB_INTENCLR_USB_DEVICE_Register is record
      --  Suspend Interrupt Enable
      SUSPEND        : Boolean := False;
      --  Micro Start of Frame Interrupt Enable in High Speed Mode
      MSOF           : Boolean := False;
      --  Start Of Frame Interrupt Enable
      SOF            : Boolean := False;
      --  End of Reset Interrupt Enable
      EORST          : Boolean := False;
      --  Wake Up Interrupt Enable
      WAKEUP         : Boolean := False;
      --  End Of Resume Interrupt Enable
      EORSM          : Boolean := False;
      --  Upstream Resume Interrupt Enable
      UPRSM          : Boolean := False;
      --  Ram Access Interrupt Enable
      RAMACER        : Boolean := False;
      --  Link Power Management Not Yet Interrupt Enable
      LPMNYET        : Boolean := False;
      --  Link Power Management Suspend Interrupt Enable
      LPMSUSP        : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_INTENCLR_USB_DEVICE_Register use record
      SUSPEND        at 0 range 0 .. 0;
      MSOF           at 0 range 1 .. 1;
      SOF            at 0 range 2 .. 2;
      EORST          at 0 range 3 .. 3;
      WAKEUP         at 0 range 4 .. 4;
      EORSM          at 0 range 5 .. 5;
      UPRSM          at 0 range 6 .. 6;
      RAMACER        at 0 range 7 .. 7;
      LPMNYET        at 0 range 8 .. 8;
      LPMSUSP        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  DEVICE Device Interrupt Enable Set
   type USB_INTENSET_USB_DEVICE_Register is record
      --  Suspend Interrupt Enable
      SUSPEND        : Boolean := False;
      --  Micro Start of Frame Interrupt Enable in High Speed Mode
      MSOF           : Boolean := False;
      --  Start Of Frame Interrupt Enable
      SOF            : Boolean := False;
      --  End of Reset Interrupt Enable
      EORST          : Boolean := False;
      --  Wake Up Interrupt Enable
      WAKEUP         : Boolean := False;
      --  End Of Resume Interrupt Enable
      EORSM          : Boolean := False;
      --  Upstream Resume Interrupt Enable
      UPRSM          : Boolean := False;
      --  Ram Access Interrupt Enable
      RAMACER        : Boolean := False;
      --  Link Power Management Not Yet Interrupt Enable
      LPMNYET        : Boolean := False;
      --  Link Power Management Suspend Interrupt Enable
      LPMSUSP        : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_INTENSET_USB_DEVICE_Register use record
      SUSPEND        at 0 range 0 .. 0;
      MSOF           at 0 range 1 .. 1;
      SOF            at 0 range 2 .. 2;
      EORST          at 0 range 3 .. 3;
      WAKEUP         at 0 range 4 .. 4;
      EORSM          at 0 range 5 .. 5;
      UPRSM          at 0 range 6 .. 6;
      RAMACER        at 0 range 7 .. 7;
      LPMNYET        at 0 range 8 .. 8;
      LPMSUSP        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  DEVICE Device Interrupt Flag
   type USB_INTFLAG_USB_DEVICE_Register is record
      --  Suspend
      SUSPEND        : Boolean := False;
      --  Micro Start of Frame in High Speed Mode
      MSOF           : Boolean := False;
      --  Start Of Frame
      SOF            : Boolean := False;
      --  End of Reset
      EORST          : Boolean := False;
      --  Wake Up
      WAKEUP         : Boolean := False;
      --  End Of Resume
      EORSM          : Boolean := False;
      --  Upstream Resume
      UPRSM          : Boolean := False;
      --  Ram Access
      RAMACER        : Boolean := False;
      --  Link Power Management Not Yet
      LPMNYET        : Boolean := False;
      --  Link Power Management Suspend
      LPMSUSP        : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_INTFLAG_USB_DEVICE_Register use record
      SUSPEND        at 0 range 0 .. 0;
      MSOF           at 0 range 1 .. 1;
      SOF            at 0 range 2 .. 2;
      EORST          at 0 range 3 .. 3;
      WAKEUP         at 0 range 4 .. 4;
      EORSM          at 0 range 5 .. 5;
      UPRSM          at 0 range 6 .. 6;
      RAMACER        at 0 range 7 .. 7;
      LPMNYET        at 0 range 8 .. 8;
      LPMSUSP        at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   --  USB_EPINTSMRY_USB_DEVICE_EPINT array
   type USB_EPINTSMRY_USB_DEVICE_EPINT_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for USB_EPINTSMRY_USB_DEVICE_EPINT
   type USB_EPINTSMRY_USB_DEVICE_EPINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPINT as a value
            Val : HAL.UInt8;
         when True =>
            --  EPINT as an array
            Arr : USB_EPINTSMRY_USB_DEVICE_EPINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for USB_EPINTSMRY_USB_DEVICE_EPINT_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  DEVICE End Point Interrupt Summary
   type USB_EPINTSMRY_USB_DEVICE_Register is record
      --  Read-only. End Point 0 Interrupt
      EPINT         : USB_EPINTSMRY_USB_DEVICE_EPINT_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_EPINTSMRY_USB_DEVICE_Register use record
      EPINT         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype USB_PADCAL_USB_DEVICE_TRANSP_Field is HAL.UInt5;
   subtype USB_PADCAL_USB_DEVICE_TRANSN_Field is HAL.UInt5;
   subtype USB_PADCAL_USB_DEVICE_TRIM_Field is HAL.UInt3;

   --  USB PAD Calibration
   type USB_PADCAL_USB_DEVICE_Register is record
      --  USB Pad Transp calibration
      TRANSP         : USB_PADCAL_USB_DEVICE_TRANSP_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  USB Pad Transn calibration
      TRANSN         : USB_PADCAL_USB_DEVICE_TRANSN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  USB Pad Trim calibration
      TRIM           : USB_PADCAL_USB_DEVICE_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for USB_PADCAL_USB_DEVICE_Register use record
      TRANSP         at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      TRANSN         at 0 range 6 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIM           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype EPCFG_EPTYPE0_Field is HAL.UInt3;
   subtype EPCFG_EPTYPE1_Field is HAL.UInt3;

   --  DEVICE End Point Configuration
   type EPCFG_Register is record
      --  End Point Type0
      EPTYPE0      : EPCFG_EPTYPE0_Field := 16#0#;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  End Point Type1
      EPTYPE1      : EPCFG_EPTYPE1_Field := 16#0#;
      --  NYET Token Disable
      NYETDIS      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPCFG_Register use record
      EPTYPE0      at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      EPTYPE1      at 0 range 4 .. 6;
      NYETDIS      at 0 range 7 .. 7;
   end record;

   --  EPSTATUSCLR_STALLRQ array
   type EPSTATUSCLR_STALLRQ_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPSTATUSCLR_STALLRQ
   type EPSTATUSCLR_STALLRQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STALLRQ as a value
            Val : HAL.UInt2;
         when True =>
            --  STALLRQ as an array
            Arr : EPSTATUSCLR_STALLRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPSTATUSCLR_STALLRQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DEVICE End Point Pipe Status Clear
   type EPSTATUSCLR_Register is record
      --  Write-only. Data Toggle OUT Clear
      DTGLOUT      : Boolean := False;
      --  Write-only. Data Toggle IN Clear
      DTGLIN       : Boolean := False;
      --  Write-only. Current Bank Clear
      CURBK        : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Write-only. Stall 0 Request Clear
      STALLRQ      : EPSTATUSCLR_STALLRQ_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Write-only. Bank 0 Ready Clear
      BK0RDY       : Boolean := False;
      --  Write-only. Bank 1 Ready Clear
      BK1RDY       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPSTATUSCLR_Register use record
      DTGLOUT      at 0 range 0 .. 0;
      DTGLIN       at 0 range 1 .. 1;
      CURBK        at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      STALLRQ      at 0 range 4 .. 5;
      BK0RDY       at 0 range 6 .. 6;
      BK1RDY       at 0 range 7 .. 7;
   end record;

   --  EPSTATUSSET_STALLRQ array
   type EPSTATUSSET_STALLRQ_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPSTATUSSET_STALLRQ
   type EPSTATUSSET_STALLRQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STALLRQ as a value
            Val : HAL.UInt2;
         when True =>
            --  STALLRQ as an array
            Arr : EPSTATUSSET_STALLRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPSTATUSSET_STALLRQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DEVICE End Point Pipe Status Set
   type EPSTATUSSET_Register is record
      --  Write-only. Data Toggle OUT Set
      DTGLOUT      : Boolean := False;
      --  Write-only. Data Toggle IN Set
      DTGLIN       : Boolean := False;
      --  Write-only. Current Bank Set
      CURBK        : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Write-only. Stall 0 Request Set
      STALLRQ      : EPSTATUSSET_STALLRQ_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Write-only. Bank 0 Ready Set
      BK0RDY       : Boolean := False;
      --  Write-only. Bank 1 Ready Set
      BK1RDY       : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPSTATUSSET_Register use record
      DTGLOUT      at 0 range 0 .. 0;
      DTGLIN       at 0 range 1 .. 1;
      CURBK        at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      STALLRQ      at 0 range 4 .. 5;
      BK0RDY       at 0 range 6 .. 6;
      BK1RDY       at 0 range 7 .. 7;
   end record;

   --  EPSTATUS_STALLRQ array
   type EPSTATUS_STALLRQ_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPSTATUS_STALLRQ
   type EPSTATUS_STALLRQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STALLRQ as a value
            Val : HAL.UInt2;
         when True =>
            --  STALLRQ as an array
            Arr : EPSTATUS_STALLRQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPSTATUS_STALLRQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DEVICE End Point Pipe Status
   type EPSTATUS_Register is record
      --  Read-only. Data Toggle Out
      DTGLOUT      : Boolean;
      --  Read-only. Data Toggle In
      DTGLIN       : Boolean;
      --  Read-only. Current Bank
      CURBK        : Boolean;
      --  unspecified
      Reserved_3_3 : HAL.Bit;
      --  Read-only. Stall 0 Request
      STALLRQ      : EPSTATUS_STALLRQ_Field;
      --  Read-only. Bank 0 ready
      BK0RDY       : Boolean;
      --  Read-only. Bank 1 ready
      BK1RDY       : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPSTATUS_Register use record
      DTGLOUT      at 0 range 0 .. 0;
      DTGLIN       at 0 range 1 .. 1;
      CURBK        at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      STALLRQ      at 0 range 4 .. 5;
      BK0RDY       at 0 range 6 .. 6;
      BK1RDY       at 0 range 7 .. 7;
   end record;

   --  EPINTFLAG_TRCPT array
   type EPINTFLAG_TRCPT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTFLAG_TRCPT
   type EPINTFLAG_TRCPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRCPT as a value
            Val : HAL.UInt2;
         when True =>
            --  TRCPT as an array
            Arr : EPINTFLAG_TRCPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTFLAG_TRCPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EPINTFLAG_TRFAIL array
   type EPINTFLAG_TRFAIL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTFLAG_TRFAIL
   type EPINTFLAG_TRFAIL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRFAIL as a value
            Val : HAL.UInt2;
         when True =>
            --  TRFAIL as an array
            Arr : EPINTFLAG_TRFAIL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTFLAG_TRFAIL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EPINTFLAG_STALL array
   type EPINTFLAG_STALL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTFLAG_STALL
   type EPINTFLAG_STALL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STALL as a value
            Val : HAL.UInt2;
         when True =>
            --  STALL as an array
            Arr : EPINTFLAG_STALL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTFLAG_STALL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DEVICE End Point Interrupt Flag
   type EPINTFLAG_Register is record
      --  Transfer Complete 0
      TRCPT        : EPINTFLAG_TRCPT_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Error Flow 0
      TRFAIL       : EPINTFLAG_TRFAIL_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Received Setup
      RXSTP        : Boolean := False;
      --  Stall 0 In/out
      STALL        : EPINTFLAG_STALL_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPINTFLAG_Register use record
      TRCPT        at 0 range 0 .. 1;
      TRFAIL       at 0 range 2 .. 3;
      RXSTP        at 0 range 4 .. 4;
      STALL        at 0 range 5 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  EPINTENCLR_TRCPT array
   type EPINTENCLR_TRCPT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTENCLR_TRCPT
   type EPINTENCLR_TRCPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRCPT as a value
            Val : HAL.UInt2;
         when True =>
            --  TRCPT as an array
            Arr : EPINTENCLR_TRCPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTENCLR_TRCPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EPINTENCLR_TRFAIL array
   type EPINTENCLR_TRFAIL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTENCLR_TRFAIL
   type EPINTENCLR_TRFAIL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRFAIL as a value
            Val : HAL.UInt2;
         when True =>
            --  TRFAIL as an array
            Arr : EPINTENCLR_TRFAIL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTENCLR_TRFAIL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EPINTENCLR_STALL array
   type EPINTENCLR_STALL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTENCLR_STALL
   type EPINTENCLR_STALL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STALL as a value
            Val : HAL.UInt2;
         when True =>
            --  STALL as an array
            Arr : EPINTENCLR_STALL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTENCLR_STALL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DEVICE End Point Interrupt Clear Flag
   type EPINTENCLR_Register is record
      --  Transfer Complete 0 Interrupt Disable
      TRCPT        : EPINTENCLR_TRCPT_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Error Flow 0 Interrupt Disable
      TRFAIL       : EPINTENCLR_TRFAIL_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Received Setup Interrupt Disable
      RXSTP        : Boolean := False;
      --  Stall 0 In/Out Interrupt Disable
      STALL        : EPINTENCLR_STALL_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPINTENCLR_Register use record
      TRCPT        at 0 range 0 .. 1;
      TRFAIL       at 0 range 2 .. 3;
      RXSTP        at 0 range 4 .. 4;
      STALL        at 0 range 5 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  EPINTENSET_TRCPT array
   type EPINTENSET_TRCPT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTENSET_TRCPT
   type EPINTENSET_TRCPT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRCPT as a value
            Val : HAL.UInt2;
         when True =>
            --  TRCPT as an array
            Arr : EPINTENSET_TRCPT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTENSET_TRCPT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EPINTENSET_TRFAIL array
   type EPINTENSET_TRFAIL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTENSET_TRFAIL
   type EPINTENSET_TRFAIL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TRFAIL as a value
            Val : HAL.UInt2;
         when True =>
            --  TRFAIL as an array
            Arr : EPINTENSET_TRFAIL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTENSET_TRFAIL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EPINTENSET_STALL array
   type EPINTENSET_STALL_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EPINTENSET_STALL
   type EPINTENSET_STALL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STALL as a value
            Val : HAL.UInt2;
         when True =>
            --  STALL as an array
            Arr : EPINTENSET_STALL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EPINTENSET_STALL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  DEVICE End Point Interrupt Set Flag
   type EPINTENSET_Register is record
      --  Transfer Complete 0 Interrupt Enable
      TRCPT        : EPINTENSET_TRCPT_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Error Flow 0 Interrupt Enable
      TRFAIL       : EPINTENSET_TRFAIL_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Received Setup Interrupt Enable
      RXSTP        : Boolean := False;
      --  Stall 0 In/out Interrupt enable
      STALL        : EPINTENSET_STALL_Field :=
                      (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for EPINTENSET_Register use record
      TRCPT        at 0 range 0 .. 1;
      TRFAIL       at 0 range 2 .. 3;
      RXSTP        at 0 range 4 .. 4;
      STALL        at 0 range 5 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   --  USB is Device
   type UsbDevice_Cluster is record
      --  Control A
      CTRLA        : aliased USB_CTRLA_USB_DEVICE_Register;
      --  Synchronization Busy
      SYNCBUSY     : aliased USB_SYNCBUSY_USB_DEVICE_Register;
      --  USB Quality Of Service
      QOSCTRL      : aliased USB_QOSCTRL_USB_DEVICE_Register;
      --  DEVICE Control B
      CTRLB        : aliased USB_CTRLB_USB_DEVICE_Register;
      --  DEVICE Device Address
      DADD         : aliased USB_DADD_USB_DEVICE_Register;
      --  DEVICE Status
      STATUS       : aliased USB_STATUS_USB_DEVICE_Register;
      --  Finite State Machine Status
      FSMSTATUS    : aliased USB_FSMSTATUS_USB_DEVICE_Register;
      --  DEVICE Device Frame Number
      FNUM         : aliased USB_FNUM_USB_DEVICE_Register;
      --  DEVICE Device Interrupt Enable Clear
      INTENCLR     : aliased USB_INTENCLR_USB_DEVICE_Register;
      --  DEVICE Device Interrupt Enable Set
      INTENSET     : aliased USB_INTENSET_USB_DEVICE_Register;
      --  DEVICE Device Interrupt Flag
      INTFLAG      : aliased USB_INTFLAG_USB_DEVICE_Register;
      --  DEVICE End Point Interrupt Summary
      EPINTSMRY    : aliased USB_EPINTSMRY_USB_DEVICE_Register;
      --  Descriptor Address
      DESCADD      : aliased HAL.UInt32;
      --  USB PAD Calibration
      PADCAL       : aliased USB_PADCAL_USB_DEVICE_Register;
      --  DEVICE End Point Configuration
      EPCFG0       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR0 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET0 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS0    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG0   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR0  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET0  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG1       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR1 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET1 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS1    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG1   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR1  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET1  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG2       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR2 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET2 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS2    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG2   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR2  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET2  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG3       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR3 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET3 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS3    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG3   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR3  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET3  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG4       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR4 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET4 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS4    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG4   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR4  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET4  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG5       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR5 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET5 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS5    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG5   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR5  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET5  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG6       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR6 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET6 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS6    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG6   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR6  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET6  : aliased EPINTENSET_Register;
      --  DEVICE End Point Configuration
      EPCFG7       : aliased EPCFG_Register;
      --  DEVICE End Point Pipe Status Clear
      EPSTATUSCLR7 : aliased EPSTATUSCLR_Register;
      --  DEVICE End Point Pipe Status Set
      EPSTATUSSET7 : aliased EPSTATUSSET_Register;
      --  DEVICE End Point Pipe Status
      EPSTATUS7    : aliased EPSTATUS_Register;
      --  DEVICE End Point Interrupt Flag
      EPINTFLAG7   : aliased EPINTFLAG_Register;
      --  DEVICE End Point Interrupt Clear Flag
      EPINTENCLR7  : aliased EPINTENCLR_Register;
      --  DEVICE End Point Interrupt Set Flag
      EPINTENSET7  : aliased EPINTENSET_Register;
   end record
     with Volatile, Size => 3936;

   for UsbDevice_Cluster use record
      CTRLA        at 16#0# range 0 .. 7;
      SYNCBUSY     at 16#2# range 0 .. 7;
      QOSCTRL      at 16#3# range 0 .. 7;
      CTRLB        at 16#8# range 0 .. 15;
      DADD         at 16#A# range 0 .. 7;
      STATUS       at 16#C# range 0 .. 7;
      FSMSTATUS    at 16#D# range 0 .. 7;
      FNUM         at 16#10# range 0 .. 15;
      INTENCLR     at 16#14# range 0 .. 15;
      INTENSET     at 16#18# range 0 .. 15;
      INTFLAG      at 16#1C# range 0 .. 15;
      EPINTSMRY    at 16#20# range 0 .. 15;
      DESCADD      at 16#24# range 0 .. 31;
      PADCAL       at 16#28# range 0 .. 15;
      EPCFG0       at 16#100# range 0 .. 7;
      EPSTATUSCLR0 at 16#104# range 0 .. 7;
      EPSTATUSSET0 at 16#105# range 0 .. 7;
      EPSTATUS0    at 16#106# range 0 .. 7;
      EPINTFLAG0   at 16#107# range 0 .. 7;
      EPINTENCLR0  at 16#108# range 0 .. 7;
      EPINTENSET0  at 16#109# range 0 .. 7;
      EPCFG1       at 16#120# range 0 .. 7;
      EPSTATUSCLR1 at 16#124# range 0 .. 7;
      EPSTATUSSET1 at 16#125# range 0 .. 7;
      EPSTATUS1    at 16#126# range 0 .. 7;
      EPINTFLAG1   at 16#127# range 0 .. 7;
      EPINTENCLR1  at 16#128# range 0 .. 7;
      EPINTENSET1  at 16#129# range 0 .. 7;
      EPCFG2       at 16#140# range 0 .. 7;
      EPSTATUSCLR2 at 16#144# range 0 .. 7;
      EPSTATUSSET2 at 16#145# range 0 .. 7;
      EPSTATUS2    at 16#146# range 0 .. 7;
      EPINTFLAG2   at 16#147# range 0 .. 7;
      EPINTENCLR2  at 16#148# range 0 .. 7;
      EPINTENSET2  at 16#149# range 0 .. 7;
      EPCFG3       at 16#160# range 0 .. 7;
      EPSTATUSCLR3 at 16#164# range 0 .. 7;
      EPSTATUSSET3 at 16#165# range 0 .. 7;
      EPSTATUS3    at 16#166# range 0 .. 7;
      EPINTFLAG3   at 16#167# range 0 .. 7;
      EPINTENCLR3  at 16#168# range 0 .. 7;
      EPINTENSET3  at 16#169# range 0 .. 7;
      EPCFG4       at 16#180# range 0 .. 7;
      EPSTATUSCLR4 at 16#184# range 0 .. 7;
      EPSTATUSSET4 at 16#185# range 0 .. 7;
      EPSTATUS4    at 16#186# range 0 .. 7;
      EPINTFLAG4   at 16#187# range 0 .. 7;
      EPINTENCLR4  at 16#188# range 0 .. 7;
      EPINTENSET4  at 16#189# range 0 .. 7;
      EPCFG5       at 16#1A0# range 0 .. 7;
      EPSTATUSCLR5 at 16#1A4# range 0 .. 7;
      EPSTATUSSET5 at 16#1A5# range 0 .. 7;
      EPSTATUS5    at 16#1A6# range 0 .. 7;
      EPINTFLAG5   at 16#1A7# range 0 .. 7;
      EPINTENCLR5  at 16#1A8# range 0 .. 7;
      EPINTENSET5  at 16#1A9# range 0 .. 7;
      EPCFG6       at 16#1C0# range 0 .. 7;
      EPSTATUSCLR6 at 16#1C4# range 0 .. 7;
      EPSTATUSSET6 at 16#1C5# range 0 .. 7;
      EPSTATUS6    at 16#1C6# range 0 .. 7;
      EPINTFLAG6   at 16#1C7# range 0 .. 7;
      EPINTENCLR6  at 16#1C8# range 0 .. 7;
      EPINTENSET6  at 16#1C9# range 0 .. 7;
      EPCFG7       at 16#1E0# range 0 .. 7;
      EPSTATUSCLR7 at 16#1E4# range 0 .. 7;
      EPSTATUSSET7 at 16#1E5# range 0 .. 7;
      EPSTATUS7    at 16#1E6# range 0 .. 7;
      EPINTFLAG7   at 16#1E7# range 0 .. 7;
      EPINTENCLR7  at 16#1E8# range 0 .. 7;
      EPINTENSET7  at 16#1E9# range 0 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Serial Bus
   type USB_Peripheral is record
      --  USB is Device
      USB_DEVICE : aliased UsbDevice_Cluster;
   end record
     with Volatile;

   for USB_Peripheral use record
      USB_DEVICE at 0 range 0 .. 3935;
   end record;

   --  Universal Serial Bus
   USB_Periph : aliased USB_Peripheral
     with Import, Address => System'To_Address (16#41000000#);

end SAM_SVD.USB;
