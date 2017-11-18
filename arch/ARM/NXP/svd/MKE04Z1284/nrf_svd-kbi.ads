--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKE04Z1284.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.KBI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  KBI Detection Mode
   type SC_KBMOD_Field is
     (
      --  Keyboard detects edges only.
      SC_KBMOD_Field_0,
      --  Keyboard detects both edges and levels.
      SC_KBMOD_Field_1)
     with Size => 1;
   for SC_KBMOD_Field use
     (SC_KBMOD_Field_0 => 0,
      SC_KBMOD_Field_1 => 1);

   --  KBI Interrupt Enable
   type SC_KBIE_Field is
     (
      --  KBI interrupt not enabled.
      SC_KBIE_Field_0,
      --  KBI interrupt enabled.
      SC_KBIE_Field_1)
     with Size => 1;
   for SC_KBIE_Field use
     (SC_KBIE_Field_0 => 0,
      SC_KBIE_Field_1 => 1);

   --  KBI Interrupt Flag
   type SC_KBF_Field is
     (
      --  KBI interrupt request not detected.
      SC_KBF_Field_0,
      --  KBI interrupt request detected.
      SC_KBF_Field_1)
     with Size => 1;
   for SC_KBF_Field use
     (SC_KBF_Field_0 => 0,
      SC_KBF_Field_1 => 1);

   --  Real KBI_SP register enable
   type SC_KBSPEN_Field is
     (
      --  The real time value of Keyboard source pin to be read.
      SC_KBSPEN_Field_0,
      --  The latched value in KBxSP register while interrupt flag occur to be
      --  read.
      SC_KBSPEN_Field_1)
     with Size => 1;
   for SC_KBSPEN_Field use
     (SC_KBSPEN_Field_0 => 0,
      SC_KBSPEN_Field_1 => 1);

   --  KBI Status and Control Register
   type KBI0_SC_Register is record
      --  KBI Detection Mode
      KBMOD         : SC_KBMOD_Field := NRF_SVD.KBI.SC_KBMOD_Field_0;
      --  KBI Interrupt Enable
      KBIE          : SC_KBIE_Field := NRF_SVD.KBI.SC_KBIE_Field_0;
      --  Write-only. KBI Acknowledge
      KBACK         : Boolean := False;
      --  Read-only. KBI Interrupt Flag
      KBF           : SC_KBF_Field := NRF_SVD.KBI.SC_KBF_Field_0;
      --  Real KBI_SP register enable
      KBSPEN        : SC_KBSPEN_Field := NRF_SVD.KBI.SC_KBSPEN_Field_0;
      --  Reset KBI_SP registe
      RSTKBSP       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KBI0_SC_Register use record
      KBMOD         at 0 range 0 .. 0;
      KBIE          at 0 range 1 .. 1;
      KBACK         at 0 range 2 .. 2;
      KBF           at 0 range 3 .. 3;
      KBSPEN        at 0 range 4 .. 4;
      RSTKBSP       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Keyboard interrupts
   type KBI_Peripheral is record
      --  KBI Pin Enable Register
      PE : aliased HAL.UInt32;
      --  KBI Edge Select Register
      ES : aliased HAL.UInt32;
      --  KBI Status and Control Register
      SC : aliased KBI0_SC_Register;
      --  KBI Source Pin Register
      SP : aliased HAL.UInt32;
   end record
     with Volatile;

   for KBI_Peripheral use record
      PE at 16#0# range 0 .. 31;
      ES at 16#4# range 0 .. 31;
      SC at 16#8# range 0 .. 31;
      SP at 16#C# range 0 .. 31;
   end record;

   --  Keyboard interrupts
   KBI0_Periph : aliased KBI_Peripheral
     with Import, Address => System'To_Address (16#40079000#);

   --  Keyboard interrupts
   KBI1_Periph : aliased KBI_Peripheral
     with Import, Address => System'To_Address (16#4007A000#);

end NRF_SVD.KBI;
