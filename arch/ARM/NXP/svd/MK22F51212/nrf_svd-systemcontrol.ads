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

--  This spec has been automatically generated from MK22F51212.xml

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
   subtype SCB_CPUID_VARIANT_Field is HAL.UInt4;
   subtype SCB_CPUID_IMPLEMENTER_Field is HAL.UInt8;

   --  CPUID Base Register
   type SCB_CPUID_Register is record
      --  Read-only. Indicates patch release: 0x0 = Patch 0
      REVISION       : SCB_CPUID_REVISION_Field;
      --  Read-only. Indicates part number
      PARTNO         : SCB_CPUID_PARTNO_Field;
      --  unspecified
      Reserved_16_19 : HAL.UInt4;
      --  Read-only. Indicates processor revision: 0x2 = Revision 2
      VARIANT        : SCB_CPUID_VARIANT_Field;
      --  Read-only. Implementer code
      IMPLEMENTER    : SCB_CPUID_IMPLEMENTER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPUID_Register use record
      REVISION       at 0 range 0 .. 3;
      PARTNO         at 0 range 4 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      VARIANT        at 0 range 20 .. 23;
      IMPLEMENTER    at 0 range 24 .. 31;
   end record;

   subtype SCB_ICSR_VECTACTIVE_Field is HAL.UInt9;

   --  no description available
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

   subtype SCB_ICSR_VECTPENDING_Field is HAL.UInt6;

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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
      --  Read-only. no description available
      RETTOBASE      : ICSR_RETTOBASE_Field :=
                        NRF_SVD.SystemControl.ICSR_RETTOBASE_Field_0;
      --  Read-only. Exception number of the highest priority pending enabled
      --  exception
      VECTPENDING    : SCB_ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Read-only. no description available
      ISRPENDING     : Boolean := False;
      --  Read-only. no description available
      ISRPREEMPT     : ICSR_ISRPREEMPT_Field :=
                        NRF_SVD.SystemControl.ICSR_ISRPREEMPT_Field_0;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Write-only. no description available
      PENDSTCLR      : ICSR_PENDSTCLR_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSTCLR_Field_0;
      --  no description available
      PENDSTSET      : ICSR_PENDSTSET_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSTSET_Field_0;
      --  Write-only. no description available
      PENDSVCLR      : ICSR_PENDSVCLR_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSVCLR_Field_0;
      --  no description available
      PENDSVSET      : ICSR_PENDSVSET_Field :=
                        NRF_SVD.SystemControl.ICSR_PENDSVSET_Field_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  no description available
      NMIPENDSET     : ICSR_NMIPENDSET_Field :=
                        NRF_SVD.SystemControl.ICSR_NMIPENDSET_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_ICSR_Register use record
      VECTACTIVE     at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RETTOBASE      at 0 range 11 .. 11;
      VECTPENDING    at 0 range 12 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
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

   --  no description available
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

   --  no description available
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
      --  Write-only. no description available
      VECTRESET      : Boolean := False;
      --  Write-only. no description available
      VECTCLRACTIVE  : Boolean := False;
      --  Write-only. no description available
      SYSRESETREQ    : AIRCR_SYSRESETREQ_Field :=
                        NRF_SVD.SystemControl.AIRCR_SYSRESETREQ_Field_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Interrupt priority grouping field. This field determines the split of
      --  group priority from subpriority.
      PRIGROUP       : SCB_AIRCR_PRIGROUP_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Read-only. no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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
      --  no description available
      SLEEPONEXIT   : SCR_SLEEPONEXIT_Field :=
                       NRF_SVD.SystemControl.SCR_SLEEPONEXIT_Field_0;
      --  no description available
      SLEEPDEEP     : SCR_SLEEPDEEP_Field :=
                       NRF_SVD.SystemControl.SCR_SLEEPDEEP_Field_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  no description available
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

   --  no description available
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

   --  Configuration and Control Register
   type SCB_CCR_Register is record
      --  no description available
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
      Reserved_10_31 : HAL.UInt22 := 16#0#;
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
      Reserved_10_31 at 0 range 10 .. 31;
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

   subtype SCB_SHPR3_PRI_14_Field is HAL.UInt8;
   subtype SCB_SHPR3_PRI_15_Field is HAL.UInt8;

   --  System Handler Priority Register 3
   type SCB_SHPR3_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Priority of system handler 14, PendSV
      PRI_14        : SCB_SHPR3_PRI_14_Field := 16#0#;
      --  Priority of system handler 15, SysTick exception
      PRI_15        : SCB_SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHPR3_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      PRI_14        at 0 range 16 .. 23;
      PRI_15        at 0 range 24 .. 31;
   end record;

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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
      --  no description available
      MEMFAULTACT    : SHCSR_MEMFAULTACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_MEMFAULTACT_Field_0;
      --  no description available
      BUSFAULTACT    : SHCSR_BUSFAULTACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_BUSFAULTACT_Field_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  no description available
      USGFAULTACT    : SHCSR_USGFAULTACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_USGFAULTACT_Field_0;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  no description available
      SVCALLACT      : SHCSR_SVCALLACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_SVCALLACT_Field_0;
      --  no description available
      MONITORACT     : SHCSR_MONITORACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_MONITORACT_Field_0;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  no description available
      PENDSVACT      : SHCSR_PENDSVACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_PENDSVACT_Field_0;
      --  no description available
      SYSTICKACT     : SHCSR_SYSTICKACT_Field :=
                        NRF_SVD.SystemControl.SHCSR_SYSTICKACT_Field_0;
      --  no description available
      USGFAULTPENDED : SHCSR_USGFAULTPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_USGFAULTPENDED_Field_0;
      --  no description available
      MEMFAULTPENDED : SHCSR_MEMFAULTPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_MEMFAULTPENDED_Field_0;
      --  no description available
      BUSFAULTPENDED : SHCSR_BUSFAULTPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_BUSFAULTPENDED_Field_0;
      --  no description available
      SVCALLPENDED   : SHCSR_SVCALLPENDED_Field :=
                        NRF_SVD.SystemControl.SHCSR_SVCALLPENDED_Field_0;
      --  no description available
      MEMFAULTENA    : SHCSR_MEMFAULTENA_Field :=
                        NRF_SVD.SystemControl.SHCSR_MEMFAULTENA_Field_0;
      --  no description available
      BUSFAULTENA    : SHCSR_BUSFAULTENA_Field :=
                        NRF_SVD.SystemControl.SHCSR_BUSFAULTENA_Field_0;
      --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  Configurable Fault Status Registers
   type SCB_CFSR_Register is record
      --  no description available
      IACCVIOL       : CFSR_IACCVIOL_Field :=
                        NRF_SVD.SystemControl.CFSR_IACCVIOL_Field_0;
      --  no description available
      DACCVIOL       : CFSR_DACCVIOL_Field :=
                        NRF_SVD.SystemControl.CFSR_DACCVIOL_Field_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  no description available
      MUNSTKERR      : CFSR_MUNSTKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_MUNSTKERR_Field_0;
      --  no description available
      MSTKERR        : CFSR_MSTKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_MSTKERR_Field_0;
      --  no description available
      MLSPERR        : CFSR_MLSPERR_Field :=
                        NRF_SVD.SystemControl.CFSR_MLSPERR_Field_0;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  no description available
      MMARVALID      : CFSR_MMARVALID_Field :=
                        NRF_SVD.SystemControl.CFSR_MMARVALID_Field_0;
      --  no description available
      IBUSERR        : CFSR_IBUSERR_Field :=
                        NRF_SVD.SystemControl.CFSR_IBUSERR_Field_0;
      --  no description available
      PRECISERR      : CFSR_PRECISERR_Field :=
                        NRF_SVD.SystemControl.CFSR_PRECISERR_Field_0;
      --  no description available
      IMPRECISERR    : CFSR_IMPRECISERR_Field :=
                        NRF_SVD.SystemControl.CFSR_IMPRECISERR_Field_0;
      --  no description available
      UNSTKERR       : CFSR_UNSTKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_UNSTKERR_Field_0;
      --  no description available
      STKERR         : CFSR_STKERR_Field :=
                        NRF_SVD.SystemControl.CFSR_STKERR_Field_0;
      --  no description available
      LSPERR         : CFSR_LSPERR_Field :=
                        NRF_SVD.SystemControl.CFSR_LSPERR_Field_0;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  no description available
      BFARVALID      : CFSR_BFARVALID_Field :=
                        NRF_SVD.SystemControl.CFSR_BFARVALID_Field_0;
      --  no description available
      UNDEFINSTR     : CFSR_UNDEFINSTR_Field :=
                        NRF_SVD.SystemControl.CFSR_UNDEFINSTR_Field_0;
      --  no description available
      INVSTATE       : CFSR_INVSTATE_Field :=
                        NRF_SVD.SystemControl.CFSR_INVSTATE_Field_0;
      --  no description available
      INVPC          : CFSR_INVPC_Field :=
                        NRF_SVD.SystemControl.CFSR_INVPC_Field_0;
      --  no description available
      NOCP           : CFSR_NOCP_Field :=
                        NRF_SVD.SystemControl.CFSR_NOCP_Field_0;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  no description available
      UNALIGNED      : CFSR_UNALIGNED_Field :=
                        NRF_SVD.SystemControl.CFSR_UNALIGNED_Field_0;
      --  no description available
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

   --  no description available
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

   --  no description available
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

   --  HardFault Status register
   type SCB_HFSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  no description available
      VECTTBL       : HFSR_VECTTBL_Field :=
                       NRF_SVD.SystemControl.HFSR_VECTTBL_Field_0;
      --  unspecified
      Reserved_2_29 : HAL.UInt28 := 16#0#;
      --  no description available
      FORCED        : HFSR_FORCED_Field :=
                       NRF_SVD.SystemControl.HFSR_FORCED_Field_0;
      --  no description available
      DEBUGEVT      : Boolean := False;
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
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

   --  no description available
   type DFSR_EXTERNAL_Field is
     (
      --  No EDBGRQ debug event
      DFSR_EXTERNAL_Field_0,
      --  EDBGRQ debug event
      DFSR_EXTERNAL_Field_1)
     with Size => 1;
   for DFSR_EXTERNAL_Field use
     (DFSR_EXTERNAL_Field_0 => 0,
      DFSR_EXTERNAL_Field_1 => 1);

   --  Debug Fault Status Register
   type SCB_DFSR_Register is record
      --  no description available
      HALTED        : DFSR_HALTED_Field :=
                       NRF_SVD.SystemControl.DFSR_HALTED_Field_0;
      --  no description available
      BKPT          : DFSR_BKPT_Field :=
                       NRF_SVD.SystemControl.DFSR_BKPT_Field_0;
      --  no description available
      DWTTRAP       : DFSR_DWTTRAP_Field :=
                       NRF_SVD.SystemControl.DFSR_DWTTRAP_Field_0;
      --  no description available
      VCATCH        : DFSR_VCATCH_Field :=
                       NRF_SVD.SystemControl.DFSR_VCATCH_Field_0;
      --  no description available
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

   --  Access privileges for coprocessor 10.
   type CPACR_CP10_Field is
     (
      --  Access denied. Any attempted access generates a NOCP UsageFault
      CPACR_CP10_Field_00,
      --  Privileged access only. An unprivileged access generates a NOCP
      --  fault.
      CPACR_CP10_Field_01,
      --  Reserved. The result of any access is UNPREDICTABLE.
      CPACR_CP10_Field_10,
      --  Full access.
      CPACR_CP10_Field_11)
     with Size => 2;
   for CPACR_CP10_Field use
     (CPACR_CP10_Field_00 => 0,
      CPACR_CP10_Field_01 => 1,
      CPACR_CP10_Field_10 => 2,
      CPACR_CP10_Field_11 => 3);

   --  SCB_CPACR_CP array
   type SCB_CPACR_CP_Field_Array is array (10 .. 11) of CPACR_CP10_Field
     with Component_Size => 2, Size => 4;

   --  Type definition for SCB_CPACR_CP
   type SCB_CPACR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt4;
         when True =>
            --  CP as an array
            Arr : SCB_CPACR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SCB_CPACR_CP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Coprocessor Access Control Register
   type SCB_CPACR_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  Access privileges for coprocessor 10.
      CP             : SCB_CPACR_CP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPACR_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      CP             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Lazy state preservation.
   type FPCCR_LSPACT_Field is
     (
      --  Lazy state preservation is not active.
      FPCCR_LSPACT_Field_0,
      --  Lazy state preservation is active. floating-point stack frame has
      --  been allocated but saving state to it has been deferred.
      FPCCR_LSPACT_Field_1)
     with Size => 1;
   for FPCCR_LSPACT_Field use
     (FPCCR_LSPACT_Field_0 => 0,
      FPCCR_LSPACT_Field_1 => 1);

   --  Privilege level when the floating-point stack frame was allocated.
   type FPCCR_USER_Field is
     (
      --  Privilege level was not user when the floating-point stack frame was
      --  allocated.
      FPCCR_USER_Field_0,
      --  Privilege level was user when the floating-point stack frame was
      --  allocated.
      FPCCR_USER_Field_1)
     with Size => 1;
   for FPCCR_USER_Field use
     (FPCCR_USER_Field_0 => 0,
      FPCCR_USER_Field_1 => 1);

   --  Mode when the floating-point stack frame was allocated.
   type FPCCR_THREAD_Field is
     (
      --  Mode was not Thread Mode when the floating-point stack frame was
      --  allocated.
      FPCCR_THREAD_Field_0,
      --  Mode was Thread Mode when the floating-point stack frame was
      --  allocated.
      FPCCR_THREAD_Field_1)
     with Size => 1;
   for FPCCR_THREAD_Field use
     (FPCCR_THREAD_Field_0 => 0,
      FPCCR_THREAD_Field_1 => 1);

   --  Permission to set the HardFault handler to the pending state when the
   --  floating-point stack frame was allocated.
   type FPCCR_HFRDY_Field is
     (
      --  Priority did not permit setting the HardFault handler to the pending
      --  state when the floating-point stack frame was allocated.
      FPCCR_HFRDY_Field_0,
      --  Priority permitted setting the HardFault handler to the pending state
      --  when the floating-point stack frame was allocated.
      FPCCR_HFRDY_Field_1)
     with Size => 1;
   for FPCCR_HFRDY_Field use
     (FPCCR_HFRDY_Field_0 => 0,
      FPCCR_HFRDY_Field_1 => 1);

   --  Permission to set the MemManage handler to the pending state when the
   --  floating-point stack frame was allocated.
   type FPCCR_MMRDY_Field is
     (
      --  MemManage is disabled or priority did not permit setting the
      --  MemManage handler to the pending state when the floating-point stack
      --  frame was allocated.
      FPCCR_MMRDY_Field_0,
      --  MemManage is enabled and priority permitted setting the MemManage
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      FPCCR_MMRDY_Field_1)
     with Size => 1;
   for FPCCR_MMRDY_Field use
     (FPCCR_MMRDY_Field_0 => 0,
      FPCCR_MMRDY_Field_1 => 1);

   --  Permission to set the BusFault handler to the pending state when the
   --  floating-point stack frame was allocated.
   type FPCCR_BFRDY_Field is
     (
      --  BusFault is disabled or priority did not permit setting the BusFault
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      FPCCR_BFRDY_Field_0,
      --  BusFault is disabled or priority did not permit setting the BusFault
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      FPCCR_BFRDY_Field_1)
     with Size => 1;
   for FPCCR_BFRDY_Field use
     (FPCCR_BFRDY_Field_0 => 0,
      FPCCR_BFRDY_Field_1 => 1);

   --  Permission to set the MON_PEND when the floating-point stack frame was
   --  allocated.
   type FPCCR_MONRDY_Field is
     (
      --  DebugMonitor is disabled or priority did not permit setting MON_PEND
      --  when the floating-point stack frame was allocated.
      FPCCR_MONRDY_Field_0,
      --  DebugMonitor is enabled and priority permits setting MON_PEND when
      --  the floating-point stack frame was allocated.
      FPCCR_MONRDY_Field_1)
     with Size => 1;
   for FPCCR_MONRDY_Field use
     (FPCCR_MONRDY_Field_0 => 0,
      FPCCR_MONRDY_Field_1 => 1);

   --  Lazy state preservation for floating-point context.
   type FPCCR_LSPEN_Field is
     (
      --  Disable automatic lazy state preservation for floating-point context.
      FPCCR_LSPEN_Field_0,
      --  Enable automatic lazy state preservation for floating-point context.
      FPCCR_LSPEN_Field_1)
     with Size => 1;
   for FPCCR_LSPEN_Field use
     (FPCCR_LSPEN_Field_0 => 0,
      FPCCR_LSPEN_Field_1 => 1);

   --  Enables CONTROL2 setting on execution of a floating-point instruction.
   --  This results in automatic hardware state preservation and restoration,
   --  for floating-point context, on exception entry and exit.
   type FPCCR_ASPEN_Field is
     (
      --  Disable CONTROL2 setting on execution of a floating-point
      --  instruction.
      FPCCR_ASPEN_Field_0,
      --  Enable CONTROL2 setting on execution of a floating-point instruction.
      FPCCR_ASPEN_Field_1)
     with Size => 1;
   for FPCCR_ASPEN_Field use
     (FPCCR_ASPEN_Field_0 => 0,
      FPCCR_ASPEN_Field_1 => 1);

   --  Floating-point Context Control Register
   type SCB_FPCCR_Register is record
      --  Lazy state preservation.
      LSPACT        : FPCCR_LSPACT_Field :=
                       NRF_SVD.SystemControl.FPCCR_LSPACT_Field_0;
      --  Privilege level when the floating-point stack frame was allocated.
      USER          : FPCCR_USER_Field :=
                       NRF_SVD.SystemControl.FPCCR_USER_Field_0;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Mode when the floating-point stack frame was allocated.
      THREAD        : FPCCR_THREAD_Field :=
                       NRF_SVD.SystemControl.FPCCR_THREAD_Field_0;
      --  Permission to set the HardFault handler to the pending state when the
      --  floating-point stack frame was allocated.
      HFRDY         : FPCCR_HFRDY_Field :=
                       NRF_SVD.SystemControl.FPCCR_HFRDY_Field_0;
      --  Permission to set the MemManage handler to the pending state when the
      --  floating-point stack frame was allocated.
      MMRDY         : FPCCR_MMRDY_Field :=
                       NRF_SVD.SystemControl.FPCCR_MMRDY_Field_0;
      --  Permission to set the BusFault handler to the pending state when the
      --  floating-point stack frame was allocated.
      BFRDY         : FPCCR_BFRDY_Field :=
                       NRF_SVD.SystemControl.FPCCR_BFRDY_Field_0;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Permission to set the MON_PEND when the floating-point stack frame
      --  was allocated.
      MONRDY        : FPCCR_MONRDY_Field :=
                       NRF_SVD.SystemControl.FPCCR_MONRDY_Field_0;
      --  unspecified
      Reserved_9_29 : HAL.UInt21 := 16#0#;
      --  Lazy state preservation for floating-point context.
      LSPEN         : FPCCR_LSPEN_Field :=
                       NRF_SVD.SystemControl.FPCCR_LSPEN_Field_1;
      --  Enables CONTROL2 setting on execution of a floating-point
      --  instruction. This results in automatic hardware state preservation
      --  and restoration, for floating-point context, on exception entry and
      --  exit.
      ASPEN         : FPCCR_ASPEN_Field :=
                       NRF_SVD.SystemControl.FPCCR_ASPEN_Field_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_FPCCR_Register use record
      LSPACT        at 0 range 0 .. 0;
      USER          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      THREAD        at 0 range 3 .. 3;
      HFRDY         at 0 range 4 .. 4;
      MMRDY         at 0 range 5 .. 5;
      BFRDY         at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      MONRDY        at 0 range 8 .. 8;
      Reserved_9_29 at 0 range 9 .. 29;
      LSPEN         at 0 range 30 .. 30;
      ASPEN         at 0 range 31 .. 31;
   end record;

   subtype SCB_FPCAR_ADDRESS_Field is HAL.UInt29;

   --  Floating-point Context Address Register
   type SCB_FPCAR_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  The location of the unpopulated floating-point register space
      --  allocated on an exception stack frame.
      ADDRESS      : SCB_FPCAR_ADDRESS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_FPCAR_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      ADDRESS      at 0 range 3 .. 31;
   end record;

   --  Default value for FPSCR.RMode (Rounding Mode control field).
   type FPDSCR_RMode_Field is
     (
      --  Round to Nearest (RN) mode
      FPDSCR_RMode_Field_00,
      --  Round towards Plus Infinity (RP) mode.
      FPDSCR_RMode_Field_01,
      --  Round towards Minus Infinity (RM) mode.
      FPDSCR_RMode_Field_10,
      --  Round towards Zero (RZ) mode.
      FPDSCR_RMode_Field_11)
     with Size => 2;
   for FPDSCR_RMode_Field use
     (FPDSCR_RMode_Field_00 => 0,
      FPDSCR_RMode_Field_01 => 1,
      FPDSCR_RMode_Field_10 => 2,
      FPDSCR_RMode_Field_11 => 3);

   --  Default value for FPSCR.FZ (Flush-to-zero mode control bit).
   type FPDSCR_FZ_Field is
     (
      --  Flush-to-zero mode disabled. Behavior of the floating-point system is
      --  fully compliant with the IEEE 754 standard.
      FPDSCR_FZ_Field_0,
      --  Flush-to-zero mode enabled.
      FPDSCR_FZ_Field_1)
     with Size => 1;
   for FPDSCR_FZ_Field use
     (FPDSCR_FZ_Field_0 => 0,
      FPDSCR_FZ_Field_1 => 1);

   --  Default value for FPSCR.DN (Default NaN mode control bit).
   type FPDSCR_DN_Field is
     (
      --  NaN operands propagate through to the output of a floating-point
      --  operation.
      FPDSCR_DN_Field_0,
      --  Any operation involving one or more NaNs returns the Default NaN.
      FPDSCR_DN_Field_1)
     with Size => 1;
   for FPDSCR_DN_Field use
     (FPDSCR_DN_Field_0 => 0,
      FPDSCR_DN_Field_1 => 1);

   --  Default value for FPSCR.AHP (Alternative half-precision control bit).
   type FPDSCR_AHP_Field is
     (
      --  IEEE half-precision format selected.
      FPDSCR_AHP_Field_0,
      --  Alternative half-precision format selected.
      FPDSCR_AHP_Field_1)
     with Size => 1;
   for FPDSCR_AHP_Field use
     (FPDSCR_AHP_Field_0 => 0,
      FPDSCR_AHP_Field_1 => 1);

   --  Floating-point Default Status Control Register
   type SCB_FPDSCR_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  Default value for FPSCR.RMode (Rounding Mode control field).
      RMode          : FPDSCR_RMode_Field :=
                        NRF_SVD.SystemControl.FPDSCR_RMode_Field_00;
      --  Default value for FPSCR.FZ (Flush-to-zero mode control bit).
      FZ             : FPDSCR_FZ_Field :=
                        NRF_SVD.SystemControl.FPDSCR_FZ_Field_0;
      --  Default value for FPSCR.DN (Default NaN mode control bit).
      DN             : FPDSCR_DN_Field :=
                        NRF_SVD.SystemControl.FPDSCR_DN_Field_0;
      --  Default value for FPSCR.AHP (Alternative half-precision control bit).
      AHP            : FPDSCR_AHP_Field :=
                        NRF_SVD.SystemControl.FPDSCR_AHP_Field_0;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_FPDSCR_Register use record
      Reserved_0_21  at 0 range 0 .. 21;
      RMode          at 0 range 22 .. 23;
      FZ             at 0 range 24 .. 24;
      DN             at 0 range 25 .. 25;
      AHP            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Block
   type SystemControl_Peripheral is record
      --  Auxiliary Control Register,
      ACTLR  : aliased SCB_ACTLR_Register;
      --  CPUID Base Register
      CPUID  : aliased SCB_CPUID_Register;
      --  Interrupt Control and State Register
      ICSR   : aliased SCB_ICSR_Register;
      --  Vector Table Offset Register
      VTOR   : aliased SCB_VTOR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR  : aliased SCB_AIRCR_Register;
      --  System Control Register
      SCR    : aliased SCB_SCR_Register;
      --  Configuration and Control Register
      CCR    : aliased SCB_CCR_Register;
      --  System Handler Priority Register 1
      SHPR1  : aliased SCB_SHPR1_Register;
      --  System Handler Priority Register 2
      SHPR2  : aliased SCB_SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3  : aliased SCB_SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR  : aliased SCB_SHCSR_Register;
      --  Configurable Fault Status Registers
      CFSR   : aliased SCB_CFSR_Register;
      --  HardFault Status register
      HFSR   : aliased SCB_HFSR_Register;
      --  Debug Fault Status Register
      DFSR   : aliased SCB_DFSR_Register;
      --  MemManage Address Register
      MMFAR  : aliased HAL.UInt32;
      --  BusFault Address Register
      BFAR   : aliased HAL.UInt32;
      --  Auxiliary Fault Status Register
      AFSR   : aliased HAL.UInt32;
      --  Coprocessor Access Control Register
      CPACR  : aliased SCB_CPACR_Register;
      --  Floating-point Context Control Register
      FPCCR  : aliased SCB_FPCCR_Register;
      --  Floating-point Context Address Register
      FPCAR  : aliased SCB_FPCAR_Register;
      --  Floating-point Default Status Control Register
      FPDSCR : aliased SCB_FPDSCR_Register;
   end record
     with Volatile;

   for SystemControl_Peripheral use record
      ACTLR  at 16#8# range 0 .. 31;
      CPUID  at 16#D00# range 0 .. 31;
      ICSR   at 16#D04# range 0 .. 31;
      VTOR   at 16#D08# range 0 .. 31;
      AIRCR  at 16#D0C# range 0 .. 31;
      SCR    at 16#D10# range 0 .. 31;
      CCR    at 16#D14# range 0 .. 31;
      SHPR1  at 16#D18# range 0 .. 31;
      SHPR2  at 16#D1C# range 0 .. 31;
      SHPR3  at 16#D20# range 0 .. 31;
      SHCSR  at 16#D24# range 0 .. 31;
      CFSR   at 16#D28# range 0 .. 31;
      HFSR   at 16#D2C# range 0 .. 31;
      DFSR   at 16#D30# range 0 .. 31;
      MMFAR  at 16#D34# range 0 .. 31;
      BFAR   at 16#D38# range 0 .. 31;
      AFSR   at 16#D3C# range 0 .. 31;
      CPACR  at 16#D88# range 0 .. 31;
      FPCCR  at 16#F34# range 0 .. 31;
      FPCAR  at 16#F38# range 0 .. 31;
      FPDSCR at 16#F3C# range 0 .. 31;
   end record;

   --  System Control Block
   SystemControl_Periph : aliased SystemControl_Peripheral
     with Import, Address => SystemControl_Base;

end NRF_SVD.SystemControl;
