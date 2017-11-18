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

--  This spec has been automatically generated from MKV58F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  System Control Block
package NRF_SVD.SystemControl is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Auxiliary Control Register,
   type SCB_ACTLR_Register is record
      --  Disables interruption of multi-cycle instructions.
      DISMCYCINT    : Boolean := False;
      --  Disables write buffer use during default memory map accesses.
      DISDEFWBUF    : Boolean := False;
      --  Disables folding of IT instructions.
      DISFOLD       : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ACTLR_Register use record
      DISMCYCINT    at 0 range 0 .. 0;
      DISDEFWBUF    at 0 range 1 .. 1;
      DISFOLD       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SCB_CPUID_REVISION_Field is HAL.UInt4;
   subtype SCB_CPUID_PARTNO_Field is HAL.UInt12;
   subtype SCB_CPUID_ARCHITECTURE_Field is HAL.UInt4;
   subtype SCB_CPUID_VARIANT_Field is HAL.UInt4;
   subtype SCB_CPUID_IMPLEMENTER_Field is HAL.UInt8;

   --  CPUID Base Register
   type SCB_CPUID_Register is record
      --  Read-only. Indicates patch release: 0x0 = Patch 0
      REVISION     : SCB_CPUID_REVISION_Field;
      --  Read-only. Indicates part number
      PARTNO       : SCB_CPUID_PARTNO_Field;
      --  Read-only. ARCHITECTURE
      ARCHITECTURE : SCB_CPUID_ARCHITECTURE_Field;
      --  Read-only. Indicates processor revision: 0x2 = Revision 2
      VARIANT      : SCB_CPUID_VARIANT_Field;
      --  Read-only. Implementer code
      IMPLEMENTER  : SCB_CPUID_IMPLEMENTER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPUID_Register use record
      REVISION     at 0 range 0 .. 3;
      PARTNO       at 0 range 4 .. 15;
      ARCHITECTURE at 0 range 16 .. 19;
      VARIANT      at 0 range 20 .. 23;
      IMPLEMENTER  at 0 range 24 .. 31;
   end record;

   subtype SCB_ICSR_VECTACTIVE_Field is HAL.UInt9;

   --  Indicates whether there are preempted active exceptions
   type ICSR_RETTOBASE_Field is
     (
      --  there are preempted active exceptions to execute
      ICSR_RETTOBASE_Field_0,
      --  there are no active exceptions, or the currently-executing exception
      --  is the only active exception
      ICSR_RETTOBASE_Field_1)
     with Size => 1;
   for ICSR_RETTOBASE_Field use
     (ICSR_RETTOBASE_Field_0 => 0,
      ICSR_RETTOBASE_Field_1 => 1);

   subtype SCB_ICSR_VECTPENDING_Field is HAL.UInt9;

   --  Interrupt pending flag, excluding NMI and Faults
   type ICSR_ISRPENDING_Field is
     (
      --  No external interrupt pending.
      ICSR_ISRPENDING_Field_0,
      --  External interrupt pending.
      ICSR_ISRPENDING_Field_1)
     with Size => 1;
   for ICSR_ISRPENDING_Field use
     (ICSR_ISRPENDING_Field_0 => 0,
      ICSR_ISRPENDING_Field_1 => 1);

   --  Indicates whether a pending exception will be serviced on exit from
   --  debug halt state
   type ICSR_ISRPREEMPT_Field is
     (
      --  Will not service
      ICSR_ISRPREEMPT_Field_0,
      --  Will service a pending exception
      ICSR_ISRPREEMPT_Field_1)
     with Size => 1;
   for ICSR_ISRPREEMPT_Field use
     (ICSR_ISRPREEMPT_Field_0 => 0,
      ICSR_ISRPREEMPT_Field_1 => 1);

   --  SysTick exception clear-pending bit
   type ICSR_PENDSTCLR_Field is
     (
      --  no effect
      ICSR_PENDSTCLR_Field_0,
      --  removes the pending state from the SysTick exception
      ICSR_PENDSTCLR_Field_1)
     with Size => 1;
   for ICSR_PENDSTCLR_Field use
     (ICSR_PENDSTCLR_Field_0 => 0,
      ICSR_PENDSTCLR_Field_1 => 1);

   --  SysTick exception set-pending bit
   type ICSR_PENDSTSET_Field is
     (
      --  write: no effect; read: SysTick exception is not pending
      ICSR_PENDSTSET_Field_0,
      --  write: changes SysTick exception state to pending; read: SysTick
      --  exception is pending
      ICSR_PENDSTSET_Field_1)
     with Size => 1;
   for ICSR_PENDSTSET_Field use
     (ICSR_PENDSTSET_Field_0 => 0,
      ICSR_PENDSTSET_Field_1 => 1);

   --  PendSV clear-pending bit
   type ICSR_PENDSVCLR_Field is
     (
      --  no effect
      ICSR_PENDSVCLR_Field_0,
      --  removes the pending state from the PendSV exception
      ICSR_PENDSVCLR_Field_1)
     with Size => 1;
   for ICSR_PENDSVCLR_Field use
     (ICSR_PENDSVCLR_Field_0 => 0,
      ICSR_PENDSVCLR_Field_1 => 1);

   --  PendSV set-pending bit
   type ICSR_PENDSVSET_Field is
     (
      --  write: no effect; read: PendSV exception is not pending
      ICSR_PENDSVSET_Field_0,
      --  write: changes PendSV exception state to pending; read: PendSV
      --  exception is pending
      ICSR_PENDSVSET_Field_1)
     with Size => 1;
   for ICSR_PENDSVSET_Field use
     (ICSR_PENDSVSET_Field_0 => 0,
      ICSR_PENDSVSET_Field_1 => 1);

   --  NMI set-pending bit
   type ICSR_NMIPENDSET_Field is
     (
      --  write: no effect; read: NMI exception is not pending
      ICSR_NMIPENDSET_Field_0,
      --  write: changes NMI exception state to pending; read: NMI exception is
      --  pending
      ICSR_NMIPENDSET_Field_1)
     with Size => 1;
   for ICSR_NMIPENDSET_Field use
     (ICSR_NMIPENDSET_Field_0 => 0,
      ICSR_NMIPENDSET_Field_1 => 1);

   --  Interrupt Control and State Register
   type SCB_ICSR_Register is record
      --  Read-only. Active exception number
      VECTACTIVE     : SCB_ICSR_VECTACTIVE_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Read-only. Indicates whether there are preempted active exceptions
      RETTOBASE      : ICSR_RETTOBASE_Field :=
                        NRF_SVD.SystemControl.ICSR_RETTOBASE_Field_0;
      --  Read-only. Exception number of the highest priority pending enabled
      --  exception
      VECTPENDING    : SCB_ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Read-only. Interrupt pending flag, excluding NMI and Faults
      ISRPENDING     : ICSR_ISRPENDING_Field :=
                        NRF_SVD.SystemControl.ICSR_ISRPENDING_Field_0;
      --  Read-only. Indicates whether a pending exception will be serviced on
      --  exit from debug halt state
      ISRPREEMPT     : ICSR_ISRPREEMPT_Field :=
                        NRF_SVD.SystemControl.ICSR_ISRPREEMPT_Field_0;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Write-only. SysTick exception clear-pending bit
      PENDSTCLR      : ICSR_PENDSTCLR_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSTCLR_Field_0;
      --  SysTick exception set-pending bit
      PENDSTSET      : ICSR_PENDSTSET_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSTSET_Field_0;
      --  Write-only. PendSV clear-pending bit
      PENDSVCLR      : ICSR_PENDSVCLR_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSVCLR_Field_0;
      --  PendSV set-pending bit
      PENDSVSET      : ICSR_PENDSVSET_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSVSET_Field_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  NMI set-pending bit
      NMIPENDSET     : ICSR_NMIPENDSET_Field :=
                        NRF_SVD.SystemControl.ICSR_NMIPENDSET_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ICSR_Register use record
      VECTACTIVE     at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RETTOBASE      at 0 range 11 .. 11;
      VECTPENDING    at 0 range 12 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      ISRPENDING     at 0 range 22 .. 22;
      ISRPREEMPT     at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      PENDSTCLR      at 0 range 25 .. 25;
      PENDSTSET      at 0 range 26 .. 26;
      PENDSVCLR      at 0 range 27 .. 27;
      PENDSVSET      at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      NMIPENDSET     at 0 range 31 .. 31;
   end record;

   subtype SCB_VTOR_TBLOFF_Field is HAL.UInt25;

   --  Vector Table Offset Register
   type SCB_VTOR_Register is record
      --  unspecified
      Reserved_0_6 : HAL.UInt7 := 16#0#;
      --  Vector table base offset
      TBLOFF       : SCB_VTOR_TBLOFF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_VTOR_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      TBLOFF       at 0 range 7 .. 31;
   end record;

   --  Writing 1 to this bit causes a local system reset
   type AIRCR_VECTRESET_Field is
     (
      --  No change
      AIRCR_VECTRESET_Field_0,
      --  Causes a local system reset
      AIRCR_VECTRESET_Field_1)
     with Size => 1;
   for AIRCR_VECTRESET_Field use
     (AIRCR_VECTRESET_Field_0 => 0,
      AIRCR_VECTRESET_Field_1 => 1);

   --  Writing 1 to this bit clears all active state information for fixed and
   --  configurable exceptions.
   type AIRCR_VECTCLRACTIVE_Field is
     (
      --  No change
      AIRCR_VECTCLRACTIVE_Field_0,
      --  Clears all active state information for fixed and configurable
      --  exceptions
      AIRCR_VECTCLRACTIVE_Field_1)
     with Size => 1;
   for AIRCR_VECTCLRACTIVE_Field use
     (AIRCR_VECTCLRACTIVE_Field_0 => 0,
      AIRCR_VECTCLRACTIVE_Field_1 => 1);

   --  System reset request
   type AIRCR_SYSRESETREQ_Field is
     (
      --  no system reset request
      AIRCR_SYSRESETREQ_Field_0,
      --  asserts a signal to the outer system that requests a reset
      AIRCR_SYSRESETREQ_Field_1)
     with Size => 1;
   for AIRCR_SYSRESETREQ_Field use
     (AIRCR_SYSRESETREQ_Field_0 => 0,
      AIRCR_SYSRESETREQ_Field_1 => 1);

   subtype SCB_AIRCR_PRIGROUP_Field is HAL.UInt3;

   --  Data endianness
   type AIRCR_ENDIANNESS_Field is
     (
      --  Little-endian
      AIRCR_ENDIANNESS_Field_0,
      --  Big-endian
      AIRCR_ENDIANNESS_Field_1)
     with Size => 1;
   for AIRCR_ENDIANNESS_Field use
     (AIRCR_ENDIANNESS_Field_0 => 0,
      AIRCR_ENDIANNESS_Field_1 => 1);

   subtype SCB_AIRCR_VECTKEY_Field is HAL.UInt16;

   --  Application Interrupt and Reset Control Register
   type SCB_AIRCR_Register is record
      --  Write-only. Writing 1 to this bit causes a local system reset
      VECTRESET      : AIRCR_VECTRESET_Field :=
                        NRF_SVD.SystemControl.AIRCR_VECTRESET_Field_0;
      --  Write-only. Writing 1 to this bit clears all active state information
      --  for fixed and configurable exceptions.
      VECTCLRACTIVE  : AIRCR_VECTCLRACTIVE_Field :=
                        NRF_SVD.SystemControl.AIRCR_VECTCLRACTIVE_Field_0;
      --  Write-only. System reset request
      SYSRESETREQ    : AIRCR_SYSRESETREQ_Field :=
                        NRF_SVD.SystemControl.AIRCR_SYSRESETREQ_Field_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Interrupt priority grouping field. This field determines the split of
      --  group priority from subpriority.
      PRIGROUP       : SCB_AIRCR_PRIGROUP_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Read-only. Data endianness
      ENDIANNESS     : AIRCR_ENDIANNESS_Field :=
                        NRF_SVD.SystemControl.AIRCR_ENDIANNESS_Field_0;
      --  Register key
      VECTKEY        : SCB_AIRCR_VECTKEY_Field := 16#FA05#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_AIRCR_Register use record
      VECTRESET      at 0 range 0 .. 0;
      VECTCLRACTIVE  at 0 range 1 .. 1;
      SYSRESETREQ    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRIGROUP       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      ENDIANNESS     at 0 range 15 .. 15;
      VECTKEY        at 0 range 16 .. 31;
   end record;

   --  Indicates sleep-on-exit when returning from Handler mode to Thread mode
   type SCR_SLEEPONEXIT_Field is
     (
      --  o not sleep when returning to Thread mode
      SCR_SLEEPONEXIT_Field_0,
      --  enter sleep, or deep sleep, on return from an ISR
      SCR_SLEEPONEXIT_Field_1)
     with Size => 1;
   for SCR_SLEEPONEXIT_Field use
     (SCR_SLEEPONEXIT_Field_0 => 0,
      SCR_SLEEPONEXIT_Field_1 => 1);

   --  Controls whether the processor uses sleep or deep sleep as its low power
   --  mode
   type SCR_SLEEPDEEP_Field is
     (
      --  sleep
      SCR_SLEEPDEEP_Field_0,
      --  deep sleep
      SCR_SLEEPDEEP_Field_1)
     with Size => 1;
   for SCR_SLEEPDEEP_Field use
     (SCR_SLEEPDEEP_Field_0 => 0,
      SCR_SLEEPDEEP_Field_1 => 1);

   --  Send Event on Pending bit
   type SCR_SEVONPEND_Field is
     (
      --  only enabled interrupts or events can wakeup the processor, disabled
      --  interrupts are excluded
      SCR_SEVONPEND_Field_0,
      --  enabled events and all interrupts, including disabled interrupts, can
      --  wakeup the processor
      SCR_SEVONPEND_Field_1)
     with Size => 1;
   for SCR_SEVONPEND_Field use
     (SCR_SEVONPEND_Field_0 => 0,
      SCR_SEVONPEND_Field_1 => 1);

   --  System Control Register
   type SCB_SCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Indicates sleep-on-exit when returning from Handler mode to Thread
      --  mode
      SLEEPONEXIT   : SCR_SLEEPONEXIT_Field :=
                       NRF_SVD.SystemControl.SCR_SLEEPONEXIT_Field_0;
      --  Controls whether the processor uses sleep or deep sleep as its low
      --  power mode
      SLEEPDEEP     : SCR_SLEEPDEEP_Field :=
                       NRF_SVD.SystemControl.SCR_SLEEPDEEP_Field_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Send Event on Pending bit
      SEVONPEND     : SCR_SEVONPEND_Field :=
                       NRF_SVD.SystemControl.SCR_SEVONPEND_Field_0;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SLEEPONEXIT   at 0 range 1 .. 1;
      SLEEPDEEP     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SEVONPEND     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Indicates how the processor enters Thread mode
   type CCR_NONBASETHRDENA_Field is
     (
      --  processor can enter Thread mode only when no exception is active
      CCR_NONBASETHRDENA_Field_0,
      --  processor can enter Thread mode from any level under the control of
      --  an EXC_RETURN value
      CCR_NONBASETHRDENA_Field_1)
     with Size => 1;
   for CCR_NONBASETHRDENA_Field use
     (CCR_NONBASETHRDENA_Field_0 => 0,
      CCR_NONBASETHRDENA_Field_1 => 1);

   --  Enables unprivileged software access to the STIR
   type CCR_USERSETMPEND_Field is
     (
      --  disable
      CCR_USERSETMPEND_Field_0,
      --  enable
      CCR_USERSETMPEND_Field_1)
     with Size => 1;
   for CCR_USERSETMPEND_Field use
     (CCR_USERSETMPEND_Field_0 => 0,
      CCR_USERSETMPEND_Field_1 => 1);

   --  Enables unaligned access traps
   type CCR_UNALIGN_TRP_Field is
     (
      --  do not trap unaligned halfword and word accesses
      CCR_UNALIGN_TRP_Field_0,
      --  trap unaligned halfword and word accesses
      CCR_UNALIGN_TRP_Field_1)
     with Size => 1;
   for CCR_UNALIGN_TRP_Field use
     (CCR_UNALIGN_TRP_Field_0 => 0,
      CCR_UNALIGN_TRP_Field_1 => 1);

   --  Enables faulting or halting when the processor executes an SDIV or UDIV
   --  instruction with a divisor of 0
   type CCR_DIV_0_TRP_Field is
     (
      --  do not trap divide by 0
      CCR_DIV_0_TRP_Field_0,
      --  trap divide by 0
      CCR_DIV_0_TRP_Field_1)
     with Size => 1;
   for CCR_DIV_0_TRP_Field use
     (CCR_DIV_0_TRP_Field_0 => 0,
      CCR_DIV_0_TRP_Field_1 => 1);

   --  Enables handlers with priority -1 or -2 to ignore data BusFaults caused
   --  by load and store instructions.
   type CCR_BFHFNMIGN_Field is
     (
      --  data bus faults caused by load and store instructions cause a lock-up
      CCR_BFHFNMIGN_Field_0,
      --  handlers running at priority -1 and -2 ignore data bus faults caused
      --  by load and store instructions
      CCR_BFHFNMIGN_Field_1)
     with Size => 1;
   for CCR_BFHFNMIGN_Field use
     (CCR_BFHFNMIGN_Field_0 => 0,
      CCR_BFHFNMIGN_Field_1 => 1);

   --  Indicates stack alignment on exception entry
   type CCR_STKALIGN_Field is
     (
      --  4-byte aligned
      CCR_STKALIGN_Field_0,
      --  8-byte aligned
      CCR_STKALIGN_Field_1)
     with Size => 1;
   for CCR_STKALIGN_Field use
     (CCR_STKALIGN_Field_0 => 0,
      CCR_STKALIGN_Field_1 => 1);

   --  Enables L1 data cache.
   type CCR_DC_Field is
     (
      --  L1 data cache disabled
      CCR_DC_Field_0,
      --  L1 data cache enabled
      CCR_DC_Field_1)
     with Size => 1;
   for CCR_DC_Field use
     (CCR_DC_Field_0 => 0,
      CCR_DC_Field_1 => 1);

   --  Enables L1 instruction cache.
   type CCR_IC_Field is
     (
      --  L1 instruction cache disabled
      CCR_IC_Field_0,
      --  L1 instruction cache enabled
      CCR_IC_Field_1)
     with Size => 1;
   for CCR_IC_Field use
     (CCR_IC_Field_0 => 0,
      CCR_IC_Field_1 => 1);

   --  Configuration and Control Register
   type SCB_CCR_Register is record
      --  Indicates how the processor enters Thread mode
      NONBASETHRDENA : CCR_NONBASETHRDENA_Field :=
                        NRF_SVD.SystemControl.CCR_NONBASETHRDENA_Field_0;
      --  Enables unprivileged software access to the STIR
      USERSETMPEND   : CCR_USERSETMPEND_Field :=
                        NRF_SVD.SystemControl.CCR_USERSETMPEND_Field_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Enables unaligned access traps
      UNALIGN_TRP    : CCR_UNALIGN_TRP_Field :=
                        NRF_SVD.SystemControl.CCR_UNALIGN_TRP_Field_0;
      --  Enables faulting or halting when the processor executes an SDIV or
      --  UDIV instruction with a divisor of 0
      DIV_0_TRP      : CCR_DIV_0_TRP_Field :=
                        NRF_SVD.SystemControl.CCR_DIV_0_TRP_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Enables handlers with priority -1 or -2 to ignore data BusFaults
      --  caused by load and store instructions.
      BFHFNMIGN      : CCR_BFHFNMIGN_Field :=
                        NRF_SVD.SystemControl.CCR_BFHFNMIGN_Field_0;
      --  Indicates stack alignment on exception entry
      STKALIGN       : CCR_STKALIGN_Field :=
                        NRF_SVD.SystemControl.CCR_STKALIGN_Field_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Enables L1 data cache.
      DC             : CCR_DC_Field := NRF_SVD.SystemControl.CCR_DC_Field_0;
      --  Enables L1 instruction cache.
      IC             : CCR_IC_Field := NRF_SVD.SystemControl.CCR_IC_Field_0;
      --  Read-only. Always reads-as-one. It indicates branch prediction is
      --  enabled.
      BP             : Boolean := True;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CCR_Register use record
      NONBASETHRDENA at 0 range 0 .. 0;
      USERSETMPEND   at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      DIV_0_TRP      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BFHFNMIGN      at 0 range 8 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DC             at 0 range 16 .. 16;
      IC             at 0 range 17 .. 17;
      BP             at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SCB_SHPR1_PRI_4_Field is HAL.UInt8;
   subtype SCB_SHPR1_PRI_5_Field is HAL.UInt8;
   subtype SCB_SHPR1_PRI_6_Field is HAL.UInt8;

   --  System Handler Priority Register 1
   type SCB_SHPR1_Register is record
      --  Priority of system handler 4, MemManage
      PRI_4          : SCB_SHPR1_PRI_4_Field := 16#0#;
      --  Priority of system handler 5, BusFault
      PRI_5          : SCB_SHPR1_PRI_5_Field := 16#0#;
      --  Priority of system handler 6, UsageFault
      PRI_6          : SCB_SHPR1_PRI_6_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR1_Register use record
      PRI_4          at 0 range 0 .. 7;
      PRI_5          at 0 range 8 .. 15;
      PRI_6          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SCB_SHPR2_PRI_11_Field is HAL.UInt8;

   --  System Handler Priority Register 2
   type SCB_SHPR2_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#0#;
      --  Priority of system handler 11, SVCall
      PRI_11        : SCB_SHPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR2_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      PRI_11        at 0 range 24 .. 31;
   end record;

   subtype SCB_SHPR3_PRI_12_Field is HAL.UInt8;
   subtype SCB_SHPR3_PRI_14_Field is HAL.UInt8;
   subtype SCB_SHPR3_PRI_15_Field is HAL.UInt8;

   --  System Handler Priority Register 3
   type SCB_SHPR3_Register is record
      --  Priority of system handler 12, Debug Monitor
      PRI_12        : SCB_SHPR3_PRI_12_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Priority of system handler 14, PendSV
      PRI_14        : SCB_SHPR3_PRI_14_Field := 16#0#;
      --  Priority of system handler 15, SysTick exception
      PRI_15        : SCB_SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR3_Register use record
      PRI_12        at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      PRI_14        at 0 range 16 .. 23;
      PRI_15        at 0 range 24 .. 31;
   end record;

   --  MemManage exception active bit
   type SHCSR_MEMFAULTACT_Field is
     (
      --  exception is not active
      SHCSR_MEMFAULTACT_Field_0,
      --  exception is active
      SHCSR_MEMFAULTACT_Field_1)
     with Size => 1;
   for SHCSR_MEMFAULTACT_Field use
     (SHCSR_MEMFAULTACT_Field_0 => 0,
      SHCSR_MEMFAULTACT_Field_1 => 1);

   --  BusFault exception active bit
   type SHCSR_BUSFAULTACT_Field is
     (
      --  exception is not active
      SHCSR_BUSFAULTACT_Field_0,
      --  exception is active
      SHCSR_BUSFAULTACT_Field_1)
     with Size => 1;
   for SHCSR_BUSFAULTACT_Field use
     (SHCSR_BUSFAULTACT_Field_0 => 0,
      SHCSR_BUSFAULTACT_Field_1 => 1);

   --  UsageFault exception active bit
   type SHCSR_USGFAULTACT_Field is
     (
      --  exception is not active
      SHCSR_USGFAULTACT_Field_0,
      --  exception is active
      SHCSR_USGFAULTACT_Field_1)
     with Size => 1;
   for SHCSR_USGFAULTACT_Field use
     (SHCSR_USGFAULTACT_Field_0 => 0,
      SHCSR_USGFAULTACT_Field_1 => 1);

   --  SVCall active bit
   type SHCSR_SVCALLACT_Field is
     (
      --  exception is not active
      SHCSR_SVCALLACT_Field_0,
      --  exception is active
      SHCSR_SVCALLACT_Field_1)
     with Size => 1;
   for SHCSR_SVCALLACT_Field use
     (SHCSR_SVCALLACT_Field_0 => 0,
      SHCSR_SVCALLACT_Field_1 => 1);

   --  Debug monitor active bit
   type SHCSR_MONITORACT_Field is
     (
      --  exception is not active
      SHCSR_MONITORACT_Field_0,
      --  exception is active
      SHCSR_MONITORACT_Field_1)
     with Size => 1;
   for SHCSR_MONITORACT_Field use
     (SHCSR_MONITORACT_Field_0 => 0,
      SHCSR_MONITORACT_Field_1 => 1);

   --  PendSV exception active bit
   type SHCSR_PENDSVACT_Field is
     (
      --  exception is not active
      SHCSR_PENDSVACT_Field_0,
      --  exception is active
      SHCSR_PENDSVACT_Field_1)
     with Size => 1;
   for SHCSR_PENDSVACT_Field use
     (SHCSR_PENDSVACT_Field_0 => 0,
      SHCSR_PENDSVACT_Field_1 => 1);

   --  SysTick exception active bit
   type SHCSR_SYSTICKACT_Field is
     (
      --  exception is not active
      SHCSR_SYSTICKACT_Field_0,
      --  exception is active
      SHCSR_SYSTICKACT_Field_1)
     with Size => 1;
   for SHCSR_SYSTICKACT_Field use
     (SHCSR_SYSTICKACT_Field_0 => 0,
      SHCSR_SYSTICKACT_Field_1 => 1);

   --  UsageFault exception pending bit
   type SHCSR_USGFAULTPENDED_Field is
     (
      --  exception is not pending
      SHCSR_USGFAULTPENDED_Field_0,
      --  exception is pending
      SHCSR_USGFAULTPENDED_Field_1)
     with Size => 1;
   for SHCSR_USGFAULTPENDED_Field use
     (SHCSR_USGFAULTPENDED_Field_0 => 0,
      SHCSR_USGFAULTPENDED_Field_1 => 1);

   --  MemManage exception pending bit
   type SHCSR_MEMFAULTPENDED_Field is
     (
      --  exception is not pending
      SHCSR_MEMFAULTPENDED_Field_0,
      --  exception is pending
      SHCSR_MEMFAULTPENDED_Field_1)
     with Size => 1;
   for SHCSR_MEMFAULTPENDED_Field use
     (SHCSR_MEMFAULTPENDED_Field_0 => 0,
      SHCSR_MEMFAULTPENDED_Field_1 => 1);

   --  BusFault exception pending bit
   type SHCSR_BUSFAULTPENDED_Field is
     (
      --  exception is not pending
      SHCSR_BUSFAULTPENDED_Field_0,
      --  exception is pending
      SHCSR_BUSFAULTPENDED_Field_1)
     with Size => 1;
   for SHCSR_BUSFAULTPENDED_Field use
     (SHCSR_BUSFAULTPENDED_Field_0 => 0,
      SHCSR_BUSFAULTPENDED_Field_1 => 1);

   --  SVCall pending bit
   type SHCSR_SVCALLPENDED_Field is
     (
      --  exception is not pending
      SHCSR_SVCALLPENDED_Field_0,
      --  exception is pending
      SHCSR_SVCALLPENDED_Field_1)
     with Size => 1;
   for SHCSR_SVCALLPENDED_Field use
     (SHCSR_SVCALLPENDED_Field_0 => 0,
      SHCSR_SVCALLPENDED_Field_1 => 1);

   --  MemManage enable bit
   type SHCSR_MEMFAULTENA_Field is
     (
      --  disable the exception
      SHCSR_MEMFAULTENA_Field_0,
      --  enable the exception
      SHCSR_MEMFAULTENA_Field_1)
     with Size => 1;
   for SHCSR_MEMFAULTENA_Field use
     (SHCSR_MEMFAULTENA_Field_0 => 0,
      SHCSR_MEMFAULTENA_Field_1 => 1);

   --  BusFault enable bit
   type SHCSR_BUSFAULTENA_Field is
     (
      --  disable the exception
      SHCSR_BUSFAULTENA_Field_0,
      --  enable the exception
      SHCSR_BUSFAULTENA_Field_1)
     with Size => 1;
   for SHCSR_BUSFAULTENA_Field use
     (SHCSR_BUSFAULTENA_Field_0 => 0,
      SHCSR_BUSFAULTENA_Field_1 => 1);

   --  UsageFault enable bit
   type SHCSR_USGFAULTENA_Field is
     (
      --  disable the exception
      SHCSR_USGFAULTENA_Field_0,
      --  enable the exception
      SHCSR_USGFAULTENA_Field_1)
     with Size => 1;
   for SHCSR_USGFAULTENA_Field use
     (SHCSR_USGFAULTENA_Field_0 => 0,
      SHCSR_USGFAULTENA_Field_1 => 1);

   --  System Handler Control and State Register
   type SCB_SHCSR_Register is record
      --  MemManage exception active bit
      MEMFAULTACT    : SHCSR_MEMFAULTACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_MEMFAULTACT_Field_0;
      --  BusFault exception active bit
      BUSFAULTACT    : SHCSR_BUSFAULTACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_BUSFAULTACT_Field_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  UsageFault exception active bit
      USGFAULTACT    : SHCSR_USGFAULTACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_USGFAULTACT_Field_0;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  SVCall active bit
      SVCALLACT      : SHCSR_SVCALLACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_SVCALLACT_Field_0;
      --  Debug monitor active bit
      MONITORACT     : SHCSR_MONITORACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_MONITORACT_Field_0;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  PendSV exception active bit
      PENDSVACT      : SHCSR_PENDSVACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_PENDSVACT_Field_0;
      --  SysTick exception active bit
      SYSTICKACT     : SHCSR_SYSTICKACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_SYSTICKACT_Field_0;
      --  UsageFault exception pending bit
      USGFAULTPENDED : SHCSR_USGFAULTPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_USGFAULTPENDED_Field_0;
      --  MemManage exception pending bit
      MEMFAULTPENDED : SHCSR_MEMFAULTPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_MEMFAULTPENDED_Field_0;
      --  BusFault exception pending bit
      BUSFAULTPENDED : SHCSR_BUSFAULTPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_BUSFAULTPENDED_Field_0;
      --  SVCall pending bit
      SVCALLPENDED   : SHCSR_SVCALLPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_SVCALLPENDED_Field_0;
      --  MemManage enable bit
      MEMFAULTENA    : SHCSR_MEMFAULTENA_Field :=
                        NRF_SVD.SystemControl.SHCSR_MEMFAULTENA_Field_0;
      --  BusFault enable bit
      BUSFAULTENA    : SHCSR_BUSFAULTENA_Field :=
                        NRF_SVD.SystemControl.SHCSR_BUSFAULTENA_Field_0;
      --  UsageFault enable bit
      USGFAULTENA    : SHCSR_USGFAULTENA_Field :=
                        NRF_SVD.SystemControl.SHCSR_USGFAULTENA_Field_0;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHCSR_Register use record
      MEMFAULTACT    at 0 range 0 .. 0;
      BUSFAULTACT    at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      USGFAULTACT    at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      SVCALLACT      at 0 range 7 .. 7;
      MONITORACT     at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PENDSVACT      at 0 range 10 .. 10;
      SYSTICKACT     at 0 range 11 .. 11;
      USGFAULTPENDED at 0 range 12 .. 12;
      MEMFAULTPENDED at 0 range 13 .. 13;
      BUSFAULTPENDED at 0 range 14 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      MEMFAULTENA    at 0 range 16 .. 16;
      BUSFAULTENA    at 0 range 17 .. 17;
      USGFAULTENA    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Instruction access violation flag
   type CFSR_IACCVIOL_Field is
     (
      --  no instruction access violation fault
      CFSR_IACCVIOL_Field_0,
      --  the processor attempted an instruction fetch from a location that
      --  does not permit execution
      CFSR_IACCVIOL_Field_1)
     with Size => 1;
   for CFSR_IACCVIOL_Field use
     (CFSR_IACCVIOL_Field_0 => 0,
      CFSR_IACCVIOL_Field_1 => 1);

   --  Data access violation flag
   type CFSR_DACCVIOL_Field is
     (
      --  no data access violation fault
      CFSR_DACCVIOL_Field_0,
      --  the processor attempted a load or store at a location that does not
      --  permit the operation
      CFSR_DACCVIOL_Field_1)
     with Size => 1;
   for CFSR_DACCVIOL_Field use
     (CFSR_DACCVIOL_Field_0 => 0,
      CFSR_DACCVIOL_Field_1 => 1);

   --  MemManage fault on unstacking for a return from exception
   type CFSR_MUNSTKERR_Field is
     (
      --  no unstacking fault
      CFSR_MUNSTKERR_Field_0,
      --  unstack for an exception return has caused one or more access
      --  violations
      CFSR_MUNSTKERR_Field_1)
     with Size => 1;
   for CFSR_MUNSTKERR_Field use
     (CFSR_MUNSTKERR_Field_0 => 0,
      CFSR_MUNSTKERR_Field_1 => 1);

   --  MemManage fault on stacking for exception entry
   type CFSR_MSTKERR_Field is
     (
      --  no stacking fault
      CFSR_MSTKERR_Field_0,
      --  stacking for an exception entry has caused one or more access
      --  violations
      CFSR_MSTKERR_Field_1)
     with Size => 1;
   for CFSR_MSTKERR_Field use
     (CFSR_MSTKERR_Field_0 => 0,
      CFSR_MSTKERR_Field_1 => 1);

   --  MemManage fault occurred during floating-point lazy state preservation
   type CFSR_MLSPERR_Field is
     (
      --  No MemManage fault occurred during floating-point lazy state
      --  preservation
      CFSR_MLSPERR_Field_0,
      --  A MemManage fault occurred during floating-point lazy state
      --  preservation
      CFSR_MLSPERR_Field_1)
     with Size => 1;
   for CFSR_MLSPERR_Field use
     (CFSR_MLSPERR_Field_0 => 0,
      CFSR_MLSPERR_Field_1 => 1);

   --  MemManage Fault Address Register (MMFAR) valid flag
   type CFSR_MMARVALID_Field is
     (
      --  value in MMAR is not a valid fault address
      CFSR_MMARVALID_Field_0,
      --  MMAR holds a valid fault address
      CFSR_MMARVALID_Field_1)
     with Size => 1;
   for CFSR_MMARVALID_Field use
     (CFSR_MMARVALID_Field_0 => 0,
      CFSR_MMARVALID_Field_1 => 1);

   --  Instruction bus error
   type CFSR_IBUSERR_Field is
     (
      --  no instruction bus error
      CFSR_IBUSERR_Field_0,
      --  instruction bus error
      CFSR_IBUSERR_Field_1)
     with Size => 1;
   for CFSR_IBUSERR_Field use
     (CFSR_IBUSERR_Field_0 => 0,
      CFSR_IBUSERR_Field_1 => 1);

   --  Precise data bus error
   type CFSR_PRECISERR_Field is
     (
      --  no precise data bus error
      CFSR_PRECISERR_Field_0,
      --  a data bus error has occurred, and the PC value stacked for the
      --  exception return points to the instruction that caused the fault
      CFSR_PRECISERR_Field_1)
     with Size => 1;
   for CFSR_PRECISERR_Field use
     (CFSR_PRECISERR_Field_0 => 0,
      CFSR_PRECISERR_Field_1 => 1);

   --  Imprecise data bus error
   type CFSR_IMPRECISERR_Field is
     (
      --  no imprecise data bus error
      CFSR_IMPRECISERR_Field_0,
      --  a data bus error has occurred, but the return address in the stack
      --  frame is not related to the instruction that caused the error
      CFSR_IMPRECISERR_Field_1)
     with Size => 1;
   for CFSR_IMPRECISERR_Field use
     (CFSR_IMPRECISERR_Field_0 => 0,
      CFSR_IMPRECISERR_Field_1 => 1);

   --  BusFault on unstacking for a return from exception
   type CFSR_UNSTKERR_Field is
     (
      --  no unstacking fault
      CFSR_UNSTKERR_Field_0,
      --  unstack for an exception return has caused one or more BusFaults
      CFSR_UNSTKERR_Field_1)
     with Size => 1;
   for CFSR_UNSTKERR_Field use
     (CFSR_UNSTKERR_Field_0 => 0,
      CFSR_UNSTKERR_Field_1 => 1);

   --  BusFault on stacking for exception entry
   type CFSR_STKERR_Field is
     (
      --  no stacking fault
      CFSR_STKERR_Field_0,
      --  stacking for an exception entry has caused one or more BusFaults
      CFSR_STKERR_Field_1)
     with Size => 1;
   for CFSR_STKERR_Field use
     (CFSR_STKERR_Field_0 => 0,
      CFSR_STKERR_Field_1 => 1);

   --  Bus fault occurred during floating-point lazy state preservation
   type CFSR_LSPERR_Field is
     (
      --  No bus fault occurred during floating-point lazy state preservation
      CFSR_LSPERR_Field_0,
      --  A bus fault occurred during floating-point lazy state preservation
      CFSR_LSPERR_Field_1)
     with Size => 1;
   for CFSR_LSPERR_Field use
     (CFSR_LSPERR_Field_0 => 0,
      CFSR_LSPERR_Field_1 => 1);

   --  BusFault Address Register (BFAR) valid flag
   type CFSR_BFARVALID_Field is
     (
      --  value in BFAR is not a valid fault address
      CFSR_BFARVALID_Field_0,
      --  BFAR holds a valid fault address
      CFSR_BFARVALID_Field_1)
     with Size => 1;
   for CFSR_BFARVALID_Field use
     (CFSR_BFARVALID_Field_0 => 0,
      CFSR_BFARVALID_Field_1 => 1);

   --  Undefined instruction UsageFault
   type CFSR_UNDEFINSTR_Field is
     (
      --  no undefined instruction UsageFault
      CFSR_UNDEFINSTR_Field_0,
      --  the processor has attempted to execute an undefined instruction
      CFSR_UNDEFINSTR_Field_1)
     with Size => 1;
   for CFSR_UNDEFINSTR_Field use
     (CFSR_UNDEFINSTR_Field_0 => 0,
      CFSR_UNDEFINSTR_Field_1 => 1);

   --  Invalid state UsageFault
   type CFSR_INVSTATE_Field is
     (
      --  no invalid state UsageFault
      CFSR_INVSTATE_Field_0,
      --  the processor has attempted to execute an instruction that makes
      --  illegal use of the EPSR
      CFSR_INVSTATE_Field_1)
     with Size => 1;
   for CFSR_INVSTATE_Field use
     (CFSR_INVSTATE_Field_0 => 0,
      CFSR_INVSTATE_Field_1 => 1);

   --  Invalid PC load UsageFault, caused by an invalid PC load by EXC_RETURN
   type CFSR_INVPC_Field is
     (
      --  no invalid PC load UsageFault
      CFSR_INVPC_Field_0,
      --  the processor has attempted an illegal load of EXC_RETURN to the PC
      CFSR_INVPC_Field_1)
     with Size => 1;
   for CFSR_INVPC_Field use
     (CFSR_INVPC_Field_0 => 0,
      CFSR_INVPC_Field_1 => 1);

   --  No coprocessor UsageFault
   type CFSR_NOCP_Field is
     (
      --  no UsageFault caused by attempting to access a coprocessor
      CFSR_NOCP_Field_0,
      --  the processor has attempted to access a coprocessor
      CFSR_NOCP_Field_1)
     with Size => 1;
   for CFSR_NOCP_Field use
     (CFSR_NOCP_Field_0 => 0,
      CFSR_NOCP_Field_1 => 1);

   --  Unaligned access UsageFault
   type CFSR_UNALIGNED_Field is
     (
      --  no unaligned access fault, or unaligned access trapping not enabled
      CFSR_UNALIGNED_Field_0,
      --  the processor has made an unaligned memory access
      CFSR_UNALIGNED_Field_1)
     with Size => 1;
   for CFSR_UNALIGNED_Field use
     (CFSR_UNALIGNED_Field_0 => 0,
      CFSR_UNALIGNED_Field_1 => 1);

   --  Divide by zero UsageFault
   type CFSR_DIVBYZERO_Field is
     (
      --  no divide by zero fault, or divide by zero trapping not enabled
      CFSR_DIVBYZERO_Field_0,
      --  the processor has executed an SDIV or UDIV instruction with a divisor
      --  of 0
      CFSR_DIVBYZERO_Field_1)
     with Size => 1;
   for CFSR_DIVBYZERO_Field use
     (CFSR_DIVBYZERO_Field_0 => 0,
      CFSR_DIVBYZERO_Field_1 => 1);

   --  Configurable Fault Status Register
   type SCB_CFSR_Register is record
      --  Instruction access violation flag
      IACCVIOL       : CFSR_IACCVIOL_Field :=
                        NRF_SVD.SystemControl.CFSR_IACCVIOL_Field_0;
      --  Data access violation flag
      DACCVIOL       : CFSR_DACCVIOL_Field :=
                        NRF_SVD.SystemControl.CFSR_DACCVIOL_Field_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  MemManage fault on unstacking for a return from exception
      MUNSTKERR      : CFSR_MUNSTKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_MUNSTKERR_Field_0;
      --  MemManage fault on stacking for exception entry
      MSTKERR        : CFSR_MSTKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_MSTKERR_Field_0;
      --  MemManage fault occurred during floating-point lazy state
      --  preservation
      MLSPERR        : CFSR_MLSPERR_Field :=
                        NRF_SVD.SystemControl.CFSR_MLSPERR_Field_0;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  MemManage Fault Address Register (MMFAR) valid flag
      MMARVALID      : CFSR_MMARVALID_Field :=
                        NRF_SVD.SystemControl.CFSR_MMARVALID_Field_0;
      --  Instruction bus error
      IBUSERR        : CFSR_IBUSERR_Field :=
                        NRF_SVD.SystemControl.CFSR_IBUSERR_Field_0;
      --  Precise data bus error
      PRECISERR      : CFSR_PRECISERR_Field :=
                        NRF_SVD.SystemControl.CFSR_PRECISERR_Field_0;
      --  Imprecise data bus error
      IMPRECISERR    : CFSR_IMPRECISERR_Field :=
                        NRF_SVD.SystemControl.CFSR_IMPRECISERR_Field_0;
      --  BusFault on unstacking for a return from exception
      UNSTKERR       : CFSR_UNSTKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_UNSTKERR_Field_0;
      --  BusFault on stacking for exception entry
      STKERR         : CFSR_STKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_STKERR_Field_0;
      --  Bus fault occurred during floating-point lazy state preservation
      LSPERR         : CFSR_LSPERR_Field :=
                        NRF_SVD.SystemControl.CFSR_LSPERR_Field_0;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  BusFault Address Register (BFAR) valid flag
      BFARVALID      : CFSR_BFARVALID_Field :=
                        NRF_SVD.SystemControl.CFSR_BFARVALID_Field_0;
      --  Undefined instruction UsageFault
      UNDEFINSTR     : CFSR_UNDEFINSTR_Field :=
                        NRF_SVD.SystemControl.CFSR_UNDEFINSTR_Field_0;
      --  Invalid state UsageFault
      INVSTATE       : CFSR_INVSTATE_Field :=
                        NRF_SVD.SystemControl.CFSR_INVSTATE_Field_0;
      --  Invalid PC load UsageFault, caused by an invalid PC load by
      --  EXC_RETURN
      INVPC          : CFSR_INVPC_Field :=
                        NRF_SVD.SystemControl.CFSR_INVPC_Field_0;
      --  No coprocessor UsageFault
      NOCP           : CFSR_NOCP_Field :=
                        NRF_SVD.SystemControl.CFSR_NOCP_Field_0;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Unaligned access UsageFault
      UNALIGNED      : CFSR_UNALIGNED_Field :=
                        NRF_SVD.SystemControl.CFSR_UNALIGNED_Field_0;
      --  Divide by zero UsageFault
      DIVBYZERO      : CFSR_DIVBYZERO_Field :=
                        NRF_SVD.SystemControl.CFSR_DIVBYZERO_Field_0;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CFSR_Register use record
      IACCVIOL       at 0 range 0 .. 0;
      DACCVIOL       at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      MUNSTKERR      at 0 range 3 .. 3;
      MSTKERR        at 0 range 4 .. 4;
      MLSPERR        at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MMARVALID      at 0 range 7 .. 7;
      IBUSERR        at 0 range 8 .. 8;
      PRECISERR      at 0 range 9 .. 9;
      IMPRECISERR    at 0 range 10 .. 10;
      UNSTKERR       at 0 range 11 .. 11;
      STKERR         at 0 range 12 .. 12;
      LSPERR         at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BFARVALID      at 0 range 15 .. 15;
      UNDEFINSTR     at 0 range 16 .. 16;
      INVSTATE       at 0 range 17 .. 17;
      INVPC          at 0 range 18 .. 18;
      NOCP           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      UNALIGNED      at 0 range 24 .. 24;
      DIVBYZERO      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Indicates a BusFault on a vector table read during exception processing.
   type HFSR_VECTTBL_Field is
     (
      --  no BusFault on vector table read
      HFSR_VECTTBL_Field_0,
      --  BusFault on vector table read
      HFSR_VECTTBL_Field_1)
     with Size => 1;
   for HFSR_VECTTBL_Field use
     (HFSR_VECTTBL_Field_0 => 0,
      HFSR_VECTTBL_Field_1 => 1);

   --  Indicates a forced hard fault, generated by escalation of a fault with
   --  configurable priority that cannot be handles, either because of priority
   --  or because it is disabled.
   type HFSR_FORCED_Field is
     (
      --  no forced HardFault
      HFSR_FORCED_Field_0,
      --  forced HardFault
      HFSR_FORCED_Field_1)
     with Size => 1;
   for HFSR_FORCED_Field use
     (HFSR_FORCED_Field_0 => 0,
      HFSR_FORCED_Field_1 => 1);

   --  Reserved for Debug use. When writing to the register you must write 0 to
   --  this bit, otherwise behavior is Unpredictable.
   type HFSR_DEBUGEVT_Field is
     (
      --  No Debug event has occurred.
      HFSR_DEBUGEVT_Field_0,
      --  Debug event has occurred. The Debug Fault Status Register has been
      --  updated.
      HFSR_DEBUGEVT_Field_1)
     with Size => 1;
   for HFSR_DEBUGEVT_Field use
     (HFSR_DEBUGEVT_Field_0 => 0,
      HFSR_DEBUGEVT_Field_1 => 1);

   --  HardFault Status register
   type SCB_HFSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Indicates a BusFault on a vector table read during exception
      --  processing.
      VECTTBL       : HFSR_VECTTBL_Field :=
                       NRF_SVD.SystemControl.HFSR_VECTTBL_Field_0;
      --  unspecified
      Reserved_2_29 : HAL.UInt28 := 16#0#;
      --  Indicates a forced hard fault, generated by escalation of a fault
      --  with configurable priority that cannot be handles, either because of
      --  priority or because it is disabled.
      FORCED        : HFSR_FORCED_Field :=
                       NRF_SVD.SystemControl.HFSR_FORCED_Field_0;
      --  Reserved for Debug use. When writing to the register you must write 0
      --  to this bit, otherwise behavior is Unpredictable.
      DEBUGEVT      : HFSR_DEBUGEVT_Field :=
                       NRF_SVD.SystemControl.HFSR_DEBUGEVT_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_HFSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTTBL       at 0 range 1 .. 1;
      Reserved_2_29 at 0 range 2 .. 29;
      FORCED        at 0 range 30 .. 30;
      DEBUGEVT      at 0 range 31 .. 31;
   end record;

   --  Indicates a debug event generated by either a C_HALT or C_STEP request,
   --  triggered by a write to the DHCSR or a step request triggered by setting
   --  DEMCR.MON_STEP to 1.
   type DFSR_HALTED_Field is
     (
      --  No active halt request debug event
      DFSR_HALTED_Field_0,
      --  Halt request debug event active
      DFSR_HALTED_Field_1)
     with Size => 1;
   for DFSR_HALTED_Field use
     (DFSR_HALTED_Field_0 => 0,
      DFSR_HALTED_Field_1 => 1);

   --  Debug event generated by BKPT instruction execution or a breakpoint
   --  match in FPB
   type DFSR_BKPT_Field is
     (
      --  No current breakpoint debug event
      DFSR_BKPT_Field_0,
      --  At least one current breakpoint debug event
      DFSR_BKPT_Field_1)
     with Size => 1;
   for DFSR_BKPT_Field use
     (DFSR_BKPT_Field_0 => 0,
      DFSR_BKPT_Field_1 => 1);

   --  Debug event generated by the DWT
   type DFSR_DWTTRAP_Field is
     (
      --  No current debug events generated by the DWT
      DFSR_DWTTRAP_Field_0,
      --  At least one current debug event generated by the DWT
      DFSR_DWTTRAP_Field_1)
     with Size => 1;
   for DFSR_DWTTRAP_Field use
     (DFSR_DWTTRAP_Field_0 => 0,
      DFSR_DWTTRAP_Field_1 => 1);

   --  Indicates triggering of a Vector catch
   type DFSR_VCATCH_Field is
     (
      --  No Vector catch triggered
      DFSR_VCATCH_Field_0,
      --  Vector catch triggered
      DFSR_VCATCH_Field_1)
     with Size => 1;
   for DFSR_VCATCH_Field use
     (DFSR_VCATCH_Field_0 => 0,
      DFSR_VCATCH_Field_1 => 1);

   --  Debug event generated because of the assertion of an external debug
   --  request
   type DFSR_EXTERNAL_Field is
     (
      --  No external debug request debug event
      DFSR_EXTERNAL_Field_0,
      --  External debug request debug event
      DFSR_EXTERNAL_Field_1)
     with Size => 1;
   for DFSR_EXTERNAL_Field use
     (DFSR_EXTERNAL_Field_0 => 0,
      DFSR_EXTERNAL_Field_1 => 1);

   --  Debug Fault Status Register
   type SCB_DFSR_Register is record
      --  Indicates a debug event generated by either a C_HALT or C_STEP
      --  request, triggered by a write to the DHCSR or a step request
      --  triggered by setting DEMCR.MON_STEP to 1.
      HALTED        : DFSR_HALTED_Field :=
                       NRF_SVD.SystemControl.DFSR_HALTED_Field_0;
      --  Debug event generated by BKPT instruction execution or a breakpoint
      --  match in FPB
      BKPT          : DFSR_BKPT_Field :=
                       NRF_SVD.SystemControl.DFSR_BKPT_Field_0;
      --  Debug event generated by the DWT
      DWTTRAP       : DFSR_DWTTRAP_Field :=
                       NRF_SVD.SystemControl.DFSR_DWTTRAP_Field_0;
      --  Indicates triggering of a Vector catch
      VCATCH        : DFSR_VCATCH_Field :=
                       NRF_SVD.SystemControl.DFSR_VCATCH_Field_0;
      --  Debug event generated because of the assertion of an external debug
      --  request
      EXTERNAL      : DFSR_EXTERNAL_Field :=
                       NRF_SVD.SystemControl.DFSR_EXTERNAL_Field_0;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_DFSR_Register use record
      HALTED        at 0 range 0 .. 0;
      BKPT          at 0 range 1 .. 1;
      DWTTRAP       at 0 range 2 .. 2;
      VCATCH        at 0 range 3 .. 3;
      EXTERNAL      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  ARM instruction set support
   type ID_PFR0_STATE0_Field is
     (
      --  ARMv7-M unused
      ID_PFR0_STATE0_Field_0,
      --  ARMv7-M unused
      ID_PFR0_STATE0_Field_1,
      --  ARMv7-M unused
      ID_PFR0_STATE0_Field_10,
      --  Support for Thumb encoding including Thumb-2 technology, with all
      --  basic 16-bit and 32-bit instructions.
      ID_PFR0_STATE0_Field_11)
     with Size => 4;
   for ID_PFR0_STATE0_Field use
     (ID_PFR0_STATE0_Field_0 => 0,
      ID_PFR0_STATE0_Field_1 => 1,
      ID_PFR0_STATE0_Field_10 => 2,
      ID_PFR0_STATE0_Field_11 => 3);

   --  Thumb instruction set support
   type ID_PFR0_STATE1_Field is
     (
      --  The processor does not support the ARM instruction set.
      ID_PFR0_STATE1_Field_0,
      --  ARMv7-M unused
      ID_PFR0_STATE1_Field_1)
     with Size => 4;
   for ID_PFR0_STATE1_Field use
     (ID_PFR0_STATE1_Field_0 => 0,
      ID_PFR0_STATE1_Field_1 => 1);

   --  SCB_ID_PFR0_STATE array element
   subtype SCB_ID_PFR0_STATE_Element is HAL.UInt4;

   --  SCB_ID_PFR0_STATE array
   type SCB_ID_PFR0_STATE_Field_Array is array (2 .. 3)
     of SCB_ID_PFR0_STATE_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for SCB_ID_PFR0_STATE
   type SCB_ID_PFR0_STATE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STATE as a value
            Val : HAL.UInt8;
         when True =>
            --  STATE as an array
            Arr : SCB_ID_PFR0_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SCB_ID_PFR0_STATE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Processor Feature Register 0
   type SCB_ID_PFR0_Register is record
      --  Read-only. ARM instruction set support
      STATE0         : ID_PFR0_STATE0_Field;
      --  Read-only. Thumb instruction set support
      STATE1         : ID_PFR0_STATE1_Field;
      --  Read-only. ARMv7-M unused
      STATE          : SCB_ID_PFR0_STATE_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_PFR0_Register use record
      STATE0         at 0 range 0 .. 3;
      STATE1         at 0 range 4 .. 7;
      STATE          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  M profile programmers' model
   type ID_PFR1_PROGMODEL_Field is
     (
      --  ARMv7-M unused
      ID_PFR1_PROGMODEL_Field_0,
      --  Two-stack programmers' model supported
      ID_PFR1_PROGMODEL_Field_10)
     with Size => 4;
   for ID_PFR1_PROGMODEL_Field use
     (ID_PFR1_PROGMODEL_Field_0 => 0,
      ID_PFR1_PROGMODEL_Field_10 => 2);

   --  Processor Feature Register 1
   type SCB_ID_PFR1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. M profile programmers' model
      PROGMODEL      : ID_PFR1_PROGMODEL_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_PFR1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PROGMODEL      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Support for memory-mapped debug model for M profile processors
   type ID_DFR0_DEBUGMODEL_Field is
     (
      --  Not supported
      ID_DFR0_DEBUGMODEL_Field_0,
      --  Support for M profile Debug architecture, with memory-mapped access.
      ID_DFR0_DEBUGMODEL_Field_1)
     with Size => 4;
   for ID_DFR0_DEBUGMODEL_Field use
     (ID_DFR0_DEBUGMODEL_Field_0 => 0,
      ID_DFR0_DEBUGMODEL_Field_1 => 1);

   --  Debug Feature Register
   type SCB_ID_DFR0_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20;
      --  Read-only. Support for memory-mapped debug model for M profile
      --  processors
      DEBUGMODEL     : ID_DFR0_DEBUGMODEL_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_DFR0_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      DEBUGMODEL     at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  SCB_ID_AFR0_IMPLEMENTATION_DEFINED array element
   subtype SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Element is HAL.UInt4;

   --  SCB_ID_AFR0_IMPLEMENTATION_DEFINED array
   type SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Field_Array is array (0 .. 3)
     of SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for SCB_ID_AFR0_IMPLEMENTATION_DEFINED
   type SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IMPLEMENTATION_DEFINED as a value
            Val : HAL.UInt16;
         when True =>
            --  IMPLEMENTATION_DEFINED as an array
            Arr : SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Auxiliary Feature Register
   type SCB_ID_AFR0_Register is record
      --  Read-only. Gives information about the IMPLEMENTATION DEFINED
      --  features of a processor implementation.
      IMPLEMENTATION_DEFINED : SCB_ID_AFR0_IMPLEMENTATION_DEFINED_Field;
      --  unspecified
      Reserved_16_31         : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_AFR0_Register use record
      IMPLEMENTATION_DEFINED at 0 range 0 .. 15;
      Reserved_16_31         at 0 range 16 .. 31;
   end record;

   --  Indicates support for a PMSA
   type ID_MMFR0_PMSASUPPORT_Field is
     (
      --  Not supported
      ID_MMFR0_PMSASUPPORT_Field_0,
      --  ARMv7-M unused
      ID_MMFR0_PMSASUPPORT_Field_1,
      --  ARMv7-M unused
      ID_MMFR0_PMSASUPPORT_Field_10,
      --  PMSAv7, providing support for a base region and subregions.
      ID_MMFR0_PMSASUPPORT_Field_11)
     with Size => 4;
   for ID_MMFR0_PMSASUPPORT_Field use
     (ID_MMFR0_PMSASUPPORT_Field_0 => 0,
      ID_MMFR0_PMSASUPPORT_Field_1 => 1,
      ID_MMFR0_PMSASUPPORT_Field_10 => 2,
      ID_MMFR0_PMSASUPPORT_Field_11 => 3);

   --  Indicates the outermost shareability domain implemented
   type ID_MMFR0_OUTERMOST_SHAREABILITY_Field is
     (
      --  Implemented as Non-cacheable
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_0,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_10,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_11,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_100,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_101,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_110,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_111,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1000,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1001,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1010,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1011,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1100,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1101,
      --  ARMv7-M unused
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1110,
      --  Shareability ignored.
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1111)
     with Size => 4;
   for ID_MMFR0_OUTERMOST_SHAREABILITY_Field use
     (ID_MMFR0_OUTERMOST_SHAREABILITY_Field_0 => 0,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1 => 1,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_10 => 2,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_11 => 3,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_100 => 4,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_101 => 5,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_110 => 6,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_111 => 7,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1000 => 8,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1001 => 9,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1010 => 10,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1011 => 11,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1100 => 12,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1101 => 13,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1110 => 14,
      ID_MMFR0_OUTERMOST_SHAREABILITY_Field_1111 => 15);

   --  Indicates the number of shareability levels implemented
   type ID_MMFR0_SHAREABILITY_LEVELS_Field is
     (
      --  One level of shareability implemented
      ID_MMFR0_SHAREABILITY_LEVELS_Field_0,
      --  ARMv7-M unused
      ID_MMFR0_SHAREABILITY_LEVELS_Field_1)
     with Size => 4;
   for ID_MMFR0_SHAREABILITY_LEVELS_Field use
     (ID_MMFR0_SHAREABILITY_LEVELS_Field_0 => 0,
      ID_MMFR0_SHAREABILITY_LEVELS_Field_1 => 1);

   --  Indicates the support for Tightly Coupled Memory
   type ID_MMFR0_TCM_SUPPORT_Field is
     (
      --  No tightly coupled memories implemented.
      ID_MMFR0_TCM_SUPPORT_Field_0,
      --  Tightly coupled memories implemented with IMPLEMENTATION DEFINED
      --  control.
      ID_MMFR0_TCM_SUPPORT_Field_1,
      --  ARMv7-M unused
      ID_MMFR0_TCM_SUPPORT_Field_10)
     with Size => 4;
   for ID_MMFR0_TCM_SUPPORT_Field use
     (ID_MMFR0_TCM_SUPPORT_Field_0 => 0,
      ID_MMFR0_TCM_SUPPORT_Field_1 => 1,
      ID_MMFR0_TCM_SUPPORT_Field_10 => 2);

   --  Indicates the support for Auxiliary registers
   type ID_MMFR0_AUXILIARY_REGISTERS_Field is
     (
      --  Not supported
      ID_MMFR0_AUXILIARY_REGISTERS_Field_0,
      --  Support for Auxiliary Control Register only.
      ID_MMFR0_AUXILIARY_REGISTERS_Field_1,
      --  ARMv7-M unused
      ID_MMFR0_AUXILIARY_REGISTERS_Field_10)
     with Size => 4;
   for ID_MMFR0_AUXILIARY_REGISTERS_Field use
     (ID_MMFR0_AUXILIARY_REGISTERS_Field_0 => 0,
      ID_MMFR0_AUXILIARY_REGISTERS_Field_1 => 1,
      ID_MMFR0_AUXILIARY_REGISTERS_Field_10 => 2);

   --  Memory Model Feature Register 0
   type SCB_ID_MMFR0_Register is record
      --  unspecified
      Reserved_0_3           : HAL.UInt4;
      --  Read-only. Indicates support for a PMSA
      PMSASUPPORT            : ID_MMFR0_PMSASUPPORT_Field;
      --  Read-only. Indicates the outermost shareability domain implemented
      OUTERMOST_SHAREABILITY : ID_MMFR0_OUTERMOST_SHAREABILITY_Field;
      --  Read-only. Indicates the number of shareability levels implemented
      SHAREABILITY_LEVELS    : ID_MMFR0_SHAREABILITY_LEVELS_Field;
      --  Read-only. Indicates the support for Tightly Coupled Memory
      TCM_SUPPORT            : ID_MMFR0_TCM_SUPPORT_Field;
      --  Read-only. Indicates the support for Auxiliary registers
      AUXILIARY_REGISTERS    : ID_MMFR0_AUXILIARY_REGISTERS_Field;
      --  unspecified
      Reserved_24_31         : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_MMFR0_Register use record
      Reserved_0_3           at 0 range 0 .. 3;
      PMSASUPPORT            at 0 range 4 .. 7;
      OUTERMOST_SHAREABILITY at 0 range 8 .. 11;
      SHAREABILITY_LEVELS    at 0 range 12 .. 15;
      TCM_SUPPORT            at 0 range 16 .. 19;
      AUXILIARY_REGISTERS    at 0 range 20 .. 23;
      Reserved_24_31         at 0 range 24 .. 31;
   end record;

   --  Indicates the support for Wait For Interrupt (WFI) stalling
   type ID_MMFR2_WFI_STALL_Field is
     (
      --  Not supported
      ID_MMFR2_WFI_STALL_Field_0,
      --  Support for WFI stalling
      ID_MMFR2_WFI_STALL_Field_1)
     with Size => 4;
   for ID_MMFR2_WFI_STALL_Field use
     (ID_MMFR2_WFI_STALL_Field_0 => 0,
      ID_MMFR2_WFI_STALL_Field_1 => 1);

   --  Memory Model Feature Register 2
   type SCB_ID_MMFR2_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24;
      --  Read-only. Indicates the support for Wait For Interrupt (WFI)
      --  stalling
      WFI_STALL      : ID_MMFR2_WFI_STALL_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_MMFR2_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      WFI_STALL      at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Indicates the supported Bit Counting instructions
   type ID_ISAR0_BITCOUNT_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR0_BITCOUNT_INSTRS_Field_0,
      --  Adds support for the CLZ instruction
      ID_ISAR0_BITCOUNT_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR0_BITCOUNT_INSTRS_Field use
     (ID_ISAR0_BITCOUNT_INSTRS_Field_0 => 0,
      ID_ISAR0_BITCOUNT_INSTRS_Field_1 => 1);

   --  Indicates the supported BitField instructions
   type ID_ISAR0_BITFIELD_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR0_BITFIELD_INSTRS_Field_0,
      --  Adds support for the BFC, BFI, SBFX, and UBFX instructions
      ID_ISAR0_BITFIELD_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR0_BITFIELD_INSTRS_Field use
     (ID_ISAR0_BITFIELD_INSTRS_Field_0 => 0,
      ID_ISAR0_BITFIELD_INSTRS_Field_1 => 1);

   --  Indicates the supported combined Compare and Branch instructions
   type ID_ISAR0_CMPBRANCH_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR0_CMPBRANCH_INSTRS_Field_0,
      --  Adds support for the CBNZ and CBZ instructions
      ID_ISAR0_CMPBRANCH_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR0_CMPBRANCH_INSTRS_Field use
     (ID_ISAR0_CMPBRANCH_INSTRS_Field_0 => 0,
      ID_ISAR0_CMPBRANCH_INSTRS_Field_1 => 1);

   --  Indicates the supported Coprocessor instructions
   type ID_ISAR0_COPROC_INSTRS_Field is
     (
      --  None supported, except for separately attributed architectures, for
      --  example the Floating-point extension
      ID_ISAR0_COPROC_INSTRS_Field_000,
      --  Adds support for generic CDP, LDC, MCR, MRC, and STC instructions
      ID_ISAR0_COPROC_INSTRS_Field_001,
      --  As for 1, and adds support for generic CDP2, LDC2, MCR2, MRC2, and
      --  STC2 instructions
      ID_ISAR0_COPROC_INSTRS_Field_010,
      --  As for 2, and adds support for generic MCRR and MRRC instructions
      ID_ISAR0_COPROC_INSTRS_Field_011,
      --  As for 3, and adds support for generic MCRR2 and MRRC2 instructions
      ID_ISAR0_COPROC_INSTRS_Field_100)
     with Size => 4;
   for ID_ISAR0_COPROC_INSTRS_Field use
     (ID_ISAR0_COPROC_INSTRS_Field_000 => 0,
      ID_ISAR0_COPROC_INSTRS_Field_001 => 1,
      ID_ISAR0_COPROC_INSTRS_Field_010 => 2,
      ID_ISAR0_COPROC_INSTRS_Field_011 => 3,
      ID_ISAR0_COPROC_INSTRS_Field_100 => 4);

   --  Indicates the supported Debug instructions
   type ID_ISAR0_DEBUG_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR0_DEBUG_INSTRS_Field_0,
      --  Adds support for the BKPT instruction
      ID_ISAR0_DEBUG_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR0_DEBUG_INSTRS_Field use
     (ID_ISAR0_DEBUG_INSTRS_Field_0 => 0,
      ID_ISAR0_DEBUG_INSTRS_Field_1 => 1);

   --  Indicates the supported Divide instructions
   type ID_ISAR0_DIVIDE_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR0_DIVIDE_INSTRS_Field_0,
      --  Adds support for the SDIV and UDIV instructions
      ID_ISAR0_DIVIDE_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR0_DIVIDE_INSTRS_Field use
     (ID_ISAR0_DIVIDE_INSTRS_Field_0 => 0,
      ID_ISAR0_DIVIDE_INSTRS_Field_1 => 1);

   --  Instruction Set Attributes Register 0
   type SCB_ID_ISAR0_Register is record
      --  unspecified
      Reserved_0_3     : HAL.UInt4;
      --  Read-only. Indicates the supported Bit Counting instructions
      BITCOUNT_INSTRS  : ID_ISAR0_BITCOUNT_INSTRS_Field;
      --  Read-only. Indicates the supported BitField instructions
      BITFIELD_INSTRS  : ID_ISAR0_BITFIELD_INSTRS_Field;
      --  Read-only. Indicates the supported combined Compare and Branch
      --  instructions
      CMPBRANCH_INSTRS : ID_ISAR0_CMPBRANCH_INSTRS_Field;
      --  Read-only. Indicates the supported Coprocessor instructions
      COPROC_INSTRS    : ID_ISAR0_COPROC_INSTRS_Field;
      --  Read-only. Indicates the supported Debug instructions
      DEBUG_INSTRS     : ID_ISAR0_DEBUG_INSTRS_Field;
      --  Read-only. Indicates the supported Divide instructions
      DIVIDE_INSTRS    : ID_ISAR0_DIVIDE_INSTRS_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_ISAR0_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      BITCOUNT_INSTRS  at 0 range 4 .. 7;
      BITFIELD_INSTRS  at 0 range 8 .. 11;
      CMPBRANCH_INSTRS at 0 range 12 .. 15;
      COPROC_INSTRS    at 0 range 16 .. 19;
      DEBUG_INSTRS     at 0 range 20 .. 23;
      DIVIDE_INSTRS    at 0 range 24 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  Indicates the supported Extend instructions
   type ID_ISAR1_EXTEND_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR1_EXTEND_INSTRS_Field_00,
      --  Adds support for the SXTB, SXTH, UXTB, and UXTH instructions
      ID_ISAR1_EXTEND_INSTRS_Field_01,
      --  As for 1, and adds support for the SXTAB, SXTAB16, SXTAH, SXTB16,
      --  UXTAB, UXTAB16, UXTAH, and UXTB16 instructions
      ID_ISAR1_EXTEND_INSTRS_Field_10)
     with Size => 4;
   for ID_ISAR1_EXTEND_INSTRS_Field use
     (ID_ISAR1_EXTEND_INSTRS_Field_00 => 0,
      ID_ISAR1_EXTEND_INSTRS_Field_01 => 1,
      ID_ISAR1_EXTEND_INSTRS_Field_10 => 2);

   --  Indicates the supported IfThen instructions
   type ID_ISAR1_IFTHEN_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR1_IFTHEN_INSTRS_Field_0,
      --  Adds support for the IT instructions, and for the IT bits in the PSRs
      ID_ISAR1_IFTHEN_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR1_IFTHEN_INSTRS_Field use
     (ID_ISAR1_IFTHEN_INSTRS_Field_0 => 0,
      ID_ISAR1_IFTHEN_INSTRS_Field_1 => 1);

   --  Indicates the support for data-processing instructions with long
   --  immediate
   type ID_ISAR1_IMMEDIATE_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR1_IMMEDIATE_INSTRS_Field_0,
      --  Adds support for the ADDW, MOVW, MOVT, and SUBW instructions
      ID_ISAR1_IMMEDIATE_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR1_IMMEDIATE_INSTRS_Field use
     (ID_ISAR1_IMMEDIATE_INSTRS_Field_0 => 0,
      ID_ISAR1_IMMEDIATE_INSTRS_Field_1 => 1);

   --  Indicates the supported Interworking instructions
   type ID_ISAR1_INTERWORK_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR1_INTERWORK_INSTRS_Field_00,
      --  Adds support for the BX instruction, and the T bit in the PSR
      ID_ISAR1_INTERWORK_INSTRS_Field_01,
      --  As for 1, and adds support for the BLX instruction, and PC loads have
      --  BX-like behavior
      ID_ISAR1_INTERWORK_INSTRS_Field_10,
      --  ARMv7-M unused
      ID_ISAR1_INTERWORK_INSTRS_Field_11)
     with Size => 4;
   for ID_ISAR1_INTERWORK_INSTRS_Field use
     (ID_ISAR1_INTERWORK_INSTRS_Field_00 => 0,
      ID_ISAR1_INTERWORK_INSTRS_Field_01 => 1,
      ID_ISAR1_INTERWORK_INSTRS_Field_10 => 2,
      ID_ISAR1_INTERWORK_INSTRS_Field_11 => 3);

   --  Instruction Set Attributes Register 1
   type SCB_ID_ISAR1_Register is record
      --  unspecified
      Reserved_0_11    : HAL.UInt12;
      --  Read-only. Indicates the supported Extend instructions
      EXTEND_INSTRS    : ID_ISAR1_EXTEND_INSTRS_Field;
      --  Read-only. Indicates the supported IfThen instructions
      IFTHEN_INSTRS    : ID_ISAR1_IFTHEN_INSTRS_Field;
      --  Read-only. Indicates the support for data-processing instructions
      --  with long immediate
      IMMEDIATE_INSTRS : ID_ISAR1_IMMEDIATE_INSTRS_Field;
      --  Read-only. Indicates the supported Interworking instructions
      INTERWORK_INSTRS : ID_ISAR1_INTERWORK_INSTRS_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_ISAR1_Register use record
      Reserved_0_11    at 0 range 0 .. 11;
      EXTEND_INSTRS    at 0 range 12 .. 15;
      IFTHEN_INSTRS    at 0 range 16 .. 19;
      IMMEDIATE_INSTRS at 0 range 20 .. 23;
      INTERWORK_INSTRS at 0 range 24 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  Indicates the supported additional load and store instructions
   type ID_ISAR2_LOADSTORE_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR2_LOADSTORE_INSTRS_Field_0,
      --  Adds support for the LDRD and STRD instructions
      ID_ISAR2_LOADSTORE_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR2_LOADSTORE_INSTRS_Field use
     (ID_ISAR2_LOADSTORE_INSTRS_Field_0 => 0,
      ID_ISAR2_LOADSTORE_INSTRS_Field_1 => 1);

   --  Indicates the supported Memory Hint instructions
   type ID_ISAR2_MEMHINT_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR2_MEMHINT_INSTRS_Field_00,
      --  Adds support for the PLD instruction, ARMv7-M unused.
      ID_ISAR2_MEMHINT_INSTRS_Field_01,
      --  As for 1, ARMv7-M unused.
      ID_ISAR2_MEMHINT_INSTRS_Field_10,
      --  As for 1 or 2, and adds support for the PLI instruction.
      ID_ISAR2_MEMHINT_INSTRS_Field_11)
     with Size => 4;
   for ID_ISAR2_MEMHINT_INSTRS_Field use
     (ID_ISAR2_MEMHINT_INSTRS_Field_00 => 0,
      ID_ISAR2_MEMHINT_INSTRS_Field_01 => 1,
      ID_ISAR2_MEMHINT_INSTRS_Field_10 => 2,
      ID_ISAR2_MEMHINT_INSTRS_Field_11 => 3);

   --  Indicates the support for multi-access interruptible instructions
   type ID_ISAR2_MULTIACCESSINT_INSTRS_Field is
     (
      --  None supported. This means the LDM and STM instructions are not
      --  interruptible. ARMv7-M unused.
      ID_ISAR2_MULTIACCESSINT_INSTRS_Field_00,
      --  LDM and STM instructions are restartable.
      ID_ISAR2_MULTIACCESSINT_INSTRS_Field_01,
      --  LDM and STM instructions are continuable.
      ID_ISAR2_MULTIACCESSINT_INSTRS_Field_10)
     with Size => 4;
   for ID_ISAR2_MULTIACCESSINT_INSTRS_Field use
     (ID_ISAR2_MULTIACCESSINT_INSTRS_Field_00 => 0,
      ID_ISAR2_MULTIACCESSINT_INSTRS_Field_01 => 1,
      ID_ISAR2_MULTIACCESSINT_INSTRS_Field_10 => 2);

   --  Indicates the supported additional Multiply instructions
   type ID_ISAR2_MULT_INSTRS_Field is
     (
      --  None supported. This means only MUL is supported. ARMv7-M unused.
      ID_ISAR2_MULT_INSTRS_Field_00,
      --  Adds support for the MLA instruction, ARMv7-M unused.
      ID_ISAR2_MULT_INSTRS_Field_01,
      --  As for 1, and adds support for the MLS instruction.
      ID_ISAR2_MULT_INSTRS_Field_10)
     with Size => 4;
   for ID_ISAR2_MULT_INSTRS_Field use
     (ID_ISAR2_MULT_INSTRS_Field_00 => 0,
      ID_ISAR2_MULT_INSTRS_Field_01 => 1,
      ID_ISAR2_MULT_INSTRS_Field_10 => 2);

   --  Indicates the supported advanced signed Multiply instructions
   type ID_ISAR2_MULTS_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR2_MULTS_INSTRS_Field_00,
      --  Adds support for the SMULL and SMLAL instructions
      ID_ISAR2_MULTS_INSTRS_Field_01,
      --  As for 1, and adds support for the SMLABB, SMLABT, SMLALBB, SMLALBT,
      --  SMLALTB, SMLALTT, SMLATB, SMLATT, SMLAWB, SMLAWT, SMULBB, SMULBT,
      --  SMULTB, SMULTT, SMULWB, and SMULWT instructions.
      ID_ISAR2_MULTS_INSTRS_Field_10,
      --  As for 2, and adds support for the SMLAD, SMLADX, SMLALD, SMLALDX,
      --  SMLSD, SMLSDX, SMLSLD, SMLSLDX, SMMLA, SMMLAR, SMMLS, SMMLSR, SMMUL,
      --  SMMULR, SMUAD, SMUADX, SMUSD, and SMUSDX instructions.
      ID_ISAR2_MULTS_INSTRS_Field_11)
     with Size => 4;
   for ID_ISAR2_MULTS_INSTRS_Field use
     (ID_ISAR2_MULTS_INSTRS_Field_00 => 0,
      ID_ISAR2_MULTS_INSTRS_Field_01 => 1,
      ID_ISAR2_MULTS_INSTRS_Field_10 => 2,
      ID_ISAR2_MULTS_INSTRS_Field_11 => 3);

   --  Indicates the supported advanced unsigned Multiply instructions
   type ID_ISAR2_MULTU_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR2_MULTU_INSTRS_Field_00,
      --  Adds support for the UMULL and UMLAL instructions.
      ID_ISAR2_MULTU_INSTRS_Field_01,
      --  As for 1, and adds support for the UMAAL instruction.
      ID_ISAR2_MULTU_INSTRS_Field_10)
     with Size => 4;
   for ID_ISAR2_MULTU_INSTRS_Field use
     (ID_ISAR2_MULTU_INSTRS_Field_00 => 0,
      ID_ISAR2_MULTU_INSTRS_Field_01 => 1,
      ID_ISAR2_MULTU_INSTRS_Field_10 => 2);

   --  Indicates the supported Reversal instructions
   type ID_ISAR2_REVERSAL_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused
      ID_ISAR2_REVERSAL_INSTRS_Field_00,
      --  Adds support for the REV, REV16, and REVSH instructions, ARMv7-M
      --  unused.
      ID_ISAR2_REVERSAL_INSTRS_Field_01,
      --  As for 1, and adds support for the RBIT instruction.
      ID_ISAR2_REVERSAL_INSTRS_Field_10)
     with Size => 4;
   for ID_ISAR2_REVERSAL_INSTRS_Field use
     (ID_ISAR2_REVERSAL_INSTRS_Field_00 => 0,
      ID_ISAR2_REVERSAL_INSTRS_Field_01 => 1,
      ID_ISAR2_REVERSAL_INSTRS_Field_10 => 2);

   --  Instruction Set Attributes Register 2
   type SCB_ID_ISAR2_Register is record
      --  Read-only. Indicates the supported additional load and store
      --  instructions
      LOADSTORE_INSTRS      : ID_ISAR2_LOADSTORE_INSTRS_Field;
      --  Read-only. Indicates the supported Memory Hint instructions
      MEMHINT_INSTRS        : ID_ISAR2_MEMHINT_INSTRS_Field;
      --  Read-only. Indicates the support for multi-access interruptible
      --  instructions
      MULTIACCESSINT_INSTRS : ID_ISAR2_MULTIACCESSINT_INSTRS_Field;
      --  Read-only. Indicates the supported additional Multiply instructions
      MULT_INSTRS           : ID_ISAR2_MULT_INSTRS_Field;
      --  Read-only. Indicates the supported advanced signed Multiply
      --  instructions
      MULTS_INSTRS          : ID_ISAR2_MULTS_INSTRS_Field;
      --  Read-only. Indicates the supported advanced unsigned Multiply
      --  instructions
      MULTU_INSTRS          : ID_ISAR2_MULTU_INSTRS_Field;
      --  unspecified
      Reserved_24_27        : HAL.UInt4;
      --  Read-only. Indicates the supported Reversal instructions
      REVERSAL_INSTRS       : ID_ISAR2_REVERSAL_INSTRS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_ISAR2_Register use record
      LOADSTORE_INSTRS      at 0 range 0 .. 3;
      MEMHINT_INSTRS        at 0 range 4 .. 7;
      MULTIACCESSINT_INSTRS at 0 range 8 .. 11;
      MULT_INSTRS           at 0 range 12 .. 15;
      MULTS_INSTRS          at 0 range 16 .. 19;
      MULTU_INSTRS          at 0 range 20 .. 23;
      Reserved_24_27        at 0 range 24 .. 27;
      REVERSAL_INSTRS       at 0 range 28 .. 31;
   end record;

   --  Indicates the supported Saturate instructions
   type ID_ISAR3_SATURATE_INSTRS_Field is
     (
      --  None supported
      ID_ISAR3_SATURATE_INSTRS_Field_0,
      --  Adds support for the QADD, QDADD, QDSUB, and QSUB instructions, and
      --  for the Q bit in the PSRs.
      ID_ISAR3_SATURATE_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR3_SATURATE_INSTRS_Field use
     (ID_ISAR3_SATURATE_INSTRS_Field_0 => 0,
      ID_ISAR3_SATURATE_INSTRS_Field_1 => 1);

   --  Indicates the supported SIMD instructions
   type ID_ISAR3_SIMD_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR3_SIMD_INSTRS_Field_00,
      --  Adds support for the SSAT and USAT instructions, and for the Q bit in
      --  the PSRs.
      ID_ISAR3_SIMD_INSTRS_Field_01,
      --  As for 1, and adds support for the PKHBT, PKHTB, QADD16, QADD8, QASX,
      --  QSUB16, QSUB8, QSAX, SADD16, SADD8, SASX, SEL, SHADD16, SHADD8,
      --  SHASX, SHSUB16, SHSUB8, SHSAX, SSAT16, SSUB16, SSUB8, SSAX, SXTAB16,
      --  SXTB16, UADD16, UADD8, UASX, UHADD16, UHADD8, UHASX, UHSUB16, UHSUB8,
      --  UHSAX, UQADD16, UQADD8, UQASX, UQSUB16, UQSUB8, UQSAX, USAD8, USADA8,
      --  USAT16, USUB16, USUB8, USAX, UXTAB16, and UXTB16 instructions. Also
      --  adds support for the GE[3:0] bits in the PSRs.
      ID_ISAR3_SIMD_INSTRS_Field_11)
     with Size => 4;
   for ID_ISAR3_SIMD_INSTRS_Field use
     (ID_ISAR3_SIMD_INSTRS_Field_00 => 0,
      ID_ISAR3_SIMD_INSTRS_Field_01 => 1,
      ID_ISAR3_SIMD_INSTRS_Field_11 => 3);

   --  Indicates the supported SVC instructions
   type ID_ISAR3_SVC_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR3_SVC_INSTRS_Field_0,
      --  Adds support for the SVC instruction.
      ID_ISAR3_SVC_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR3_SVC_INSTRS_Field use
     (ID_ISAR3_SVC_INSTRS_Field_0 => 0,
      ID_ISAR3_SVC_INSTRS_Field_1 => 1);

   subtype SCB_ID_ISAR3_SYNCHPRIM_INSTRS_Field is HAL.UInt4;

   --  Indicates the supported Table Branch instructions
   type ID_ISAR3_TABBRANCH_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR3_TABBRANCH_INSTRS_Field_0,
      --  Adds support for the TBB and TBH instructions.
      ID_ISAR3_TABBRANCH_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR3_TABBRANCH_INSTRS_Field use
     (ID_ISAR3_TABBRANCH_INSTRS_Field_0 => 0,
      ID_ISAR3_TABBRANCH_INSTRS_Field_1 => 1);

   --  Indicates the supported non flag-setting MOV instructions
   type ID_ISAR3_THUMBCOPY_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR3_THUMBCOPY_INSTRS_Field_0,
      --  Adds support for encoding T1 of the MOV (register) instruction
      --  copying from a low register to a low register.
      ID_ISAR3_THUMBCOPY_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR3_THUMBCOPY_INSTRS_Field use
     (ID_ISAR3_THUMBCOPY_INSTRS_Field_0 => 0,
      ID_ISAR3_THUMBCOPY_INSTRS_Field_1 => 1);

   --  Indicates the supported non flag-setting MOV instructions
   type ID_ISAR3_TRUENOP_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR3_TRUENOP_INSTRS_Field_0,
      --  Adds support for encoding T1 of the MOV (register) instruction
      --  copying from a low register to a low register.
      ID_ISAR3_TRUENOP_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR3_TRUENOP_INSTRS_Field use
     (ID_ISAR3_TRUENOP_INSTRS_Field_0 => 0,
      ID_ISAR3_TRUENOP_INSTRS_Field_1 => 1);

   --  Instruction Set Attributes Register 3
   type SCB_ID_ISAR3_Register is record
      --  Read-only. Indicates the supported Saturate instructions
      SATURATE_INSTRS  : ID_ISAR3_SATURATE_INSTRS_Field;
      --  Read-only. Indicates the supported SIMD instructions
      SIMD_INSTRS      : ID_ISAR3_SIMD_INSTRS_Field;
      --  Read-only. Indicates the supported SVC instructions
      SVC_INSTRS       : ID_ISAR3_SVC_INSTRS_Field;
      --  Read-only. Together with the ID_ISAR4[SYNCHPRIM_INSTRS_FRAC]
      --  indicates the supported Synchronization Primitives
      SYNCHPRIM_INSTRS : SCB_ID_ISAR3_SYNCHPRIM_INSTRS_Field;
      --  Read-only. Indicates the supported Table Branch instructions
      TABBRANCH_INSTRS : ID_ISAR3_TABBRANCH_INSTRS_Field;
      --  Read-only. Indicates the supported non flag-setting MOV instructions
      THUMBCOPY_INSTRS : ID_ISAR3_THUMBCOPY_INSTRS_Field;
      --  Read-only. Indicates the supported non flag-setting MOV instructions
      TRUENOP_INSTRS   : ID_ISAR3_TRUENOP_INSTRS_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_ISAR3_Register use record
      SATURATE_INSTRS  at 0 range 0 .. 3;
      SIMD_INSTRS      at 0 range 4 .. 7;
      SVC_INSTRS       at 0 range 8 .. 11;
      SYNCHPRIM_INSTRS at 0 range 12 .. 15;
      TABBRANCH_INSTRS at 0 range 16 .. 19;
      THUMBCOPY_INSTRS at 0 range 20 .. 23;
      TRUENOP_INSTRS   at 0 range 24 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   --  Indicates the supported unprivileged instructions. These are the
   --  instruction variants indicated by a T suffix.
   type ID_ISAR4_UNPRIV_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR4_UNPRIV_INSTRS_Field_00,
      --  Adds support for the LDRBT, LDRT, STRBT, and STRT instructions.
      ID_ISAR4_UNPRIV_INSTRS_Field_01,
      --  As for 1, and adds support for the LDRHT, LDRSBT, LDRSHT, and STRHT
      --  instructions.
      ID_ISAR4_UNPRIV_INSTRS_Field_10)
     with Size => 4;
   for ID_ISAR4_UNPRIV_INSTRS_Field use
     (ID_ISAR4_UNPRIV_INSTRS_Field_00 => 0,
      ID_ISAR4_UNPRIV_INSTRS_Field_01 => 1,
      ID_ISAR4_UNPRIV_INSTRS_Field_10 => 2);

   --  Indicates the support for instructions with shifts
   type ID_ISAR4_WITHSHIFTS_INSTRS_Field is
     (
      --  Nonzero shifts supported only in MOV and shift instructions.
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_000,
      --  Adds support for shifts of loads and stores over the range LSL 0-3.
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_001,
      --  As for 1, and adds support for other constant shift options, on
      --  loads, stores, and other instructions.
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_011,
      --  ARMv7-M unused.
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_100)
     with Size => 4;
   for ID_ISAR4_WITHSHIFTS_INSTRS_Field use
     (ID_ISAR4_WITHSHIFTS_INSTRS_Field_000 => 0,
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_001 => 1,
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_011 => 3,
      ID_ISAR4_WITHSHIFTS_INSTRS_Field_100 => 4);

   --  Indicates the support for Writeback addressing modes
   type ID_ISAR4_WRITEBACK_INSTRS_Field is
     (
      --  Basic support. Only the LDM, STM, PUSH, and POP instructions support
      --  writeback addressing modes. ARMv7-M unused.
      ID_ISAR4_WRITEBACK_INSTRS_Field_0,
      --  Adds support for all of the writeback addressing modes defined in the
      --  ARMv7-M architecture.
      ID_ISAR4_WRITEBACK_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR4_WRITEBACK_INSTRS_Field use
     (ID_ISAR4_WRITEBACK_INSTRS_Field_0 => 0,
      ID_ISAR4_WRITEBACK_INSTRS_Field_1 => 1);

   --  Indicates the supported Barrier instructions
   type ID_ISAR4_BARRIER_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR4_BARRIER_INSTRS_Field_0,
      --  Adds support for the DMB, DSB, and ISB barrier instructions.
      ID_ISAR4_BARRIER_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR4_BARRIER_INSTRS_Field use
     (ID_ISAR4_BARRIER_INSTRS_Field_0 => 0,
      ID_ISAR4_BARRIER_INSTRS_Field_1 => 1);

   subtype SCB_ID_ISAR4_SYNCHPRIM_INSTRS_FRAC_Field is HAL.UInt4;

   --  Indicates the supported M profile instructions to modify the PSRs
   type ID_ISAR4_PSR_M_INSTRS_Field is
     (
      --  None supported, ARMv7-M unused.
      ID_ISAR4_PSR_M_INSTRS_Field_0,
      --  Adds support for the M-profile forms of the CPS, MRS, and MSR
      --  instructions, to access the PSRs.
      ID_ISAR4_PSR_M_INSTRS_Field_1)
     with Size => 4;
   for ID_ISAR4_PSR_M_INSTRS_Field use
     (ID_ISAR4_PSR_M_INSTRS_Field_0 => 0,
      ID_ISAR4_PSR_M_INSTRS_Field_1 => 1);

   --  Instruction Set Attributes Register 4
   type SCB_ID_ISAR4_Register is record
      --  Read-only. Indicates the supported unprivileged instructions. These
      --  are the instruction variants indicated by a T suffix.
      UNPRIV_INSTRS         : ID_ISAR4_UNPRIV_INSTRS_Field;
      --  Read-only. Indicates the support for instructions with shifts
      WITHSHIFTS_INSTRS     : ID_ISAR4_WITHSHIFTS_INSTRS_Field;
      --  Read-only. Indicates the support for Writeback addressing modes
      WRITEBACK_INSTRS      : ID_ISAR4_WRITEBACK_INSTRS_Field;
      --  unspecified
      Reserved_12_15        : HAL.UInt4;
      --  Read-only. Indicates the supported Barrier instructions
      BARRIER_INSTRS        : ID_ISAR4_BARRIER_INSTRS_Field;
      --  Read-only. Together with the ID_ISAR3[SYNCHPRIM_INSTRS] indicates the
      --  supported Synchronization Primitives
      SYNCHPRIM_INSTRS_FRAC : SCB_ID_ISAR4_SYNCHPRIM_INSTRS_FRAC_Field;
      --  Read-only. Indicates the supported M profile instructions to modify
      --  the PSRs
      PSR_M_INSTRS          : ID_ISAR4_PSR_M_INSTRS_Field;
      --  unspecified
      Reserved_28_31        : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ID_ISAR4_Register use record
      UNPRIV_INSTRS         at 0 range 0 .. 3;
      WITHSHIFTS_INSTRS     at 0 range 4 .. 7;
      WRITEBACK_INSTRS      at 0 range 8 .. 11;
      Reserved_12_15        at 0 range 12 .. 15;
      BARRIER_INSTRS        at 0 range 16 .. 19;
      SYNCHPRIM_INSTRS_FRAC at 0 range 20 .. 23;
      PSR_M_INSTRS          at 0 range 24 .. 27;
      Reserved_28_31        at 0 range 28 .. 31;
   end record;

   --  Indicate the type of cache implemented at level 1.
   type CLIDR_Ctype1_Field is
     (
      --  No cache
      CLIDR_Ctype1_Field_0,
      --  Instruction cache only
      CLIDR_Ctype1_Field_1,
      --  Data cache only
      CLIDR_Ctype1_Field_10,
      --  Separate instruction and data caches
      CLIDR_Ctype1_Field_11,
      --  Unified cache
      CLIDR_Ctype1_Field_100)
     with Size => 3;
   for CLIDR_Ctype1_Field use
     (CLIDR_Ctype1_Field_0 => 0,
      CLIDR_Ctype1_Field_1 => 1,
      CLIDR_Ctype1_Field_10 => 2,
      CLIDR_Ctype1_Field_11 => 3,
      CLIDR_Ctype1_Field_100 => 4);

   --  SCB_CLIDR_Ctype array
   type SCB_CLIDR_Ctype_Field_Array is array (1 .. 7) of CLIDR_Ctype1_Field
     with Component_Size => 3, Size => 21;

   --  Type definition for SCB_CLIDR_Ctype
   type SCB_CLIDR_Ctype_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Ctype as a value
            Val : HAL.UInt21;
         when True =>
            --  Ctype as an array
            Arr : SCB_CLIDR_Ctype_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 21;

   for SCB_CLIDR_Ctype_Field use record
      Val at 0 range 0 .. 20;
      Arr at 0 range 0 .. 20;
   end record;

   --  Level of Unification Inner Shareable for the cache hierarchy. This field
   --  is RAZ.
   type CLIDR_LoUIS_Field is
     (
      --  0
      CLIDR_LoUIS_Field_0,
      --  1
      CLIDR_LoUIS_Field_1,
      --  2
      CLIDR_LoUIS_Field_10,
      --  3
      CLIDR_LoUIS_Field_11,
      --  4
      CLIDR_LoUIS_Field_100,
      --  5
      CLIDR_LoUIS_Field_101,
      --  6
      CLIDR_LoUIS_Field_110,
      --  7
      CLIDR_LoUIS_Field_111)
     with Size => 3;
   for CLIDR_LoUIS_Field use
     (CLIDR_LoUIS_Field_0 => 0,
      CLIDR_LoUIS_Field_1 => 1,
      CLIDR_LoUIS_Field_10 => 2,
      CLIDR_LoUIS_Field_11 => 3,
      CLIDR_LoUIS_Field_100 => 4,
      CLIDR_LoUIS_Field_101 => 5,
      CLIDR_LoUIS_Field_110 => 6,
      CLIDR_LoUIS_Field_111 => 7);

   --  Level of Coherency for the cache hierarchy
   type CLIDR_LOC_Field is
     (
      --  0
      CLIDR_LOC_Field_0,
      --  1
      CLIDR_LOC_Field_1,
      --  2
      CLIDR_LOC_Field_10,
      --  3
      CLIDR_LOC_Field_11,
      --  4
      CLIDR_LOC_Field_100,
      --  5
      CLIDR_LOC_Field_101,
      --  6
      CLIDR_LOC_Field_110,
      --  7
      CLIDR_LOC_Field_111)
     with Size => 3;
   for CLIDR_LOC_Field use
     (CLIDR_LOC_Field_0 => 0,
      CLIDR_LOC_Field_1 => 1,
      CLIDR_LOC_Field_10 => 2,
      CLIDR_LOC_Field_11 => 3,
      CLIDR_LOC_Field_100 => 4,
      CLIDR_LOC_Field_101 => 5,
      CLIDR_LOC_Field_110 => 6,
      CLIDR_LOC_Field_111 => 7);

   --  Level of Unification Uniprocessor for the cache hierarchy
   type CLIDR_LOUU_Field is
     (
      --  0
      CLIDR_LOUU_Field_0,
      --  1
      CLIDR_LOUU_Field_1,
      --  2
      CLIDR_LOUU_Field_10,
      --  3
      CLIDR_LOUU_Field_11,
      --  4
      CLIDR_LOUU_Field_100,
      --  5
      CLIDR_LOUU_Field_101,
      --  6
      CLIDR_LOUU_Field_110,
      --  7
      CLIDR_LOUU_Field_111)
     with Size => 3;
   for CLIDR_LOUU_Field use
     (CLIDR_LOUU_Field_0 => 0,
      CLIDR_LOUU_Field_1 => 1,
      CLIDR_LOUU_Field_10 => 2,
      CLIDR_LOUU_Field_11 => 3,
      CLIDR_LOUU_Field_100 => 4,
      CLIDR_LOUU_Field_101 => 5,
      CLIDR_LOUU_Field_110 => 6,
      CLIDR_LOUU_Field_111 => 7);

   --  Cache Level ID register
   type SCB_CLIDR_Register is record
      --  Read-only. Indicate the type of cache implemented at level 1.
      Ctype          : SCB_CLIDR_Ctype_Field;
      --  Read-only. Level of Unification Inner Shareable for the cache
      --  hierarchy. This field is RAZ.
      LoUIS          : CLIDR_LoUIS_Field;
      --  Read-only. Level of Coherency for the cache hierarchy
      LOC            : CLIDR_LOC_Field;
      --  Read-only. Level of Unification Uniprocessor for the cache hierarchy
      LOUU           : CLIDR_LOUU_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CLIDR_Register use record
      Ctype          at 0 range 0 .. 20;
      LoUIS          at 0 range 21 .. 23;
      LOC            at 0 range 24 .. 26;
      LOUU           at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SCB_CTR_IMINLINE_Field is HAL.UInt4;
   subtype SCB_CTR_DMINLINE_Field is HAL.UInt4;
   subtype SCB_CTR_ERG_Field is HAL.UInt4;
   subtype SCB_CTR_CWG_Field is HAL.UInt4;

   --  Indicates the implemented CTR format.
   type CTR_FORMAT_Field is
     (
      --  ARMv7 format.
      CTR_FORMAT_Field_100)
     with Size => 3;
   for CTR_FORMAT_Field use
     (CTR_FORMAT_Field_100 => 4);

   --  Cache Type register
   type SCB_CTR_Register is record
      --  Read-only. Log2 of the number of words in the smallest cache line of
      --  all the instruction caches that are controlled by the processor.
      IMINLINE       : SCB_CTR_IMINLINE_Field;
      --  unspecified
      Reserved_4_15  : HAL.UInt12;
      --  Read-only. Log2 of the number of words in the smallest cache line of
      --  all the data caches and unified caches that are controlled by the
      --  processor.
      DMINLINE       : SCB_CTR_DMINLINE_Field;
      --  Read-only. Exclusives Reservation Granule. The maximum size of the
      --  reservation granule that has been implemented for the Load-Exclusive
      --  and Store-Exclusive instructions, encoded as Log2 of the number of
      --  words.
      ERG            : SCB_CTR_ERG_Field;
      --  Read-only. Cache Write-back Granule. The maximum size of memory that
      --  can be overwritten as a result of the eviction of a cache entry that
      --  has had a memory location in it modified, encoded as Log2 of the
      --  number of words.
      CWG            : SCB_CTR_CWG_Field;
      --  unspecified
      Reserved_28_28 : HAL.Bit;
      --  Read-only. Indicates the implemented CTR format.
      FORMAT         : CTR_FORMAT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CTR_Register use record
      IMINLINE       at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      DMINLINE       at 0 range 16 .. 19;
      ERG            at 0 range 20 .. 23;
      CWG            at 0 range 24 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      FORMAT         at 0 range 29 .. 31;
   end record;

   --  (Log2(Number of words in cache line)) - 2.
   type CCSIDR_LINESIZE_Field is
     (
      --  The line length of 4 words.
      CCSIDR_LINESIZE_Field_0,
      --  The line length of 8 words.
      CCSIDR_LINESIZE_Field_1,
      --  The line length of 16 words.
      CCSIDR_LINESIZE_Field_10,
      --  The line length of 32 words.
      CCSIDR_LINESIZE_Field_11,
      --  The line length of 64 words.
      CCSIDR_LINESIZE_Field_100,
      --  The line length of 128 words.
      CCSIDR_LINESIZE_Field_101,
      --  The line length of 256 words.
      CCSIDR_LINESIZE_Field_110,
      --  The line length of 512 words.
      CCSIDR_LINESIZE_Field_111)
     with Size => 3;
   for CCSIDR_LINESIZE_Field use
     (CCSIDR_LINESIZE_Field_0 => 0,
      CCSIDR_LINESIZE_Field_1 => 1,
      CCSIDR_LINESIZE_Field_10 => 2,
      CCSIDR_LINESIZE_Field_11 => 3,
      CCSIDR_LINESIZE_Field_100 => 4,
      CCSIDR_LINESIZE_Field_101 => 5,
      CCSIDR_LINESIZE_Field_110 => 6,
      CCSIDR_LINESIZE_Field_111 => 7);

   subtype SCB_CCSIDR_ASSOCIATIVITY_Field is HAL.UInt10;
   subtype SCB_CCSIDR_NUMSETS_Field is HAL.UInt15;

   --  Indicates whether the cache level supports write-allocation
   type CCSIDR_WA_Field is
     (
      --  Feature not supported
      CCSIDR_WA_Field_0,
      --  Feature supported
      CCSIDR_WA_Field_1)
     with Size => 1;
   for CCSIDR_WA_Field use
     (CCSIDR_WA_Field_0 => 0,
      CCSIDR_WA_Field_1 => 1);

   --  Indicates whether the cache level supports read-allocation
   type CCSIDR_RA_Field is
     (
      --  Feature not supported
      CCSIDR_RA_Field_0,
      --  Feature supported
      CCSIDR_RA_Field_1)
     with Size => 1;
   for CCSIDR_RA_Field use
     (CCSIDR_RA_Field_0 => 0,
      CCSIDR_RA_Field_1 => 1);

   --  Indicates whether the cache level supports write-back
   type CCSIDR_WB_Field is
     (
      --  Feature not supported
      CCSIDR_WB_Field_0,
      --  Feature supported
      CCSIDR_WB_Field_1)
     with Size => 1;
   for CCSIDR_WB_Field use
     (CCSIDR_WB_Field_0 => 0,
      CCSIDR_WB_Field_1 => 1);

   --  Indicates whether the cache level supports write-through
   type CCSIDR_WT_Field is
     (
      --  Feature not supported
      CCSIDR_WT_Field_0,
      --  Feature supported
      CCSIDR_WT_Field_1)
     with Size => 1;
   for CCSIDR_WT_Field use
     (CCSIDR_WT_Field_0 => 0,
      CCSIDR_WT_Field_1 => 1);

   --  Cache Size ID Register
   type SCB_CCSIDR_Register is record
      --  Read-only. (Log2(Number of words in cache line)) - 2.
      LINESIZE      : CCSIDR_LINESIZE_Field;
      --  Read-only. (Associativity of cache) - 1, therefore a value of 0
      --  indicates an associativity of 1. The associativity does not have to
      --  be a power of 2.
      ASSOCIATIVITY : SCB_CCSIDR_ASSOCIATIVITY_Field;
      --  Read-only. (Number of sets in cache) - 1, therefore a value of 0
      --  indicates 1 set in the cache. The number of sets does not have to be
      --  a power of 2.
      NUMSETS       : SCB_CCSIDR_NUMSETS_Field;
      --  Read-only. Indicates whether the cache level supports
      --  write-allocation
      WA            : CCSIDR_WA_Field;
      --  Read-only. Indicates whether the cache level supports read-allocation
      RA            : CCSIDR_RA_Field;
      --  Read-only. Indicates whether the cache level supports write-back
      WB            : CCSIDR_WB_Field;
      --  Read-only. Indicates whether the cache level supports write-through
      WT            : CCSIDR_WT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CCSIDR_Register use record
      LINESIZE      at 0 range 0 .. 2;
      ASSOCIATIVITY at 0 range 3 .. 12;
      NUMSETS       at 0 range 13 .. 27;
      WA            at 0 range 28 .. 28;
      RA            at 0 range 29 .. 29;
      WB            at 0 range 30 .. 30;
      WT            at 0 range 31 .. 31;
   end record;

   --  Instruction not data bit
   type CSSELR_IND_Field is
     (
      --  Data or unified cache.
      CSSELR_IND_Field_0,
      --  Instruction cache.
      CSSELR_IND_Field_1)
     with Size => 1;
   for CSSELR_IND_Field use
     (CSSELR_IND_Field_0 => 0,
      CSSELR_IND_Field_1 => 1);

   --  Cache level of required cache
   type CSSELR_Level_Field is
     (
      --  Level 1 cache.
      CSSELR_Level_Field_0,
      --  Level 2 cache.
      CSSELR_Level_Field_1,
      --  Level 3 cache.
      CSSELR_Level_Field_10,
      --  Level 4 cache.
      CSSELR_Level_Field_11,
      --  Level 5 cache.
      CSSELR_Level_Field_100,
      --  Level 6 cache.
      CSSELR_Level_Field_101,
      --  Level 7 cache.
      CSSELR_Level_Field_110)
     with Size => 3;
   for CSSELR_Level_Field use
     (CSSELR_Level_Field_0 => 0,
      CSSELR_Level_Field_1 => 1,
      CSSELR_Level_Field_10 => 2,
      CSSELR_Level_Field_11 => 3,
      CSSELR_Level_Field_100 => 4,
      CSSELR_Level_Field_101 => 5,
      CSSELR_Level_Field_110 => 6);

   --  Cache Size Selection Register
   type SCB_CSSELR_Register is record
      --  Instruction not data bit
      IND           : CSSELR_IND_Field :=
                       NRF_SVD.SystemControl.CSSELR_IND_Field_0;
      --  Cache level of required cache
      Level         : CSSELR_Level_Field :=
                       NRF_SVD.SystemControl.CSSELR_Level_Field_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CSSELR_Register use record
      IND           at 0 range 0 .. 0;
      Level         at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Access privileges for coprocessor 0.
   type CPACR_CP0_Field is
     (
      --  Access denied. Any attempted access generates a NOCP UsageFault.
      CPACR_CP0_Field_0,
      --  Privileged access only. An unprivileged access generates a NOCP
      --  UsageFault.
      CPACR_CP0_Field_1,
      --  Reserved. The result of any access is UNPREDICTABLE.
      CPACR_CP0_Field_10,
      --  Full access.
      CPACR_CP0_Field_11)
     with Size => 2;
   for CPACR_CP0_Field use
     (CPACR_CP0_Field_0 => 0,
      CPACR_CP0_Field_1 => 1,
      CPACR_CP0_Field_10 => 2,
      CPACR_CP0_Field_11 => 3);

   --  SCB_CPACR_CP array
   type SCB_CPACR_CP_Field_Array is array (0 .. 7) of CPACR_CP0_Field
     with Component_Size => 2, Size => 16;

   --  Type definition for SCB_CPACR_CP
   type SCB_CPACR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt16;
         when True =>
            --  CP as an array
            Arr : SCB_CPACR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SCB_CPACR_CP_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Access privileges for coprocessor 10.
   type CPACR_CP10_Field is
     (
      --  Access denied. Any attempted access generates a NOCP UsageFault.
      CPACR_CP10_Field_0,
      --  Privileged access only. An unprivileged access generates a NOCP
      --  UsageFault.
      CPACR_CP10_Field_1,
      --  Reserved. The result of any access is UNPREDICTABLE.
      CPACR_CP10_Field_10,
      --  Full access.
      CPACR_CP10_Field_11)
     with Size => 2;
   for CPACR_CP10_Field use
     (CPACR_CP10_Field_0 => 0,
      CPACR_CP10_Field_1 => 1,
      CPACR_CP10_Field_10 => 2,
      CPACR_CP10_Field_11 => 3);

   --  SCB_CPACR_CP array
   type SCB_CPACR_CP_Field_Array_1 is array (10 .. 11) of CPACR_CP10_Field
     with Component_Size => 2, Size => 4;

   --  Type definition for SCB_CPACR_CP
   type SCB_CPACR_CP_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt4;
         when True =>
            --  CP as an array
            Arr : SCB_CPACR_CP_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_CPACR_CP_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Coprocessor Access Control Register
   type SCB_CPACR_Register is record
      --  Access privileges for coprocessor 0.
      CP             : SCB_CPACR_CP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Access privileges for coprocessor 10.
      CP_1           : SCB_CPACR_CP_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPACR_Register use record
      CP             at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      CP_1           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Indicates the size of the FP register bank.
   type MVFR0_A_SIMD_Field is
     (
      --  Supported, 16 x 64-bit registers.
      MVFR0_A_SIMD_Field_1)
     with Size => 4;
   for MVFR0_A_SIMD_Field use
     (MVFR0_A_SIMD_Field_1 => 1);

   --  Indicates the hardware support for FP single-precision operations.
   type MVFR0_SINGLE_PRECISION_Field is
     (
      --  Not supported.
      MVFR0_SINGLE_PRECISION_Field_0000,
      --  Supported.
      MVFR0_SINGLE_PRECISION_Field_0010)
     with Size => 4;
   for MVFR0_SINGLE_PRECISION_Field use
     (MVFR0_SINGLE_PRECISION_Field_0000 => 0,
      MVFR0_SINGLE_PRECISION_Field_0010 => 2);

   --  Indicates the hardware support for FP double-precision operations.
   type MVFR0_DOUBLE_PRECISION_Field is
     (
      --  Not supported.
      MVFR0_DOUBLE_PRECISION_Field_0000,
      --  Supported.
      MVFR0_DOUBLE_PRECISION_Field_0010)
     with Size => 4;
   for MVFR0_DOUBLE_PRECISION_Field use
     (MVFR0_DOUBLE_PRECISION_Field_0000 => 0,
      MVFR0_DOUBLE_PRECISION_Field_0010 => 2);

   --  Indicates whether the FP hardware implementation supports exception
   --  trapping.
   type MVFR0_FP_EXCEPTION_TRAPPING_Field is
     (
      --  Not supported in ARMv7-M.
      MVFR0_FP_EXCEPTION_TRAPPING_Field_0000)
     with Size => 4;
   for MVFR0_FP_EXCEPTION_TRAPPING_Field use
     (MVFR0_FP_EXCEPTION_TRAPPING_Field_0000 => 0);

   --  Indicates whether the FP hardware implementation supports exception
   --  trapping.
   type MVFR0_DIVIDE_Field is
     (
      --  Supported.
      MVFR0_DIVIDE_Field_0001)
     with Size => 4;
   for MVFR0_DIVIDE_Field use
     (MVFR0_DIVIDE_Field_0001 => 1);

   --  Indicates the hardware support for FP square root operations.
   type MVFR0_SQUARE_ROOT_Field is
     (
      --  Supported.
      MVFR0_SQUARE_ROOT_Field_0001)
     with Size => 4;
   for MVFR0_SQUARE_ROOT_Field use
     (MVFR0_SQUARE_ROOT_Field_0001 => 1);

   --  Indicates the hardware support for FP square root operations.
   type MVFR0_SHORT_VECTORS_Field is
     (
      --  Not supported in ARMv7-M.
      MVFR0_SHORT_VECTORS_Field_0000)
     with Size => 4;
   for MVFR0_SHORT_VECTORS_Field use
     (MVFR0_SHORT_VECTORS_Field_0000 => 0);

   --  Indicates the rounding modes supported by the FP floating-point
   --  hardware.
   type MVFR0_FP_ROUNDING_MODES_Field is
     (
      --  All rounding modes supported.
      MVFR0_FP_ROUNDING_MODES_Field_0001)
     with Size => 4;
   for MVFR0_FP_ROUNDING_MODES_Field use
     (MVFR0_FP_ROUNDING_MODES_Field_0001 => 1);

   --  Media and FP Feature Register 0
   type SCB_MVFR0_Register is record
      --  Read-only. Indicates the size of the FP register bank.
      A_SIMD                : MVFR0_A_SIMD_Field;
      --  Read-only. Indicates the hardware support for FP single-precision
      --  operations.
      SINGLE_PRECISION      : MVFR0_SINGLE_PRECISION_Field;
      --  Read-only. Indicates the hardware support for FP double-precision
      --  operations.
      DOUBLE_PRECISION      : MVFR0_DOUBLE_PRECISION_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  exception trapping.
      FP_EXCEPTION_TRAPPING : MVFR0_FP_EXCEPTION_TRAPPING_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  exception trapping.
      DIVIDE                : MVFR0_DIVIDE_Field;
      --  Read-only. Indicates the hardware support for FP square root
      --  operations.
      SQUARE_ROOT           : MVFR0_SQUARE_ROOT_Field;
      --  Read-only. Indicates the hardware support for FP square root
      --  operations.
      SHORT_VECTORS         : MVFR0_SHORT_VECTORS_Field;
      --  Read-only. Indicates the rounding modes supported by the FP
      --  floating-point hardware.
      FP_ROUNDING_MODES     : MVFR0_FP_ROUNDING_MODES_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_MVFR0_Register use record
      A_SIMD                at 0 range 0 .. 3;
      SINGLE_PRECISION      at 0 range 4 .. 7;
      DOUBLE_PRECISION      at 0 range 8 .. 11;
      FP_EXCEPTION_TRAPPING at 0 range 12 .. 15;
      DIVIDE                at 0 range 16 .. 19;
      SQUARE_ROOT           at 0 range 20 .. 23;
      SHORT_VECTORS         at 0 range 24 .. 27;
      FP_ROUNDING_MODES     at 0 range 28 .. 31;
   end record;

   --  Indicates whether the FP hardware implementation supports only the
   --  Flush-to-Zero mode of operation.
   type MVFR1_FTZ_MODE_Field is
     (
      --  Hardware supports full denormalized number arithmetic.
      MVFR1_FTZ_MODE_Field_0001)
     with Size => 4;
   for MVFR1_FTZ_MODE_Field use
     (MVFR1_FTZ_MODE_Field_0001 => 1);

   --  Indicates whether the FP hardware implementation supports only the
   --  Default NaN mode.
   type MVFR1_D_NAN_MODE_Field is
     (
      --  Hardware supports propagation of NaN values.
      MVFR1_D_NAN_MODE_Field_0001)
     with Size => 4;
   for MVFR1_D_NAN_MODE_Field use
     (MVFR1_D_NAN_MODE_Field_0001 => 1);

   --  Floating Point Half-Precision and double-precision.
   type MVFR1_FP_HPFP_Field is
     (
      --  Supports conversion between half-precision and single precision.
      MVFR1_FP_HPFP_Field_0001,
      --  As for 0b0001, and also supports conversion between half-precision
      --  and double-precision.
      MVFR1_FP_HPFP_Field_0010)
     with Size => 4;
   for MVFR1_FP_HPFP_Field use
     (MVFR1_FP_HPFP_Field_0001 => 1,
      MVFR1_FP_HPFP_Field_0010 => 2);

   --  Indicates whether the FP supports fused multiply accumulate operations.
   type MVFR1_FP_FUSED_MAC_Field is
     (
      --  Supported.
      MVFR1_FP_FUSED_MAC_Field_0001)
     with Size => 4;
   for MVFR1_FP_FUSED_MAC_Field use
     (MVFR1_FP_FUSED_MAC_Field_0001 => 1);

   --  Media and FP Feature Register 1
   type SCB_MVFR1_Register is record
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  only the Flush-to-Zero mode of operation.
      FTZ_MODE      : MVFR1_FTZ_MODE_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  only the Default NaN mode.
      D_NAN_MODE    : MVFR1_D_NAN_MODE_Field;
      --  unspecified
      Reserved_8_23 : HAL.UInt16;
      --  Read-only. Floating Point Half-Precision and double-precision.
      FP_HPFP       : MVFR1_FP_HPFP_Field;
      --  Read-only. Indicates whether the FP supports fused multiply
      --  accumulate operations.
      FP_FUSED_MAC  : MVFR1_FP_FUSED_MAC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_MVFR1_Register use record
      FTZ_MODE      at 0 range 0 .. 3;
      D_NAN_MODE    at 0 range 4 .. 7;
      Reserved_8_23 at 0 range 8 .. 23;
      FP_HPFP       at 0 range 24 .. 27;
      FP_FUSED_MAC  at 0 range 28 .. 31;
   end record;

   --  Indicates the hardware support for FP miscellaneous features.
   type MVFR2_VFP_MISC_Field is
     (
      --  No support for miscellaneous features.
      MVFR2_VFP_MISC_Field_0000,
      --  Support for floating-point selection, floating-point conversion to
      --  integer with direct rounding modes, floating-point round to integral
      --  floating-point, and floating-point maximum number and minimum number.
      MVFR2_VFP_MISC_Field_0100)
     with Size => 4;
   for MVFR2_VFP_MISC_Field use
     (MVFR2_VFP_MISC_Field_0000 => 0,
      MVFR2_VFP_MISC_Field_0100 => 4);

   --  Media and FP Feature Register 2
   type SCB_MVFR2_Register is record
      --  unspecified
      Reserved_0_3  : HAL.UInt4;
      --  Read-only. Indicates the hardware support for FP miscellaneous
      --  features.
      VFP_MISC      : MVFR2_VFP_MISC_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_MVFR2_Register use record
      Reserved_0_3  at 0 range 0 .. 3;
      VFP_MISC      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TCM enable. When a TCM is disabled all accesses are made to the AXIM
   --  interface.
   type CM7_ITCMCR_EN_Field is
     (
      --  TCM disabled.
      CM7_ITCMCR_EN_Field_0,
      --  TCM enabled.
      CM7_ITCMCR_EN_Field_1)
     with Size => 1;
   for CM7_ITCMCR_EN_Field use
     (CM7_ITCMCR_EN_Field_0 => 0,
      CM7_ITCMCR_EN_Field_1 => 1);

   --  Read-Modify-Write (RMW) enable. Indicates that all writes to TCM, that
   --  are not the full width of the TCM RAM, use a RMW sequence.
   type CM7_ITCMCR_RMW_Field is
     (
      --  RMW disabled.
      CM7_ITCMCR_RMW_Field_0,
      --  RMW enabled.
      CM7_ITCMCR_RMW_Field_1)
     with Size => 1;
   for CM7_ITCMCR_RMW_Field use
     (CM7_ITCMCR_RMW_Field_0 => 0,
      CM7_ITCMCR_RMW_Field_1 => 1);

   --  Retry phase enable. When enabled the processor guarantees to honor the
   --  retry output on the corresponding TCM interface, re-executing the
   --  instruction which carried out the TCM access.
   type CM7_ITCMCR_RETEN_Field is
     (
      --  Retry phase disabled.
      CM7_ITCMCR_RETEN_Field_0,
      --  Retry phase enabled.
      CM7_ITCMCR_RETEN_Field_1)
     with Size => 1;
   for CM7_ITCMCR_RETEN_Field use
     (CM7_ITCMCR_RETEN_Field_0 => 0,
      CM7_ITCMCR_RETEN_Field_1 => 1);

   --  TCM size. Indicates the size of the relevant TCM.
   type CM7_ITCMCR_SZ_Field is
     (
      --  No TCM implemented.
      CM7_ITCMCR_SZ_Field_0,
      --  4KB.
      CM7_ITCMCR_SZ_Field_11,
      --  8KB.
      CM7_ITCMCR_SZ_Field_100,
      --  16KB.
      CM7_ITCMCR_SZ_Field_101,
      --  32KB.
      CM7_ITCMCR_SZ_Field_110,
      --  64KB.
      CM7_ITCMCR_SZ_Field_111,
      --  128KB.
      CM7_ITCMCR_SZ_Field_1000,
      --  256KB.
      CM7_ITCMCR_SZ_Field_1001,
      --  512KB.
      CM7_ITCMCR_SZ_Field_1010,
      --  1MB.
      CM7_ITCMCR_SZ_Field_1011,
      --  2MB.
      CM7_ITCMCR_SZ_Field_1100,
      --  4MB.
      CM7_ITCMCR_SZ_Field_1101,
      --  8MB.
      CM7_ITCMCR_SZ_Field_1110,
      --  16MB.
      CM7_ITCMCR_SZ_Field_1111)
     with Size => 4;
   for CM7_ITCMCR_SZ_Field use
     (CM7_ITCMCR_SZ_Field_0 => 0,
      CM7_ITCMCR_SZ_Field_11 => 3,
      CM7_ITCMCR_SZ_Field_100 => 4,
      CM7_ITCMCR_SZ_Field_101 => 5,
      CM7_ITCMCR_SZ_Field_110 => 6,
      CM7_ITCMCR_SZ_Field_111 => 7,
      CM7_ITCMCR_SZ_Field_1000 => 8,
      CM7_ITCMCR_SZ_Field_1001 => 9,
      CM7_ITCMCR_SZ_Field_1010 => 10,
      CM7_ITCMCR_SZ_Field_1011 => 11,
      CM7_ITCMCR_SZ_Field_1100 => 12,
      CM7_ITCMCR_SZ_Field_1101 => 13,
      CM7_ITCMCR_SZ_Field_1110 => 14,
      CM7_ITCMCR_SZ_Field_1111 => 15);

   --  Instruction Tightly-Coupled Memory Control Register
   type SCB_CM7_ITCMCR_Register is record
      --  TCM enable. When a TCM is disabled all accesses are made to the AXIM
      --  interface.
      EN            : CM7_ITCMCR_EN_Field :=
                       NRF_SVD.SystemControl.CM7_ITCMCR_EN_Field_0;
      --  Read-Modify-Write (RMW) enable. Indicates that all writes to TCM,
      --  that are not the full width of the TCM RAM, use a RMW sequence.
      RMW           : CM7_ITCMCR_RMW_Field :=
                       NRF_SVD.SystemControl.CM7_ITCMCR_RMW_Field_0;
      --  Retry phase enable. When enabled the processor guarantees to honor
      --  the retry output on the corresponding TCM interface, re-executing the
      --  instruction which carried out the TCM access.
      RETEN         : CM7_ITCMCR_RETEN_Field :=
                       NRF_SVD.SystemControl.CM7_ITCMCR_RETEN_Field_0;
      --  Read-only. TCM size. Indicates the size of the relevant TCM.
      SZ            : CM7_ITCMCR_SZ_Field :=
                       NRF_SVD.SystemControl.CM7_ITCMCR_SZ_Field_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CM7_ITCMCR_Register use record
      EN            at 0 range 0 .. 0;
      RMW           at 0 range 1 .. 1;
      RETEN         at 0 range 2 .. 2;
      SZ            at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  TCM enable. When a TCM is disabled all accesses are made to the AXIM
   --  interface.
   type CM7_DTCMCR_EN_Field is
     (
      --  TCM disabled.
      CM7_DTCMCR_EN_Field_0,
      --  TCM enabled.
      CM7_DTCMCR_EN_Field_1)
     with Size => 1;
   for CM7_DTCMCR_EN_Field use
     (CM7_DTCMCR_EN_Field_0 => 0,
      CM7_DTCMCR_EN_Field_1 => 1);

   --  Read-Modify-Write (RMW) enable. Indicates that all writes to TCM, that
   --  are not the full width of the TCM RAM, use a RMW sequence.
   type CM7_DTCMCR_RMW_Field is
     (
      --  RMW disabled.
      CM7_DTCMCR_RMW_Field_0,
      --  RMW enabled.
      CM7_DTCMCR_RMW_Field_1)
     with Size => 1;
   for CM7_DTCMCR_RMW_Field use
     (CM7_DTCMCR_RMW_Field_0 => 0,
      CM7_DTCMCR_RMW_Field_1 => 1);

   --  Retry phase enable. When enabled the processor guarantees to honor the
   --  retry output on the corresponding TCM interface, re-executing the
   --  instruction which carried out the TCM access.
   type CM7_DTCMCR_RETEN_Field is
     (
      --  Retry phase disabled.
      CM7_DTCMCR_RETEN_Field_0,
      --  Retry phase enabled.
      CM7_DTCMCR_RETEN_Field_1)
     with Size => 1;
   for CM7_DTCMCR_RETEN_Field use
     (CM7_DTCMCR_RETEN_Field_0 => 0,
      CM7_DTCMCR_RETEN_Field_1 => 1);

   --  TCM size. Indicates the size of the relevant TCM.
   type CM7_DTCMCR_SZ_Field is
     (
      --  No TCM implemented.
      CM7_DTCMCR_SZ_Field_0,
      --  4KB.
      CM7_DTCMCR_SZ_Field_11,
      --  8KB.
      CM7_DTCMCR_SZ_Field_100,
      --  16KB.
      CM7_DTCMCR_SZ_Field_101,
      --  32KB.
      CM7_DTCMCR_SZ_Field_110,
      --  64KB.
      CM7_DTCMCR_SZ_Field_111,
      --  128KB.
      CM7_DTCMCR_SZ_Field_1000,
      --  256KB.
      CM7_DTCMCR_SZ_Field_1001,
      --  512KB.
      CM7_DTCMCR_SZ_Field_1010,
      --  1MB.
      CM7_DTCMCR_SZ_Field_1011,
      --  2MB.
      CM7_DTCMCR_SZ_Field_1100,
      --  4MB.
      CM7_DTCMCR_SZ_Field_1101,
      --  8MB.
      CM7_DTCMCR_SZ_Field_1110,
      --  16MB.
      CM7_DTCMCR_SZ_Field_1111)
     with Size => 4;
   for CM7_DTCMCR_SZ_Field use
     (CM7_DTCMCR_SZ_Field_0 => 0,
      CM7_DTCMCR_SZ_Field_11 => 3,
      CM7_DTCMCR_SZ_Field_100 => 4,
      CM7_DTCMCR_SZ_Field_101 => 5,
      CM7_DTCMCR_SZ_Field_110 => 6,
      CM7_DTCMCR_SZ_Field_111 => 7,
      CM7_DTCMCR_SZ_Field_1000 => 8,
      CM7_DTCMCR_SZ_Field_1001 => 9,
      CM7_DTCMCR_SZ_Field_1010 => 10,
      CM7_DTCMCR_SZ_Field_1011 => 11,
      CM7_DTCMCR_SZ_Field_1100 => 12,
      CM7_DTCMCR_SZ_Field_1101 => 13,
      CM7_DTCMCR_SZ_Field_1110 => 14,
      CM7_DTCMCR_SZ_Field_1111 => 15);

   --  Data Tightly-Coupled Memory Control Register
   type SCB_CM7_DTCMCR_Register is record
      --  TCM enable. When a TCM is disabled all accesses are made to the AXIM
      --  interface.
      EN            : CM7_DTCMCR_EN_Field :=
                       NRF_SVD.SystemControl.CM7_DTCMCR_EN_Field_0;
      --  Read-Modify-Write (RMW) enable. Indicates that all writes to TCM,
      --  that are not the full width of the TCM RAM, use a RMW sequence.
      RMW           : CM7_DTCMCR_RMW_Field :=
                       NRF_SVD.SystemControl.CM7_DTCMCR_RMW_Field_0;
      --  Retry phase enable. When enabled the processor guarantees to honor
      --  the retry output on the corresponding TCM interface, re-executing the
      --  instruction which carried out the TCM access.
      RETEN         : CM7_DTCMCR_RETEN_Field :=
                       NRF_SVD.SystemControl.CM7_DTCMCR_RETEN_Field_0;
      --  Read-only. TCM size. Indicates the size of the relevant TCM.
      SZ            : CM7_DTCMCR_SZ_Field :=
                       NRF_SVD.SystemControl.CM7_DTCMCR_SZ_Field_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CM7_DTCMCR_Register use record
      EN            at 0 range 0 .. 0;
      RMW           at 0 range 1 .. 1;
      RETEN         at 0 range 2 .. 2;
      SZ            at 0 range 3 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  AHBP enable.
   type CM7_AHBPCR_EN_Field is
     (
      --  AHBP disabled. When disabled all accesses are made to the AXIM
      --  interface.
      CM7_AHBPCR_EN_Field_0,
      --  AHBP enabled.
      CM7_AHBPCR_EN_Field_1)
     with Size => 1;
   for CM7_AHBPCR_EN_Field use
     (CM7_AHBPCR_EN_Field_0 => 0,
      CM7_AHBPCR_EN_Field_1 => 1);

   --  AHBP size.
   type CM7_AHBPCR_SZ_Field is
     (
      --  0MB. AHBP disabled.
      CM7_AHBPCR_SZ_Field_0,
      --  64MB.
      CM7_AHBPCR_SZ_Field_1,
      --  128MB.
      CM7_AHBPCR_SZ_Field_10,
      --  256MB.
      CM7_AHBPCR_SZ_Field_11,
      --  512MB.
      CM7_AHBPCR_SZ_Field_100)
     with Size => 3;
   for CM7_AHBPCR_SZ_Field use
     (CM7_AHBPCR_SZ_Field_0 => 0,
      CM7_AHBPCR_SZ_Field_1 => 1,
      CM7_AHBPCR_SZ_Field_10 => 2,
      CM7_AHBPCR_SZ_Field_11 => 3,
      CM7_AHBPCR_SZ_Field_100 => 4);

   --  AHBP Control Register
   type SCB_CM7_AHBPCR_Register is record
      --  AHBP enable.
      EN            : CM7_AHBPCR_EN_Field :=
                       NRF_SVD.SystemControl.CM7_AHBPCR_EN_Field_0;
      --  Read-only. AHBP size.
      SZ            : CM7_AHBPCR_SZ_Field :=
                       NRF_SVD.SystemControl.CM7_AHBPCR_SZ_Field_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CM7_AHBPCR_Register use record
      EN            at 0 range 0 .. 0;
      SZ            at 0 range 1 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Shared cacheable-is-WT for data cache. Enables limited cache coherency
   --  usage.
   type CM7_CACR_SIWT_Field is
     (
      --  Normal Cacheable Shared locations are treated as being Non-cacheable.
      --  Default mode of operation for Shared memory.
      CM7_CACR_SIWT_Field_0,
      --  Normal Cacheable shared locations are treated as Write-Through.
      CM7_CACR_SIWT_Field_1)
     with Size => 1;
   for CM7_CACR_SIWT_Field use
     (CM7_CACR_SIWT_Field_0 => 0,
      CM7_CACR_SIWT_Field_1 => 1);

   --  Enables ECC in the instruction and data cache.
   type CM7_CACR_ECCDIS_Field is
     (
      --  Enables ECC in the instruction and data cache.
      CM7_CACR_ECCDIS_Field_0,
      --  Disables ECC in the instruction and data cache.
      CM7_CACR_ECCDIS_Field_1)
     with Size => 1;
   for CM7_CACR_ECCDIS_Field use
     (CM7_CACR_ECCDIS_Field_0 => 0,
      CM7_CACR_ECCDIS_Field_1 => 1);

   --  Enables Force Write-Through in the data cache.
   type CM7_CACR_FORCEWT_Field is
     (
      --  Disables Force Write-Through.
      CM7_CACR_FORCEWT_Field_0,
      --  Enables Force Write-Through. All Cacheable memory regions are treated
      --  as Write-Through.
      CM7_CACR_FORCEWT_Field_1)
     with Size => 1;
   for CM7_CACR_FORCEWT_Field use
     (CM7_CACR_FORCEWT_Field_0 => 0,
      CM7_CACR_FORCEWT_Field_1 => 1);

   --  L1 Cache Control Register
   type SCB_CM7_CACR_Register is record
      --  Shared cacheable-is-WT for data cache. Enables limited cache
      --  coherency usage.
      SIWT          : CM7_CACR_SIWT_Field :=
                       NRF_SVD.SystemControl.CM7_CACR_SIWT_Field_0;
      --  Enables ECC in the instruction and data cache.
      ECCDIS        : CM7_CACR_ECCDIS_Field :=
                       NRF_SVD.SystemControl.CM7_CACR_ECCDIS_Field_0;
      --  Enables Force Write-Through in the data cache.
      FORCEWT       : CM7_CACR_FORCEWT_Field :=
                       NRF_SVD.SystemControl.CM7_CACR_FORCEWT_Field_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CM7_CACR_Register use record
      SIWT          at 0 range 0 .. 0;
      ECCDIS        at 0 range 1 .. 1;
      FORCEWT       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  AHBS prioritization control.
   type CM7_AHBSCR_CTL_Field is
     (
      --  AHBS access priority demoted. This is the reset value.
      CM7_AHBSCR_CTL_Field_0,
      --  Software access priority demoted.
      CM7_AHBSCR_CTL_Field_1,
      --  AHBS access priority demoted by initializing the fairness counter to
      --  the CM7_AHBSCR[INITCOUNT] value when the software execution priority
      --  is higher than or equal to the threshold level programed in
      --  CM7_AHBSCR[TPRI].
      CM7_AHBSCR_CTL_Field_10,
      --  AHBSPRI signal has control of access priority.
      CM7_AHBSCR_CTL_Field_11)
     with Size => 2;
   for CM7_AHBSCR_CTL_Field use
     (CM7_AHBSCR_CTL_Field_0 => 0,
      CM7_AHBSCR_CTL_Field_1 => 1,
      CM7_AHBSCR_CTL_Field_10 => 2,
      CM7_AHBSCR_CTL_Field_11 => 3);

   subtype SCB_CM7_AHBSCR_TPRI_Field is HAL.UInt9;
   subtype SCB_CM7_AHBSCR_INITCOUNT_Field is HAL.UInt5;

   --  AHB Slave Control Register
   type SCB_CM7_AHBSCR_Register is record
      --  AHBS prioritization control.
      CTL            : CM7_AHBSCR_CTL_Field :=
                        NRF_SVD.SystemControl.CM7_AHBSCR_CTL_Field_0;
      --  Threshold execution priority for AHBS traffic demotion.
      TPRI           : SCB_CM7_AHBSCR_TPRI_Field := 16#0#;
      --  Fairness counter initialization value.
      INITCOUNT      : SCB_CM7_AHBSCR_INITCOUNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CM7_AHBSCR_Register use record
      CTL            at 0 range 0 .. 1;
      TPRI           at 0 range 2 .. 10;
      INITCOUNT      at 0 range 11 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Indicates the type of fault on the AXIM interface. Only valid when AXIM
   --  is 1.
   type CM7_ABFSR_AXIMTYPE_Field is
     (
      --  OKAY.
      CM7_ABFSR_AXIMTYPE_Field_0,
      --  EXOKAY.
      CM7_ABFSR_AXIMTYPE_Field_1,
      --  SLVERR.
      CM7_ABFSR_AXIMTYPE_Field_10,
      --  DECERR.
      CM7_ABFSR_AXIMTYPE_Field_11)
     with Size => 2;
   for CM7_ABFSR_AXIMTYPE_Field use
     (CM7_ABFSR_AXIMTYPE_Field_0 => 0,
      CM7_ABFSR_AXIMTYPE_Field_1 => 1,
      CM7_ABFSR_AXIMTYPE_Field_10 => 2,
      CM7_ABFSR_AXIMTYPE_Field_11 => 3);

   --  Auxiliary Bus Fault Status Register
   type SCB_CM7_ABFSR_Register is record
      --  Asynchronous fault on ITCM interface.
      ITCM           : Boolean := False;
      --  Asynchronous fault on DTCM interface.
      DTCM           : Boolean := False;
      --  Asynchronous fault on AHBP interface.
      AHBP           : Boolean := False;
      --  Asynchronous fault on AXIM interface.
      AXIM           : Boolean := False;
      --  Asynchronous fault on EPPB interface.
      EPPB           : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Indicates the type of fault on the AXIM interface. Only valid when
      --  AXIM is 1.
      AXIMTYPE       : CM7_ABFSR_AXIMTYPE_Field :=
                        NRF_SVD.SystemControl.CM7_ABFSR_AXIMTYPE_Field_0;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CM7_ABFSR_Register use record
      ITCM           at 0 range 0 .. 0;
      DTCM           at 0 range 1 .. 1;
      AHBP           at 0 range 2 .. 2;
      AXIM           at 0 range 3 .. 3;
      EPPB           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      AXIMTYPE       at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Block
   type SystemControl_Peripheral is record
      --  Auxiliary Control Register,
      ACTLR      : aliased SCB_ACTLR_Register;
      --  CPUID Base Register
      CPUID      : aliased SCB_CPUID_Register;
      --  Interrupt Control and State Register
      ICSR       : aliased SCB_ICSR_Register;
      --  Vector Table Offset Register
      VTOR       : aliased SCB_VTOR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR      : aliased SCB_AIRCR_Register;
      --  System Control Register
      SCR        : aliased SCB_SCR_Register;
      --  Configuration and Control Register
      CCR        : aliased SCB_CCR_Register;
      --  System Handler Priority Register 1
      SHPR1      : aliased SCB_SHPR1_Register;
      --  System Handler Priority Register 2
      SHPR2      : aliased SCB_SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3      : aliased SCB_SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR      : aliased SCB_SHCSR_Register;
      --  Configurable Fault Status Register
      CFSR       : aliased SCB_CFSR_Register;
      --  HardFault Status register
      HFSR       : aliased SCB_HFSR_Register;
      --  Debug Fault Status Register
      DFSR       : aliased SCB_DFSR_Register;
      --  MemManage Fault Address Register
      MMFAR      : aliased HAL.UInt32;
      --  BusFault Address Register
      BFAR       : aliased HAL.UInt32;
      --  Auxiliary Fault Status Register
      AFSR       : aliased HAL.UInt32;
      --  Processor Feature Register 0
      ID_PFR0    : aliased SCB_ID_PFR0_Register;
      --  Processor Feature Register 1
      ID_PFR1    : aliased SCB_ID_PFR1_Register;
      --  Debug Feature Register
      ID_DFR0    : aliased SCB_ID_DFR0_Register;
      --  Auxiliary Feature Register
      ID_AFR0    : aliased SCB_ID_AFR0_Register;
      --  Memory Model Feature Register 0
      ID_MMFR0   : aliased SCB_ID_MMFR0_Register;
      --  Memory Model Feature Register 1
      ID_MMFR1   : aliased HAL.UInt32;
      --  Memory Model Feature Register 2
      ID_MMFR2   : aliased SCB_ID_MMFR2_Register;
      --  Memory Model Feature Register 3
      ID_MMFR3   : aliased HAL.UInt32;
      --  Instruction Set Attributes Register 0
      ID_ISAR0   : aliased SCB_ID_ISAR0_Register;
      --  Instruction Set Attributes Register 1
      ID_ISAR1   : aliased SCB_ID_ISAR1_Register;
      --  Instruction Set Attributes Register 2
      ID_ISAR2   : aliased SCB_ID_ISAR2_Register;
      --  Instruction Set Attributes Register 3
      ID_ISAR3   : aliased SCB_ID_ISAR3_Register;
      --  Instruction Set Attributes Register 4
      ID_ISAR4   : aliased SCB_ID_ISAR4_Register;
      --  Cache Level ID register
      CLIDR      : aliased SCB_CLIDR_Register;
      --  Cache Type register
      CTR        : aliased SCB_CTR_Register;
      --  Cache Size ID Register
      CCSIDR     : aliased SCB_CCSIDR_Register;
      --  Cache Size Selection Register
      CSSELR     : aliased SCB_CSSELR_Register;
      --  Coprocessor Access Control Register
      CPACR      : aliased SCB_CPACR_Register;
      --  Media and FP Feature Register 0
      MVFR0      : aliased SCB_MVFR0_Register;
      --  Media and FP Feature Register 1
      MVFR1      : aliased SCB_MVFR1_Register;
      --  Media and FP Feature Register 2
      MVFR2      : aliased SCB_MVFR2_Register;
      --  Instruction cache invalidate all to Point of Unification (PoU)
      ICIALLU    : aliased HAL.UInt32;
      --  Instruction cache invalidate by address to PoU
      ICIMVAU    : aliased HAL.UInt32;
      --  Data cache invalidate by address to Point of Coherency (PoC)
      DCIMVAC    : aliased HAL.UInt32;
      --  Data cache invalidate by set/way
      DCISW      : aliased HAL.UInt32;
      --  Data cache by address to PoU
      DCCMVAU    : aliased HAL.UInt32;
      --  Data cache clean by address to PoC
      DCCMVAC    : aliased HAL.UInt32;
      --  Data cache clean by set/way
      DCCSW      : aliased HAL.UInt32;
      --  Data cache clean and invalidate by address to PoC
      DCCIMVAC   : aliased HAL.UInt32;
      --  Data cache clean and invalidate by set/way
      DCCISW     : aliased HAL.UInt32;
      --  Instruction Tightly-Coupled Memory Control Register
      CM7_ITCMCR : aliased SCB_CM7_ITCMCR_Register;
      --  Data Tightly-Coupled Memory Control Register
      CM7_DTCMCR : aliased SCB_CM7_DTCMCR_Register;
      --  AHBP Control Register
      CM7_AHBPCR : aliased SCB_CM7_AHBPCR_Register;
      --  L1 Cache Control Register
      CM7_CACR   : aliased SCB_CM7_CACR_Register;
      --  AHB Slave Control Register
      CM7_AHBSCR : aliased SCB_CM7_AHBSCR_Register;
      --  Auxiliary Bus Fault Status Register
      CM7_ABFSR  : aliased SCB_CM7_ABFSR_Register;
   end record
     with Volatile;

   for SystemControl_Peripheral use record
      ACTLR      at 16#8# range 0 .. 31;
      CPUID      at 16#D00# range 0 .. 31;
      ICSR       at 16#D04# range 0 .. 31;
      VTOR       at 16#D08# range 0 .. 31;
      AIRCR      at 16#D0C# range 0 .. 31;
      SCR        at 16#D10# range 0 .. 31;
      CCR        at 16#D14# range 0 .. 31;
      SHPR1      at 16#D18# range 0 .. 31;
      SHPR2      at 16#D1C# range 0 .. 31;
      SHPR3      at 16#D20# range 0 .. 31;
      SHCSR      at 16#D24# range 0 .. 31;
      CFSR       at 16#D28# range 0 .. 31;
      HFSR       at 16#D2C# range 0 .. 31;
      DFSR       at 16#D30# range 0 .. 31;
      MMFAR      at 16#D34# range 0 .. 31;
      BFAR       at 16#D38# range 0 .. 31;
      AFSR       at 16#D3C# range 0 .. 31;
      ID_PFR0    at 16#D40# range 0 .. 31;
      ID_PFR1    at 16#D44# range 0 .. 31;
      ID_DFR0    at 16#D48# range 0 .. 31;
      ID_AFR0    at 16#D4C# range 0 .. 31;
      ID_MMFR0   at 16#D50# range 0 .. 31;
      ID_MMFR1   at 16#D54# range 0 .. 31;
      ID_MMFR2   at 16#D58# range 0 .. 31;
      ID_MMFR3   at 16#D5C# range 0 .. 31;
      ID_ISAR0   at 16#D60# range 0 .. 31;
      ID_ISAR1   at 16#D64# range 0 .. 31;
      ID_ISAR2   at 16#D68# range 0 .. 31;
      ID_ISAR3   at 16#D6C# range 0 .. 31;
      ID_ISAR4   at 16#D70# range 0 .. 31;
      CLIDR      at 16#D78# range 0 .. 31;
      CTR        at 16#D7C# range 0 .. 31;
      CCSIDR     at 16#D80# range 0 .. 31;
      CSSELR     at 16#D84# range 0 .. 31;
      CPACR      at 16#D88# range 0 .. 31;
      MVFR0      at 16#F40# range 0 .. 31;
      MVFR1      at 16#F44# range 0 .. 31;
      MVFR2      at 16#F48# range 0 .. 31;
      ICIALLU    at 16#F50# range 0 .. 31;
      ICIMVAU    at 16#F58# range 0 .. 31;
      DCIMVAC    at 16#F5C# range 0 .. 31;
      DCISW      at 16#F60# range 0 .. 31;
      DCCMVAU    at 16#F64# range 0 .. 31;
      DCCMVAC    at 16#F68# range 0 .. 31;
      DCCSW      at 16#F6C# range 0 .. 31;
      DCCIMVAC   at 16#F70# range 0 .. 31;
      DCCISW     at 16#F74# range 0 .. 31;
      CM7_ITCMCR at 16#F90# range 0 .. 31;
      CM7_DTCMCR at 16#F94# range 0 .. 31;
      CM7_AHBPCR at 16#F98# range 0 .. 31;
      CM7_CACR   at 16#F9C# range 0 .. 31;
      CM7_AHBSCR at 16#FA0# range 0 .. 31;
      CM7_ABFSR  at 16#FA8# range 0 .. 31;
   end record;

   --  System Control Block
   SystemControl_Periph : aliased SystemControl_Peripheral
     with Import, Address => SystemControl_Base;

end NRF_SVD.SystemControl;
