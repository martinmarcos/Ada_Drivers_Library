--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54102_cm4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.MAILBOX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------
   -- MBOXIRQ cluster's Registers --
   ---------------------------------

   --  no description available
   type MBOXIRQ_Cluster is record
      --  Interrupt request register for the Cortex-M0+ CPU.
      IRQ    : aliased HAL.UInt32;
      --  Set bits in IRQ0
      IRQSET : aliased HAL.UInt32;
      --  Clear bits in IRQ0
      IRQCLR : aliased HAL.UInt32;
   end record
     with Volatile, Size => 128;

   for MBOXIRQ_Cluster use record
      IRQ    at 16#0# range 0 .. 31;
      IRQSET at 16#4# range 0 .. 31;
      IRQCLR at 16#8# range 0 .. 31;
   end record;

   --  no description available
   type MBOXIRQ_Clusters is array (0 .. 1) of MBOXIRQ_Cluster;

   --  Mutual exclusion register[1]
   type MUTEX_Register is record
      --  Cleared when read, set when written. See usage description above.
      EX            : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MUTEX_Register use record
      EX            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LPC5410x Mailbox
   type MAILBOX_Peripheral is record
      --  no description available
      MBOXIRQ : aliased MBOXIRQ_Clusters;
      --  Mutual exclusion register[1]
      MUTEX   : aliased MUTEX_Register;
   end record
     with Volatile;

   for MAILBOX_Peripheral use record
      MBOXIRQ at 16#0# range 0 .. 255;
      MUTEX   at 16#F8# range 0 .. 31;
   end record;

   --  LPC5410x Mailbox
   MAILBOX_Periph : aliased MAILBOX_Peripheral
     with Import, Address => System'To_Address (16#1C02C000#);

end NRF_SVD.MAILBOX;
