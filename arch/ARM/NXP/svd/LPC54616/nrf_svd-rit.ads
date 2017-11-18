--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54616.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RIT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control register
   type CTRL_Register is record
      --  Interrupt flag.
      RITINT        : Boolean := False;
      --  Timer enable clear.
      RITENCLR      : Boolean := False;
      --  Timer enable for debug.
      RITENBR       : Boolean := True;
      --  Timer enable.
      RITEN         : Boolean := True;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      RITINT        at 0 range 0 .. 0;
      RITENCLR      at 0 range 1 .. 1;
      RITENBR       at 0 range 2 .. 2;
      RITEN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype COMPVAL_H_RICOMP_Field is HAL.UInt16;

   --  Compare value MSB register
   type COMPVAL_H_Register is record
      --  Compare value MSB register.
      RICOMP         : COMPVAL_H_RICOMP_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPVAL_H_Register use record
      RICOMP         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MASK_H_RIMASK_Field is HAL.UInt16;

   --  Mask MSB register
   type MASK_H_Register is record
      --  Mask register.
      RIMASK         : MASK_H_RIMASK_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MASK_H_Register use record
      RIMASK         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype COUNTER_H_RICOUNTER_Field is HAL.UInt16;

   --  Counter MSB register
   type COUNTER_H_Register is record
      --  16 LSBs of the up counter.
      RICOUNTER      : COUNTER_H_RICOUNTER_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNTER_H_Register use record
      RICOUNTER      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC54S60x/LPC5460x Repetitive Interrupt Timer(RIT)
   type RIT_Peripheral is record
      --  Compare value LSB register
      COMPVAL   : aliased HAL.UInt32;
      --  Mask LSB register
      MASK      : aliased HAL.UInt32;
      --  Control register
      CTRL      : aliased CTRL_Register;
      --  Counter LSB register
      COUNTER   : aliased HAL.UInt32;
      --  Compare value MSB register
      COMPVAL_H : aliased COMPVAL_H_Register;
      --  Mask MSB register
      MASK_H    : aliased MASK_H_Register;
      --  Counter MSB register
      COUNTER_H : aliased COUNTER_H_Register;
   end record
     with Volatile;

   for RIT_Peripheral use record
      COMPVAL   at 16#0# range 0 .. 31;
      MASK      at 16#4# range 0 .. 31;
      CTRL      at 16#8# range 0 .. 31;
      COUNTER   at 16#C# range 0 .. 31;
      COMPVAL_H at 16#10# range 0 .. 31;
      MASK_H    at 16#14# range 0 .. 31;
      COUNTER_H at 16#1C# range 0 .. 31;
   end record;

   --  LPC54S60x/LPC5460x Repetitive Interrupt Timer(RIT)
   RIT_Periph : aliased RIT_Peripheral
     with Import, Address => System'To_Address (16#4002D000#);

end NRF_SVD.RIT;
