--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54101.xml

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

   --  Interrupt flag
   type CTRL_RITINT_Field is
     (
      --  The counter value does not equal the masked compare value.
      Nomtch,
      --  This bit is set to 1 by hardware whenever the counter value equals
      --  the masked compare value specified by the contents of RICOMPVAL and
      --  RIMASK registers. Writing a 1 to this bit will clear it to 0. Writing
      --  a 0 has no effect.
      Match)
     with Size => 1;
   for CTRL_RITINT_Field use
     (Nomtch => 0,
      Match => 1);

   --  Timer enable clear
   type CTRL_RITENCLR_Field is
     (
      --  The timer will not be cleared to 0.
      Noclear,
      --  The timer will be cleared to 0 whenever the counter value equals the
      --  masked compare value specified by the contents of COMPVAL/COMPVAL_H
      --  and MASK/MASK_H registers. This will occur on the same clock that
      --  sets the interrupt flag.
      Clear)
     with Size => 1;
   for CTRL_RITENCLR_Field use
     (Noclear => 0,
      Clear => 1);

   --  Timer enable for debug
   type CTRL_RITENBR_Field is
     (
      --  Debug has no effect on the timer operation.
      Debug,
      --  The timer is halted when the processor is halted for debugging.
      Halt)
     with Size => 1;
   for CTRL_RITENBR_Field use
     (Debug => 0,
      Halt => 1);

   --  Timer enable.
   type CTRL_RITEN_Field is
     (
      --  Timer disabled.
      Timer_Disabled,
      --  Timer enabled. This can be overruled by a debug halt if enabled in
      --  bit 2.
      Timer_Enabled)
     with Size => 1;
   for CTRL_RITEN_Field use
     (Timer_Disabled => 0,
      Timer_Enabled => 1);

   --  Control register.
   type CTRL_Register is record
      --  Interrupt flag
      RITINT        : CTRL_RITINT_Field := NRF_SVD.RIT.Nomtch;
      --  Timer enable clear
      RITENCLR      : CTRL_RITENCLR_Field := NRF_SVD.RIT.Noclear;
      --  Timer enable for debug
      RITENBR       : CTRL_RITENBR_Field := NRF_SVD.RIT.Halt;
      --  Timer enable.
      RITEN         : CTRL_RITEN_Field := NRF_SVD.RIT.Timer_Enabled;
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

   --  Compare value MSB register. Holds the 16 MSBs of the compare value.
   type COMPVAL_H_Register is record
      --  Compare value MSB register. Holds the 16 MSBs of the value which is
      --  compared to the counter.
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

   --  Mask MSB register. This register holds the 16 MSBs of the mask value. A
   --  1 written to any bit will force a compare on the corresponding bit of
   --  the counter and compare register.
   type MASK_H_Register is record
      --  Mask register. This register holds the 16 MSBs of the mask value. A
      --  one written to any bit overrides the result of the comparison for the
      --  corresponding bit of the counter and compare register (causes the
      --  comparison of the register bits to be always true).
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

   --  Counter MSB register. 16 MSBs of the counter.
   type COUNTER_H_Register is record
      --  16 LSBs of the up counter. Counts continuously unless RITEN bit in
      --  RICTRL register is cleared or debug mode is entered (if enabled by
      --  the RITNEBR bit in RICTRL). Can be loaded to any value in software.
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

   --  Repetitive Interrupt Timer
   type RIT_Peripheral is record
      --  Compare value LSB register. Holds the 32 LSBs of the compare value.
      COMPVAL   : aliased HAL.UInt32;
      --  Mask LSB register. This register holds the 32 LSB s of the mask
      --  value. A 1 written to any bit will force the compare to be true for
      --  the corresponding bit of the counter and compare register.
      MASK      : aliased HAL.UInt32;
      --  Control register.
      CTRL      : aliased CTRL_Register;
      --  Counter LSB register. 32 LSBs of the counter.
      COUNTER   : aliased HAL.UInt32;
      --  Compare value MSB register. Holds the 16 MSBs of the compare value.
      COMPVAL_H : aliased COMPVAL_H_Register;
      --  Mask MSB register. This register holds the 16 MSBs of the mask value.
      --  A 1 written to any bit will force a compare on the corresponding bit
      --  of the counter and compare register.
      MASK_H    : aliased MASK_H_Register;
      --  Counter MSB register. 16 MSBs of the counter.
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

   --  Repetitive Interrupt Timer
   RIT_Periph : aliased RIT_Peripheral
     with Import, Address => System'To_Address (16#40070000#);

end NRF_SVD.RIT;
