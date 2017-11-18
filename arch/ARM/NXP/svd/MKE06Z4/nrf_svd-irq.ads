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

--  This spec has been automatically generated from MKE06Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Interrupt
package NRF_SVD.IRQ is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  IRQ Detection Mode
   type SC_IRQMOD_Field is
     (
      --  IRQ event is detected only on falling/rising edges.
      SC_IRQMOD_Field_0,
      --  IRQ event is detected on falling/rising edges and low/high levels.
      SC_IRQMOD_Field_1)
     with Size => 1;
   for SC_IRQMOD_Field use
     (SC_IRQMOD_Field_0 => 0,
      SC_IRQMOD_Field_1 => 1);

   --  IRQ Interrupt Enable
   type SC_IRQIE_Field is
     (
      --  Interrupt request when IRQF set is disabled (use polling).
      SC_IRQIE_Field_0,
      --  Interrupt requested whenever IRQF = 1.
      SC_IRQIE_Field_1)
     with Size => 1;
   for SC_IRQIE_Field use
     (SC_IRQIE_Field_0 => 0,
      SC_IRQIE_Field_1 => 1);

   --  IRQ Flag
   type SC_IRQF_Field is
     (
      --  No IRQ request
      SC_IRQF_Field_0,
      --  IRQ event is detected.
      SC_IRQF_Field_1)
     with Size => 1;
   for SC_IRQF_Field use
     (SC_IRQF_Field_0 => 0,
      SC_IRQF_Field_1 => 1);

   --  IRQ Pin Enable
   type SC_IRQPE_Field is
     (
      --  IRQ pin function is disabled.
      SC_IRQPE_Field_0,
      --  IRQ pin function is enabled.
      SC_IRQPE_Field_1)
     with Size => 1;
   for SC_IRQPE_Field use
     (SC_IRQPE_Field_0 => 0,
      SC_IRQPE_Field_1 => 1);

   --  Interrupt Request (IRQ) Edge Select
   type SC_IRQEDG_Field is
     (
      --  IRQ is falling-edge or falling-edge/low-level sensitive.
      SC_IRQEDG_Field_0,
      --  IRQ is rising-edge or rising-edge/high-level sensitive.
      SC_IRQEDG_Field_1)
     with Size => 1;
   for SC_IRQEDG_Field use
     (SC_IRQEDG_Field_0 => 0,
      SC_IRQEDG_Field_1 => 1);

   --  Interrupt Request (IRQ) Pull Device Disable
   type SC_IRQPDD_Field is
     (
      --  IRQ pull device enabled if IRQPE = 1.
      SC_IRQPDD_Field_0,
      --  IRQ pull device disabled if IRQPE = 1.
      SC_IRQPDD_Field_1)
     with Size => 1;
   for SC_IRQPDD_Field use
     (SC_IRQPDD_Field_0 => 0,
      SC_IRQPDD_Field_1 => 1);

   --  Interrupt Pin Request Status and Control Register
   type IRQ_SC_Register is record
      --  IRQ Detection Mode
      IRQMOD       : SC_IRQMOD_Field := NRF_SVD.IRQ.SC_IRQMOD_Field_0;
      --  IRQ Interrupt Enable
      IRQIE        : SC_IRQIE_Field := NRF_SVD.IRQ.SC_IRQIE_Field_0;
      --  Write-only. IRQ Acknowledge
      IRQACK       : Boolean := False;
      --  Read-only. IRQ Flag
      IRQF         : SC_IRQF_Field := NRF_SVD.IRQ.SC_IRQF_Field_0;
      --  IRQ Pin Enable
      IRQPE        : SC_IRQPE_Field := NRF_SVD.IRQ.SC_IRQPE_Field_0;
      --  Interrupt Request (IRQ) Edge Select
      IRQEDG       : SC_IRQEDG_Field := NRF_SVD.IRQ.SC_IRQEDG_Field_0;
      --  Interrupt Request (IRQ) Pull Device Disable
      IRQPDD       : SC_IRQPDD_Field := NRF_SVD.IRQ.SC_IRQPDD_Field_0;
      --  unspecified
      Reserved_7_7 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for IRQ_SC_Register use record
      IRQMOD       at 0 range 0 .. 0;
      IRQIE        at 0 range 1 .. 1;
      IRQACK       at 0 range 2 .. 2;
      IRQF         at 0 range 3 .. 3;
      IRQPE        at 0 range 4 .. 4;
      IRQEDG       at 0 range 5 .. 5;
      IRQPDD       at 0 range 6 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Interrupt
   type IRQ_Peripheral is record
      --  Interrupt Pin Request Status and Control Register
      SC : aliased IRQ_SC_Register;
   end record
     with Volatile;

   for IRQ_Peripheral use record
      SC at 0 range 0 .. 7;
   end record;

   --  Interrupt
   IRQ_Periph : aliased IRQ_Peripheral
     with Import, Address => IRQ_Base;

end NRF_SVD.IRQ;
