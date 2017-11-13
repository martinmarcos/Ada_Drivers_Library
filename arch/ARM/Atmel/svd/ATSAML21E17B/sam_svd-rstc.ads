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

--  This spec has been automatically generated from ATSAML21E17B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.RSTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RSTC_RCAUSE_BOD array
   type RSTC_RCAUSE_BOD_Field_Array is array (12 .. 13) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RSTC_RCAUSE_BOD
   type RSTC_RCAUSE_BOD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BOD as a value
            Val : HAL.UInt2;
         when True =>
            --  BOD as an array
            Arr : RSTC_RCAUSE_BOD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RSTC_RCAUSE_BOD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Reset Cause
   type RSTC_RCAUSE_Register is record
      --  Read-only. Power On Reset
      POR          : Boolean;
      --  Read-only. Brown Out 12 Detector Reset
      BOD          : RSTC_RCAUSE_BOD_Field;
      --  unspecified
      Reserved_3_3 : HAL.Bit;
      --  Read-only. External Reset
      EXT          : Boolean;
      --  Read-only. Watchdog Reset
      WDT          : Boolean;
      --  Read-only. System Reset Request
      SYST         : Boolean;
      --  Read-only. Backup Reset
      BACKUP       : Boolean;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RSTC_RCAUSE_Register use record
      POR          at 0 range 0 .. 0;
      BOD          at 0 range 1 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      EXT          at 0 range 4 .. 4;
      WDT          at 0 range 5 .. 5;
      SYST         at 0 range 6 .. 6;
      BACKUP       at 0 range 7 .. 7;
   end record;

   --  Backup Exit Source
   type RSTC_BKUPEXIT_Register is record
      --  Read-only. External Wakeup
      EXTWAKE      : Boolean;
      --  Read-only. Real Timer Counter Interrupt
      RTC          : Boolean;
      --  Read-only. Battery Backup Power Switch
      BBPS         : Boolean;
      --  unspecified
      Reserved_3_7 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RSTC_BKUPEXIT_Register use record
      EXTWAKE      at 0 range 0 .. 0;
      RTC          at 0 range 1 .. 1;
      BBPS         at 0 range 2 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
   end record;

   --  Wakeup Debounce Counter
   type WKDBCONF_WKDBCNTSelect is
     (
      --  No debouncing.Input pin is low or high level sensitive depending on
      --  its WKPOLx bit.
      Off,
      --  Input pin shall be active for at least two 32kHz clock period.
      WKDBCONF_WKDBCNTSelect_2Ck32,
      --  Input pin shall be active for at least three 32kHz clock period.
      WKDBCONF_WKDBCNTSelect_3Ck32,
      --  Input pin shall be active for at least 32 32kHz clock period.
      WKDBCONF_WKDBCNTSelect_32Ck32,
      --  Input pin shall be active for at least 512 32kHz clock period.
      WKDBCONF_WKDBCNTSelect_512Ck32,
      --  Input pin shall be active for at least 4096 32kHz clock period.
      WKDBCONF_WKDBCNTSelect_4096Ck32,
      --  Input pin shall be active for at least 32768 32kHz clock period.
      WKDBCONF_WKDBCNTSelect_32768Ck32)
     with Size => 5;
   for WKDBCONF_WKDBCNTSelect use
     (Off => 0,
      WKDBCONF_WKDBCNTSelect_2Ck32 => 1,
      WKDBCONF_WKDBCNTSelect_3Ck32 => 2,
      WKDBCONF_WKDBCNTSelect_32Ck32 => 3,
      WKDBCONF_WKDBCNTSelect_512Ck32 => 4,
      WKDBCONF_WKDBCNTSelect_4096Ck32 => 5,
      WKDBCONF_WKDBCNTSelect_32768Ck32 => 6);

   --  Wakeup Debounce Configuration
   type RSTC_WKDBCONF_Register is record
      --  Wakeup Debounce Counter
      WKDBCNT      : WKDBCONF_WKDBCNTSelect := SAM_SVD.RSTC.Off;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for RSTC_WKDBCONF_Register use record
      WKDBCNT      at 0 range 0 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   subtype RSTC_WKPOL_WKPOL_Field is HAL.UInt8;

   --  Wakeup Polarity
   type RSTC_WKPOL_Register is record
      --  Wakeup Polarity
      WKPOL         : RSTC_WKPOL_WKPOL_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RSTC_WKPOL_Register use record
      WKPOL         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype RSTC_WKEN_WKEN_Field is HAL.UInt8;

   --  Wakeup Enable
   type RSTC_WKEN_Register is record
      --  Wakeup Enable
      WKEN          : RSTC_WKEN_WKEN_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for RSTC_WKEN_Register use record
      WKEN          at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Controller
   type RSTC_Peripheral is record
      --  Reset Cause
      RCAUSE   : aliased RSTC_RCAUSE_Register;
      --  Backup Exit Source
      BKUPEXIT : aliased RSTC_BKUPEXIT_Register;
      --  Wakeup Debounce Configuration
      WKDBCONF : aliased RSTC_WKDBCONF_Register;
      --  Wakeup Polarity
      WKPOL    : aliased RSTC_WKPOL_Register;
      --  Wakeup Enable
      WKEN     : aliased RSTC_WKEN_Register;
      --  Wakeup Cause
      WKCAUSE  : aliased HAL.UInt16;
   end record
     with Volatile;

   for RSTC_Peripheral use record
      RCAUSE   at 16#0# range 0 .. 7;
      BKUPEXIT at 16#2# range 0 .. 7;
      WKDBCONF at 16#4# range 0 .. 7;
      WKPOL    at 16#8# range 0 .. 15;
      WKEN     at 16#C# range 0 .. 15;
      WKCAUSE  at 16#10# range 0 .. 15;
   end record;

   --  Reset Controller
   RSTC_Periph : aliased RSTC_Peripheral
     with Import, Address => System'To_Address (16#40000800#);

end SAM_SVD.RSTC;
