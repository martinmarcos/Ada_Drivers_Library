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

--  This spec has been automatically generated from ATSAM4LC8B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  GPER_P array
   type GPER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register
   type GPER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GPER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPERS_P array
   type GPERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register - Set
   type GPERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GPERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPERC_P array
   type GPERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register - Clear
   type GPERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GPERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GPERT_P array
   type GPERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  GPIO Enable Register - Toggle
   type GPERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GPERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GPERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR_P array
   type PMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0
   type PMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR0S_P array
   type PMR0S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0 - Set
   type PMR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR0S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR0C_P array
   type PMR0C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0 - Clear
   type PMR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR0C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR0T_P array
   type PMR0T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 0 - Toggle
   type PMR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR0T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR1S_P array
   type PMR1S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 1 - Set
   type PMR1S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR1S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR1S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR1C_P array
   type PMR1C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 1 - Clear
   type PMR1C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR1C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR1C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR1T_P array
   type PMR1T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 1 - Toggle
   type PMR1T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR1T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR1T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR2S_P array
   type PMR2S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 2 - Set
   type PMR2S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR2S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR2S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR2C_P array
   type PMR2C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 2 - Clear
   type PMR2C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR2C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR2C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PMR2T_P array
   type PMR2T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral Mux Register 2 - Toggle
   type PMR2T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PMR2T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PMR2T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODER_P array
   type ODER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register
   type ODER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODERS_P array
   type ODERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register - Set
   type ODERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODERC_P array
   type ODERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register - Clear
   type ODERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODERT_P array
   type ODERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driver Enable Register - Toggle
   type ODERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OVR_P array
   type OVR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Value Register
   type OVR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OVR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OVRS_P array
   type OVRS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Value Register - Set
   type OVRS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OVRS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVRS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OVRC_P array
   type OVRC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Value Register - Clear
   type OVRC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OVRC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVRC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OVRT_P array
   type OVRT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Value Register - Toggle
   type OVRT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OVRT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OVRT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PVR_P array
   type PVR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pin Value Register
   type PVR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PVR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PVR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUER_P array
   type PUER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register
   type PUER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PUER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUERS_P array
   type PUERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register - Set
   type PUERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PUERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUERC_P array
   type PUERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register - Clear
   type PUERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PUERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PUERT_P array
   type PUERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register - Toggle
   type PUERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PUERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PUERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PDER_P array
   type PDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register
   type PDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PDERS_P array
   type PDERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register - Set
   type PDERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PDERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PDERC_P array
   type PDERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register - Clear
   type PDERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PDERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PDERT_P array
   type PDERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-down Enable Register - Toggle
   type PDERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PDERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for PDERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IER_P array
   type IER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register
   type IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IERS_P array
   type IERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register - Set
   type IERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IERC_P array
   type IERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register - Clear
   type IERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IERT_P array
   type IERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register - Toggle
   type IERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR_P array
   type IMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0
   type IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR0S_P array
   type IMR0S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0 - Set
   type IMR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR0S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR0C_P array
   type IMR0C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0 - Clear
   type IMR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR0C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR0T_P array
   type IMR0T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 0 - Toggle
   type IMR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR0T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR1S_P array
   type IMR1S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 1 - Set
   type IMR1S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR1S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR1S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR1C_P array
   type IMR1C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 1 - Clear
   type IMR1C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR1C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR1C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IMR1T_P array
   type IMR1T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mode Register 1 - Toggle
   type IMR1T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IMR1T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IMR1T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GFER_P array
   type GFER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register
   type GFER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GFER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GFERS_P array
   type GFERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register - Set
   type GFERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GFERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GFERC_P array
   type GFERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register - Clear
   type GFERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GFERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  GFERT_P array
   type GFERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Filter Enable Register - Toggle
   type GFERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : GFERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for GFERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IFR_P array
   type IFR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Flag Register
   type IFR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IFR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IFR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  IFRC_P array
   type IFRC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Flag Register - Clear
   type IFRC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : IFRC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IFRC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODMER_P array
   type ODMER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register
   type ODMER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODMER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODMERS_P array
   type ODMERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register - Set
   type ODMERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODMERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODMERC_P array
   type ODMERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register - Clear
   type ODMERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODMERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODMERT_P array
   type ODMERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Open Drain Mode Register - Toggle
   type ODMERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODMERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODMERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR_P array
   type ODCR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0
   type ODCR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR0S_P array
   type ODCR0S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0 - Set
   type ODCR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR0S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR0C_P array
   type ODCR0C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0 - Clear
   type ODCR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR0C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR0T_P array
   type ODCR0T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 0 - Toggle
   type ODCR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR0T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR1S_P array
   type ODCR1S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 1 - Set
   type ODCR1S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR1S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR1S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR1C_P array
   type ODCR1C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 1 - Clear
   type ODCR1C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR1C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR1C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ODCR1T_P array
   type ODCR1T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Driving Capability Register 1 - Toggle
   type ODCR1T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : ODCR1T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ODCR1T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OSRR_P array
   type OSRR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0
   type OSRR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OSRR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OSRR0S_P array
   type OSRR0S_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0 - Set
   type OSRR0S_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OSRR0S_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR0S_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OSRR0C_P array
   type OSRR0C_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0 - Clear
   type OSRR0C_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OSRR0C_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR0C_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  OSRR0T_P array
   type OSRR0T_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Slew Rate Register 0 - Toggle
   type OSRR0T_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : OSRR0T_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for OSRR0T_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  STER_P array
   type STER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register
   type STER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : STER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  STERS_P array
   type STERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register - Set
   type STERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : STERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  STERC_P array
   type STERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register - Clear
   type STERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : STERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  STERT_P array
   type STERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Enable Register - Toggle
   type STERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : STERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for STERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EVER_P array
   type EVER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Event Enable Register
   type EVER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : EVER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EVERS_P array
   type EVERS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Event Enable Register - Set
   type EVERS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : EVERS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVERS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EVERC_P array
   type EVERC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Event Enable Register - Clear
   type EVERC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : EVERC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVERC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EVERT_P array
   type EVERT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Event Enable Register - Toggle
   type EVERT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : EVERT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for EVERT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  LOCK_P array
   type LOCK_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Lock Register
   type LOCK_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : LOCK_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  LOCKS_P array
   type LOCKS_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Lock Register - Set
   type LOCKS_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : LOCKS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCKS_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  LOCKC_P array
   type LOCKC_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Lock Register - Clear
   type LOCKC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : LOCKC_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCKC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  LOCKT_P array
   type LOCKT_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Lock Register - Toggle
   type LOCKT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : LOCKT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LOCKT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype UNLOCK_ADDR_Field is HAL.UInt10;
   subtype UNLOCK_KEY_Field is HAL.UInt8;

   --  Unlock Register
   type UNLOCK_Register is record
      --  Write-only. Offset Register
      ADDR           : UNLOCK_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_10_23 : HAL.UInt14 := 16#0#;
      --  Write-only. Unlocking Key
      KEY            : UNLOCK_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UNLOCK_Register use record
      ADDR           at 0 range 0 .. 9;
      Reserved_10_23 at 0 range 10 .. 23;
      KEY            at 0 range 24 .. 31;
   end record;

   --  Access Status Register
   type ASR_Register is record
      --  Access Error
      AR            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASR_Register use record
      AR            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VERSION_VERSION_Field is HAL.UInt12;
   subtype VERSION_VARIANT_Field is HAL.UInt4;

   --  Version Register
   type VERSION_Register is record
      --  Read-only. Version Number
      VERSION        : VERSION_VERSION_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Variant Number
      VARIANT        : VERSION_VARIANT_Field;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VERSION_Register use record
      VERSION        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      VARIANT        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General-Purpose Input/Output Controller
   type GPIO_Peripheral is record
      --  GPIO Enable Register
      GPER0      : aliased GPER_Register;
      --  GPIO Enable Register - Set
      GPERS0     : aliased GPERS_Register;
      --  GPIO Enable Register - Clear
      GPERC0     : aliased GPERC_Register;
      --  GPIO Enable Register - Toggle
      GPERT0     : aliased GPERT_Register;
      --  Peripheral Mux Register 0
      PMR00      : aliased PMR_Register;
      --  Peripheral Mux Register 0 - Set
      PMR0S0     : aliased PMR0S_Register;
      --  Peripheral Mux Register 0 - Clear
      PMR0C0     : aliased PMR0C_Register;
      --  Peripheral Mux Register 0 - Toggle
      PMR0T0     : aliased PMR0T_Register;
      --  Peripheral Mux Register 1
      PMR10      : aliased PMR_Register;
      --  Peripheral Mux Register 1 - Set
      PMR1S0     : aliased PMR1S_Register;
      --  Peripheral Mux Register 1 - Clear
      PMR1C0     : aliased PMR1C_Register;
      --  Peripheral Mux Register 1 - Toggle
      PMR1T0     : aliased PMR1T_Register;
      --  Peripheral Mux Register 2
      PMR20      : aliased PMR_Register;
      --  Peripheral Mux Register 2 - Set
      PMR2S0     : aliased PMR2S_Register;
      --  Peripheral Mux Register 2 - Clear
      PMR2C0     : aliased PMR2C_Register;
      --  Peripheral Mux Register 2 - Toggle
      PMR2T0     : aliased PMR2T_Register;
      --  Output Driver Enable Register
      ODER0      : aliased ODER_Register;
      --  Output Driver Enable Register - Set
      ODERS0     : aliased ODERS_Register;
      --  Output Driver Enable Register - Clear
      ODERC0     : aliased ODERC_Register;
      --  Output Driver Enable Register - Toggle
      ODERT0     : aliased ODERT_Register;
      --  Output Value Register
      OVR0       : aliased OVR_Register;
      --  Output Value Register - Set
      OVRS0      : aliased OVRS_Register;
      --  Output Value Register - Clear
      OVRC0      : aliased OVRC_Register;
      --  Output Value Register - Toggle
      OVRT0      : aliased OVRT_Register;
      --  Pin Value Register
      PVR0       : aliased PVR_Register;
      --  Pull-up Enable Register
      PUER0      : aliased PUER_Register;
      --  Pull-up Enable Register - Set
      PUERS0     : aliased PUERS_Register;
      --  Pull-up Enable Register - Clear
      PUERC0     : aliased PUERC_Register;
      --  Pull-up Enable Register - Toggle
      PUERT0     : aliased PUERT_Register;
      --  Pull-down Enable Register
      PDER0      : aliased PDER_Register;
      --  Pull-down Enable Register - Set
      PDERS0     : aliased PDERS_Register;
      --  Pull-down Enable Register - Clear
      PDERC0     : aliased PDERC_Register;
      --  Pull-down Enable Register - Toggle
      PDERT0     : aliased PDERT_Register;
      --  Interrupt Enable Register
      IER0       : aliased IER_Register;
      --  Interrupt Enable Register - Set
      IERS0      : aliased IERS_Register;
      --  Interrupt Enable Register - Clear
      IERC0      : aliased IERC_Register;
      --  Interrupt Enable Register - Toggle
      IERT0      : aliased IERT_Register;
      --  Interrupt Mode Register 0
      IMR00      : aliased IMR_Register;
      --  Interrupt Mode Register 0 - Set
      IMR0S0     : aliased IMR0S_Register;
      --  Interrupt Mode Register 0 - Clear
      IMR0C0     : aliased IMR0C_Register;
      --  Interrupt Mode Register 0 - Toggle
      IMR0T0     : aliased IMR0T_Register;
      --  Interrupt Mode Register 1
      IMR10      : aliased IMR_Register;
      --  Interrupt Mode Register 1 - Set
      IMR1S0     : aliased IMR1S_Register;
      --  Interrupt Mode Register 1 - Clear
      IMR1C0     : aliased IMR1C_Register;
      --  Interrupt Mode Register 1 - Toggle
      IMR1T0     : aliased IMR1T_Register;
      --  Glitch Filter Enable Register
      GFER0      : aliased GFER_Register;
      --  Glitch Filter Enable Register - Set
      GFERS0     : aliased GFERS_Register;
      --  Glitch Filter Enable Register - Clear
      GFERC0     : aliased GFERC_Register;
      --  Glitch Filter Enable Register - Toggle
      GFERT0     : aliased GFERT_Register;
      --  Interrupt Flag Register
      IFR0       : aliased IFR_Register;
      --  Interrupt Flag Register - Clear
      IFRC0      : aliased IFRC_Register;
      --  Open Drain Mode Register
      ODMER0     : aliased ODMER_Register;
      --  Open Drain Mode Register - Set
      ODMERS0    : aliased ODMERS_Register;
      --  Open Drain Mode Register - Clear
      ODMERC0    : aliased ODMERC_Register;
      --  Open Drain Mode Register - Toggle
      ODMERT0    : aliased ODMERT_Register;
      --  Output Driving Capability Register 0
      ODCR00     : aliased ODCR_Register;
      --  Output Driving Capability Register 0 - Set
      ODCR0S0    : aliased ODCR0S_Register;
      --  Output Driving Capability Register 0 - Clear
      ODCR0C0    : aliased ODCR0C_Register;
      --  Output Driving Capability Register 0 - Toggle
      ODCR0T0    : aliased ODCR0T_Register;
      --  Output Driving Capability Register 1
      ODCR10     : aliased ODCR_Register;
      --  Output Driving Capability Register 1 - Set
      ODCR1S0    : aliased ODCR1S_Register;
      --  Output Driving Capability Register 1 - Clear
      ODCR1C0    : aliased ODCR1C_Register;
      --  Output Driving Capability Register 1 - Toggle
      ODCR1T0    : aliased ODCR1T_Register;
      --  Output Slew Rate Register 0
      OSRR00     : aliased OSRR_Register;
      --  Output Slew Rate Register 0 - Set
      OSRR0S0    : aliased OSRR0S_Register;
      --  Output Slew Rate Register 0 - Clear
      OSRR0C0    : aliased OSRR0C_Register;
      --  Output Slew Rate Register 0 - Toggle
      OSRR0T0    : aliased OSRR0T_Register;
      --  Schmitt Trigger Enable Register
      STER0      : aliased STER_Register;
      --  Schmitt Trigger Enable Register - Set
      STERS0     : aliased STERS_Register;
      --  Schmitt Trigger Enable Register - Clear
      STERC0     : aliased STERC_Register;
      --  Schmitt Trigger Enable Register - Toggle
      STERT0     : aliased STERT_Register;
      --  Event Enable Register
      EVER0      : aliased EVER_Register;
      --  Event Enable Register - Set
      EVERS0     : aliased EVERS_Register;
      --  Event Enable Register - Clear
      EVERC0     : aliased EVERC_Register;
      --  Event Enable Register - Toggle
      EVERT0     : aliased EVERT_Register;
      --  Lock Register
      LOCK0      : aliased LOCK_Register;
      --  Lock Register - Set
      LOCKS0     : aliased LOCKS_Register;
      --  Lock Register - Clear
      LOCKC0     : aliased LOCKC_Register;
      --  Lock Register - Toggle
      LOCKT0     : aliased LOCKT_Register;
      --  Unlock Register
      UNLOCK0    : aliased UNLOCK_Register;
      --  Access Status Register
      ASR0       : aliased ASR_Register;
      --  Parameter Register
      PARAMETER0 : aliased HAL.UInt32;
      --  Version Register
      VERSION0   : aliased VERSION_Register;
      --  GPIO Enable Register
      GPER1      : aliased GPER_Register;
      --  GPIO Enable Register - Set
      GPERS1     : aliased GPERS_Register;
      --  GPIO Enable Register - Clear
      GPERC1     : aliased GPERC_Register;
      --  GPIO Enable Register - Toggle
      GPERT1     : aliased GPERT_Register;
      --  Peripheral Mux Register 0
      PMR01      : aliased PMR_Register;
      --  Peripheral Mux Register 0 - Set
      PMR0S1     : aliased PMR0S_Register;
      --  Peripheral Mux Register 0 - Clear
      PMR0C1     : aliased PMR0C_Register;
      --  Peripheral Mux Register 0 - Toggle
      PMR0T1     : aliased PMR0T_Register;
      --  Peripheral Mux Register 1
      PMR11      : aliased PMR_Register;
      --  Peripheral Mux Register 1 - Set
      PMR1S1     : aliased PMR1S_Register;
      --  Peripheral Mux Register 1 - Clear
      PMR1C1     : aliased PMR1C_Register;
      --  Peripheral Mux Register 1 - Toggle
      PMR1T1     : aliased PMR1T_Register;
      --  Peripheral Mux Register 2
      PMR21      : aliased PMR_Register;
      --  Peripheral Mux Register 2 - Set
      PMR2S1     : aliased PMR2S_Register;
      --  Peripheral Mux Register 2 - Clear
      PMR2C1     : aliased PMR2C_Register;
      --  Peripheral Mux Register 2 - Toggle
      PMR2T1     : aliased PMR2T_Register;
      --  Output Driver Enable Register
      ODER1      : aliased ODER_Register;
      --  Output Driver Enable Register - Set
      ODERS1     : aliased ODERS_Register;
      --  Output Driver Enable Register - Clear
      ODERC1     : aliased ODERC_Register;
      --  Output Driver Enable Register - Toggle
      ODERT1     : aliased ODERT_Register;
      --  Output Value Register
      OVR1       : aliased OVR_Register;
      --  Output Value Register - Set
      OVRS1      : aliased OVRS_Register;
      --  Output Value Register - Clear
      OVRC1      : aliased OVRC_Register;
      --  Output Value Register - Toggle
      OVRT1      : aliased OVRT_Register;
      --  Pin Value Register
      PVR1       : aliased PVR_Register;
      --  Pull-up Enable Register
      PUER1      : aliased PUER_Register;
      --  Pull-up Enable Register - Set
      PUERS1     : aliased PUERS_Register;
      --  Pull-up Enable Register - Clear
      PUERC1     : aliased PUERC_Register;
      --  Pull-up Enable Register - Toggle
      PUERT1     : aliased PUERT_Register;
      --  Pull-down Enable Register
      PDER1      : aliased PDER_Register;
      --  Pull-down Enable Register - Set
      PDERS1     : aliased PDERS_Register;
      --  Pull-down Enable Register - Clear
      PDERC1     : aliased PDERC_Register;
      --  Pull-down Enable Register - Toggle
      PDERT1     : aliased PDERT_Register;
      --  Interrupt Enable Register
      IER1       : aliased IER_Register;
      --  Interrupt Enable Register - Set
      IERS1      : aliased IERS_Register;
      --  Interrupt Enable Register - Clear
      IERC1      : aliased IERC_Register;
      --  Interrupt Enable Register - Toggle
      IERT1      : aliased IERT_Register;
      --  Interrupt Mode Register 0
      IMR01      : aliased IMR_Register;
      --  Interrupt Mode Register 0 - Set
      IMR0S1     : aliased IMR0S_Register;
      --  Interrupt Mode Register 0 - Clear
      IMR0C1     : aliased IMR0C_Register;
      --  Interrupt Mode Register 0 - Toggle
      IMR0T1     : aliased IMR0T_Register;
      --  Interrupt Mode Register 1
      IMR11      : aliased IMR_Register;
      --  Interrupt Mode Register 1 - Set
      IMR1S1     : aliased IMR1S_Register;
      --  Interrupt Mode Register 1 - Clear
      IMR1C1     : aliased IMR1C_Register;
      --  Interrupt Mode Register 1 - Toggle
      IMR1T1     : aliased IMR1T_Register;
      --  Glitch Filter Enable Register
      GFER1      : aliased GFER_Register;
      --  Glitch Filter Enable Register - Set
      GFERS1     : aliased GFERS_Register;
      --  Glitch Filter Enable Register - Clear
      GFERC1     : aliased GFERC_Register;
      --  Glitch Filter Enable Register - Toggle
      GFERT1     : aliased GFERT_Register;
      --  Interrupt Flag Register
      IFR1       : aliased IFR_Register;
      --  Interrupt Flag Register - Clear
      IFRC1      : aliased IFRC_Register;
      --  Open Drain Mode Register
      ODMER1     : aliased ODMER_Register;
      --  Open Drain Mode Register - Set
      ODMERS1    : aliased ODMERS_Register;
      --  Open Drain Mode Register - Clear
      ODMERC1    : aliased ODMERC_Register;
      --  Open Drain Mode Register - Toggle
      ODMERT1    : aliased ODMERT_Register;
      --  Output Driving Capability Register 0
      ODCR01     : aliased ODCR_Register;
      --  Output Driving Capability Register 0 - Set
      ODCR0S1    : aliased ODCR0S_Register;
      --  Output Driving Capability Register 0 - Clear
      ODCR0C1    : aliased ODCR0C_Register;
      --  Output Driving Capability Register 0 - Toggle
      ODCR0T1    : aliased ODCR0T_Register;
      --  Output Driving Capability Register 1
      ODCR11     : aliased ODCR_Register;
      --  Output Driving Capability Register 1 - Set
      ODCR1S1    : aliased ODCR1S_Register;
      --  Output Driving Capability Register 1 - Clear
      ODCR1C1    : aliased ODCR1C_Register;
      --  Output Driving Capability Register 1 - Toggle
      ODCR1T1    : aliased ODCR1T_Register;
      --  Output Slew Rate Register 0
      OSRR01     : aliased OSRR_Register;
      --  Output Slew Rate Register 0 - Set
      OSRR0S1    : aliased OSRR0S_Register;
      --  Output Slew Rate Register 0 - Clear
      OSRR0C1    : aliased OSRR0C_Register;
      --  Output Slew Rate Register 0 - Toggle
      OSRR0T1    : aliased OSRR0T_Register;
      --  Schmitt Trigger Enable Register
      STER1      : aliased STER_Register;
      --  Schmitt Trigger Enable Register - Set
      STERS1     : aliased STERS_Register;
      --  Schmitt Trigger Enable Register - Clear
      STERC1     : aliased STERC_Register;
      --  Schmitt Trigger Enable Register - Toggle
      STERT1     : aliased STERT_Register;
      --  Event Enable Register
      EVER1      : aliased EVER_Register;
      --  Event Enable Register - Set
      EVERS1     : aliased EVERS_Register;
      --  Event Enable Register - Clear
      EVERC1     : aliased EVERC_Register;
      --  Event Enable Register - Toggle
      EVERT1     : aliased EVERT_Register;
      --  Lock Register
      LOCK1      : aliased LOCK_Register;
      --  Lock Register - Set
      LOCKS1     : aliased LOCKS_Register;
      --  Lock Register - Clear
      LOCKC1     : aliased LOCKC_Register;
      --  Lock Register - Toggle
      LOCKT1     : aliased LOCKT_Register;
      --  Unlock Register
      UNLOCK1    : aliased UNLOCK_Register;
      --  Access Status Register
      ASR1       : aliased ASR_Register;
      --  Parameter Register
      PARAMETER1 : aliased HAL.UInt32;
      --  Version Register
      VERSION1   : aliased VERSION_Register;
      --  GPIO Enable Register
      GPER2      : aliased GPER_Register;
      --  GPIO Enable Register - Set
      GPERS2     : aliased GPERS_Register;
      --  GPIO Enable Register - Clear
      GPERC2     : aliased GPERC_Register;
      --  GPIO Enable Register - Toggle
      GPERT2     : aliased GPERT_Register;
      --  Peripheral Mux Register 0
      PMR02      : aliased PMR_Register;
      --  Peripheral Mux Register 0 - Set
      PMR0S2     : aliased PMR0S_Register;
      --  Peripheral Mux Register 0 - Clear
      PMR0C2     : aliased PMR0C_Register;
      --  Peripheral Mux Register 0 - Toggle
      PMR0T2     : aliased PMR0T_Register;
      --  Peripheral Mux Register 1
      PMR12      : aliased PMR_Register;
      --  Peripheral Mux Register 1 - Set
      PMR1S2     : aliased PMR1S_Register;
      --  Peripheral Mux Register 1 - Clear
      PMR1C2     : aliased PMR1C_Register;
      --  Peripheral Mux Register 1 - Toggle
      PMR1T2     : aliased PMR1T_Register;
      --  Peripheral Mux Register 2
      PMR22      : aliased PMR_Register;
      --  Peripheral Mux Register 2 - Set
      PMR2S2     : aliased PMR2S_Register;
      --  Peripheral Mux Register 2 - Clear
      PMR2C2     : aliased PMR2C_Register;
      --  Peripheral Mux Register 2 - Toggle
      PMR2T2     : aliased PMR2T_Register;
      --  Output Driver Enable Register
      ODER2      : aliased ODER_Register;
      --  Output Driver Enable Register - Set
      ODERS2     : aliased ODERS_Register;
      --  Output Driver Enable Register - Clear
      ODERC2     : aliased ODERC_Register;
      --  Output Driver Enable Register - Toggle
      ODERT2     : aliased ODERT_Register;
      --  Output Value Register
      OVR2       : aliased OVR_Register;
      --  Output Value Register - Set
      OVRS2      : aliased OVRS_Register;
      --  Output Value Register - Clear
      OVRC2      : aliased OVRC_Register;
      --  Output Value Register - Toggle
      OVRT2      : aliased OVRT_Register;
      --  Pin Value Register
      PVR2       : aliased PVR_Register;
      --  Pull-up Enable Register
      PUER2      : aliased PUER_Register;
      --  Pull-up Enable Register - Set
      PUERS2     : aliased PUERS_Register;
      --  Pull-up Enable Register - Clear
      PUERC2     : aliased PUERC_Register;
      --  Pull-up Enable Register - Toggle
      PUERT2     : aliased PUERT_Register;
      --  Pull-down Enable Register
      PDER2      : aliased PDER_Register;
      --  Pull-down Enable Register - Set
      PDERS2     : aliased PDERS_Register;
      --  Pull-down Enable Register - Clear
      PDERC2     : aliased PDERC_Register;
      --  Pull-down Enable Register - Toggle
      PDERT2     : aliased PDERT_Register;
      --  Interrupt Enable Register
      IER2       : aliased IER_Register;
      --  Interrupt Enable Register - Set
      IERS2      : aliased IERS_Register;
      --  Interrupt Enable Register - Clear
      IERC2      : aliased IERC_Register;
      --  Interrupt Enable Register - Toggle
      IERT2      : aliased IERT_Register;
      --  Interrupt Mode Register 0
      IMR02      : aliased IMR_Register;
      --  Interrupt Mode Register 0 - Set
      IMR0S2     : aliased IMR0S_Register;
      --  Interrupt Mode Register 0 - Clear
      IMR0C2     : aliased IMR0C_Register;
      --  Interrupt Mode Register 0 - Toggle
      IMR0T2     : aliased IMR0T_Register;
      --  Interrupt Mode Register 1
      IMR12      : aliased IMR_Register;
      --  Interrupt Mode Register 1 - Set
      IMR1S2     : aliased IMR1S_Register;
      --  Interrupt Mode Register 1 - Clear
      IMR1C2     : aliased IMR1C_Register;
      --  Interrupt Mode Register 1 - Toggle
      IMR1T2     : aliased IMR1T_Register;
      --  Glitch Filter Enable Register
      GFER2      : aliased GFER_Register;
      --  Glitch Filter Enable Register - Set
      GFERS2     : aliased GFERS_Register;
      --  Glitch Filter Enable Register - Clear
      GFERC2     : aliased GFERC_Register;
      --  Glitch Filter Enable Register - Toggle
      GFERT2     : aliased GFERT_Register;
      --  Interrupt Flag Register
      IFR2       : aliased IFR_Register;
      --  Interrupt Flag Register - Clear
      IFRC2      : aliased IFRC_Register;
      --  Open Drain Mode Register
      ODMER2     : aliased ODMER_Register;
      --  Open Drain Mode Register - Set
      ODMERS2    : aliased ODMERS_Register;
      --  Open Drain Mode Register - Clear
      ODMERC2    : aliased ODMERC_Register;
      --  Open Drain Mode Register - Toggle
      ODMERT2    : aliased ODMERT_Register;
      --  Output Driving Capability Register 0
      ODCR02     : aliased ODCR_Register;
      --  Output Driving Capability Register 0 - Set
      ODCR0S2    : aliased ODCR0S_Register;
      --  Output Driving Capability Register 0 - Clear
      ODCR0C2    : aliased ODCR0C_Register;
      --  Output Driving Capability Register 0 - Toggle
      ODCR0T2    : aliased ODCR0T_Register;
      --  Output Driving Capability Register 1
      ODCR12     : aliased ODCR_Register;
      --  Output Driving Capability Register 1 - Set
      ODCR1S2    : aliased ODCR1S_Register;
      --  Output Driving Capability Register 1 - Clear
      ODCR1C2    : aliased ODCR1C_Register;
      --  Output Driving Capability Register 1 - Toggle
      ODCR1T2    : aliased ODCR1T_Register;
      --  Output Slew Rate Register 0
      OSRR02     : aliased OSRR_Register;
      --  Output Slew Rate Register 0 - Set
      OSRR0S2    : aliased OSRR0S_Register;
      --  Output Slew Rate Register 0 - Clear
      OSRR0C2    : aliased OSRR0C_Register;
      --  Output Slew Rate Register 0 - Toggle
      OSRR0T2    : aliased OSRR0T_Register;
      --  Schmitt Trigger Enable Register
      STER2      : aliased STER_Register;
      --  Schmitt Trigger Enable Register - Set
      STERS2     : aliased STERS_Register;
      --  Schmitt Trigger Enable Register - Clear
      STERC2     : aliased STERC_Register;
      --  Schmitt Trigger Enable Register - Toggle
      STERT2     : aliased STERT_Register;
      --  Event Enable Register
      EVER2      : aliased EVER_Register;
      --  Event Enable Register - Set
      EVERS2     : aliased EVERS_Register;
      --  Event Enable Register - Clear
      EVERC2     : aliased EVERC_Register;
      --  Event Enable Register - Toggle
      EVERT2     : aliased EVERT_Register;
      --  Lock Register
      LOCK2      : aliased LOCK_Register;
      --  Lock Register - Set
      LOCKS2     : aliased LOCKS_Register;
      --  Lock Register - Clear
      LOCKC2     : aliased LOCKC_Register;
      --  Lock Register - Toggle
      LOCKT2     : aliased LOCKT_Register;
      --  Unlock Register
      UNLOCK2    : aliased UNLOCK_Register;
      --  Access Status Register
      ASR2       : aliased ASR_Register;
      --  Parameter Register
      PARAMETER2 : aliased HAL.UInt32;
      --  Version Register
      VERSION2   : aliased VERSION_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      GPER0      at 16#0# range 0 .. 31;
      GPERS0     at 16#4# range 0 .. 31;
      GPERC0     at 16#8# range 0 .. 31;
      GPERT0     at 16#C# range 0 .. 31;
      PMR00      at 16#10# range 0 .. 31;
      PMR0S0     at 16#14# range 0 .. 31;
      PMR0C0     at 16#18# range 0 .. 31;
      PMR0T0     at 16#1C# range 0 .. 31;
      PMR10      at 16#20# range 0 .. 31;
      PMR1S0     at 16#24# range 0 .. 31;
      PMR1C0     at 16#28# range 0 .. 31;
      PMR1T0     at 16#2C# range 0 .. 31;
      PMR20      at 16#30# range 0 .. 31;
      PMR2S0     at 16#34# range 0 .. 31;
      PMR2C0     at 16#38# range 0 .. 31;
      PMR2T0     at 16#3C# range 0 .. 31;
      ODER0      at 16#40# range 0 .. 31;
      ODERS0     at 16#44# range 0 .. 31;
      ODERC0     at 16#48# range 0 .. 31;
      ODERT0     at 16#4C# range 0 .. 31;
      OVR0       at 16#50# range 0 .. 31;
      OVRS0      at 16#54# range 0 .. 31;
      OVRC0      at 16#58# range 0 .. 31;
      OVRT0      at 16#5C# range 0 .. 31;
      PVR0       at 16#60# range 0 .. 31;
      PUER0      at 16#70# range 0 .. 31;
      PUERS0     at 16#74# range 0 .. 31;
      PUERC0     at 16#78# range 0 .. 31;
      PUERT0     at 16#7C# range 0 .. 31;
      PDER0      at 16#80# range 0 .. 31;
      PDERS0     at 16#84# range 0 .. 31;
      PDERC0     at 16#88# range 0 .. 31;
      PDERT0     at 16#8C# range 0 .. 31;
      IER0       at 16#90# range 0 .. 31;
      IERS0      at 16#94# range 0 .. 31;
      IERC0      at 16#98# range 0 .. 31;
      IERT0      at 16#9C# range 0 .. 31;
      IMR00      at 16#A0# range 0 .. 31;
      IMR0S0     at 16#A4# range 0 .. 31;
      IMR0C0     at 16#A8# range 0 .. 31;
      IMR0T0     at 16#AC# range 0 .. 31;
      IMR10      at 16#B0# range 0 .. 31;
      IMR1S0     at 16#B4# range 0 .. 31;
      IMR1C0     at 16#B8# range 0 .. 31;
      IMR1T0     at 16#BC# range 0 .. 31;
      GFER0      at 16#C0# range 0 .. 31;
      GFERS0     at 16#C4# range 0 .. 31;
      GFERC0     at 16#C8# range 0 .. 31;
      GFERT0     at 16#CC# range 0 .. 31;
      IFR0       at 16#D0# range 0 .. 31;
      IFRC0      at 16#D8# range 0 .. 31;
      ODMER0     at 16#E0# range 0 .. 31;
      ODMERS0    at 16#E4# range 0 .. 31;
      ODMERC0    at 16#E8# range 0 .. 31;
      ODMERT0    at 16#EC# range 0 .. 31;
      ODCR00     at 16#100# range 0 .. 31;
      ODCR0S0    at 16#104# range 0 .. 31;
      ODCR0C0    at 16#108# range 0 .. 31;
      ODCR0T0    at 16#10C# range 0 .. 31;
      ODCR10     at 16#110# range 0 .. 31;
      ODCR1S0    at 16#114# range 0 .. 31;
      ODCR1C0    at 16#118# range 0 .. 31;
      ODCR1T0    at 16#11C# range 0 .. 31;
      OSRR00     at 16#130# range 0 .. 31;
      OSRR0S0    at 16#134# range 0 .. 31;
      OSRR0C0    at 16#138# range 0 .. 31;
      OSRR0T0    at 16#13C# range 0 .. 31;
      STER0      at 16#160# range 0 .. 31;
      STERS0     at 16#164# range 0 .. 31;
      STERC0     at 16#168# range 0 .. 31;
      STERT0     at 16#16C# range 0 .. 31;
      EVER0      at 16#180# range 0 .. 31;
      EVERS0     at 16#184# range 0 .. 31;
      EVERC0     at 16#188# range 0 .. 31;
      EVERT0     at 16#18C# range 0 .. 31;
      LOCK0      at 16#1A0# range 0 .. 31;
      LOCKS0     at 16#1A4# range 0 .. 31;
      LOCKC0     at 16#1A8# range 0 .. 31;
      LOCKT0     at 16#1AC# range 0 .. 31;
      UNLOCK0    at 16#1E0# range 0 .. 31;
      ASR0       at 16#1E4# range 0 .. 31;
      PARAMETER0 at 16#1F8# range 0 .. 31;
      VERSION0   at 16#1FC# range 0 .. 31;
      GPER1      at 16#200# range 0 .. 31;
      GPERS1     at 16#204# range 0 .. 31;
      GPERC1     at 16#208# range 0 .. 31;
      GPERT1     at 16#20C# range 0 .. 31;
      PMR01      at 16#210# range 0 .. 31;
      PMR0S1     at 16#214# range 0 .. 31;
      PMR0C1     at 16#218# range 0 .. 31;
      PMR0T1     at 16#21C# range 0 .. 31;
      PMR11      at 16#220# range 0 .. 31;
      PMR1S1     at 16#224# range 0 .. 31;
      PMR1C1     at 16#228# range 0 .. 31;
      PMR1T1     at 16#22C# range 0 .. 31;
      PMR21      at 16#230# range 0 .. 31;
      PMR2S1     at 16#234# range 0 .. 31;
      PMR2C1     at 16#238# range 0 .. 31;
      PMR2T1     at 16#23C# range 0 .. 31;
      ODER1      at 16#240# range 0 .. 31;
      ODERS1     at 16#244# range 0 .. 31;
      ODERC1     at 16#248# range 0 .. 31;
      ODERT1     at 16#24C# range 0 .. 31;
      OVR1       at 16#250# range 0 .. 31;
      OVRS1      at 16#254# range 0 .. 31;
      OVRC1      at 16#258# range 0 .. 31;
      OVRT1      at 16#25C# range 0 .. 31;
      PVR1       at 16#260# range 0 .. 31;
      PUER1      at 16#270# range 0 .. 31;
      PUERS1     at 16#274# range 0 .. 31;
      PUERC1     at 16#278# range 0 .. 31;
      PUERT1     at 16#27C# range 0 .. 31;
      PDER1      at 16#280# range 0 .. 31;
      PDERS1     at 16#284# range 0 .. 31;
      PDERC1     at 16#288# range 0 .. 31;
      PDERT1     at 16#28C# range 0 .. 31;
      IER1       at 16#290# range 0 .. 31;
      IERS1      at 16#294# range 0 .. 31;
      IERC1      at 16#298# range 0 .. 31;
      IERT1      at 16#29C# range 0 .. 31;
      IMR01      at 16#2A0# range 0 .. 31;
      IMR0S1     at 16#2A4# range 0 .. 31;
      IMR0C1     at 16#2A8# range 0 .. 31;
      IMR0T1     at 16#2AC# range 0 .. 31;
      IMR11      at 16#2B0# range 0 .. 31;
      IMR1S1     at 16#2B4# range 0 .. 31;
      IMR1C1     at 16#2B8# range 0 .. 31;
      IMR1T1     at 16#2BC# range 0 .. 31;
      GFER1      at 16#2C0# range 0 .. 31;
      GFERS1     at 16#2C4# range 0 .. 31;
      GFERC1     at 16#2C8# range 0 .. 31;
      GFERT1     at 16#2CC# range 0 .. 31;
      IFR1       at 16#2D0# range 0 .. 31;
      IFRC1      at 16#2D8# range 0 .. 31;
      ODMER1     at 16#2E0# range 0 .. 31;
      ODMERS1    at 16#2E4# range 0 .. 31;
      ODMERC1    at 16#2E8# range 0 .. 31;
      ODMERT1    at 16#2EC# range 0 .. 31;
      ODCR01     at 16#300# range 0 .. 31;
      ODCR0S1    at 16#304# range 0 .. 31;
      ODCR0C1    at 16#308# range 0 .. 31;
      ODCR0T1    at 16#30C# range 0 .. 31;
      ODCR11     at 16#310# range 0 .. 31;
      ODCR1S1    at 16#314# range 0 .. 31;
      ODCR1C1    at 16#318# range 0 .. 31;
      ODCR1T1    at 16#31C# range 0 .. 31;
      OSRR01     at 16#330# range 0 .. 31;
      OSRR0S1    at 16#334# range 0 .. 31;
      OSRR0C1    at 16#338# range 0 .. 31;
      OSRR0T1    at 16#33C# range 0 .. 31;
      STER1      at 16#360# range 0 .. 31;
      STERS1     at 16#364# range 0 .. 31;
      STERC1     at 16#368# range 0 .. 31;
      STERT1     at 16#36C# range 0 .. 31;
      EVER1      at 16#380# range 0 .. 31;
      EVERS1     at 16#384# range 0 .. 31;
      EVERC1     at 16#388# range 0 .. 31;
      EVERT1     at 16#38C# range 0 .. 31;
      LOCK1      at 16#3A0# range 0 .. 31;
      LOCKS1     at 16#3A4# range 0 .. 31;
      LOCKC1     at 16#3A8# range 0 .. 31;
      LOCKT1     at 16#3AC# range 0 .. 31;
      UNLOCK1    at 16#3E0# range 0 .. 31;
      ASR1       at 16#3E4# range 0 .. 31;
      PARAMETER1 at 16#3F8# range 0 .. 31;
      VERSION1   at 16#3FC# range 0 .. 31;
      GPER2      at 16#400# range 0 .. 31;
      GPERS2     at 16#404# range 0 .. 31;
      GPERC2     at 16#408# range 0 .. 31;
      GPERT2     at 16#40C# range 0 .. 31;
      PMR02      at 16#410# range 0 .. 31;
      PMR0S2     at 16#414# range 0 .. 31;
      PMR0C2     at 16#418# range 0 .. 31;
      PMR0T2     at 16#41C# range 0 .. 31;
      PMR12      at 16#420# range 0 .. 31;
      PMR1S2     at 16#424# range 0 .. 31;
      PMR1C2     at 16#428# range 0 .. 31;
      PMR1T2     at 16#42C# range 0 .. 31;
      PMR22      at 16#430# range 0 .. 31;
      PMR2S2     at 16#434# range 0 .. 31;
      PMR2C2     at 16#438# range 0 .. 31;
      PMR2T2     at 16#43C# range 0 .. 31;
      ODER2      at 16#440# range 0 .. 31;
      ODERS2     at 16#444# range 0 .. 31;
      ODERC2     at 16#448# range 0 .. 31;
      ODERT2     at 16#44C# range 0 .. 31;
      OVR2       at 16#450# range 0 .. 31;
      OVRS2      at 16#454# range 0 .. 31;
      OVRC2      at 16#458# range 0 .. 31;
      OVRT2      at 16#45C# range 0 .. 31;
      PVR2       at 16#460# range 0 .. 31;
      PUER2      at 16#470# range 0 .. 31;
      PUERS2     at 16#474# range 0 .. 31;
      PUERC2     at 16#478# range 0 .. 31;
      PUERT2     at 16#47C# range 0 .. 31;
      PDER2      at 16#480# range 0 .. 31;
      PDERS2     at 16#484# range 0 .. 31;
      PDERC2     at 16#488# range 0 .. 31;
      PDERT2     at 16#48C# range 0 .. 31;
      IER2       at 16#490# range 0 .. 31;
      IERS2      at 16#494# range 0 .. 31;
      IERC2      at 16#498# range 0 .. 31;
      IERT2      at 16#49C# range 0 .. 31;
      IMR02      at 16#4A0# range 0 .. 31;
      IMR0S2     at 16#4A4# range 0 .. 31;
      IMR0C2     at 16#4A8# range 0 .. 31;
      IMR0T2     at 16#4AC# range 0 .. 31;
      IMR12      at 16#4B0# range 0 .. 31;
      IMR1S2     at 16#4B4# range 0 .. 31;
      IMR1C2     at 16#4B8# range 0 .. 31;
      IMR1T2     at 16#4BC# range 0 .. 31;
      GFER2      at 16#4C0# range 0 .. 31;
      GFERS2     at 16#4C4# range 0 .. 31;
      GFERC2     at 16#4C8# range 0 .. 31;
      GFERT2     at 16#4CC# range 0 .. 31;
      IFR2       at 16#4D0# range 0 .. 31;
      IFRC2      at 16#4D8# range 0 .. 31;
      ODMER2     at 16#4E0# range 0 .. 31;
      ODMERS2    at 16#4E4# range 0 .. 31;
      ODMERC2    at 16#4E8# range 0 .. 31;
      ODMERT2    at 16#4EC# range 0 .. 31;
      ODCR02     at 16#500# range 0 .. 31;
      ODCR0S2    at 16#504# range 0 .. 31;
      ODCR0C2    at 16#508# range 0 .. 31;
      ODCR0T2    at 16#50C# range 0 .. 31;
      ODCR12     at 16#510# range 0 .. 31;
      ODCR1S2    at 16#514# range 0 .. 31;
      ODCR1C2    at 16#518# range 0 .. 31;
      ODCR1T2    at 16#51C# range 0 .. 31;
      OSRR02     at 16#530# range 0 .. 31;
      OSRR0S2    at 16#534# range 0 .. 31;
      OSRR0C2    at 16#538# range 0 .. 31;
      OSRR0T2    at 16#53C# range 0 .. 31;
      STER2      at 16#560# range 0 .. 31;
      STERS2     at 16#564# range 0 .. 31;
      STERC2     at 16#568# range 0 .. 31;
      STERT2     at 16#56C# range 0 .. 31;
      EVER2      at 16#580# range 0 .. 31;
      EVERS2     at 16#584# range 0 .. 31;
      EVERC2     at 16#588# range 0 .. 31;
      EVERT2     at 16#58C# range 0 .. 31;
      LOCK2      at 16#5A0# range 0 .. 31;
      LOCKS2     at 16#5A4# range 0 .. 31;
      LOCKC2     at 16#5A8# range 0 .. 31;
      LOCKT2     at 16#5AC# range 0 .. 31;
      UNLOCK2    at 16#5E0# range 0 .. 31;
      ASR2       at 16#5E4# range 0 .. 31;
      PARAMETER2 at 16#5F8# range 0 .. 31;
      VERSION2   at 16#5FC# range 0 .. 31;
   end record;

   --  General-Purpose Input/Output Controller
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400E1000#);

end SAM_SVD.GPIO;
