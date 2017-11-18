--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK27F15.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Synchronous DRAM Controller
package NRF_SVD.SDRAM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SDRAM_CTRL_RC_Field is HAL.UInt9;

   --  Refresh timing
   type CTRL_RTIM_Field is
     (
      --  3 clocks
      CTRL_RTIM_Field_00,
      --  6 clocks
      CTRL_RTIM_Field_01,
      --  9 clocks
      CTRL_RTIM_Field_10,
      --  9 clocks
      CTRL_RTIM_Field_11)
     with Size => 2;
   for CTRL_RTIM_Field use
     (CTRL_RTIM_Field_00 => 0,
      CTRL_RTIM_Field_01 => 1,
      CTRL_RTIM_Field_10 => 2,
      CTRL_RTIM_Field_11 => 3);

   --  Initiate self-refresh command.
   type CTRL_IS_Field is
     (
      --  Take no action or issue a selfx command to exit self refresh.
      CTRL_IS_Field_0,
      --  SDRAM controller sends a self command to both SDRAM blocks to put
      --  them in low-power, self-refresh state where they remain until IS is
      --  cleared. When IS is cleared, the controller sends a selfx command for
      --  the SDRAMs to exit self-refresh. The refresh counter is suspended
      --  while the SDRAMs are in self-refresh; the SDRAM controls the refresh
      --  period.
      CTRL_IS_Field_1)
     with Size => 1;
   for CTRL_IS_Field use
     (CTRL_IS_Field_0 => 0,
      CTRL_IS_Field_1 => 1);

   --  Control Register
   type SDRAM_CTRL_Register is record
      --  Refresh count
      RC             : SDRAM_CTRL_RC_Field := 16#0#;
      --  Refresh timing
      RTIM           : CTRL_RTIM_Field := NRF_SVD.SDRAM.CTRL_RTIM_Field_00;
      --  Initiate self-refresh command.
      IS_k           : CTRL_IS_Field := NRF_SVD.SDRAM.CTRL_IS_Field_0;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SDRAM_CTRL_Register use record
      RC             at 0 range 0 .. 8;
      RTIM           at 0 range 9 .. 10;
      IS_k           at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   --  Initiate precharge all (pall) command.
   type AC0_IP_Field is
     (
      --  Take no action.
      AC0_IP_Field_0,
      --  A pall command is sent to the associated SDRAM block. During
      --  initialization, this command is executed after all DRAM controller
      --  registers are programmed. After IP is set, the next write to an
      --  appropriate SDRAM address generates the pall command to the SDRAM
      --  block.
      AC0_IP_Field_1)
     with Size => 1;
   for AC0_IP_Field use
     (AC0_IP_Field_0 => 0,
      AC0_IP_Field_1 => 1);

   --  Port size.
   type AC0_PS_Field is
     (
      --  32-bit port
      AC0_PS_Field_00,
      --  8-bit port
      AC0_PS_Field_01,
      --  16-bit port
      AC0_PS_Field_10,
      --  16-bit port
      AC0_PS_Field_11)
     with Size => 2;
   for AC0_PS_Field use
     (AC0_PS_Field_00 => 0,
      AC0_PS_Field_01 => 1,
      AC0_PS_Field_10 => 2,
      AC0_PS_Field_11 => 3);

   --  Initiate mode register set (mrs) command.
   type AC0_IMRS_Field is
     (
      --  Take no action
      AC0_IMRS_Field_0,
      --  Initiate mrs command
      AC0_IMRS_Field_1)
     with Size => 1;
   for AC0_IMRS_Field use
     (AC0_IMRS_Field_0 => 0,
      AC0_IMRS_Field_1 => 1);

   subtype AC_CBM_Field is HAL.UInt3;
   subtype AC_CASL_Field is HAL.UInt2;

   --  Refresh enable
   type AC0_RE_Field is
     (
      --  Do not refresh associated DRAM block
      AC0_RE_Field_0,
      --  Refresh associated DRAM block
      AC0_RE_Field_1)
     with Size => 1;
   for AC0_RE_Field use
     (AC0_RE_Field_0 => 0,
      AC0_RE_Field_1 => 1);

   subtype AC_BA_Field is HAL.UInt14;

   --  Address and Control Register
   type AC_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Initiate precharge all (pall) command.
      IP             : AC0_IP_Field := NRF_SVD.SDRAM.AC0_IP_Field_0;
      --  Port size.
      PS             : AC0_PS_Field := NRF_SVD.SDRAM.AC0_PS_Field_00;
      --  Initiate mode register set (mrs) command.
      IMRS           : AC0_IMRS_Field := NRF_SVD.SDRAM.AC0_IMRS_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Command bit location
      CBM            : AC_CBM_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CAS Latency
      CASL           : AC_CASL_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Refresh enable
      RE             : AC0_RE_Field := NRF_SVD.SDRAM.AC0_RE_Field_0;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Base address register.
      BA             : AC_BA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AC_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      IP             at 0 range 3 .. 3;
      PS             at 0 range 4 .. 5;
      IMRS           at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CBM            at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CASL           at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      RE             at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      BA             at 0 range 18 .. 31;
   end record;

   --  Valid.
   type CM0_V_Field is
     (
      --  Do not decode DRAM accesses.
      CM0_V_Field_0,
      --  Registers controlling the DRAM block are initialized; DRAM accesses
      --  can be decoded
      CM0_V_Field_1)
     with Size => 1;
   for CM0_V_Field use
     (CM0_V_Field_0 => 0,
      CM0_V_Field_1 => 1);

   --  Write protect.
   type CM0_WP_Field is
     (
      --  Allow write accesses
      CM0_WP_Field_0,
      --  Ignore write accesses. The DRAM controller ignores write accesses to
      --  the memory block and an address exception occurs. Write accesses to a
      --  write-protected DRAM region are compared in the chip select module
      --  for a hit. If no hit occurs, an external bus cycle is generated. If
      --  this external bus cycle is not acknowledged, an access exception
      --  occurs.
      CM0_WP_Field_1)
     with Size => 1;
   for CM0_WP_Field use
     (CM0_WP_Field_0 => 0,
      CM0_WP_Field_1 => 1);

   --  Base address mask.
   type CM0_BAM_Field is
     (
      --  The associated address bit is used in decoding the DRAM hit to a
      --  memory block
      CM0_BAM_Field_0,
      --  The associated address bit is not used in the DRAM hit decode
      CM0_BAM_Field_1)
     with Size => 14;
   for CM0_BAM_Field use
     (CM0_BAM_Field_0 => 0,
      CM0_BAM_Field_1 => 1);

   --  Control Mask
   type CM_Register is record
      --  Valid.
      V             : CM0_V_Field := NRF_SVD.SDRAM.CM0_V_Field_0;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Write protect.
      WP            : CM0_WP_Field := NRF_SVD.SDRAM.CM0_WP_Field_0;
      --  unspecified
      Reserved_9_17 : HAL.UInt9 := 16#0#;
      --  Base address mask.
      BAM           : CM0_BAM_Field := NRF_SVD.SDRAM.CM0_BAM_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CM_Register use record
      V             at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      WP            at 0 range 8 .. 8;
      Reserved_9_17 at 0 range 9 .. 17;
      BAM           at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Synchronous DRAM Controller
   type SDRAM_Peripheral is record
      --  Control Register
      CTRL : aliased SDRAM_CTRL_Register;
      --  Address and Control Register
      AC0  : aliased AC_Register;
      --  Control Mask
      CM0  : aliased CM_Register;
      --  Address and Control Register
      AC1  : aliased AC_Register;
      --  Control Mask
      CM1  : aliased CM_Register;
   end record
     with Volatile;

   for SDRAM_Peripheral use record
      CTRL at 16#42# range 0 .. 15;
      AC0  at 16#48# range 0 .. 31;
      CM0  at 16#4C# range 0 .. 31;
      AC1  at 16#50# range 0 .. 31;
      CM1  at 16#54# range 0 .. 31;
   end record;

   --  Synchronous DRAM Controller
   SDRAM_Periph : aliased SDRAM_Peripheral
     with Import, Address => SDRAM_Base;

end NRF_SVD.SDRAM;
