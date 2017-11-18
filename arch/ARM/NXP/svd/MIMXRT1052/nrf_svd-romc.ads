--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ROMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ROMC Data Registers

   --  ROMC Data Registers
   type ROMC_ROMPATCHD_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  Data Fix Enable - Controls the use of the first 8 address comparators
   --  for 1-word data fix or for code patch routine
   type ROMPATCHCNTL_DATAFIX_Field is
     (
      --  Address comparator triggers a opcode patch
      Datafix_0,
      --  Address comparator triggers a data fix
      Datafix_1)
     with Size => 8;
   for ROMPATCHCNTL_DATAFIX_Field use
     (Datafix_0 => 0,
      Datafix_1 => 1);

   --  ROMC Disable -- This bit, when set, disables all ROMC operations
   type ROMPATCHCNTL_DIS_Field is
     (
      --  Does not affect any ROMC functions (default)
      Dis_0,
      --  Disable all ROMC functions: data fixing, and opcode patching
      Dis_1)
     with Size => 1;
   for ROMPATCHCNTL_DIS_Field use
     (Dis_0 => 0,
      Dis_1 => 1);

   --  ROMC Control Register
   type ROMC_ROMPATCHCNTL_Register is record
      --  Data Fix Enable - Controls the use of the first 8 address comparators
      --  for 1-word data fix or for code patch routine
      DATAFIX        : ROMPATCHCNTL_DATAFIX_Field := NRF_SVD.ROMC.Datafix_0;
      --  unspecified
      Reserved_8_28  : HAL.UInt21 := 16#84000#;
      --  ROMC Disable -- This bit, when set, disables all ROMC operations
      DIS            : ROMPATCHCNTL_DIS_Field := NRF_SVD.ROMC.Dis_0;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROMC_ROMPATCHCNTL_Register use record
      DATAFIX        at 0 range 0 .. 7;
      Reserved_8_28  at 0 range 8 .. 28;
      DIS            at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Enable Address Comparator - This bit enables the corresponding address
   --  comparator to trigger an event
   type ROMPATCHENL_ENABLE_Field is
     (
      --  Address comparator disabled
      Enable_0,
      --  Address comparator enabled, ROMC will trigger a opcode patch or data
      --  fix event upon matching of the associated address
      Enable_1)
     with Size => 16;
   for ROMPATCHENL_ENABLE_Field use
     (Enable_0 => 0,
      Enable_1 => 1);

   --  ROMC Enable Register Low
   type ROMC_ROMPATCHENL_Register is record
      --  Enable Address Comparator - This bit enables the corresponding
      --  address comparator to trigger an event
      ENABLE         : ROMPATCHENL_ENABLE_Field := NRF_SVD.ROMC.Enable_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROMC_ROMPATCHENL_Register use record
      ENABLE         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  THUMB Comparator Select - Indicates that this address will trigger a
   --  THUMB opcode patch or an ARM opcode patch
   type ROMPATCHA_THUMBX_Field is
     (
      --  ARM patch
      Thumbx_0,
      --  THUMB patch (ignore if data fix)
      Thumbx_1)
     with Size => 1;
   for ROMPATCHA_THUMBX_Field use
     (Thumbx_0 => 0,
      Thumbx_1 => 1);

   subtype ROMC_ROMPATCHA_ADDRX_Field is HAL.UInt22;

   --  ROMC Address Registers
   type ROMC_ROMPATCHA_Register is record
      --  THUMB Comparator Select - Indicates that this address will trigger a
      --  THUMB opcode patch or an ARM opcode patch
      THUMBX         : ROMPATCHA_THUMBX_Field := NRF_SVD.ROMC.Thumbx_0;
      --  Address Comparator Registers - Indicates the memory address to be
      --  watched
      ADDRX          : ROMC_ROMPATCHA_ADDRX_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROMC_ROMPATCHA_Register use record
      THUMBX         at 0 range 0 .. 0;
      ADDRX          at 0 range 1 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  ROMC Address Registers
   type ROMC_ROMPATCHA_Registers is array (0 .. 15)
     of ROMC_ROMPATCHA_Register
     with Volatile;

   --  ROMC Source Number - Binary encoding of the number of the address
   --  comparator which has an address match in the most recent patch event on
   --  ROMC AHB
   type ROMPATCHSR_SOURCE_Field is
     (
      --  Address Comparator 0 matched
      Source_0,
      --  Address Comparator 1 matched
      Source_1,
      --  Address Comparator 15 matched
      Source_15)
     with Size => 6;
   for ROMPATCHSR_SOURCE_Field use
     (Source_0 => 0,
      Source_1 => 1,
      Source_15 => 15);

   --  ROMC AHB Multiple Address Comparator matches Indicator - Indicates that
   --  multiple address comparator matches occurred
   type ROMPATCHSR_SW_Field is
     (
      --  no event or comparator collisions
      Sw_0,
      --  a collision has occurred
      Sw_1)
     with Size => 1;
   for ROMPATCHSR_SW_Field use
     (Sw_0 => 0,
      Sw_1 => 1);

   --  ROMC Status Register
   type ROMC_ROMPATCHSR_Register is record
      --  Read-only. ROMC Source Number - Binary encoding of the number of the
      --  address comparator which has an address match in the most recent
      --  patch event on ROMC AHB
      SOURCE         : ROMPATCHSR_SOURCE_Field := NRF_SVD.ROMC.Source_0;
      --  unspecified
      Reserved_6_16  : HAL.UInt11 := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. ROMC AHB Multiple Address Comparator matches Indicator
      --  - Indicates that multiple address comparator matches occurred
      SW             : ROMPATCHSR_SW_Field := NRF_SVD.ROMC.Sw_0;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROMC_ROMPATCHSR_Register use record
      SOURCE         at 0 range 0 .. 5;
      Reserved_6_16  at 0 range 6 .. 16;
      SW             at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ROMC
   type ROMC_Peripheral is record
      --  ROMC Data Registers
      ROMPATCHD    : aliased ROMC_ROMPATCHD_Registers;
      --  ROMC Control Register
      ROMPATCHCNTL : aliased ROMC_ROMPATCHCNTL_Register;
      --  ROMC Enable Register High
      ROMPATCHENH  : aliased HAL.UInt32;
      --  ROMC Enable Register Low
      ROMPATCHENL  : aliased ROMC_ROMPATCHENL_Register;
      --  ROMC Address Registers
      ROMPATCHA    : aliased ROMC_ROMPATCHA_Registers;
      --  ROMC Status Register
      ROMPATCHSR   : aliased ROMC_ROMPATCHSR_Register;
   end record
     with Volatile;

   for ROMC_Peripheral use record
      ROMPATCHD    at 16#D4# range 0 .. 255;
      ROMPATCHCNTL at 16#F4# range 0 .. 31;
      ROMPATCHENH  at 16#F8# range 0 .. 31;
      ROMPATCHENL  at 16#FC# range 0 .. 31;
      ROMPATCHA    at 16#100# range 0 .. 511;
      ROMPATCHSR   at 16#208# range 0 .. 31;
   end record;

   --  ROMC
   ROMC_Periph : aliased ROMC_Peripheral
     with Import, Address => System'To_Address (16#40180000#);

end NRF_SVD.ROMC;
