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

--  This spec has been automatically generated from MKE04Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  General Purpose Input/Output
package NRF_SVD.FGPIOA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input/Output
   type FGPIOA_Peripheral is record
      --  Port Data Output Register
      PDOR : aliased HAL.UInt32;
      --  Port Set Output Register
      PSOR : aliased HAL.UInt32;
      --  Port Clear Output Register
      PCOR : aliased HAL.UInt32;
      --  Port Toggle Output Register
      PTOR : aliased HAL.UInt32;
      --  Port Data Input Register
      PDIR : aliased HAL.UInt32;
      --  Port Data Direction Register
      PDDR : aliased HAL.UInt32;
      --  Port Input Disable Register
      PIDR : aliased HAL.UInt32;
   end record
     with Volatile;

   for FGPIOA_Peripheral use record
      PDOR at 16#0# range 0 .. 31;
      PSOR at 16#4# range 0 .. 31;
      PCOR at 16#8# range 0 .. 31;
      PTOR at 16#C# range 0 .. 31;
      PDIR at 16#10# range 0 .. 31;
      PDDR at 16#14# range 0 .. 31;
      PIDR at 16#18# range 0 .. 31;
   end record;

   --  General Purpose Input/Output
   FGPIOA_Periph : aliased FGPIOA_Peripheral
     with Import, Address => FGPIOA_Base;

end NRF_SVD.FGPIOA;
