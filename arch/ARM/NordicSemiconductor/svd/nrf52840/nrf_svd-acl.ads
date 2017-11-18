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

--  This spec has been automatically generated from nrf52840.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ACL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------------
   -- ACL cluster's Registers --
   -----------------------------

   --  Configure write and erase permissions for region 0. Write '0' has no
   --  effect.
   type PERM_WRITE_Field is
     (
      --  Allow write and erase instructions to region 0
      Enable,
      --  Block write and erase instructions to region 0
      Disable)
     with Size => 1;
   for PERM_WRITE_Field use
     (Enable => 0,
      Disable => 1);

   --  Configure read permissions for region 0. Write '0' has no effect.
   type PERM_READ_Field is
     (
      --  Allow read instructions to region 0
      Enable,
      --  Block read instructions to region 0
      Disable)
     with Size => 1;
   for PERM_READ_Field use
     (Enable => 0,
      Disable => 1);

   --  Description cluster[0]: Access permissions for region 0 as defined by
   --  start address ACL[0].ADDR and size ACL[0].SIZE
   type PERM_ACL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Configure write and erase permissions for region 0. Write '0' has no
      --  effect.
      WRITE         : PERM_WRITE_Field := NRF_SVD.ACL.Enable;
      --  Configure read permissions for region 0. Write '0' has no effect.
      READ          : PERM_READ_Field := NRF_SVD.ACL.Enable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERM_ACL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      WRITE         at 0 range 1 .. 1;
      READ          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Unspecified
   type ACL_Cluster is record
      --  Description cluster[0]: Configure the word-aligned start address of
      --  region 0 to protect
      ADDR    : aliased HAL.UInt32;
      --  Description cluster[0]: Size of region to protect counting from
      --  address ACL[0].ADDR. Write '0' as no effect.
      SIZE    : aliased HAL.UInt32;
      --  Description cluster[0]: Access permissions for region 0 as defined by
      --  start address ACL[0].ADDR and size ACL[0].SIZE
      PERM    : aliased PERM_ACL_Register;
      --  Unspecified
      UNUSED0 : aliased HAL.UInt32;
   end record
     with Volatile, Size => 128;

   for ACL_Cluster use record
      ADDR    at 16#0# range 0 .. 31;
      SIZE    at 16#4# range 0 .. 31;
      PERM    at 16#8# range 0 .. 31;
      UNUSED0 at 16#C# range 0 .. 31;
   end record;

   --  Unspecified
   type ACL_Clusters is array (0 .. 7) of ACL_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Access control lists
   type ACL_Peripheral is record
      --  Unspecified
      ACL : aliased ACL_Clusters;
   end record
     with Volatile;

   for ACL_Peripheral use record
      ACL at 16#800# range 0 .. 1023;
   end record;

   --  Access control lists
   ACL_Periph : aliased ACL_Peripheral
     with Import, Address => System'To_Address (16#4001E000#);

end NRF_SVD.ACL;
