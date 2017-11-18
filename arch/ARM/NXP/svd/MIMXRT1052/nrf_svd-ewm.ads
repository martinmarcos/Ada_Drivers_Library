--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.EWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type CTRL_Register is record
      --  Read-Write-once. EWM enable.
      EWMEN        : Boolean := False;
      --  Read-Write-once. EWM_in's Assertion State Select.
      ASSIN        : Boolean := False;
      --  Read-Write-once. Input Enable.
      INEN         : Boolean := False;
      --  Interrupt Enable.
      INTEN        : Boolean := False;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EWMEN        at 0 range 0 .. 0;
      ASSIN        at 0 range 1 .. 1;
      INEN         at 0 range 2 .. 2;
      INTEN        at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   subtype CLKCTRL_CLKSEL_Field is HAL.UInt2;

   --  Clock Control Register
   type CLKCTRL_Register is record
      --  Read-Write-once. CLKSEL
      CLKSEL       : CLKCTRL_CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_2_7 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for CLKCTRL_Register use record
      CLKSEL       at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EWM
   type EWM_Peripheral is record
      --  Control Register
      CTRL         : aliased CTRL_Register;
      --  Service Register
      SERV         : aliased HAL.UInt8;
      --  Compare Low Register
      CMPL         : aliased HAL.UInt8;
      --  Compare High Register
      CMPH         : aliased HAL.UInt8;
      --  Clock Control Register
      CLKCTRL      : aliased CLKCTRL_Register;
      --  Clock Prescaler Register
      CLKPRESCALER : aliased HAL.UInt8;
   end record
     with Volatile;

   for EWM_Peripheral use record
      CTRL         at 16#0# range 0 .. 7;
      SERV         at 16#1# range 0 .. 7;
      CMPL         at 16#2# range 0 .. 7;
      CMPH         at 16#3# range 0 .. 7;
      CLKCTRL      at 16#4# range 0 .. 7;
      CLKPRESCALER at 16#5# range 0 .. 7;
   end record;

   --  EWM
   EWM_Periph : aliased EWM_Peripheral
     with Import, Address => System'To_Address (16#400B4000#);

end NRF_SVD.EWM;
