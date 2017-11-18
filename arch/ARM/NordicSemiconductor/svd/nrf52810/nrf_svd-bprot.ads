--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52810.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.BPROT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable protection for region 0. Write '0' has no effect.
   type CONFIG0_REGION0_Field is
     (
      --  Protection disabled
      Disabled,
      --  Protection enabled
      Enabled)
     with Size => 1;
   for CONFIG0_REGION0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CONFIG0_REGION array
   type CONFIG0_REGION_Field_Array is array (0 .. 31)
     of CONFIG0_REGION0_Field
     with Component_Size => 1, Size => 32;

   --  Block protect configuration register 0
   type CONFIG0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REGION as a value
            Val : HAL.UInt32;
         when True =>
            --  REGION as an array
            Arr : CONFIG0_REGION_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for CONFIG0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Enable protection for region 32. Write '0' has no effect.
   type CONFIG1_REGION32_Field is
     (
      --  Protection disabled
      Disabled,
      --  Protection enabled
      Enabled)
     with Size => 1;
   for CONFIG1_REGION32_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CONFIG1_REGION array
   type CONFIG1_REGION_Field_Array is array (32 .. 47)
     of CONFIG1_REGION32_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for CONFIG1_REGION
   type CONFIG1_REGION_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REGION as a value
            Val : HAL.UInt16;
         when True =>
            --  REGION as an array
            Arr : CONFIG1_REGION_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for CONFIG1_REGION_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Block protect configuration register 1
   type CONFIG1_Register is record
      --  Enable protection for region 32. Write '0' has no effect.
      REGION         : CONFIG1_REGION_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG1_Register use record
      REGION         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Disable the protection mechanism for NVM regions while in debug mode.
   --  This register will only disable the protection mechanism if the device
   --  is in debug mode.
   type DISABLEINDEBUG_DISABLEINDEBUG_Field is
     (
      --  Enabled in debug
      Enabled,
      --  Disabled in debug
      Disabled)
     with Size => 1;
   for DISABLEINDEBUG_DISABLEINDEBUG_Field use
     (Enabled => 0,
      Disabled => 1);

   --  Disable protection mechanism in debug mode
   type DISABLEINDEBUG_Register is record
      --  Disable the protection mechanism for NVM regions while in debug mode.
      --  This register will only disable the protection mechanism if the
      --  device is in debug mode.
      DISABLEINDEBUG : DISABLEINDEBUG_DISABLEINDEBUG_Field :=
                        NRF_SVD.BPROT.Disabled;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DISABLEINDEBUG_Register use record
      DISABLEINDEBUG at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Block Protect
   type BPROT_Peripheral is record
      --  Block protect configuration register 0
      CONFIG0        : aliased CONFIG0_Register;
      --  Block protect configuration register 1
      CONFIG1        : aliased CONFIG1_Register;
      --  Disable protection mechanism in debug mode
      DISABLEINDEBUG : aliased DISABLEINDEBUG_Register;
      --  Unspecified
      UNUSED0        : aliased HAL.UInt32;
   end record
     with Volatile;

   for BPROT_Peripheral use record
      CONFIG0        at 16#600# range 0 .. 31;
      CONFIG1        at 16#604# range 0 .. 31;
      DISABLEINDEBUG at 16#608# range 0 .. 31;
      UNUSED0        at 16#60C# range 0 .. 31;
   end record;

   --  Block Protect
   BPROT_Periph : aliased BPROT_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.BPROT;
