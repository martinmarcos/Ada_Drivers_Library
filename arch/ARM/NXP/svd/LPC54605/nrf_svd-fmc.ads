--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FCTR_FS_RD array
   type FCTR_FS_RD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FCTR_FS_RD
   type FCTR_FS_RD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FS_RD as a value
            Val : HAL.UInt2;
         when True =>
            --  FS_RD as an array
            Arr : FCTR_FS_RD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FCTR_FS_RD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Control register
   type FCTR_Register is record
      --  unspecified
      Reserved_0_2  : HAL.UInt3 := 16#5#;
      --  Value must be 0 for signature generation.
      FS_RD         : FCTR_FS_RD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#10000#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCTR_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      FS_RD         at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FBWST_WAITSTATES_Field is HAL.UInt8;

   --  Wait state register
   type FBWST_Register is record
      --  Wait states for signature generation.
      WAITSTATES    : FBWST_WAITSTATES_Field := 16#5#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#C0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FBWST_Register use record
      WAITSTATES    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FMSSTART_START_Field is HAL.UInt17;

   --  Signature start address register
   type FMSSTART_Register is record
      --  Signature generation start address (corresponds to AHB byte address
      --  bits[20:4]).
      START          : FMSSTART_START_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMSSTART_Register use record
      START          at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype FMSSTOP_STOP_Field is HAL.UInt17;

   --  Signature stop-address register
   type FMSSTOP_Register is record
      --  Stop address for signature generation (the word specified by STOP is
      --  included in the address range).
      STOP           : FMSSTOP_STOP_Field := 16#0#;
      --  When this bit is written to 1, signature generation starts.
      SIG_START      : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMSSTOP_Register use record
      STOP           at 0 range 0 .. 16;
      SIG_START      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Words of 128-bit signature word

   --  Words of 128-bit signature word
   type FMSW_Registers is array (0 .. 3) of HAL.UInt32
     with Volatile;

   --  Signature generation status register
   type FMSTAT_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. When 1, a previously started signature generation has
      --  completed.
      SIG_DONE      : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMSTAT_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      SIG_DONE      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Signature generation status clear register
   type FMSTATCLR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Writing a 1 to this bits clears the signature generation
      --  completion flag (SIG_DONE) in the FMSTAT register.
      SIG_DONE_CLR  : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMSTATCLR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      SIG_DONE_CLR  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x Flash signature generator
   type FMC_Peripheral is record
      --  Control register
      FCTR      : aliased FCTR_Register;
      --  Wait state register
      FBWST     : aliased FBWST_Register;
      --  Signature start address register
      FMSSTART  : aliased FMSSTART_Register;
      --  Signature stop-address register
      FMSSTOP   : aliased FMSSTOP_Register;
      --  Words of 128-bit signature word
      FMSW      : aliased FMSW_Registers;
      --  Signature generation status register
      FMSTAT    : aliased FMSTAT_Register;
      --  Signature generation status clear register
      FMSTATCLR : aliased FMSTATCLR_Register;
   end record
     with Volatile;

   for FMC_Peripheral use record
      FCTR      at 16#0# range 0 .. 31;
      FBWST     at 16#10# range 0 .. 31;
      FMSSTART  at 16#20# range 0 .. 31;
      FMSSTOP   at 16#24# range 0 .. 31;
      FMSW      at 16#2C# range 0 .. 127;
      FMSTAT    at 16#FE0# range 0 .. 31;
      FMSTATCLR at 16#FE8# range 0 .. 31;
   end record;

   --  LPC54S60x/LPC5460x Flash signature generator
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => System'To_Address (16#40034000#);

end NRF_SVD.FMC;
