--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54618.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.GINT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Group interrupt status. This bit is cleared by writing a one to it.
   --  Writing zero has no effect.
   type CTRL_INT_Field is
     (
      --  No request. No interrupt request is pending.
      No_Request,
      --  Request active. Interrupt request is active.
      Request_Active)
     with Size => 1;
   for CTRL_INT_Field use
     (No_Request => 0,
      Request_Active => 1);

   --  Combine enabled inputs for group interrupt
   type CTRL_COMB_Field is
     (
      --  Or. OR functionality: A grouped interrupt is generated when any one
      --  of the enabled inputs is active (based on its programmed polarity).
      Or_k,
      --  And. AND functionality: An interrupt is generated when all enabled
      --  bits are active (based on their programmed polarity).
      And_k)
     with Size => 1;
   for CTRL_COMB_Field use
     (Or_k => 0,
      And_k => 1);

   --  Group interrupt trigger
   type CTRL_TRIG_Field is
     (
      --  Edge-triggered.
      Edge_Triggered,
      --  Level-triggered.
      Level_Triggered)
     with Size => 1;
   for CTRL_TRIG_Field use
     (Edge_Triggered => 0,
      Level_Triggered => 1);

   --  GPIO grouped interrupt control register
   type CTRL_Register is record
      --  Group interrupt status. This bit is cleared by writing a one to it.
      --  Writing zero has no effect.
      INT           : CTRL_INT_Field := NRF_SVD.GINT.No_Request;
      --  Combine enabled inputs for group interrupt
      COMB          : CTRL_COMB_Field := NRF_SVD.GINT.Or_k;
      --  Group interrupt trigger
      TRIG          : CTRL_TRIG_Field := NRF_SVD.GINT.Edge_Triggered;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      INT           at 0 range 0 .. 0;
      COMB          at 0 range 1 .. 1;
      TRIG          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  GPIO grouped interrupt port 0 polarity register

   --  GPIO grouped interrupt port 0 polarity register
   type PORT_POL_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   --  GPIO grouped interrupt port 0 enable register

   --  GPIO grouped interrupt port 0 enable register
   type PORT_ENA_Registers is array (0 .. 1) of HAL.UInt32
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5411x Group GPIO input interrupt (GINT0/1)
   type GINT_Peripheral is record
      --  GPIO grouped interrupt control register
      CTRL     : aliased CTRL_Register;
      --  GPIO grouped interrupt port 0 polarity register
      PORT_POL : aliased PORT_POL_Registers;
      --  GPIO grouped interrupt port 0 enable register
      PORT_ENA : aliased PORT_ENA_Registers;
   end record
     with Volatile;

   for GINT_Peripheral use record
      CTRL     at 16#0# range 0 .. 31;
      PORT_POL at 16#20# range 0 .. 63;
      PORT_ENA at 16#40# range 0 .. 63;
   end record;

   --  LPC5411x Group GPIO input interrupt (GINT0/1)
   GINT0_Periph : aliased GINT_Peripheral
     with Import, Address => System'To_Address (16#40002000#);

   --  LPC5411x Group GPIO input interrupt (GINT0/1)
   GINT1_Periph : aliased GINT_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

end NRF_SVD.GINT;
