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

--  This spec has been automatically generated from ATSAM4LS8B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.USBC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype USBC_UDCON_UADD_Field is HAL.UInt7;
   subtype USBC_UDCON_SPDCONF_Field is HAL.UInt2;

   --  Device General Control Register
   type USBC_UDCON_Register is record
      --  USB Address
      UADD           : USBC_UDCON_UADD_Field := 16#0#;
      --  Address Enable
      ADDEN          : Boolean := False;
      --  Detach
      DETACH         : Boolean := True;
      --  Remote Wake-Up
      RMWKUP         : Boolean := False;
      --  Speed configuration
      SPDCONF        : USBC_UDCON_SPDCONF_Field := 16#0#;
      --  Low Speed Mode Force
      LS             : Boolean := False;
      --  Test mode J
      TSTJ           : Boolean := False;
      --  Test mode K
      TSTK           : Boolean := False;
      --  Test Packet mode
      TSTPCKT        : Boolean := False;
      --  Specific Operational mode
      OPMODE2        : Boolean := False;
      --  Global NAK
      GNAK           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDCON_Register use record
      UADD           at 0 range 0 .. 6;
      ADDEN          at 0 range 7 .. 7;
      DETACH         at 0 range 8 .. 8;
      RMWKUP         at 0 range 9 .. 9;
      SPDCONF        at 0 range 10 .. 11;
      LS             at 0 range 12 .. 12;
      TSTJ           at 0 range 13 .. 13;
      TSTK           at 0 range 14 .. 14;
      TSTPCKT        at 0 range 15 .. 15;
      OPMODE2        at 0 range 16 .. 16;
      GNAK           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Device Global Interupt Register
   type USBC_UDINT_Register is record
      --  Read-only. Suspend Interrupt
      SUSP           : Boolean;
      --  Read-only. Micro Start of Frame Interrupt
      MSOF           : Boolean;
      --  Read-only. Start of Frame Interrupt
      SOF            : Boolean;
      --  Read-only. End of Reset Interrupt
      EORST          : Boolean;
      --  Read-only. Wake-Up Interrupt
      WAKEUP         : Boolean;
      --  Read-only. End Of Resume Interrupt
      EORSM          : Boolean;
      --  Read-only. Upstream Resume Interrupt
      UPRSM          : Boolean;
      --  unspecified
      Reserved_7_11  : HAL.UInt5;
      --  Read-only. Endpoint 0 Interrupt
      EP0INT         : Boolean;
      --  Read-only. Endpoint 1 Interrupt
      EP1INT         : Boolean;
      --  Read-only. Endpoint 2 Interrupt
      EP2INT         : Boolean;
      --  Read-only. Endpoint 3 Interrupt
      EP3INT         : Boolean;
      --  Read-only. Endpoint 4 Interrupt
      EP4INT         : Boolean;
      --  Read-only. Endpoint 5 Interrupt
      EP5INT         : Boolean;
      --  Read-only. Endpoint 6 Interrupt
      EP6INT         : Boolean;
      --  Read-only. Endpoint 7 Interrupt
      EP7INT         : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINT_Register use record
      SUSP           at 0 range 0 .. 0;
      MSOF           at 0 range 1 .. 1;
      SOF            at 0 range 2 .. 2;
      EORST          at 0 range 3 .. 3;
      WAKEUP         at 0 range 4 .. 4;
      EORSM          at 0 range 5 .. 5;
      UPRSM          at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INT         at 0 range 12 .. 12;
      EP1INT         at 0 range 13 .. 13;
      EP2INT         at 0 range 14 .. 14;
      EP3INT         at 0 range 15 .. 15;
      EP4INT         at 0 range 16 .. 16;
      EP5INT         at 0 range 17 .. 17;
      EP6INT         at 0 range 18 .. 18;
      EP7INT         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Global Interrupt Clear Register
   type USBC_UDINTCLR_Register is record
      --  Write-only. SUSP Interrupt Clear
      SUSPC         : Boolean := False;
      --  Write-only. MSOF Interrupt Clear
      MSOFC         : Boolean := False;
      --  Write-only. SOF Interrupt Clear
      SOFC          : Boolean := False;
      --  Write-only. EORST Interrupt Clear
      EORSTC        : Boolean := False;
      --  Write-only. WAKEUP Interrupt Clear
      WAKEUPC       : Boolean := False;
      --  Write-only. EORSM Interrupt Clear
      EORSMC        : Boolean := False;
      --  Write-only. UPRSM Interrupt Clear
      UPRSMC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTCLR_Register use record
      SUSPC         at 0 range 0 .. 0;
      MSOFC         at 0 range 1 .. 1;
      SOFC          at 0 range 2 .. 2;
      EORSTC        at 0 range 3 .. 3;
      WAKEUPC       at 0 range 4 .. 4;
      EORSMC        at 0 range 5 .. 5;
      UPRSMC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Device Global Interrupt Set Regsiter
   type USBC_UDINTSET_Register is record
      --  Write-only. SUSP Interrupt Set
      SUSPS         : Boolean := False;
      --  Write-only. MSOF Interrupt Set
      MSOFS         : Boolean := False;
      --  Write-only. SOF Interrupt Set
      SOFS          : Boolean := False;
      --  Write-only. EORST Interrupt Set
      EORSTS        : Boolean := False;
      --  Write-only. WAKEUP Interrupt Set
      WAKEUPS       : Boolean := False;
      --  Write-only. EORSM Interrupt Set
      EORSMS        : Boolean := False;
      --  Write-only. UPRSM Interrupt Set
      UPRSMS        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTSET_Register use record
      SUSPS         at 0 range 0 .. 0;
      MSOFS         at 0 range 1 .. 1;
      SOFS          at 0 range 2 .. 2;
      EORSTS        at 0 range 3 .. 3;
      WAKEUPS       at 0 range 4 .. 4;
      EORSMS        at 0 range 5 .. 5;
      UPRSMS        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Device Global Interrupt Enable Register
   type USBC_UDINTE_Register is record
      --  Read-only. SUSP Interrupt Enable
      SUSPE          : Boolean;
      --  Read-only. MSOF Interrupt Enable
      MSOFE          : Boolean;
      --  Read-only. SOF Interrupt Enable
      SOFE           : Boolean;
      --  Read-only. EORST Interrupt Enable
      EORSTE         : Boolean;
      --  Read-only. WAKEUP Interrupt Enable
      WAKEUPE        : Boolean;
      --  Read-only. EORSM Interrupt Enable
      EORSME         : Boolean;
      --  Read-only. UPRSM Interrupt Enable
      UPRSME         : Boolean;
      --  unspecified
      Reserved_7_11  : HAL.UInt5;
      --  Read-only. EP0INT Interrupt Enable
      EP0INTE        : Boolean;
      --  Read-only. EP1INT Interrupt Enable
      EP1INTE        : Boolean;
      --  Read-only. EP2INT Interrupt Enable
      EP2INTE        : Boolean;
      --  Read-only. EP3INT Interrupt Enable
      EP3INTE        : Boolean;
      --  Read-only. EP4INT Interrupt Enable
      EP4INTE        : Boolean;
      --  Read-only. EP5INT Interrupt Enable
      EP5INTE        : Boolean;
      --  Read-only. EP6INT Interrupt Enable
      EP6INTE        : Boolean;
      --  Read-only. EP7INT Interrupt Enable
      EP7INTE        : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTE_Register use record
      SUSPE          at 0 range 0 .. 0;
      MSOFE          at 0 range 1 .. 1;
      SOFE           at 0 range 2 .. 2;
      EORSTE         at 0 range 3 .. 3;
      WAKEUPE        at 0 range 4 .. 4;
      EORSME         at 0 range 5 .. 5;
      UPRSME         at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INTE        at 0 range 12 .. 12;
      EP1INTE        at 0 range 13 .. 13;
      EP2INTE        at 0 range 14 .. 14;
      EP3INTE        at 0 range 15 .. 15;
      EP4INTE        at 0 range 16 .. 16;
      EP5INTE        at 0 range 17 .. 17;
      EP6INTE        at 0 range 18 .. 18;
      EP7INTE        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Global Interrupt Enable Clear Register
   type USBC_UDINTECLR_Register is record
      --  Write-only. SUSP Interrupt Enable Clear
      SUSPEC         : Boolean := False;
      --  Write-only. MSOF Interrupt Enable Clear
      MSOFEC         : Boolean := False;
      --  Write-only. SOF Interrupt Enable Clear
      SOFEC          : Boolean := False;
      --  Write-only. EORST Interrupt Enable Clear
      EORSTEC        : Boolean := False;
      --  Write-only. WAKEUP Interrupt Enable Clear
      WAKEUPEC       : Boolean := False;
      --  Write-only. EORSM Interrupt Enable Clear
      EORSMEC        : Boolean := False;
      --  Write-only. UPRSM Interrupt Enable Clear
      UPRSMEC        : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Write-only. EP0INT Interrupt Enable Clear
      EP0INTEC       : Boolean := False;
      --  Write-only. EP1INT Interrupt Enable Clear
      EP1INTEC       : Boolean := False;
      --  Write-only. EP2INT Interrupt Enable Clear
      EP2INTEC       : Boolean := False;
      --  Write-only. EP3INT Interrupt Enable Clear
      EP3INTEC       : Boolean := False;
      --  Write-only. EP4INT Interrupt Enable Clear
      EP4INTEC       : Boolean := False;
      --  Write-only. EP5INT Interrupt Enable Clear
      EP5INTEC       : Boolean := False;
      --  Write-only. EP6INT Interrupt Enable Clear
      EP6INTEC       : Boolean := False;
      --  Write-only. EP7INT Interrupt Enable Clear
      EP7INTEC       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTECLR_Register use record
      SUSPEC         at 0 range 0 .. 0;
      MSOFEC         at 0 range 1 .. 1;
      SOFEC          at 0 range 2 .. 2;
      EORSTEC        at 0 range 3 .. 3;
      WAKEUPEC       at 0 range 4 .. 4;
      EORSMEC        at 0 range 5 .. 5;
      UPRSMEC        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INTEC       at 0 range 12 .. 12;
      EP1INTEC       at 0 range 13 .. 13;
      EP2INTEC       at 0 range 14 .. 14;
      EP3INTEC       at 0 range 15 .. 15;
      EP4INTEC       at 0 range 16 .. 16;
      EP5INTEC       at 0 range 17 .. 17;
      EP6INTEC       at 0 range 18 .. 18;
      EP7INTEC       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Device Global Interrupt Enable Set Register
   type USBC_UDINTESET_Register is record
      --  Write-only. SUSP Interrupt Enable Set
      SUSPES         : Boolean := False;
      --  Write-only. MSOF Interrupt Enable Set
      MSOFES         : Boolean := False;
      --  Write-only. SOF Interrupt Enable Set
      SOFES          : Boolean := False;
      --  Write-only. EORST Interrupt Enable Set
      EORSTES        : Boolean := False;
      --  Write-only. WAKEUP Interrupt Enable Set
      WAKEUPES       : Boolean := False;
      --  Write-only. EORSM Interrupt Enable Set
      EORSMES        : Boolean := False;
      --  Write-only. UPRSM Interrupt Enable Set
      UPRSMES        : Boolean := False;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  Write-only. EP0INT Interrupt Enable Set
      EP0INTES       : Boolean := False;
      --  Write-only. EP1INT Interrupt Enable Set
      EP1INTES       : Boolean := False;
      --  Write-only. EP2INT Interrupt Enable Set
      EP2INTES       : Boolean := False;
      --  Write-only. EP3INT Interrupt Enable Set
      EP3INTES       : Boolean := False;
      --  Write-only. EP4INT Interrupt Enable Set
      EP4INTES       : Boolean := False;
      --  Write-only. EP5INT Interrupt Enable Set
      EP5INTES       : Boolean := False;
      --  Write-only. EP6INT Interrupt Enable Set
      EP6INTES       : Boolean := False;
      --  Write-only. EP7INT Interrupt Enable Set
      EP7INTES       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDINTESET_Register use record
      SUSPES         at 0 range 0 .. 0;
      MSOFES         at 0 range 1 .. 1;
      SOFES          at 0 range 2 .. 2;
      EORSTES        at 0 range 3 .. 3;
      WAKEUPES       at 0 range 4 .. 4;
      EORSMES        at 0 range 5 .. 5;
      UPRSMES        at 0 range 6 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      EP0INTES       at 0 range 12 .. 12;
      EP1INTES       at 0 range 13 .. 13;
      EP2INTES       at 0 range 14 .. 14;
      EP3INTES       at 0 range 15 .. 15;
      EP4INTES       at 0 range 16 .. 16;
      EP5INTES       at 0 range 17 .. 17;
      EP6INTES       at 0 range 18 .. 18;
      EP7INTES       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  USBC_UERST_EPEN array
   type USBC_UERST_EPEN_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for USBC_UERST_EPEN
   type USBC_UERST_EPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EPEN as a value
            Val : HAL.UInt8;
         when True =>
            --  EPEN as an array
            Arr : USBC_UERST_EPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for USBC_UERST_EPEN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Endpoint Enable/Reset Register
   type USBC_UERST_Register is record
      --  Endpoint0 Enable
      EPEN          : USBC_UERST_EPEN_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UERST_Register use record
      EPEN          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USBC_UDFNUM_MFNUM_Field is HAL.UInt3;
   subtype USBC_UDFNUM_FNUM_Field is HAL.UInt11;

   --  Device Frame Number Register
   type USBC_UDFNUM_Register is record
      --  Read-only. Micro Frame Number
      MFNUM          : USBC_UDFNUM_MFNUM_Field;
      --  Read-only. Frame Number
      FNUM           : USBC_UDFNUM_FNUM_Field;
      --  unspecified
      Reserved_14_14 : HAL.Bit;
      --  Read-only. Frame Number CRC Error
      FNCERR         : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UDFNUM_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      FNCERR         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Endpoint Bank
   type UECFG0_EPBKSelect is
     (
      Single,
      Double)
     with Size => 1;
   for UECFG0_EPBKSelect use
     (Single => 0,
      Double => 1);

   --  Endpoint Size
   type UECFG0_EPSIZESelect is
     (
      UECFG0_EPSIZESelect_8,
      UECFG0_EPSIZESelect_16,
      UECFG0_EPSIZESelect_32,
      UECFG0_EPSIZESelect_64,
      UECFG0_EPSIZESelect_128,
      UECFG0_EPSIZESelect_256,
      UECFG0_EPSIZESelect_512,
      UECFG0_EPSIZESelect_1024)
     with Size => 3;
   for UECFG0_EPSIZESelect use
     (UECFG0_EPSIZESelect_8 => 0,
      UECFG0_EPSIZESelect_16 => 1,
      UECFG0_EPSIZESelect_32 => 2,
      UECFG0_EPSIZESelect_64 => 3,
      UECFG0_EPSIZESelect_128 => 4,
      UECFG0_EPSIZESelect_256 => 5,
      UECFG0_EPSIZESelect_512 => 6,
      UECFG0_EPSIZESelect_1024 => 7);

   --  Endpoint Direction
   type UECFG0_EPDIRSelect is
     (
      Out_k,
      In_k)
     with Size => 1;
   for UECFG0_EPDIRSelect use
     (Out_k => 0,
      In_k => 1);

   --  Endpoint Type
   type UECFG0_EPTYPESelect is
     (
      Control,
      Isochronous,
      Bulk,
      Interrupt)
     with Size => 2;
   for UECFG0_EPTYPESelect use
     (Control => 0,
      Isochronous => 1,
      Bulk => 2,
      Interrupt => 3);

   subtype UECFG_REPNB_Field is HAL.UInt4;

   --  Endpoint Configuration Register
   type UECFG_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Endpoint Bank
      EPBK           : UECFG0_EPBKSelect := SAM_SVD.USBC.Single;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Endpoint Size
      EPSIZE         : UECFG0_EPSIZESelect :=
                        SAM_SVD.USBC.UECFG0_EPSIZESelect_8;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Endpoint Direction
      EPDIR          : UECFG0_EPDIRSelect := SAM_SVD.USBC.Out_k;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Endpoint Type
      EPTYPE         : UECFG0_EPTYPESelect := SAM_SVD.USBC.Control;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Redirected Endpoint Number
      REPNB          : UECFG_REPNB_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UECFG_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      EPBK           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EPSIZE         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      EPDIR          at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      EPTYPE         at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      REPNB          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype UESTA_DTSEQ_Field is HAL.UInt2;
   subtype UESTA_NBUSYBK_Field is HAL.UInt2;
   subtype UESTA_CURRBK_Field is HAL.UInt2;

   --  Control Direction
   type UESTA0_CTRLDIRSelect is
     (
      Out_k,
      In_k)
     with Size => 1;
   for UESTA0_CTRLDIRSelect use
     (Out_k => 0,
      In_k => 1);

   --  Endpoint Status Register
   type UESTA_Register is record
      --  Read-only. Transmitted IN Data Interrupt
      TXINI          : Boolean;
      --  Read-only. Received OUT Data Interrupt
      RXOUTI         : Boolean;
      --  Read-only. Received SETUP Interrupt
      RXSTPI         : Boolean;
      --  Read-only. NAKed OUT Interrupt
      NAKOUTI        : Boolean;
      --  Read-only. NAKed IN Interrupt
      NAKINI         : Boolean;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. STALLed Interrupt
      STALLEDI       : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : UESTA_DTSEQ_Field;
      --  unspecified
      Reserved_10_10 : HAL.Bit;
      --  Read-only. Ram Access Error Interrupt
      RAMACERI       : Boolean;
      --  Read-only. Number Of Busy Banks
      NBUSYBK        : UESTA_NBUSYBK_Field;
      --  Read-only. Current Bank
      CURRBK         : UESTA_CURRBK_Field;
      --  unspecified
      Reserved_16_16 : HAL.Bit;
      --  Read-only. Control Direction
      CTRLDIR        : UESTA0_CTRLDIRSelect;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UESTA_Register use record
      TXINI          at 0 range 0 .. 0;
      RXOUTI         at 0 range 1 .. 1;
      RXSTPI         at 0 range 2 .. 2;
      NAKOUTI        at 0 range 3 .. 3;
      NAKINI         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDI       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RAMACERI       at 0 range 11 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      CTRLDIR        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA0CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA0CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA1CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA1CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA2CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA2CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA3CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA3CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA4CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA4CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA5CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA5CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA6CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA6CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Clear Register
   type USBC_UESTA7CLR_Register is record
      --  Write-only. TXINI Clear
      TXINIC         : Boolean := False;
      --  Write-only. RXOUTI Clear
      RXOUTIC        : Boolean := False;
      --  Write-only. RXSTPI Clear
      RXSTPIC        : Boolean := False;
      --  Write-only. NAKOUTI Clear
      NAKOUTIC       : Boolean := False;
      --  Write-only. NAKINI Clear
      NAKINIC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Clear
      STALLEDIC      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA7CLR_Register use record
      TXINIC         at 0 range 0 .. 0;
      RXOUTIC        at 0 range 1 .. 1;
      RXSTPIC        at 0 range 2 .. 2;
      NAKOUTIC       at 0 range 3 .. 3;
      NAKINIC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIC      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIC      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA0SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA0SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA1SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA1SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA2SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA2SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA3SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA3SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA4SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA4SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA5SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA5SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA6SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA6SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Endpoint Status Set Register
   type USBC_UESTA7SET_Register is record
      --  Write-only. TXINI Set
      TXINIS         : Boolean := False;
      --  Write-only. RXOUTI Set
      RXOUTIS        : Boolean := False;
      --  Write-only. RXSTPI Set
      RXSTPIS        : Boolean := False;
      --  Write-only. NAKOUTI Set
      NAKOUTIS       : Boolean := False;
      --  Write-only. NAKINI Set
      NAKINIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDI Set
      STALLEDIS      : Boolean := False;
      --  unspecified
      Reserved_7_10  : HAL.UInt4 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. NBUSYBK Set
      NBUSYBKS       : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UESTA7SET_Register use record
      TXINIS         at 0 range 0 .. 0;
      RXOUTIS        at 0 range 1 .. 1;
      RXSTPIS        at 0 range 2 .. 2;
      NAKOUTIS       at 0 range 3 .. 3;
      NAKINIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDIS      at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      RAMACERIS      at 0 range 11 .. 11;
      NBUSYBKS       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  UECON_BUSY array
   type UECON_BUSY_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for UECON_BUSY
   type UECON_BUSY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BUSY as a value
            Val : HAL.UInt2;
         when True =>
            --  BUSY as an array
            Arr : UECON_BUSY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UECON_BUSY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Endpoint Control Register
   type UECON_Register is record
      --  Read-only. TXIN Interrupt Enable
      TXINE          : Boolean;
      --  Read-only. RXOUT Interrupt Enable
      RXOUTE         : Boolean;
      --  Read-only. RXSTP Interrupt Enable
      RXSTPE         : Boolean;
      --  Read-only. NAKOUT Interrupt Enable
      NAKOUTE        : Boolean;
      --  Read-only. NAKIN Interrupt Enable
      NAKINE         : Boolean;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. STALLED Interrupt Enable
      STALLEDE       : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. No Reply
      NREPLY         : Boolean;
      --  unspecified
      Reserved_9_10  : HAL.UInt2;
      --  Read-only. RAMACER Interrupt Enable
      RAMACERE       : Boolean;
      --  Read-only. Number of Busy Banks Interrupt Enable
      NBUSYBKE       : Boolean;
      --  Read-only. Kill IN Bank
      KILLBK         : Boolean;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_16 : HAL.UInt2;
      --  Read-only. NYET token disable
      NYETDIS        : Boolean;
      --  Read-only. Reset Data Toggle
      RSTDT          : Boolean;
      --  Read-only. STALL Request
      STALLRQ        : Boolean;
      --  unspecified
      Reserved_20_23 : HAL.UInt4;
      --  Read-only. Busy Bank1 Enable
      BUSY           : UECON_BUSY_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UECON_Register use record
      TXINE          at 0 range 0 .. 0;
      RXOUTE         at 0 range 1 .. 1;
      RXSTPE         at 0 range 2 .. 2;
      NAKOUTE        at 0 range 3 .. 3;
      NAKINE         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDE       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLY         at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERE       at 0 range 11 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      KILLBK         at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDIS        at 0 range 17 .. 17;
      RSTDT          at 0 range 18 .. 18;
      STALLRQ        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON0SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON0SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON1SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON1SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON2SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON2SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON3SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON3SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON4SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON4SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON5SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON5SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON6SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON6SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Set Register
   type USBC_UECON7SET_Register is record
      --  Write-only. TXINE Set
      TXINES         : Boolean := False;
      --  Write-only. RXOUTE Set
      RXOUTES        : Boolean := False;
      --  Write-only. RXSTPE Set
      RXSTPES        : Boolean := False;
      --  Write-only. NAKOUTE Set
      NAKOUTES       : Boolean := False;
      --  Write-only. NAKINE Set
      NAKINES        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Set
      STALLEDES      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Set
      NREPLYS        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  Write-only. KILLBK Set
      KILLBKS        : Boolean := False;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  Write-only. NYETDIS Set
      NYETDISS       : Boolean := False;
      --  Write-only. RSTDT Set
      RSTDTS         : Boolean := False;
      --  Write-only. STALLRQ Set
      STALLRQS       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Set
      BUSY0S         : Boolean := False;
      --  Write-only. BUSY1 Set
      BUSY1S         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON7SET_Register use record
      TXINES         at 0 range 0 .. 0;
      RXOUTES        at 0 range 1 .. 1;
      RXSTPES        at 0 range 2 .. 2;
      NAKOUTES       at 0 range 3 .. 3;
      NAKINES        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDES      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYS        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACERES      at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      KILLBKS        at 0 range 13 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      NYETDISS       at 0 range 17 .. 17;
      RSTDTS         at 0 range 18 .. 18;
      STALLRQS       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0S         at 0 range 24 .. 24;
      BUSY1S         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Endpoint Control Clear Register
   type USBC_UECON0CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXSTPE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLRQ Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON0CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON1CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON1CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON2CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON2CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON3CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON3CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON4CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON4CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON5CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON5CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON6CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON6CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  TXINE Clear
   type USBC_UECON7CLR_Register is record
      --  Write-only. TXINE Clear
      TXINEC         : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXOUTEC        : Boolean := False;
      --  Write-only. RXOUTE Clear
      RXSTPEC        : Boolean := False;
      --  Write-only. NAKOUTE Clear
      NAKOUTEC       : Boolean := False;
      --  Write-only. NAKINE Clear
      NAKINEC        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Write-only. RXSTPE Clear
      STALLEDEC      : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. NREPLY Clear
      NREPLYC        : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. NYETDIS Clear
      NYETDISC       : Boolean := False;
      --  unspecified
      Reserved_18_18 : HAL.Bit := 16#0#;
      --  Write-only. STALLEDE Clear
      STALLRQC       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Write-only. BUSY0 Clear
      BUSY0C         : Boolean := False;
      --  Write-only. BUSY1 Clear
      BUSY1C         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UECON7CLR_Register use record
      TXINEC         at 0 range 0 .. 0;
      RXOUTEC        at 0 range 1 .. 1;
      RXSTPEC        at 0 range 2 .. 2;
      NAKOUTEC       at 0 range 3 .. 3;
      NAKINEC        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      STALLEDEC      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      NREPLYC        at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RAMACEREC      at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NYETDISC       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      STALLRQC       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BUSY0C         at 0 range 24 .. 24;
      BUSY1C         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype USBC_UHCON_SPDCONF_Field is HAL.UInt2;

   --  Host General Control Register
   type USBC_UHCON_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  SOF Enable
      SOFE           : Boolean := False;
      --  Send USB Reset
      RESET          : Boolean := False;
      --  Send USB Resume
      RESUME         : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Speed Configuration
      SPDCONF        : USBC_UHCON_SPDCONF_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Test J
      TSTJ           : Boolean := False;
      --  Test K
      TSTK           : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHCON_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SOFE           at 0 range 8 .. 8;
      RESET          at 0 range 9 .. 9;
      RESUME         at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      SPDCONF        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      TSTJ           at 0 range 16 .. 16;
      TSTK           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Host Global Interrupt Register
   type USBC_UHINT_Register is record
      --  Read-only. Device Connection Interrupt
      DCONNI         : Boolean;
      --  Read-only. Device Disconnection Interrupt
      DDISCI         : Boolean;
      --  Read-only. USB Reset Sent Interrupt
      RSTI           : Boolean;
      --  Read-only. Downstream Resume Sent Interrupt
      RSMEDI         : Boolean;
      --  Read-only. Upstream Resume Received Interrupt
      RXRSMI         : Boolean;
      --  Read-only. Host SOF Interrupt
      HSOFI          : Boolean;
      --  Read-only. Host Wake-Up Interrupt
      HWUPI          : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Pipe 0 Interrupt
      P0INT          : Boolean;
      --  Read-only. Pipe 1 Interrupt
      P1INT          : Boolean;
      --  Read-only. Pipe 2 Interrupt
      P2INT          : Boolean;
      --  Read-only. Pipe 3 Interrupt
      P3INT          : Boolean;
      --  Read-only. Pipe 4 Interrupt
      P4INT          : Boolean;
      --  Read-only. Pipe 5 Interrupt
      P5INT          : Boolean;
      --  Read-only. Pipe 6 Interrupt
      P6INT          : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINT_Register use record
      DCONNI         at 0 range 0 .. 0;
      DDISCI         at 0 range 1 .. 1;
      RSTI           at 0 range 2 .. 2;
      RSMEDI         at 0 range 3 .. 3;
      RXRSMI         at 0 range 4 .. 4;
      HSOFI          at 0 range 5 .. 5;
      HWUPI          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INT          at 0 range 8 .. 8;
      P1INT          at 0 range 9 .. 9;
      P2INT          at 0 range 10 .. 10;
      P3INT          at 0 range 11 .. 11;
      P4INT          at 0 range 12 .. 12;
      P5INT          at 0 range 13 .. 13;
      P6INT          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Host Global Interrrupt Clear Register
   type USBC_UHINTCLR_Register is record
      --  Write-only. DCONNI Clear
      DCONNIC       : Boolean := False;
      --  Write-only. DDISCI Clear
      DDISCIC       : Boolean := False;
      --  Write-only. RSTI Clear
      RSTIC         : Boolean := False;
      --  Write-only. RSMEDI Clear
      RSMEDIC       : Boolean := False;
      --  Write-only. RXRSMI Clear
      RXRSMIC       : Boolean := False;
      --  Write-only. HSOFI Clear
      HSOFIC        : Boolean := False;
      --  Write-only. HWUPI Clear
      HWUPIC        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTCLR_Register use record
      DCONNIC       at 0 range 0 .. 0;
      DDISCIC       at 0 range 1 .. 1;
      RSTIC         at 0 range 2 .. 2;
      RSMEDIC       at 0 range 3 .. 3;
      RXRSMIC       at 0 range 4 .. 4;
      HSOFIC        at 0 range 5 .. 5;
      HWUPIC        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Host Global Interrupt Set Register
   type USBC_UHINTSET_Register is record
      --  Write-only. DCONNI Set
      DCONNIS       : Boolean := False;
      --  Write-only. DDISCI Set
      DDISCIS       : Boolean := False;
      --  Write-only. RSTI Set
      RSTIS         : Boolean := False;
      --  Write-only. RSMEDI Set
      RSMEDIS       : Boolean := False;
      --  Write-only. RXRSMI Set
      RXRSMIS       : Boolean := False;
      --  Write-only. HSOFI Set
      HSOFIS        : Boolean := False;
      --  Write-only. HWUPI Set
      HWUPIS        : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTSET_Register use record
      DCONNIS       at 0 range 0 .. 0;
      DDISCIS       at 0 range 1 .. 1;
      RSTIS         at 0 range 2 .. 2;
      RSMEDIS       at 0 range 3 .. 3;
      RXRSMIS       at 0 range 4 .. 4;
      HSOFIS        at 0 range 5 .. 5;
      HWUPIS        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Host Global Interrupt Enable Register
   type USBC_UHINTE_Register is record
      --  Read-only. DCONNI Enable
      DCONNIE        : Boolean;
      --  Read-only. DDISCI Enable
      DDISCIE        : Boolean;
      --  Read-only. RSTI Enable
      RSTIE          : Boolean;
      --  Read-only. RSMEDI Enable
      RSMEDIE        : Boolean;
      --  Read-only. RXRSMI Enable
      RXRSMIE        : Boolean;
      --  Read-only. HSOFI Enable
      HSOFIE         : Boolean;
      --  Read-only. HWUPI Enable
      HWUPIE         : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. P0INT Enable
      P0INTE         : Boolean;
      --  Read-only. P1INT Enable
      P1INTE         : Boolean;
      --  Read-only. P2INT Enable
      P2INTE         : Boolean;
      --  Read-only. P3INT Enable
      P3INTE         : Boolean;
      --  Read-only. P4INT Enable
      P4INTE         : Boolean;
      --  Read-only. P5INT Enable
      P5INTE         : Boolean;
      --  Read-only. P6INT Enable
      P6INTE         : Boolean;
      --  Read-only. P7INT Enable
      P7INTE         : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTE_Register use record
      DCONNIE        at 0 range 0 .. 0;
      DDISCIE        at 0 range 1 .. 1;
      RSTIE          at 0 range 2 .. 2;
      RSMEDIE        at 0 range 3 .. 3;
      RXRSMIE        at 0 range 4 .. 4;
      HSOFIE         at 0 range 5 .. 5;
      HWUPIE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INTE         at 0 range 8 .. 8;
      P1INTE         at 0 range 9 .. 9;
      P2INTE         at 0 range 10 .. 10;
      P3INTE         at 0 range 11 .. 11;
      P4INTE         at 0 range 12 .. 12;
      P5INTE         at 0 range 13 .. 13;
      P6INTE         at 0 range 14 .. 14;
      P7INTE         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Host Global Interrupt Enable Clear Register
   type USBC_UHINTECLR_Register is record
      --  Write-only. DCONNIE Clear
      DCONNIEC       : Boolean := False;
      --  Write-only. DDISCIE Clear
      DDISCIEC       : Boolean := False;
      --  Write-only. RSTIE Clear
      RSTIEC         : Boolean := False;
      --  Write-only. RSMEDIE Clear
      RSMEDIEC       : Boolean := False;
      --  Write-only. RXRSMIE Clear
      RXRSMIEC       : Boolean := False;
      --  Write-only. HSOFIE Clear
      HSOFIEC        : Boolean := False;
      --  Write-only. HWUPIE Clear
      HWUPIEC        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. P0INTE Clear
      P0INTEC        : Boolean := False;
      --  Write-only. P1INTE Clear
      P1INTEC        : Boolean := False;
      --  Write-only. P2INTE Clear
      P2INTEC        : Boolean := False;
      --  Write-only. P3INTE Clear
      P3INTEC        : Boolean := False;
      --  Write-only. P4INTE Clear
      P4INTEC        : Boolean := False;
      --  Write-only. P5INTE Clear
      P5INTEC        : Boolean := False;
      --  Write-only. P6INTE Clear
      P6INTEC        : Boolean := False;
      --  Write-only. P7INTE Clear
      P7INTEC        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTECLR_Register use record
      DCONNIEC       at 0 range 0 .. 0;
      DDISCIEC       at 0 range 1 .. 1;
      RSTIEC         at 0 range 2 .. 2;
      RSMEDIEC       at 0 range 3 .. 3;
      RXRSMIEC       at 0 range 4 .. 4;
      HSOFIEC        at 0 range 5 .. 5;
      HWUPIEC        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INTEC        at 0 range 8 .. 8;
      P1INTEC        at 0 range 9 .. 9;
      P2INTEC        at 0 range 10 .. 10;
      P3INTEC        at 0 range 11 .. 11;
      P4INTEC        at 0 range 12 .. 12;
      P5INTEC        at 0 range 13 .. 13;
      P6INTEC        at 0 range 14 .. 14;
      P7INTEC        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Host Global Interrupt Enable Set Register
   type USBC_UHINTESET_Register is record
      --  Write-only. DCONNIE Set
      DCONNIES       : Boolean := False;
      --  Write-only. DDISCIE Set
      DDISCIES       : Boolean := False;
      --  Write-only. RSTIE Set
      RSTIES         : Boolean := False;
      --  Write-only. RSMEDIE Set
      RSMEDIES       : Boolean := False;
      --  Write-only. RXRSMIE Set
      RXRSMIES       : Boolean := False;
      --  Write-only. HSOFIE Set
      HSOFIES        : Boolean := False;
      --  Write-only. HWUPIE Set
      HWUPIES        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. P0INTE Set
      P0INTES        : Boolean := False;
      --  Write-only. P1INTE Set
      P1INTES        : Boolean := False;
      --  Write-only. P2INTE Set
      P2INTES        : Boolean := False;
      --  Write-only. P3INTE Set
      P3INTES        : Boolean := False;
      --  Write-only. P4INTE Set
      P4INTES        : Boolean := False;
      --  Write-only. P5INTE Set
      P5INTES        : Boolean := False;
      --  Write-only. P6INTE Set
      P6INTES        : Boolean := False;
      --  Write-only. P7INTE Set
      P7INTES        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHINTESET_Register use record
      DCONNIES       at 0 range 0 .. 0;
      DDISCIES       at 0 range 1 .. 1;
      RSTIES         at 0 range 2 .. 2;
      RSMEDIES       at 0 range 3 .. 3;
      RXRSMIES       at 0 range 4 .. 4;
      HSOFIES        at 0 range 5 .. 5;
      HWUPIES        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P0INTES        at 0 range 8 .. 8;
      P1INTES        at 0 range 9 .. 9;
      P2INTES        at 0 range 10 .. 10;
      P3INTES        at 0 range 11 .. 11;
      P4INTES        at 0 range 12 .. 12;
      P5INTES        at 0 range 13 .. 13;
      P6INTES        at 0 range 14 .. 14;
      P7INTES        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  USBC_UPRST_PEN array
   type USBC_UPRST_PEN_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for USBC_UPRST_PEN
   type USBC_UPRST_PEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEN as a value
            Val : HAL.UInt8;
         when True =>
            --  PEN as an array
            Arr : USBC_UPRST_PEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for USBC_UPRST_PEN_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Pipe Reset Register
   type USBC_UPRST_Register is record
      --  Pipe0 Enable
      PEN           : USBC_UPRST_PEN_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPRST_Register use record
      PEN           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USBC_UHFNUM_MFNUM_Field is HAL.UInt3;
   subtype USBC_UHFNUM_FNUM_Field is HAL.UInt11;
   subtype USBC_UHFNUM_FLENHIGH_Field is HAL.UInt8;

   --  Host Frame Number Register
   type USBC_UHFNUM_Register is record
      --  Read-only. Micro Frame Number
      MFNUM          : USBC_UHFNUM_MFNUM_Field := 16#0#;
      --  Frame Number
      FNUM           : USBC_UHFNUM_FNUM_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Read-only. Frame Length
      FLENHIGH       : USBC_UHFNUM_FLENHIGH_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHFNUM_Register use record
      MFNUM          at 0 range 0 .. 2;
      FNUM           at 0 range 3 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FLENHIGH       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype USBC_UHSOFC_FLENC_Field is HAL.UInt14;

   --  Host Start of Frame Control Register
   type USBC_UHSOFC_Register is record
      --  Frame Length Control
      FLENC          : USBC_UHSOFC_FLENC_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Frame Length Control Enable
      FLENCE         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UHSOFC_Register use record
      FLENC          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FLENCE         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Pipe Banks
   type UPCFG0_PBKSelect is
     (
      Single,
      Double)
     with Size => 1;
   for UPCFG0_PBKSelect use
     (Single => 0,
      Double => 1);

   --  Pipe Size
   type UPCFG0_PSIZESelect is
     (
      UPCFG0_PSIZESelect_8,
      UPCFG0_PSIZESelect_16,
      UPCFG0_PSIZESelect_32,
      UPCFG0_PSIZESelect_64,
      UPCFG0_PSIZESelect_128,
      UPCFG0_PSIZESelect_256,
      UPCFG0_PSIZESelect_512,
      UPCFG0_PSIZESelect_1024)
     with Size => 3;
   for UPCFG0_PSIZESelect use
     (UPCFG0_PSIZESelect_8 => 0,
      UPCFG0_PSIZESelect_16 => 1,
      UPCFG0_PSIZESelect_32 => 2,
      UPCFG0_PSIZESelect_64 => 3,
      UPCFG0_PSIZESelect_128 => 4,
      UPCFG0_PSIZESelect_256 => 5,
      UPCFG0_PSIZESelect_512 => 6,
      UPCFG0_PSIZESelect_1024 => 7);

   --  Pipe Token
   type UPCFG0_PTOKENSelect is
     (
      Setup,
      In_k,
      Out_k)
     with Size => 2;
   for UPCFG0_PTOKENSelect use
     (Setup => 0,
      In_k => 1,
      Out_k => 2);

   --  Pipe Type
   type UPCFG0_PTYPESelect is
     (
      Control,
      Isochronous,
      Bulk,
      Interrupt)
     with Size => 2;
   for UPCFG0_PTYPESelect use
     (Control => 0,
      Isochronous => 1,
      Bulk => 2,
      Interrupt => 3);

   subtype UPCFG_BINTERVAL_Field is HAL.UInt8;

   --  Pipe Configuration Register
   type UPCFG_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Pipe Banks
      PBK            : UPCFG0_PBKSelect := SAM_SVD.USBC.Single;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Pipe Size
      PSIZE          : UPCFG0_PSIZESelect :=
                        SAM_SVD.USBC.UPCFG0_PSIZESelect_8;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Pipe Token
      PTOKEN         : UPCFG0_PTOKENSelect := SAM_SVD.USBC.Setup;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Pipe Type
      PTYPE          : UPCFG0_PTYPESelect := SAM_SVD.USBC.Control;
      --  unspecified
      Reserved_14_19 : HAL.UInt6 := 16#0#;
      --  Ping Enable
      PINGEN         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  binterval parameter
      BINTERVAL      : UPCFG_BINTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPCFG_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      PBK            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PSIZE          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PTOKEN         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PTYPE          at 0 range 12 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      PINGEN         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BINTERVAL      at 0 range 24 .. 31;
   end record;

   subtype UPSTA_DTSEQ_Field is HAL.UInt2;
   subtype UPSTA_NBUSYBK_Field is HAL.UInt2;
   subtype UPSTA_CURRBK_Field is HAL.UInt2;

   --  Pipe Status Register
   type UPSTA_Register is record
      --  Read-only. Received IN Data Interrupt
      RXINI          : Boolean;
      --  Read-only. Transmitted OUT Data Interrupt
      TXOUTI         : Boolean;
      --  Read-only. Transmitted SETUP Interrupt
      TXSTPI         : Boolean;
      --  Read-only. Pipe Error Interrupt
      PERRI          : Boolean;
      --  Read-only. NAKed Interrupt
      NAKEDI         : Boolean;
      --  Read-only. Errorflow Interrupt
      ERRORFI        : Boolean;
      --  Read-only. Received STALLed Interrupt
      RXSTALLDI      : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Data Toggle Sequence
      DTSEQ          : UPSTA_DTSEQ_Field;
      --  Read-only. Ram Access Error Interrupt
      RAMACERI       : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Number of Busy Bank
      NBUSYBK        : UPSTA_NBUSYBK_Field;
      --  Read-only. Current Bank
      CURRBK         : UPSTA_CURRBK_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPSTA_Register use record
      RXINI          at 0 range 0 .. 0;
      TXOUTI         at 0 range 1 .. 1;
      TXSTPI         at 0 range 2 .. 2;
      PERRI          at 0 range 3 .. 3;
      NAKEDI         at 0 range 4 .. 4;
      ERRORFI        at 0 range 5 .. 5;
      RXSTALLDI      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DTSEQ          at 0 range 8 .. 9;
      RAMACERI       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBK        at 0 range 12 .. 13;
      CURRBK         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA0CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA0CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA1CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA1CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA2CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA2CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA3CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA3CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA4CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA4CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA5CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA5CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA6CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA6CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Clear Register
   type USBC_UPSTA7CLR_Register is record
      --  Write-only. RXINI Clear
      RXINIC         : Boolean := False;
      --  Write-only. TXOUTI Clear
      TXOUTIC        : Boolean := False;
      --  Write-only. TXSTPI Clear
      TXSTPIC        : Boolean := False;
      --  Write-only. PERRI Clear
      PERRIC         : Boolean := False;
      --  Write-only. NAKEDI Clear
      NAKEDIC        : Boolean := False;
      --  Write-only. ERRORFI Clear
      ERRORFIC       : Boolean := False;
      --  Write-only. RXSTALLDI Clear
      RXSTALLDIC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA7CLR_Register use record
      RXINIC         at 0 range 0 .. 0;
      TXOUTIC        at 0 range 1 .. 1;
      TXSTPIC        at 0 range 2 .. 2;
      PERRIC         at 0 range 3 .. 3;
      NAKEDIC        at 0 range 4 .. 4;
      ERRORFIC       at 0 range 5 .. 5;
      RXSTALLDIC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIC      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA0SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA0SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA1SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA1SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA2SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA2SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA3SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA3SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA4SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA4SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA5SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA5SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA6SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA6SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Status Set Register
   type USBC_UPSTA7SET_Register is record
      --  Write-only. RXINI Set
      RXINIS         : Boolean := False;
      --  Write-only. TXOUTI Set
      TXOUTIS        : Boolean := False;
      --  Write-only. TXSTPI Set
      TXSTPIS        : Boolean := False;
      --  Write-only. PERRI Set
      PERRIS         : Boolean := False;
      --  Write-only. NAKEDI Set
      NAKEDIS        : Boolean := False;
      --  Write-only. ERRORFI Set
      ERRORFIS       : Boolean := False;
      --  Write-only. RXSTALLDI Set
      RXSTALLDIS     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPSTA7SET_Register use record
      RXINIS         at 0 range 0 .. 0;
      TXOUTIS        at 0 range 1 .. 1;
      TXSTPIS        at 0 range 2 .. 2;
      PERRIS         at 0 range 3 .. 3;
      NAKEDIS        at 0 range 4 .. 4;
      ERRORFIS       at 0 range 5 .. 5;
      RXSTALLDIS     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERIS      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Pipe Control Register
   type UPCON_Register is record
      --  Read-only. RXIN Interrupt Enable
      RXINE          : Boolean;
      --  Read-only. TXOUT Interrupt Enable
      TXOUTE         : Boolean;
      --  Read-only. TXSTP Interrupt Enable
      TXSTPE         : Boolean;
      --  Read-only. PERR Interrupt Enable
      PERRE          : Boolean;
      --  Read-only. NAKED Interrupt Enable
      NAKEDE         : Boolean;
      --  Read-only. ERRORFI Interrupt Enable
      ERRORFIE       : Boolean;
      --  Read-only. RXTALLD Interrupt Enable
      RXSTALLDE      : Boolean;
      --  unspecified
      Reserved_7_9   : HAL.UInt3;
      --  Read-only. RAMACER Interrupt Enable
      RAMACERE       : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. NBUSYBKInterrupt Enable
      NBUSYBKE       : Boolean;
      --  unspecified
      Reserved_13_13 : HAL.Bit;
      --  Read-only. FIFO Control
      FIFOCON        : Boolean;
      --  unspecified
      Reserved_15_16 : HAL.UInt2;
      --  Read-only. Pipe Freeze
      PFREEZE        : Boolean;
      --  Read-only. Data Toggle Initialization
      INITDTGL       : Boolean;
      --  Read-only. Bank Initialization
      INITBK         : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPCON_Register use record
      RXINE          at 0 range 0 .. 0;
      TXOUTE         at 0 range 1 .. 1;
      TXSTPE         at 0 range 2 .. 2;
      PERRE          at 0 range 3 .. 3;
      NAKEDE         at 0 range 4 .. 4;
      ERRORFIE       at 0 range 5 .. 5;
      RXSTALLDE      at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERE       at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKE       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCON        at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZE        at 0 range 17 .. 17;
      INITDTGL       at 0 range 18 .. 18;
      INITBK         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON0SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON0SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON1SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON1SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON2SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON2SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON3SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON3SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON4SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON4SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON5SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON5SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON6SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON6SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Set Register
   type USBC_UPCON7SET_Register is record
      --  Write-only. RXINE Set
      RXINES         : Boolean := False;
      --  Write-only. TXOUTE Set
      TXOUTES        : Boolean := False;
      --  Write-only. TXSTPE Set
      TXSTPES        : Boolean := False;
      --  Write-only. PERRE Set
      PERRES         : Boolean := False;
      --  Write-only. NAKEDE Set
      NAKEDES        : Boolean := False;
      --  Write-only. ERRORFIE Set
      ERRORFIES      : Boolean := False;
      --  Write-only. RXSTALLDE Set
      RXSTALLDES     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Set
      RAMACERES      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Set
      NBUSYBKES      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Set
      FIFOCONS       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Set
      PFREEZES       : Boolean := False;
      --  Write-only. INITDTGL Set
      INITDTGLS      : Boolean := False;
      --  Write-only. INITBK Set
      INITBKS        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON7SET_Register use record
      RXINES         at 0 range 0 .. 0;
      TXOUTES        at 0 range 1 .. 1;
      TXSTPES        at 0 range 2 .. 2;
      PERRES         at 0 range 3 .. 3;
      NAKEDES        at 0 range 4 .. 4;
      ERRORFIES      at 0 range 5 .. 5;
      RXSTALLDES     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACERES      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKES      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONS       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZES       at 0 range 17 .. 17;
      INITDTGLS      at 0 range 18 .. 18;
      INITBKS        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON0CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON0CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON1CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON1CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON2CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON2CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON3CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON3CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON4CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON4CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON5CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON5CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON6CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON6CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Pipe Control Clear Register
   type USBC_UPCON7CLR_Register is record
      --  Write-only. RXINE Clear
      RXINEC         : Boolean := False;
      --  Write-only. TXOUTE Clear
      TXOUTEC        : Boolean := False;
      --  Write-only. TXSTPE Clear
      TXSTPEC        : Boolean := False;
      --  Write-only. PERRE Clear
      PERREC         : Boolean := False;
      --  Write-only. NAKEDE Clear
      NAKEDEC        : Boolean := False;
      --  Write-only. ERRORFIE Clear
      ERRORFIEC      : Boolean := False;
      --  Write-only. RXTALLDE Clear
      RXSTALLDEC     : Boolean := False;
      --  unspecified
      Reserved_7_9   : HAL.UInt3 := 16#0#;
      --  Write-only. RAMACERE Clear
      RAMACEREC      : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Write-only. NBUSYBKE Clear
      NBUSYBKEC      : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Write-only. FIFOCON Clear
      FIFOCONC       : Boolean := False;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Write-only. PFREEZE Clear
      PFREEZEC       : Boolean := False;
      --  Read-only. INITDTGL Clear
      INITDTGLC      : Boolean := False;
      --  Write-only. INITBK Clear
      INITBKC        : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UPCON7CLR_Register use record
      RXINEC         at 0 range 0 .. 0;
      TXOUTEC        at 0 range 1 .. 1;
      TXSTPEC        at 0 range 2 .. 2;
      PERREC         at 0 range 3 .. 3;
      NAKEDEC        at 0 range 4 .. 4;
      ERRORFIEC      at 0 range 5 .. 5;
      RXSTALLDEC     at 0 range 6 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      RAMACEREC      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      NBUSYBKEC      at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      FIFOCONC       at 0 range 14 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      PFREEZEC       at 0 range 17 .. 17;
      INITDTGLC      at 0 range 18 .. 18;
      INITBKC        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype UPINRQ_INRQ_Field is HAL.UInt8;

   --  Pipe In Request
   type UPINRQ_Register is record
      --  IN Request Number before Freeze
      INRQ          : UPINRQ_INRQ_Field := 16#1#;
      --  IN Request Mode
      INMODE        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UPINRQ_Register use record
      INRQ          at 0 range 0 .. 7;
      INMODE        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  General Control Register
   type USBC_USBCON_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Freeze USB Clock
      FRZCLK         : Boolean := True;
      --  USBC Enable
      USBE           : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  USBC Mode
      UIMOD          : Boolean := True;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBCON_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      FRZCLK         at 0 range 14 .. 14;
      USBE           at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      UIMOD          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Speed Status
   type USBSTA_SPEEDSelect is
     (
      Full,
      High,
      Low)
     with Size => 2;
   for USBSTA_SPEEDSelect use
     (Full => 0,
      High => 1,
      Low => 2);

   --  General Status Register
   type USBC_USBSTA_Register is record
      --  unspecified
      Reserved_0_8   : HAL.UInt9;
      --  Read-only. VBus Request
      VBUSRQ         : Boolean;
      --  unspecified
      Reserved_10_11 : HAL.UInt2;
      --  Read-only. Speed Status
      SPEED          : USBSTA_SPEEDSelect;
      --  Read-only. USB Clock Usable
      CLKUSABLE      : Boolean;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. Suspend module state
      SUSPEND        : Boolean;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBSTA_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      VBUSRQ         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPEED          at 0 range 12 .. 13;
      CLKUSABLE      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SUSPEND        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  General Status Clear Register
   type USBC_USBSTACLR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. RAMACERI Clear
      RAMACERIC      : Boolean := False;
      --  Write-only. VBUSRQ Clear
      VBUSRQC        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBSTACLR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RAMACERIC      at 0 range 8 .. 8;
      VBUSRQC        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  General Status Set Register
   type USBC_USBSTASET_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. RAMACERI Set
      RAMACERIS      : Boolean := False;
      --  Write-only. VBUSRQ Set
      VBUSRQS        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBSTASET_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RAMACERIS      at 0 range 8 .. 8;
      VBUSRQS        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype USBC_UVERS_VERSION_Field is HAL.UInt12;
   subtype USBC_UVERS_VARIANT_Field is HAL.UInt3;

   --  IP Version Register
   type USBC_UVERS_Register is record
      --  Read-only. Version Number
      VERSION        : USBC_UVERS_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : USBC_UVERS_VARIANT_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UVERS_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype USBC_UFEATURES_EPTNBRMAX_Field is HAL.UInt4;

   --  IP Features Register
   type USBC_UFEATURES_Register is record
      --  Read-only. Maximum Number of Pipes/Endpints
      EPTNBRMAX     : USBC_UFEATURES_EPTNBRMAX_Field;
      --  unspecified
      Reserved_4_7  : HAL.UInt4;
      --  Read-only. UTMI Mode
      UTMIMODE      : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_UFEATURES_Register use record
      EPTNBRMAX     at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      UTMIMODE      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  DualRoleDevice state
   type USBFSM_DRDSTATESelect is
     (
      A_Idle,
      A_Wait_Vrise,
      A_Wait_Bcon,
      A_Host,
      A_Suspend,
      A_Peripheral,
      A_Wait_Vfall,
      A_Vbus_Err,
      A_Wait_Discharge,
      B_Idle,
      B_Peripheral,
      B_Wait_Begin_Hnp,
      B_Wait_Discharge,
      B_Wait_Acon,
      B_Host,
      B_Srp_Init)
     with Size => 4;
   for USBFSM_DRDSTATESelect use
     (A_Idle => 0,
      A_Wait_Vrise => 1,
      A_Wait_Bcon => 2,
      A_Host => 3,
      A_Suspend => 4,
      A_Peripheral => 5,
      A_Wait_Vfall => 6,
      A_Vbus_Err => 7,
      A_Wait_Discharge => 8,
      B_Idle => 9,
      B_Peripheral => 10,
      B_Wait_Begin_Hnp => 11,
      B_Wait_Discharge => 12,
      B_Wait_Acon => 13,
      B_Host => 14,
      B_Srp_Init => 15);

   --  USB internal finite state machine
   type USBC_USBFSM_Register is record
      --  Read-only. DualRoleDevice state
      DRDSTATE      : USBFSM_DRDSTATESelect;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBC_USBFSM_Register use record
      DRDSTATE      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB 2.0 Interface
   type USBC_Peripheral is record
      --  Device General Control Register
      UDCON     : aliased USBC_UDCON_Register;
      --  Device Global Interupt Register
      UDINT     : aliased USBC_UDINT_Register;
      --  Device Global Interrupt Clear Register
      UDINTCLR  : aliased USBC_UDINTCLR_Register;
      --  Device Global Interrupt Set Regsiter
      UDINTSET  : aliased USBC_UDINTSET_Register;
      --  Device Global Interrupt Enable Register
      UDINTE    : aliased USBC_UDINTE_Register;
      --  Device Global Interrupt Enable Clear Register
      UDINTECLR : aliased USBC_UDINTECLR_Register;
      --  Device Global Interrupt Enable Set Register
      UDINTESET : aliased USBC_UDINTESET_Register;
      --  Endpoint Enable/Reset Register
      UERST     : aliased USBC_UERST_Register;
      --  Device Frame Number Register
      UDFNUM    : aliased USBC_UDFNUM_Register;
      --  Endpoint Configuration Register
      UECFG0    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG1    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG2    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG3    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG4    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG5    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG6    : aliased UECFG_Register;
      --  Endpoint Configuration Register
      UECFG7    : aliased UECFG_Register;
      --  Endpoint Status Register
      UESTA0    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA1    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA2    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA3    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA4    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA5    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA6    : aliased UESTA_Register;
      --  Endpoint Status Register
      UESTA7    : aliased UESTA_Register;
      --  Endpoint Status Clear Register
      UESTA0CLR : aliased USBC_UESTA0CLR_Register;
      --  Endpoint Status Clear Register
      UESTA1CLR : aliased USBC_UESTA1CLR_Register;
      --  Endpoint Status Clear Register
      UESTA2CLR : aliased USBC_UESTA2CLR_Register;
      --  Endpoint Status Clear Register
      UESTA3CLR : aliased USBC_UESTA3CLR_Register;
      --  Endpoint Status Clear Register
      UESTA4CLR : aliased USBC_UESTA4CLR_Register;
      --  Endpoint Status Clear Register
      UESTA5CLR : aliased USBC_UESTA5CLR_Register;
      --  Endpoint Status Clear Register
      UESTA6CLR : aliased USBC_UESTA6CLR_Register;
      --  Endpoint Status Clear Register
      UESTA7CLR : aliased USBC_UESTA7CLR_Register;
      --  Endpoint Status Set Register
      UESTA0SET : aliased USBC_UESTA0SET_Register;
      --  Endpoint Status Set Register
      UESTA1SET : aliased USBC_UESTA1SET_Register;
      --  Endpoint Status Set Register
      UESTA2SET : aliased USBC_UESTA2SET_Register;
      --  Endpoint Status Set Register
      UESTA3SET : aliased USBC_UESTA3SET_Register;
      --  Endpoint Status Set Register
      UESTA4SET : aliased USBC_UESTA4SET_Register;
      --  Endpoint Status Set Register
      UESTA5SET : aliased USBC_UESTA5SET_Register;
      --  Endpoint Status Set Register
      UESTA6SET : aliased USBC_UESTA6SET_Register;
      --  Endpoint Status Set Register
      UESTA7SET : aliased USBC_UESTA7SET_Register;
      --  Endpoint Control Register
      UECON0    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON1    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON2    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON3    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON4    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON5    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON6    : aliased UECON_Register;
      --  Endpoint Control Register
      UECON7    : aliased UECON_Register;
      --  Endpoint Control Set Register
      UECON0SET : aliased USBC_UECON0SET_Register;
      --  Endpoint Control Set Register
      UECON1SET : aliased USBC_UECON1SET_Register;
      --  Endpoint Control Set Register
      UECON2SET : aliased USBC_UECON2SET_Register;
      --  Endpoint Control Set Register
      UECON3SET : aliased USBC_UECON3SET_Register;
      --  Endpoint Control Set Register
      UECON4SET : aliased USBC_UECON4SET_Register;
      --  Endpoint Control Set Register
      UECON5SET : aliased USBC_UECON5SET_Register;
      --  Endpoint Control Set Register
      UECON6SET : aliased USBC_UECON6SET_Register;
      --  Endpoint Control Set Register
      UECON7SET : aliased USBC_UECON7SET_Register;
      --  Endpoint Control Clear Register
      UECON0CLR : aliased USBC_UECON0CLR_Register;
      --  TXINE Clear
      UECON1CLR : aliased USBC_UECON1CLR_Register;
      --  TXINE Clear
      UECON2CLR : aliased USBC_UECON2CLR_Register;
      --  TXINE Clear
      UECON3CLR : aliased USBC_UECON3CLR_Register;
      --  TXINE Clear
      UECON4CLR : aliased USBC_UECON4CLR_Register;
      --  TXINE Clear
      UECON5CLR : aliased USBC_UECON5CLR_Register;
      --  TXINE Clear
      UECON6CLR : aliased USBC_UECON6CLR_Register;
      --  TXINE Clear
      UECON7CLR : aliased USBC_UECON7CLR_Register;
      --  Host General Control Register
      UHCON     : aliased USBC_UHCON_Register;
      --  Host Global Interrupt Register
      UHINT     : aliased USBC_UHINT_Register;
      --  Host Global Interrrupt Clear Register
      UHINTCLR  : aliased USBC_UHINTCLR_Register;
      --  Host Global Interrupt Set Register
      UHINTSET  : aliased USBC_UHINTSET_Register;
      --  Host Global Interrupt Enable Register
      UHINTE    : aliased USBC_UHINTE_Register;
      --  Host Global Interrupt Enable Clear Register
      UHINTECLR : aliased USBC_UHINTECLR_Register;
      --  Host Global Interrupt Enable Set Register
      UHINTESET : aliased USBC_UHINTESET_Register;
      --  Pipe Reset Register
      UPRST     : aliased USBC_UPRST_Register;
      --  Host Frame Number Register
      UHFNUM    : aliased USBC_UHFNUM_Register;
      --  Host Start of Frame Control Register
      UHSOFC    : aliased USBC_UHSOFC_Register;
      --  Pipe Configuration Register
      UPCFG0    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG1    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG2    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG3    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG4    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG5    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG6    : aliased UPCFG_Register;
      --  Pipe Configuration Register
      UPCFG7    : aliased UPCFG_Register;
      --  Pipe Status Register
      UPSTA0    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA1    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA2    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA3    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA4    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA5    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA6    : aliased UPSTA_Register;
      --  Pipe Status Register
      UPSTA7    : aliased UPSTA_Register;
      --  Pipe Status Clear Register
      UPSTA0CLR : aliased USBC_UPSTA0CLR_Register;
      --  Pipe Status Clear Register
      UPSTA1CLR : aliased USBC_UPSTA1CLR_Register;
      --  Pipe Status Clear Register
      UPSTA2CLR : aliased USBC_UPSTA2CLR_Register;
      --  Pipe Status Clear Register
      UPSTA3CLR : aliased USBC_UPSTA3CLR_Register;
      --  Pipe Status Clear Register
      UPSTA4CLR : aliased USBC_UPSTA4CLR_Register;
      --  Pipe Status Clear Register
      UPSTA5CLR : aliased USBC_UPSTA5CLR_Register;
      --  Pipe Status Clear Register
      UPSTA6CLR : aliased USBC_UPSTA6CLR_Register;
      --  Pipe Status Clear Register
      UPSTA7CLR : aliased USBC_UPSTA7CLR_Register;
      --  Pipe Status Set Register
      UPSTA0SET : aliased USBC_UPSTA0SET_Register;
      --  Pipe Status Set Register
      UPSTA1SET : aliased USBC_UPSTA1SET_Register;
      --  Pipe Status Set Register
      UPSTA2SET : aliased USBC_UPSTA2SET_Register;
      --  Pipe Status Set Register
      UPSTA3SET : aliased USBC_UPSTA3SET_Register;
      --  Pipe Status Set Register
      UPSTA4SET : aliased USBC_UPSTA4SET_Register;
      --  Pipe Status Set Register
      UPSTA5SET : aliased USBC_UPSTA5SET_Register;
      --  Pipe Status Set Register
      UPSTA6SET : aliased USBC_UPSTA6SET_Register;
      --  Pipe Status Set Register
      UPSTA7SET : aliased USBC_UPSTA7SET_Register;
      --  Pipe Control Register
      UPCON0    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON1    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON2    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON3    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON4    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON5    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON6    : aliased UPCON_Register;
      --  Pipe Control Register
      UPCON7    : aliased UPCON_Register;
      --  Pipe Control Set Register
      UPCON0SET : aliased USBC_UPCON0SET_Register;
      --  Pipe Control Set Register
      UPCON1SET : aliased USBC_UPCON1SET_Register;
      --  Pipe Control Set Register
      UPCON2SET : aliased USBC_UPCON2SET_Register;
      --  Pipe Control Set Register
      UPCON3SET : aliased USBC_UPCON3SET_Register;
      --  Pipe Control Set Register
      UPCON4SET : aliased USBC_UPCON4SET_Register;
      --  Pipe Control Set Register
      UPCON5SET : aliased USBC_UPCON5SET_Register;
      --  Pipe Control Set Register
      UPCON6SET : aliased USBC_UPCON6SET_Register;
      --  Pipe Control Set Register
      UPCON7SET : aliased USBC_UPCON7SET_Register;
      --  Pipe Control Clear Register
      UPCON0CLR : aliased USBC_UPCON0CLR_Register;
      --  Pipe Control Clear Register
      UPCON1CLR : aliased USBC_UPCON1CLR_Register;
      --  Pipe Control Clear Register
      UPCON2CLR : aliased USBC_UPCON2CLR_Register;
      --  Pipe Control Clear Register
      UPCON3CLR : aliased USBC_UPCON3CLR_Register;
      --  Pipe Control Clear Register
      UPCON4CLR : aliased USBC_UPCON4CLR_Register;
      --  Pipe Control Clear Register
      UPCON5CLR : aliased USBC_UPCON5CLR_Register;
      --  Pipe Control Clear Register
      UPCON6CLR : aliased USBC_UPCON6CLR_Register;
      --  Pipe Control Clear Register
      UPCON7CLR : aliased USBC_UPCON7CLR_Register;
      --  Pipe In Request
      UPINRQ0   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ1   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ2   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ3   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ4   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ5   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ6   : aliased UPINRQ_Register;
      --  Pipe In Request
      UPINRQ7   : aliased UPINRQ_Register;
      --  General Control Register
      USBCON    : aliased USBC_USBCON_Register;
      --  General Status Register
      USBSTA    : aliased USBC_USBSTA_Register;
      --  General Status Clear Register
      USBSTACLR : aliased USBC_USBSTACLR_Register;
      --  General Status Set Register
      USBSTASET : aliased USBC_USBSTASET_Register;
      --  IP Version Register
      UVERS     : aliased USBC_UVERS_Register;
      --  IP Features Register
      UFEATURES : aliased USBC_UFEATURES_Register;
      --  IP PB address size Register
      UADDRSIZE : aliased HAL.UInt32;
      --  IP Name Part One: HUSB
      UNAME1    : aliased HAL.UInt32;
      --  IP Name Part Two: HOST
      UNAME2    : aliased HAL.UInt32;
      --  USB internal finite state machine
      USBFSM    : aliased USBC_USBFSM_Register;
      --  Endpoint descriptor table
      UDESC     : aliased HAL.UInt32;
   end record
     with Volatile;

   for USBC_Peripheral use record
      UDCON     at 16#0# range 0 .. 31;
      UDINT     at 16#4# range 0 .. 31;
      UDINTCLR  at 16#8# range 0 .. 31;
      UDINTSET  at 16#C# range 0 .. 31;
      UDINTE    at 16#10# range 0 .. 31;
      UDINTECLR at 16#14# range 0 .. 31;
      UDINTESET at 16#18# range 0 .. 31;
      UERST     at 16#1C# range 0 .. 31;
      UDFNUM    at 16#20# range 0 .. 31;
      UECFG0    at 16#100# range 0 .. 31;
      UECFG1    at 16#104# range 0 .. 31;
      UECFG2    at 16#108# range 0 .. 31;
      UECFG3    at 16#10C# range 0 .. 31;
      UECFG4    at 16#110# range 0 .. 31;
      UECFG5    at 16#114# range 0 .. 31;
      UECFG6    at 16#118# range 0 .. 31;
      UECFG7    at 16#11C# range 0 .. 31;
      UESTA0    at 16#130# range 0 .. 31;
      UESTA1    at 16#134# range 0 .. 31;
      UESTA2    at 16#138# range 0 .. 31;
      UESTA3    at 16#13C# range 0 .. 31;
      UESTA4    at 16#140# range 0 .. 31;
      UESTA5    at 16#144# range 0 .. 31;
      UESTA6    at 16#148# range 0 .. 31;
      UESTA7    at 16#14C# range 0 .. 31;
      UESTA0CLR at 16#160# range 0 .. 31;
      UESTA1CLR at 16#164# range 0 .. 31;
      UESTA2CLR at 16#168# range 0 .. 31;
      UESTA3CLR at 16#16C# range 0 .. 31;
      UESTA4CLR at 16#170# range 0 .. 31;
      UESTA5CLR at 16#174# range 0 .. 31;
      UESTA6CLR at 16#178# range 0 .. 31;
      UESTA7CLR at 16#17C# range 0 .. 31;
      UESTA0SET at 16#190# range 0 .. 31;
      UESTA1SET at 16#194# range 0 .. 31;
      UESTA2SET at 16#198# range 0 .. 31;
      UESTA3SET at 16#19C# range 0 .. 31;
      UESTA4SET at 16#1A0# range 0 .. 31;
      UESTA5SET at 16#1A4# range 0 .. 31;
      UESTA6SET at 16#1A8# range 0 .. 31;
      UESTA7SET at 16#1AC# range 0 .. 31;
      UECON0    at 16#1C0# range 0 .. 31;
      UECON1    at 16#1C4# range 0 .. 31;
      UECON2    at 16#1C8# range 0 .. 31;
      UECON3    at 16#1CC# range 0 .. 31;
      UECON4    at 16#1D0# range 0 .. 31;
      UECON5    at 16#1D4# range 0 .. 31;
      UECON6    at 16#1D8# range 0 .. 31;
      UECON7    at 16#1DC# range 0 .. 31;
      UECON0SET at 16#1F0# range 0 .. 31;
      UECON1SET at 16#1F4# range 0 .. 31;
      UECON2SET at 16#1F8# range 0 .. 31;
      UECON3SET at 16#1FC# range 0 .. 31;
      UECON4SET at 16#200# range 0 .. 31;
      UECON5SET at 16#204# range 0 .. 31;
      UECON6SET at 16#208# range 0 .. 31;
      UECON7SET at 16#20C# range 0 .. 31;
      UECON0CLR at 16#220# range 0 .. 31;
      UECON1CLR at 16#224# range 0 .. 31;
      UECON2CLR at 16#228# range 0 .. 31;
      UECON3CLR at 16#22C# range 0 .. 31;
      UECON4CLR at 16#230# range 0 .. 31;
      UECON5CLR at 16#234# range 0 .. 31;
      UECON6CLR at 16#238# range 0 .. 31;
      UECON7CLR at 16#23C# range 0 .. 31;
      UHCON     at 16#400# range 0 .. 31;
      UHINT     at 16#404# range 0 .. 31;
      UHINTCLR  at 16#408# range 0 .. 31;
      UHINTSET  at 16#40C# range 0 .. 31;
      UHINTE    at 16#410# range 0 .. 31;
      UHINTECLR at 16#414# range 0 .. 31;
      UHINTESET at 16#418# range 0 .. 31;
      UPRST     at 16#41C# range 0 .. 31;
      UHFNUM    at 16#420# range 0 .. 31;
      UHSOFC    at 16#424# range 0 .. 31;
      UPCFG0    at 16#500# range 0 .. 31;
      UPCFG1    at 16#504# range 0 .. 31;
      UPCFG2    at 16#508# range 0 .. 31;
      UPCFG3    at 16#50C# range 0 .. 31;
      UPCFG4    at 16#510# range 0 .. 31;
      UPCFG5    at 16#514# range 0 .. 31;
      UPCFG6    at 16#518# range 0 .. 31;
      UPCFG7    at 16#51C# range 0 .. 31;
      UPSTA0    at 16#530# range 0 .. 31;
      UPSTA1    at 16#534# range 0 .. 31;
      UPSTA2    at 16#538# range 0 .. 31;
      UPSTA3    at 16#53C# range 0 .. 31;
      UPSTA4    at 16#540# range 0 .. 31;
      UPSTA5    at 16#544# range 0 .. 31;
      UPSTA6    at 16#548# range 0 .. 31;
      UPSTA7    at 16#54C# range 0 .. 31;
      UPSTA0CLR at 16#560# range 0 .. 31;
      UPSTA1CLR at 16#564# range 0 .. 31;
      UPSTA2CLR at 16#568# range 0 .. 31;
      UPSTA3CLR at 16#56C# range 0 .. 31;
      UPSTA4CLR at 16#570# range 0 .. 31;
      UPSTA5CLR at 16#574# range 0 .. 31;
      UPSTA6CLR at 16#578# range 0 .. 31;
      UPSTA7CLR at 16#57C# range 0 .. 31;
      UPSTA0SET at 16#590# range 0 .. 31;
      UPSTA1SET at 16#594# range 0 .. 31;
      UPSTA2SET at 16#598# range 0 .. 31;
      UPSTA3SET at 16#59C# range 0 .. 31;
      UPSTA4SET at 16#5A0# range 0 .. 31;
      UPSTA5SET at 16#5A4# range 0 .. 31;
      UPSTA6SET at 16#5A8# range 0 .. 31;
      UPSTA7SET at 16#5AC# range 0 .. 31;
      UPCON0    at 16#5C0# range 0 .. 31;
      UPCON1    at 16#5C4# range 0 .. 31;
      UPCON2    at 16#5C8# range 0 .. 31;
      UPCON3    at 16#5CC# range 0 .. 31;
      UPCON4    at 16#5D0# range 0 .. 31;
      UPCON5    at 16#5D4# range 0 .. 31;
      UPCON6    at 16#5D8# range 0 .. 31;
      UPCON7    at 16#5DC# range 0 .. 31;
      UPCON0SET at 16#5F0# range 0 .. 31;
      UPCON1SET at 16#5F4# range 0 .. 31;
      UPCON2SET at 16#5F8# range 0 .. 31;
      UPCON3SET at 16#5FC# range 0 .. 31;
      UPCON4SET at 16#600# range 0 .. 31;
      UPCON5SET at 16#604# range 0 .. 31;
      UPCON6SET at 16#608# range 0 .. 31;
      UPCON7SET at 16#60C# range 0 .. 31;
      UPCON0CLR at 16#620# range 0 .. 31;
      UPCON1CLR at 16#624# range 0 .. 31;
      UPCON2CLR at 16#628# range 0 .. 31;
      UPCON3CLR at 16#62C# range 0 .. 31;
      UPCON4CLR at 16#630# range 0 .. 31;
      UPCON5CLR at 16#634# range 0 .. 31;
      UPCON6CLR at 16#638# range 0 .. 31;
      UPCON7CLR at 16#63C# range 0 .. 31;
      UPINRQ0   at 16#650# range 0 .. 31;
      UPINRQ1   at 16#654# range 0 .. 31;
      UPINRQ2   at 16#658# range 0 .. 31;
      UPINRQ3   at 16#65C# range 0 .. 31;
      UPINRQ4   at 16#660# range 0 .. 31;
      UPINRQ5   at 16#664# range 0 .. 31;
      UPINRQ6   at 16#668# range 0 .. 31;
      UPINRQ7   at 16#66C# range 0 .. 31;
      USBCON    at 16#800# range 0 .. 31;
      USBSTA    at 16#804# range 0 .. 31;
      USBSTACLR at 16#808# range 0 .. 31;
      USBSTASET at 16#80C# range 0 .. 31;
      UVERS     at 16#818# range 0 .. 31;
      UFEATURES at 16#81C# range 0 .. 31;
      UADDRSIZE at 16#820# range 0 .. 31;
      UNAME1    at 16#824# range 0 .. 31;
      UNAME2    at 16#828# range 0 .. 31;
      USBFSM    at 16#82C# range 0 .. 31;
      UDESC     at 16#830# range 0 .. 31;
   end record;

   --  USB 2.0 Interface
   USBC_Periph : aliased USBC_Peripheral
     with Import, Address => System'To_Address (16#400A5000#);

end SAM_SVD.USBC;
