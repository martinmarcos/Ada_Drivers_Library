--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54628.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SHA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_MODE_Field is HAL.UInt2;

   --  Control register
   type CTRL_Register is record
      --  This field is used to select the operational mode of SHA block.
      MODE          : CTRL_MODE_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  When this bit is set, a new hash operation is started.
      NEW_k         : Boolean := False;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  When this bit is set, the DMA is used to fill INDATA.
      DMA           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      NEW_k         at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      DMA           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Status register
   type STATUS_Register is record
      --  This field indicates if the block is waiting for more data to
      --  process.
      WAITING       : Boolean := False;
      --  This field indicates if a DIGEST is ready and waiting and there is no
      --  active next block that has already started.
      DIGEST        : Boolean := False;
      --  This field indicates if an error has occurred.
      ERROR         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      WAITING       at 0 range 0 .. 0;
      DIGEST        at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Enable register
   type INTENSET_Register is record
      --  This field indicates if interrupt should be enabled when waiting for
      --  input data.
      WAITING       : Boolean := False;
      --  This field indicates if interrupt is generated when Digest is ready
      --  (completed a Hash or completed a full sequence).
      DIGEST        : Boolean := False;
      --  This field indicates if interrupt is generated on an ERROR (as
      --  defined in STAT register).
      ERROR         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      WAITING       at 0 range 0 .. 0;
      DIGEST        at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Interrupt Clear register
   type INTENCLR_Register is record
      --  Writing a 1 clears the interrupt enabled by the INTENSET register.
      WAITING       : Boolean := False;
      --  Writing a 1 clears the interrupt enabled by the INTENSET register.
      DIGEST        : Boolean := False;
      --  Writing a 1 clears the interrupt enabled by the INTENSET register.
      ERROR         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      WAITING       at 0 range 0 .. 0;
      DIGEST        at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MEMCTRL_COUNT_Field is HAL.UInt11;

   --  Memory Control register
   type MEMCTRL_Register is record
      --  This field is used to enable SHA block as AHB bus master.
      MASTER         : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  This field indicates the number of 512-bit blocks to copy starting at
      --  MEMADDR.
      COUNT          : MEMCTRL_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEMCTRL_Register use record
      MASTER         at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      COUNT          at 0 range 16 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Alias register

   --  Alias register
   type ALIAS_Registers is array (0 .. 6) of HAL.UInt32
     with Volatile;

   --  Digest register

   --  Digest register
   type DIGEST_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  SHA
   type SHA0_Peripheral is record
      --  Control register
      CTRL     : aliased CTRL_Register;
      --  Status register
      STATUS   : aliased STATUS_Register;
      --  Interrupt Enable register
      INTENSET : aliased INTENSET_Register;
      --  Interrupt Clear register
      INTENCLR : aliased INTENCLR_Register;
      --  Memory Control register
      MEMCTRL  : aliased MEMCTRL_Register;
      --  Memory Address register
      MEMADDR  : aliased HAL.UInt32;
      --  Input Data register
      INDATA   : aliased HAL.UInt32;
      --  Alias register
      ALIAS    : aliased ALIAS_Registers;
      --  Digest register
      DIGEST   : aliased DIGEST_Registers;
   end record
     with Volatile;

   for SHA0_Peripheral use record
      CTRL     at 16#0# range 0 .. 31;
      STATUS   at 16#4# range 0 .. 31;
      INTENSET at 16#8# range 0 .. 31;
      INTENCLR at 16#C# range 0 .. 31;
      MEMCTRL  at 16#10# range 0 .. 31;
      MEMADDR  at 16#14# range 0 .. 31;
      INDATA   at 16#20# range 0 .. 31;
      ALIAS    at 16#24# range 0 .. 223;
      DIGEST   at 16#40# range 0 .. 255;
   end record;

   --  SHA
   SHA0_Periph : aliased SHA0_Peripheral
     with Import, Address => System'To_Address (16#400A4000#);

end NRF_SVD.SHA;
