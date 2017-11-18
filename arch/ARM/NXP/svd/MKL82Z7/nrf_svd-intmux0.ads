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

--  This spec has been automatically generated from MKL82Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Interrupt Multiplexer
package NRF_SVD.INTMUX0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Software Reset
   type CH_CSR0_RST_Field is
     (
      --  No operation.
      CH_CSR0_RST_Field_0,
      --  Perform a software reset on this channel.
      CH_CSR0_RST_Field_1)
     with Size => 1;
   for CH_CSR0_RST_Field use
     (CH_CSR0_RST_Field_0 => 0,
      CH_CSR0_RST_Field_1 => 1);

   --  Logic AND
   type CH_CSR0_AND_Field is
     (
      --  Logic OR all enabled interrupt inputs.
      CH_CSR0_AND_Field_0,
      --  Logic AND all enabled interrupt inputs.
      CH_CSR0_AND_Field_1)
     with Size => 1;
   for CH_CSR0_AND_Field use
     (CH_CSR0_AND_Field_0 => 0,
      CH_CSR0_AND_Field_1 => 1);

   --  Channel Input Number
   type CH_CSR0_IRQN_Field is
     (
      --  32 interrupt inputs
      CH_CSR0_IRQN_Field_00)
     with Size => 2;
   for CH_CSR0_IRQN_Field use
     (CH_CSR0_IRQN_Field_00 => 0);

   subtype CH_CSR_CHIN_Field is HAL.UInt4;

   --  Channel Interrupt Request Pending
   type CH_CSR0_IRQP_Field is
     (
      --  No interrupt is pending.
      CH_CSR0_IRQP_Field_0,
      --  The interrupt output of this channel is pending.
      CH_CSR0_IRQP_Field_1)
     with Size => 1;
   for CH_CSR0_IRQP_Field use
     (CH_CSR0_IRQP_Field_0 => 0,
      CH_CSR0_IRQP_Field_1 => 1);

   --  Channel n Control Status Register
   type CH_CSR_Register is record
      --  Software Reset
      RST            : CH_CSR0_RST_Field :=
                        NRF_SVD.INTMUX0.CH_CSR0_RST_Field_0;
      --  Logic AND
      AND_k          : CH_CSR0_AND_Field :=
                        NRF_SVD.INTMUX0.CH_CSR0_AND_Field_0;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Read-only. Channel Input Number
      IRQN           : CH_CSR0_IRQN_Field :=
                        NRF_SVD.INTMUX0.CH_CSR0_IRQN_Field_00;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. Channel Instance Number
      CHIN           : CH_CSR_CHIN_Field := 16#0#;
      --  unspecified
      Reserved_12_30 : HAL.UInt19 := 16#0#;
      --  Read-only. Channel Interrupt Request Pending
      IRQP           : CH_CSR0_IRQP_Field :=
                        NRF_SVD.INTMUX0.CH_CSR0_IRQP_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_CSR_Register use record
      RST            at 0 range 0 .. 0;
      AND_k          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      IRQN           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CHIN           at 0 range 8 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      IRQP           at 0 range 31 .. 31;
   end record;

   subtype CH_VEC_VECN_Field is HAL.UInt12;

   --  Channel n Vector Number Register
   type CH_VEC_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2;
      --  Read-only. Vector Number
      VECN           : CH_VEC_VECN_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_VEC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      VECN           at 0 range 2 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Interrupt Multiplexer
   type INTMUX0_Peripheral is record
      --  Channel n Control Status Register
      CH_CSR0      : aliased CH_CSR_Register;
      --  Channel n Vector Number Register
      CH_VEC0      : aliased CH_VEC_Register;
      --  Channel n Interrupt Enable Register
      CH_IER_31_00 : aliased HAL.UInt32;
      --  Channel n Interrupt Pending Register
      CH_IPR_31_00 : aliased HAL.UInt32;
      --  Channel n Control Status Register
      CH_CSR1      : aliased CH_CSR_Register;
      --  Channel n Vector Number Register
      CH_VEC1      : aliased CH_VEC_Register;
      --  Channel n Interrupt Enable Register
      CH_IER_31_01 : aliased HAL.UInt32;
      --  Channel n Interrupt Pending Register
      CH_IPR_31_01 : aliased HAL.UInt32;
      --  Channel n Control Status Register
      CH_CSR2      : aliased CH_CSR_Register;
      --  Channel n Vector Number Register
      CH_VEC2      : aliased CH_VEC_Register;
      --  Channel n Interrupt Enable Register
      CH_IER_31_02 : aliased HAL.UInt32;
      --  Channel n Interrupt Pending Register
      CH_IPR_31_02 : aliased HAL.UInt32;
      --  Channel n Control Status Register
      CH_CSR3      : aliased CH_CSR_Register;
      --  Channel n Vector Number Register
      CH_VEC3      : aliased CH_VEC_Register;
      --  Channel n Interrupt Enable Register
      CH_IER_31_03 : aliased HAL.UInt32;
      --  Channel n Interrupt Pending Register
      CH_IPR_31_03 : aliased HAL.UInt32;
   end record
     with Volatile;

   for INTMUX0_Peripheral use record
      CH_CSR0      at 16#0# range 0 .. 31;
      CH_VEC0      at 16#4# range 0 .. 31;
      CH_IER_31_00 at 16#10# range 0 .. 31;
      CH_IPR_31_00 at 16#20# range 0 .. 31;
      CH_CSR1      at 16#40# range 0 .. 31;
      CH_VEC1      at 16#44# range 0 .. 31;
      CH_IER_31_01 at 16#50# range 0 .. 31;
      CH_IPR_31_01 at 16#60# range 0 .. 31;
      CH_CSR2      at 16#80# range 0 .. 31;
      CH_VEC2      at 16#84# range 0 .. 31;
      CH_IER_31_02 at 16#90# range 0 .. 31;
      CH_IPR_31_02 at 16#A0# range 0 .. 31;
      CH_CSR3      at 16#C0# range 0 .. 31;
      CH_VEC3      at 16#C4# range 0 .. 31;
      CH_IER_31_03 at 16#D0# range 0 .. 31;
      CH_IPR_31_03 at 16#E0# range 0 .. 31;
   end record;

   --  Interrupt Multiplexer
   INTMUX0_Periph : aliased INTMUX0_Peripheral
     with Import, Address => INTMUX0_Base;

end NRF_SVD.INTMUX0;
