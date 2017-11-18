--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.OTPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Register for reading the AES key.

   --  Register for reading the AES key.
   type AESKEY_Registers is array (0 .. 7) of HAL.UInt32
     with Volatile;

   --  ECRP options.
   type ECRP_Register is record
      --  unspecified
      Reserved_0_3           : HAL.UInt4;
      --  Read-only. Disable or enable CRP mass erase.
      CRP_MASS_ERASE_DISABLE : Boolean;
      --  Read-only. This bit controls the ability to enable checking for ECRP
      --  in IAP functions.
      IAP_PROTECTION_ENABLE  : Boolean;
      --  Read-only. This bit controls the ability to enter ISP mode using the
      --  ISP pin.
      CRP_ISP_DISABLE_PIN    : Boolean;
      --  Read-only. This bit controls the ability to re-invoke ISP using IAP
      --  routines.
      CRP_ISP_DISABLE_IAP    : Boolean;
      --  unspecified
      Reserved_8_8           : HAL.Bit;
      --  Read-only. This bit controls how 0 is treated when read as a ECRP
      --  value..
      CRP_ALLOW_ZERO         : Boolean;
      --  unspecified
      Reserved_10_30         : HAL.UInt21;
      --  Read-only. 0 => Enable SWD/JTAG; 1 => Disable SWD/JTAG..
      JTAG_DISABLE           : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECRP_Register use record
      Reserved_0_3           at 0 range 0 .. 3;
      CRP_MASS_ERASE_DISABLE at 0 range 4 .. 4;
      IAP_PROTECTION_ENABLE  at 0 range 5 .. 5;
      CRP_ISP_DISABLE_PIN    at 0 range 6 .. 6;
      CRP_ISP_DISABLE_IAP    at 0 range 7 .. 7;
      Reserved_8_8           at 0 range 8 .. 8;
      CRP_ALLOW_ZERO         at 0 range 9 .. 9;
      Reserved_10_30         at 0 range 10 .. 30;
      JTAG_DISABLE           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  This is the description of component otpc It is an eFUSE OTP (One Time
   --  Programmable memory) controller with APB bus interface. More details
   --  will follow.
   type OTPC_Peripheral is record
      --  Register for reading the AES key.
      AESKEY : aliased AESKEY_Registers;
      --  ECRP options.
      ECRP   : aliased ECRP_Register;
      --  User application specific options.
      USER0  : aliased HAL.UInt32;
      --  User application specific options.
      USER1  : aliased HAL.UInt32;
   end record
     with Volatile;

   for OTPC_Peripheral use record
      AESKEY at 16#10# range 0 .. 255;
      ECRP   at 16#30# range 0 .. 31;
      USER0  at 16#38# range 0 .. 31;
      USER1  at 16#3C# range 0 .. 31;
   end record;

   --  This is the description of component otpc It is an eFUSE OTP (One Time
   --  Programmable memory) controller with APB bus interface. More details
   --  will follow.
   OTPC_Periph : aliased OTPC_Peripheral
     with Import, Address => System'To_Address (16#40015000#);

end NRF_SVD.OTPC;
