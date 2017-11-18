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

package NRF_SVD.UICR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Description collection[0]: Reserved for Nordic firmware design

   --  Description collection[0]: Reserved for Nordic firmware design
   type NRFFW_Registers is array (0 .. 14) of HAL.UInt32
     with Volatile;

   --  Description collection[0]: Reserved for Nordic hardware design

   --  Description collection[0]: Reserved for Nordic hardware design
   type NRFHW_Registers is array (0 .. 11) of HAL.UInt32
     with Volatile;

   --  Description collection[0]: Reserved for customer

   --  Description collection[0]: Reserved for customer
   type CUSTOMER_Registers is array (0 .. 31) of HAL.UInt32
     with Volatile;

   subtype PSELRESET_PIN_Field is HAL.UInt6;

   --  Connection
   type PSELRESET_CONNECT_Field is
     (
      --  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for PSELRESET_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Description collection[0]: Mapping of the nRESET function (see POWER
   --  chapter for details)
   type PSELRESET_Register is record
      --  GPIO number P0.n onto which reset is exposed
      PIN           : PSELRESET_PIN_Field := 16#3F#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : PSELRESET_CONNECT_Field := NRF_SVD.UICR.Disconnected;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSELRESET_Register use record
      PIN           at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Description collection[0]: Mapping of the nRESET function (see POWER
   --  chapter for details)
   type PSELRESET_Registers is array (0 .. 1) of PSELRESET_Register
     with Volatile;

   --  Enable or disable access port protection.
   type APPROTECT_PALL_Field is
     (
      --  Enable
      Enabled,
      --  Disable
      Disabled)
     with Size => 8;
   for APPROTECT_PALL_Field use
     (Enabled => 0,
      Disabled => 255);

   --  Access port protection
   type APPROTECT_Register is record
      --  Enable or disable access port protection.
      PALL          : APPROTECT_PALL_Field := NRF_SVD.UICR.Disabled;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#FFFFFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APPROTECT_Register use record
      PALL          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  User information configuration registers
   type UICR_Peripheral is record
      --  Unspecified
      UNUSED0   : aliased HAL.UInt32;
      --  Unspecified
      UNUSED1   : aliased HAL.UInt32;
      --  Unspecified
      UNUSED2   : aliased HAL.UInt32;
      --  Unspecified
      UNUSED3   : aliased HAL.UInt32;
      --  Description collection[0]: Reserved for Nordic firmware design
      NRFFW     : aliased NRFFW_Registers;
      --  Description collection[0]: Reserved for Nordic hardware design
      NRFHW     : aliased NRFHW_Registers;
      --  Description collection[0]: Reserved for customer
      CUSTOMER  : aliased CUSTOMER_Registers;
      --  Description collection[0]: Mapping of the nRESET function (see POWER
      --  chapter for details)
      PSELRESET : aliased PSELRESET_Registers;
      --  Access port protection
      APPROTECT : aliased APPROTECT_Register;
   end record
     with Volatile;

   for UICR_Peripheral use record
      UNUSED0   at 16#0# range 0 .. 31;
      UNUSED1   at 16#4# range 0 .. 31;
      UNUSED2   at 16#8# range 0 .. 31;
      UNUSED3   at 16#10# range 0 .. 31;
      NRFFW     at 16#14# range 0 .. 479;
      NRFHW     at 16#50# range 0 .. 383;
      CUSTOMER  at 16#80# range 0 .. 1023;
      PSELRESET at 16#200# range 0 .. 63;
      APPROTECT at 16#208# range 0 .. 31;
   end record;

   --  User information configuration registers
   UICR_Periph : aliased UICR_Peripheral
     with Import, Address => System'To_Address (16#10001000#);

end NRF_SVD.UICR;
