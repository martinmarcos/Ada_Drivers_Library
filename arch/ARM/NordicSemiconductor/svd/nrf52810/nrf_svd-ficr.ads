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

package NRF_SVD.FICR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Description collection[0]: Device identifier

   --  Description collection[0]: Device identifier
   type DEVICEID_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  Description collection[0]: Encryption root, word 0

   --  Description collection[0]: Encryption root, word 0
   type ER_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Description collection[0]: Identity root, word 0

   --  Description collection[0]: Identity root, word 0
   type IR_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Device address type
   type DEVICEADDRTYPE_DEVICEADDRTYPE_Field is
     (
      --  Public address
      Public,
      --  Random address
      Random)
     with Size => 1;
   for DEVICEADDRTYPE_DEVICEADDRTYPE_Field use
     (Public => 0,
      Random => 1);

   --  Device address type
   type DEVICEADDRTYPE_Register is record
      --  Read-only. Device address type
      DEVICEADDRTYPE : DEVICEADDRTYPE_DEVICEADDRTYPE_Field;
      --  unspecified
      Reserved_1_31  : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVICEADDRTYPE_Register use record
      DEVICEADDRTYPE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Description collection[0]: Device address 0

   --  Description collection[0]: Device address 0
   type DEVICEADDR_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   -----------------------------------
   -- FICR_INFO cluster's Registers --
   -----------------------------------

   --  Description collection[0]: Unspecified

   --  Description collection[0]: Unspecified
   type UNUSED0_INFO_Registers is array (0 .. 2) of HAL.UInt32
     with Volatile;

   --  Device info
   type FICR_INFO_Cluster is record
      --  Part code
      PART      : aliased HAL.UInt32;
      --  Part variant, hardware version and production configuration
      VARIANT   : aliased HAL.UInt32;
      --  Package option
      PACKAGE_k : aliased HAL.UInt32;
      --  RAM variant
      RAM       : aliased HAL.UInt32;
      --  Flash variant
      FLASH     : aliased HAL.UInt32;
      --  Description collection[0]: Unspecified
      UNUSED0   : aliased UNUSED0_INFO_Registers;
   end record
     with Volatile, Size => 256;

   for FICR_INFO_Cluster use record
      PART      at 16#0# range 0 .. 31;
      VARIANT   at 16#4# range 0 .. 31;
      PACKAGE_k at 16#8# range 0 .. 31;
      RAM       at 16#C# range 0 .. 31;
      FLASH     at 16#10# range 0 .. 31;
      UNUSED0   at 16#14# range 0 .. 95;
   end record;

   -----------------------------------
   -- FICR_TEMP cluster's Registers --
   -----------------------------------

   subtype A_A_Field is HAL.UInt12;

   --  Slope definition A0
   type A_Register is record
      --  Read-only. A (slope definition) register
      A              : A_A_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for A_Register use record
      A              at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype B_B_Field is HAL.UInt14;

   --  Y-intercept B0
   type B_Register is record
      --  Read-only. B (y-intercept)
      B              : B_B_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for B_Register use record
      B              at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype T_T_Field is HAL.UInt8;

   --  Segment end T0
   type T_Register is record
      --  Read-only. T (segment end) register
      T             : T_T_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for T_Register use record
      T             at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Registers storing factory TEMP module linearization coefficients
   type FICR_TEMP_Cluster is record
      --  Slope definition A0
      A0 : aliased A_Register;
      --  Slope definition A1
      A1 : aliased A_Register;
      --  Slope definition A2
      A2 : aliased A_Register;
      --  Slope definition A3
      A3 : aliased A_Register;
      --  Slope definition A4
      A4 : aliased A_Register;
      --  Slope definition A5
      A5 : aliased A_Register;
      --  Y-intercept B0
      B0 : aliased B_Register;
      --  Y-intercept B1
      B1 : aliased B_Register;
      --  Y-intercept B2
      B2 : aliased B_Register;
      --  Y-intercept B3
      B3 : aliased B_Register;
      --  Y-intercept B4
      B4 : aliased B_Register;
      --  Y-intercept B5
      B5 : aliased B_Register;
      --  Segment end T0
      T0 : aliased T_Register;
      --  Segment end T1
      T1 : aliased T_Register;
      --  Segment end T2
      T2 : aliased T_Register;
      --  Segment end T3
      T3 : aliased T_Register;
      --  Segment end T4
      T4 : aliased T_Register;
   end record
     with Volatile, Size => 544;

   for FICR_TEMP_Cluster use record
      A0 at 16#0# range 0 .. 31;
      A1 at 16#4# range 0 .. 31;
      A2 at 16#8# range 0 .. 31;
      A3 at 16#C# range 0 .. 31;
      A4 at 16#10# range 0 .. 31;
      A5 at 16#14# range 0 .. 31;
      B0 at 16#18# range 0 .. 31;
      B1 at 16#1C# range 0 .. 31;
      B2 at 16#20# range 0 .. 31;
      B3 at 16#24# range 0 .. 31;
      B4 at 16#28# range 0 .. 31;
      B5 at 16#2C# range 0 .. 31;
      T0 at 16#30# range 0 .. 31;
      T1 at 16#34# range 0 .. 31;
      T2 at 16#38# range 0 .. 31;
      T3 at 16#3C# range 0 .. 31;
      T4 at 16#40# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Factory information configuration registers
   type FICR_Peripheral is record
      --  Code memory page size
      CODEPAGESIZE   : aliased HAL.UInt32;
      --  Code memory size
      CODESIZE       : aliased HAL.UInt32;
      --  Description collection[0]: Device identifier
      DEVICEID       : aliased DEVICEID_Registers;
      --  Description collection[0]: Encryption root, word 0
      ER             : aliased ER_Registers;
      --  Description collection[0]: Identity root, word 0
      IR             : aliased IR_Registers;
      --  Device address type
      DEVICEADDRTYPE : aliased DEVICEADDRTYPE_Register;
      --  Description collection[0]: Device address 0
      DEVICEADDR     : aliased DEVICEADDR_Registers;
      --  Device info
      INFO           : aliased FICR_INFO_Cluster;
      --  Registers storing factory TEMP module linearization coefficients
      TEMP           : aliased FICR_TEMP_Cluster;
   end record
     with Volatile;

   for FICR_Peripheral use record
      CODEPAGESIZE   at 16#10# range 0 .. 31;
      CODESIZE       at 16#14# range 0 .. 31;
      DEVICEID       at 16#60# range 0 .. 63;
      ER             at 16#80# range 0 .. 127;
      IR             at 16#90# range 0 .. 127;
      DEVICEADDRTYPE at 16#A0# range 0 .. 31;
      DEVICEADDR     at 16#A4# range 0 .. 63;
      INFO           at 16#100# range 0 .. 255;
      TEMP           at 16#404# range 0 .. 543;
   end record;

   --  Factory information configuration registers
   FICR_Periph : aliased FICR_Peripheral
     with Import, Address => System'To_Address (16#10000000#);

end NRF_SVD.FICR;
