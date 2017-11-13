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

package SAM_SVD.FLASHCALW is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash Ready Interrupt Enable
   type FCR_FRDYSelect is
     (
      --  Flash Ready does not generate an interrupt
      FCR_FRDYSelect_0,
      --  Flash Ready generates an interrupt
      FCR_FRDYSelect_1)
     with Size => 1;
   for FCR_FRDYSelect use
     (FCR_FRDYSelect_0 => 0,
      FCR_FRDYSelect_1 => 1);

   --  Lock Error Interrupt Enable
   type FCR_LOCKESelect is
     (
      --  Lock Error does not generate an interrupt
      FCR_LOCKESelect_0,
      --  Lock Error generates an interrupt
      FCR_LOCKESelect_1)
     with Size => 1;
   for FCR_LOCKESelect use
     (FCR_LOCKESelect_0 => 0,
      FCR_LOCKESelect_1 => 1);

   --  Programming Error Interrupt Enable
   type FCR_PROGESelect is
     (
      --  Programming Error does not generate an interrupt
      FCR_PROGESelect_0,
      --  Programming Error generates an interrupt
      FCR_PROGESelect_1)
     with Size => 1;
   for FCR_PROGESelect use
     (FCR_PROGESelect_0 => 0,
      FCR_PROGESelect_1 => 1);

   --  Flash Wait State
   type FCR_FWSSelect is
     (
      --  The flash is read with 0 wait states
      FCR_FWSSelect_0,
      --  The flash is read with 1 wait states
      FCR_FWSSelect_1)
     with Size => 1;
   for FCR_FWSSelect use
     (FCR_FWSSelect_0 => 0,
      FCR_FWSSelect_1 => 1);

   --  Flash Controller Control Register
   type FLASHCALW_FCR_Register is record
      --  Flash Ready Interrupt Enable
      FRDY          : FCR_FRDYSelect := SAM_SVD.FLASHCALW.FCR_FRDYSelect_0;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Lock Error Interrupt Enable
      LOCKE         : FCR_LOCKESelect := SAM_SVD.FLASHCALW.FCR_LOCKESelect_0;
      --  Programming Error Interrupt Enable
      PROGE         : FCR_PROGESelect := SAM_SVD.FLASHCALW.FCR_PROGESelect_0;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Flash Wait State
      FWS           : FCR_FWSSelect := SAM_SVD.FLASHCALW.FCR_FWSSelect_0;
      --  Wait State 1 Optimization
      WS1OPT        : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FCR_Register use record
      FRDY          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      LOCKE         at 0 range 2 .. 2;
      PROGE         at 0 range 3 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      FWS           at 0 range 6 .. 6;
      WS1OPT        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Command
   type FCMD_CMDSelect is
     (
      --  No Operation
      Nop,
      --  Write Page
      Wp,
      --  Erase Page
      Ep,
      --  Clear Page Buffer
      Cpb,
      --  Lock Region containing page
      Lp,
      --  Unlock Region containing page
      Up,
      --  Erase All, including secuity and fuse bits
      Ea,
      --  Write General-Purpose fuse Bit
      Wgpb,
      --  Erase General-Purpose fuse Bit
      Egpb,
      --  Set Security Bit
      Ssb,
      --  Program GPFuse Byte
      Pgpfb,
      --  Erase All GP Fuses
      Eagpf,
      --  Quick Page Read
      Qpr,
      --  Write User Page
      Wup,
      --  Erase User Page
      Eup,
      --  Quick Page Read User Page
      Qprup,
      --  High Speed Mode Enable
      Hsen,
      --  High Speed Mode Disable
      Hsdis)
     with Size => 6;
   for FCMD_CMDSelect use
     (Nop => 0,
      Wp => 1,
      Ep => 2,
      Cpb => 3,
      Lp => 4,
      Up => 5,
      Ea => 6,
      Wgpb => 7,
      Egpb => 8,
      Ssb => 9,
      Pgpfb => 10,
      Eagpf => 11,
      Qpr => 12,
      Wup => 13,
      Eup => 14,
      Qprup => 15,
      Hsen => 16,
      Hsdis => 17);

   subtype FLASHCALW_FCMD_PAGEN_Field is HAL.UInt16;

   --  Write protection key
   type FCMD_KEYSelect is
     (
      --  Reset value for the field
      Fcmd_Keyselect_Reset,
      Key)
     with Size => 8;
   for FCMD_KEYSelect use
     (Fcmd_Keyselect_Reset => 0,
      Key => 165);

   --  Flash Controller Command Register
   type FLASHCALW_FCMD_Register is record
      --  Command
      CMD          : FCMD_CMDSelect := SAM_SVD.FLASHCALW.Nop;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Page number
      PAGEN        : FLASHCALW_FCMD_PAGEN_Field := 16#0#;
      --  Write protection key
      KEY          : FCMD_KEYSelect := Fcmd_Keyselect_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FCMD_Register use record
      CMD          at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      PAGEN        at 0 range 8 .. 23;
      KEY          at 0 range 24 .. 31;
   end record;

   --  ECC Error Status
   type FSR_ECCERRSelect is
     (
      --  no error
      Noerror,
      --  one ECC error detected
      Oneeccerr,
      --  two ECC errors detected
      Twoeccerr)
     with Size => 2;
   for FSR_ECCERRSelect use
     (Noerror => 0,
      Oneeccerr => 1,
      Twoeccerr => 2);

   --  FLASHCALW_FSR_LOCK array
   type FLASHCALW_FSR_LOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FLASHCALW_FSR_LOCK
   type FLASHCALW_FSR_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LOCK as an array
            Arr : FLASHCALW_FSR_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FLASHCALW_FSR_LOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Flash Controller Status Register
   type FLASHCALW_FSR_Register is record
      --  Read-only. Flash Ready Status
      FRDY           : Boolean;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only. Lock Error Status
      LOCKE          : Boolean;
      --  Read-only. Programming Error Status
      PROGE          : Boolean;
      --  Read-only. Security Bit Status
      SECURITY       : Boolean;
      --  Read-only. Quick Page Read Result
      QPRR           : Boolean;
      --  Read-only. High Speed Mode
      HSMODE         : Boolean;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. ECC Error Status
      ECCERR         : FSR_ECCERRSelect;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Lock Region 0 Lock Status
      LOCK           : FLASHCALW_FSR_LOCK_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FSR_Register use record
      FRDY           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      LOCKE          at 0 range 2 .. 2;
      PROGE          at 0 range 3 .. 3;
      SECURITY       at 0 range 4 .. 4;
      QPRR           at 0 range 5 .. 5;
      HSMODE         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ECCERR         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      LOCK           at 0 range 16 .. 31;
   end record;

   subtype FLASHCALW_FPR_FSZ_Field is HAL.UInt4;
   subtype FLASHCALW_FPR_PSZ_Field is HAL.UInt3;

   --  Flash Controller Parameter Register
   type FLASHCALW_FPR_Register is record
      --  Read-only. Flash Size
      FSZ            : FLASHCALW_FPR_FSZ_Field;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Page Size
      PSZ            : FLASHCALW_FPR_PSZ_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FPR_Register use record
      FSZ            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PSZ            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype FLASHCALW_VERSION_VERSION_Field is HAL.UInt12;
   subtype FLASHCALW_VERSION_VARIANT_Field is HAL.UInt4;

   --  Flash Controller Version Register
   type FLASHCALW_VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : FLASHCALW_VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : FLASHCALW_VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  FLASHCALW_FGPFRHI_GPF array
   type FLASHCALW_FGPFRHI_GPF_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  Flash Controller General Purpose Fuse Register High
   type FLASHCALW_FGPFRHI_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPF as a value
            Val : HAL.UInt32;
         when True =>
            --  GPF as an array
            Arr : FLASHCALW_FGPFRHI_GPF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FGPFRHI_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FLASHCALW_FGPFRLO_LOCK array
   type FLASHCALW_FGPFRLO_LOCK_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FLASHCALW_FGPFRLO_LOCK
   type FLASHCALW_FGPFRLO_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : HAL.UInt16;
         when True =>
            --  LOCK as an array
            Arr : FLASHCALW_FGPFRLO_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FLASHCALW_FGPFRLO_LOCK_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  FLASHCALW_FGPFRLO_GPF array
   type FLASHCALW_FGPFRLO_GPF_Field_Array is array (16 .. 31) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FLASHCALW_FGPFRLO_GPF
   type FLASHCALW_FGPFRLO_GPF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GPF as a value
            Val : HAL.UInt16;
         when True =>
            --  GPF as an array
            Arr : FLASHCALW_FGPFRLO_GPF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FLASHCALW_FGPFRLO_GPF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Flash Controller General Purpose Fuse Register Low
   type FLASHCALW_FGPFRLO_Register is record
      --  Read-only. Lock Bit 0
      LOCK : FLASHCALW_FGPFRLO_LOCK_Field;
      --  Read-only. General Purpose Fuse 16
      GPF  : FLASHCALW_FGPFRLO_GPF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCALW_FGPFRLO_Register use record
      LOCK at 0 range 0 .. 15;
      GPF  at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flash Controller
   type HFLASHC_Peripheral is record
      --  Flash Controller Control Register
      FCR     : aliased FLASHCALW_FCR_Register;
      --  Flash Controller Command Register
      FCMD    : aliased FLASHCALW_FCMD_Register;
      --  Flash Controller Status Register
      FSR     : aliased FLASHCALW_FSR_Register;
      --  Flash Controller Parameter Register
      FPR     : aliased FLASHCALW_FPR_Register;
      --  Flash Controller Version Register
      VERSION : aliased FLASHCALW_VERSION_Register;
      --  Flash Controller General Purpose Fuse Register High
      FGPFRHI : aliased FLASHCALW_FGPFRHI_Register;
      --  Flash Controller General Purpose Fuse Register Low
      FGPFRLO : aliased FLASHCALW_FGPFRLO_Register;
   end record
     with Volatile;

   for HFLASHC_Peripheral use record
      FCR     at 16#0# range 0 .. 31;
      FCMD    at 16#4# range 0 .. 31;
      FSR     at 16#8# range 0 .. 31;
      FPR     at 16#C# range 0 .. 31;
      VERSION at 16#10# range 0 .. 31;
      FGPFRHI at 16#14# range 0 .. 31;
      FGPFRLO at 16#18# range 0 .. 31;
   end record;

   --  Flash Controller
   HFLASHC_Periph : aliased HFLASHC_Peripheral
     with Import, Address => System'To_Address (16#400A0000#);

end SAM_SVD.FLASHCALW;
