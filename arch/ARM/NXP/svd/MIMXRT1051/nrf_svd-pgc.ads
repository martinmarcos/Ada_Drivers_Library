--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PGC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Power Control PCR must not change from power-down request (pdn_req)
   --  assertion until the target subsystem is completely powered up
   type MEGA_CTRL_PCR_Field is
     (
      --  Do not switch off power even if pdn_req is asserted.
      Pcr_0,
      --  Switch off power when pdn_req is asserted.
      Pcr_1)
     with Size => 1;
   for MEGA_CTRL_PCR_Field use
     (Pcr_0 => 0,
      Pcr_1 => 1);

   --  PGC Mega Control Register
   type PGC_MEGA_CTRL_Register is record
      --  Power Control PCR must not change from power-down request (pdn_req)
      --  assertion until the target subsystem is completely powered up
      PCR           : MEGA_CTRL_PCR_Field := NRF_SVD.PGC.Pcr_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_MEGA_CTRL_Register use record
      PCR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PGC_MEGA_PUPSCR_SW_Field is HAL.UInt6;
   subtype PGC_MEGA_PUPSCR_SW2ISO_Field is HAL.UInt6;

   --  PGC Mega Power Up Sequence Control Register
   type PGC_MEGA_PUPSCR_Register is record
      --  After a power-up request (pup_req assertion), the PGC waits a number
      --  of IPG clocks equal to the value of SW before asserting power toggle
      --  on/off signal (switch_b)
      SW             : PGC_MEGA_PUPSCR_SW_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  After asserting power toggle on/off signal (switch_b), the PGC waits
      --  a number of IPG clocks equal to the value of SW2ISO before negating
      --  isolation
      SW2ISO         : PGC_MEGA_PUPSCR_SW2ISO_Field := 16#F#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_MEGA_PUPSCR_Register use record
      SW             at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SW2ISO         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PGC_MEGA_PDNSCR_ISO_Field is HAL.UInt6;
   subtype PGC_MEGA_PDNSCR_ISO2SW_Field is HAL.UInt6;

   --  PGC Mega Pull Down Sequence Control Register
   type PGC_MEGA_PDNSCR_Register is record
      --  After a power-down request (pdn_req assertion), the PGC waits a
      --  number of IPG clocks equal to the value of ISO before asserting
      --  isolation
      ISO            : PGC_MEGA_PDNSCR_ISO_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  After asserting isolation, the PGC waits a number of IPG clocks equal
      --  to the value of ISO2SW before negating power toggle on/off signal
      --  (switch_b)
      ISO2SW         : PGC_MEGA_PDNSCR_ISO2SW_Field := 16#1#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_MEGA_PDNSCR_Register use record
      ISO            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ISO2SW         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Power status
   type MEGA_SR_PSR_Field is
     (
      --  The target subsystem was not powered down for the previous power-down
      --  request.
      Psr_0,
      --  The target subsystem was powered down for the previous power-down
      --  request.
      Psr_1)
     with Size => 1;
   for MEGA_SR_PSR_Field use
     (Psr_0 => 0,
      Psr_1 => 1);

   --  PGC Mega Power Gating Controller Status Register
   type PGC_MEGA_SR_Register is record
      --  Power status
      PSR           : MEGA_SR_PSR_Field := NRF_SVD.PGC.Psr_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_MEGA_SR_Register use record
      PSR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Power Control PCR must not change from power-down request (pdn_req)
   --  assertion until the target subsystem is completely powered up
   type CPU_CTRL_PCR_Field is
     (
      --  Do not switch off power even if pdn_req is asserted.
      Pcr_0,
      --  Switch off power when pdn_req is asserted.
      Pcr_1)
     with Size => 1;
   for CPU_CTRL_PCR_Field use
     (Pcr_0 => 0,
      Pcr_1 => 1);

   --  PGC CPU Control Register
   type PGC_CPU_CTRL_Register is record
      --  Power Control PCR must not change from power-down request (pdn_req)
      --  assertion until the target subsystem is completely powered up
      PCR           : CPU_CTRL_PCR_Field := NRF_SVD.PGC.Pcr_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_CPU_CTRL_Register use record
      PCR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PGC_CPU_PUPSCR_SW_Field is HAL.UInt6;
   subtype PGC_CPU_PUPSCR_SW2ISO_Field is HAL.UInt6;

   --  PGC CPU Power Up Sequence Control Register
   type PGC_CPU_PUPSCR_Register is record
      --  There are two different silicon revisions: 1
      SW             : PGC_CPU_PUPSCR_SW_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  There are two different silicon revisions: 1
      SW2ISO         : PGC_CPU_PUPSCR_SW2ISO_Field := 16#F#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_CPU_PUPSCR_Register use record
      SW             at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SW2ISO         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PGC_CPU_PDNSCR_ISO_Field is HAL.UInt6;
   subtype PGC_CPU_PDNSCR_ISO2SW_Field is HAL.UInt6;

   --  PGC CPU Pull Down Sequence Control Register
   type PGC_CPU_PDNSCR_Register is record
      --  After a power-down request (pdn_req assertion), the PGC waits a
      --  number of 32k clocks equal to the value of ISO before asserting
      --  isolation
      ISO            : PGC_CPU_PDNSCR_ISO_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  After asserting isolation, the PGC waits a number of 32k clocks equal
      --  to the value of ISO2SW before negating
      ISO2SW         : PGC_CPU_PDNSCR_ISO2SW_Field := 16#1#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_CPU_PDNSCR_Register use record
      ISO            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ISO2SW         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Power status
   type CPU_SR_PSR_Field is
     (
      --  The target subsystem was not powered down for the previous power-down
      --  request.
      Psr_0,
      --  The target subsystem was powered down for the previous power-down
      --  request.
      Psr_1)
     with Size => 1;
   for CPU_SR_PSR_Field use
     (Psr_0 => 0,
      Psr_1 => 1);

   --  PGC CPU Power Gating Controller Status Register
   type PGC_CPU_SR_Register is record
      --  Power status
      PSR           : CPU_SR_PSR_Field := NRF_SVD.PGC.Psr_0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PGC_CPU_SR_Register use record
      PSR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PGC
   type PGC_Peripheral is record
      --  PGC Mega Control Register
      MEGA_CTRL   : aliased PGC_MEGA_CTRL_Register;
      --  PGC Mega Power Up Sequence Control Register
      MEGA_PUPSCR : aliased PGC_MEGA_PUPSCR_Register;
      --  PGC Mega Pull Down Sequence Control Register
      MEGA_PDNSCR : aliased PGC_MEGA_PDNSCR_Register;
      --  PGC Mega Power Gating Controller Status Register
      MEGA_SR     : aliased PGC_MEGA_SR_Register;
      --  PGC CPU Control Register
      CPU_CTRL    : aliased PGC_CPU_CTRL_Register;
      --  PGC CPU Power Up Sequence Control Register
      CPU_PUPSCR  : aliased PGC_CPU_PUPSCR_Register;
      --  PGC CPU Pull Down Sequence Control Register
      CPU_PDNSCR  : aliased PGC_CPU_PDNSCR_Register;
      --  PGC CPU Power Gating Controller Status Register
      CPU_SR      : aliased PGC_CPU_SR_Register;
   end record
     with Volatile;

   for PGC_Peripheral use record
      MEGA_CTRL   at 16#220# range 0 .. 31;
      MEGA_PUPSCR at 16#224# range 0 .. 31;
      MEGA_PDNSCR at 16#228# range 0 .. 31;
      MEGA_SR     at 16#22C# range 0 .. 31;
      CPU_CTRL    at 16#2A0# range 0 .. 31;
      CPU_PUPSCR  at 16#2A4# range 0 .. 31;
      CPU_PDNSCR  at 16#2A8# range 0 .. 31;
      CPU_SR      at 16#2AC# range 0 .. 31;
   end record;

   --  PGC
   PGC_Periph : aliased PGC_Peripheral
     with Import, Address => System'To_Address (16#400F4000#);

end NRF_SVD.PGC;
