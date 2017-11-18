--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GPIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ICR0
   type ICR1_ICR0_Field is
     (
      --  Interrupt n is low-level sensitive.
      Low_Level,
      --  Interrupt n is high-level sensitive.
      High_Level,
      --  Interrupt n is rising-edge sensitive.
      Rising_Edge,
      --  Interrupt n is falling-edge sensitive.
      Falling_Edge)
     with Size => 2;
   for ICR1_ICR0_Field use
     (Low_Level => 0,
      High_Level => 1,
      Rising_Edge => 2,
      Falling_Edge => 3);

   --  ICR1_ICR array
   type ICR1_ICR_Field_Array is array (0 .. 15) of ICR1_ICR0_Field
     with Component_Size => 2, Size => 32;

   --  GPIO interrupt configuration register1
   type ICR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICR as a value
            Val : HAL.UInt32;
         when True =>
            --  ICR as an array
            Arr : ICR1_ICR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ICR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  ICR16
   type ICR2_ICR16_Field is
     (
      --  Interrupt n is low-level sensitive.
      Low_Level,
      --  Interrupt n is high-level sensitive.
      High_Level,
      --  Interrupt n is rising-edge sensitive.
      Rising_Edge,
      --  Interrupt n is falling-edge sensitive.
      Falling_Edge)
     with Size => 2;
   for ICR2_ICR16_Field use
     (Low_Level => 0,
      High_Level => 1,
      Rising_Edge => 2,
      Falling_Edge => 3);

   --  ICR2_ICR array
   type ICR2_ICR_Field_Array is array (16 .. 31) of ICR2_ICR16_Field
     with Component_Size => 2, Size => 32;

   --  GPIO interrupt configuration register2
   type ICR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICR as a value
            Val : HAL.UInt32;
         when True =>
            --  ICR as an array
            Arr : ICR2_ICR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ICR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPIO
   type GPIO_Peripheral is record
      --  GPIO data register
      DR       : aliased HAL.UInt32;
      --  GPIO direction register
      GDIR     : aliased HAL.UInt32;
      --  GPIO pad status register
      PSR      : aliased HAL.UInt32;
      --  GPIO interrupt configuration register1
      ICR1     : aliased ICR1_Register;
      --  GPIO interrupt configuration register2
      ICR2     : aliased ICR2_Register;
      --  GPIO interrupt mask register
      IMR      : aliased HAL.UInt32;
      --  GPIO interrupt status register
      ISR      : aliased HAL.UInt32;
      --  GPIO edge select register
      EDGE_SEL : aliased HAL.UInt32;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      DR       at 16#0# range 0 .. 31;
      GDIR     at 16#4# range 0 .. 31;
      PSR      at 16#8# range 0 .. 31;
      ICR1     at 16#C# range 0 .. 31;
      ICR2     at 16#10# range 0 .. 31;
      IMR      at 16#14# range 0 .. 31;
      ISR      at 16#18# range 0 .. 31;
      EDGE_SEL at 16#1C# range 0 .. 31;
   end record;

   --  GPIO
   GPIO1_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#401B8000#);

   --  GPIO
   GPIO2_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#401BC000#);

   --  GPIO
   GPIO3_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#401C0000#);

   --  GPIO
   GPIO4_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#401C4000#);

   --  GPIO
   GPIO5_Periph : aliased GPIO_Peripheral
     with Import, Address => System'To_Address (16#400C0000#);

end NRF_SVD.GPIO;
