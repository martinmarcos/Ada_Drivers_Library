--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from LPC54605.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCB is
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
      Rettobase_0,
      --  there are no active exceptions, or the currently-executing exception
      --  is the only active exception
      Rettobase_1)
     with Size => 1;
   for ICSR_RETTOBASE_Field use
     (Rettobase_0 => 0,
      Rettobase_1 => 1);

   subtype SCB_ICSR_VECTPENDING_Field is HAL.UInt6;

   --  no description available
   type ICSR_ISRPREEMPT_Field is
     (
      --  Will not service
      Isrpreempt_0,
      --  Will service a pending exception
      Isrpreempt_1)
     with Size => 1;
   for ICSR_ISRPREEMPT_Field use
     (Isrpreempt_0 => 0,
      Isrpreempt_1 => 1);

   --  no description available
   type ICSR_PENDSTCLR_Field is
     (
      --  no effect
      Pendstclr_0,
      --  removes the pending state from the SysTick exception
      Pendstclr_1)
     with Size => 1;
   for ICSR_PENDSTCLR_Field use
     (Pendstclr_0 => 0,
      Pendstclr_1 => 1);

   --  no description available
   type ICSR_PENDSTSET_Field is
     (
      --  write: no effect; read: SysTick exception is not pending
      Pendstset_0,
      --  write: changes SysTick exception state to pending; read: SysTick
      --  exception is pending
      Pendstset_1)
     with Size => 1;
   for ICSR_PENDSTSET_Field use
     (Pendstset_0 => 0,
      Pendstset_1 => 1);

   --  no description available
   type ICSR_PENDSVCLR_Field is
     (
      --  no effect
      Pendsvclr_0,
      --  removes the pending state from the PendSV exception
      Pendsvclr_1)
     with Size => 1;
   for ICSR_PENDSVCLR_Field use
     (Pendsvclr_0 => 0,
      Pendsvclr_1 => 1);

   --  no description available
   type ICSR_PENDSVSET_Field is
     (
      --  write: no effect; read: PendSV exception is not pending
      Pendsvset_0,
      --  write: changes PendSV exception state to pending; read: PendSV
      --  exception is pending
      Pendsvset_1)
     with Size => 1;
   for ICSR_PENDSVSET_Field use
     (Pendsvset_0 => 0,
      Pendsvset_1 => 1);

   --  no description available
   type ICSR_NMIPENDSET_Field is
     (
      --  write: no effect; read: NMI exception is not pending
      Nmipendset_0,
      --  write: changes NMI exception state to pending; read: NMI exception is
      --  pending
      Nmipendset_1)
     with Size => 1;
   for ICSR_NMIPENDSET_Field use
     (Nmipendset_0 => 0,
      Nmipendset_1 => 1);

   --  Interrupt Control and State Register
   type SCB_ICSR_Register is record
      --  Read-only. Active exception number
      VECTACTIVE     : SCB_ICSR_VECTACTIVE_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Read-only. no description available
      RETTOBASE      : ICSR_RETTOBASE_Field := NRF_SVD.SCB.Rettobase_0;
      --  Read-only. Exception number of the highest priority pending enabled
      --  exception
      VECTPENDING    : SCB_ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Read-only. no description available
      ISRPENDING     : Boolean := False;
      --  Read-only. no description available
      ISRPREEMPT     : ICSR_ISRPREEMPT_Field := NRF_SVD.SCB.Isrpreempt_0;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Write-only. no description available
      PENDSTCLR      : ICSR_PENDSTCLR_Field := NRF_SVD.SCB.Pendstclr_0;
      --  no description available
      PENDSTSET      : ICSR_PENDSTSET_Field := NRF_SVD.SCB.Pendstset_0;
      --  Write-only. no description available
      PENDSVCLR      : ICSR_PENDSVCLR_Field := NRF_SVD.SCB.Pendsvclr_0;
      --  no description available
      PENDSVSET      : ICSR_PENDSVSET_Field := NRF_SVD.SCB.Pendsvset_0;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  no description available
      NMIPENDSET     : ICSR_NMIPENDSET_Field := NRF_SVD.SCB.Nmipendset_0;
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
      Sysresetreq_0,
      --  asserts a signal to the outer system that requests a reset
      Sysresetreq_1)
     with Size => 1;
   for AIRCR_SYSRESETREQ_Field use
     (Sysresetreq_0 => 0,
      Sysresetreq_1 => 1);

   subtype SCB_AIRCR_PRIGROUP_Field is HAL.UInt3;

   --  no description available
   type AIRCR_ENDIANNESS_Field is
     (
      --  Little-endian
      Endianness_0,
      --  Big-endian
      Endianness_1)
     with Size => 1;
   for AIRCR_ENDIANNESS_Field use
     (Endianness_0 => 0,
      Endianness_1 => 1);

   subtype SCB_AIRCR_VECTKEY_Field is HAL.UInt16;

   --  Application Interrupt and Reset Control Register
   type SCB_AIRCR_Register is record
      --  Write-only. no description available
      VECTRESET      : Boolean := False;
      --  Write-only. no description available
      VECTCLRACTIVE  : Boolean := False;
      --  Write-only. no description available
      SYSRESETREQ    : AIRCR_SYSRESETREQ_Field := NRF_SVD.SCB.Sysresetreq_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Interrupt priority grouping field. This field determines the split of
      --  group priority from subpriority.
      PRIGROUP       : SCB_AIRCR_PRIGROUP_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Read-only. no description available
      ENDIANNESS     : AIRCR_ENDIANNESS_Field := NRF_SVD.SCB.Endianness_0;
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
      Sleeponexit_0,
      --  enter sleep, or deep sleep, on return from an ISR
      Sleeponexit_1)
     with Size => 1;
   for SCR_SLEEPONEXIT_Field use
     (Sleeponexit_0 => 0,
      Sleeponexit_1 => 1);

   --  no description available
   type SCR_SLEEPDEEP_Field is
     (
      --  sleep
      Sleepdeep_0,
      --  deep sleep
      Sleepdeep_1)
     with Size => 1;
   for SCR_SLEEPDEEP_Field use
     (Sleepdeep_0 => 0,
      Sleepdeep_1 => 1);

   --  no description available
   type SCR_SEVONPEND_Field is
     (
      --  only enabled interrupts or events can wakeup the processor, disabled
      --  interrupts are excluded
      Sevonpend_0,
      --  enabled events and all interrupts, including disabled interrupts, can
      --  wakeup the processor
      Sevonpend_1)
     with Size => 1;
   for SCR_SEVONPEND_Field use
     (Sevonpend_0 => 0,
      Sevonpend_1 => 1);

   --  System Control Register
   type SCB_SCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  no description available
      SLEEPONEXIT   : SCR_SLEEPONEXIT_Field := NRF_SVD.SCB.Sleeponexit_0;
      --  no description available
      SLEEPDEEP     : SCR_SLEEPDEEP_Field := NRF_SVD.SCB.Sleepdeep_0;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  no description available
      SEVONPEND     : SCR_SEVONPEND_Field := NRF_SVD.SCB.Sevonpend_0;
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
      Nonbasethrdena_0,
      --  processor can enter Thread mode from any level under the control of
      --  an EXC_RETURN value
      Nonbasethrdena_1)
     with Size => 1;
   for CCR_NONBASETHRDENA_Field use
     (Nonbasethrdena_0 => 0,
      Nonbasethrdena_1 => 1);

   --  Enables unprivileged software access to the STIR
   type CCR_USERSETMPEND_Field is
     (
      --  disable
      Usersetmpend_0,
      --  enable
      Usersetmpend_1)
     with Size => 1;
   for CCR_USERSETMPEND_Field use
     (Usersetmpend_0 => 0,
      Usersetmpend_1 => 1);

   --  Enables unaligned access traps
   type CCR_UNALIGN_TRP_Field is
     (
      --  do not trap unaligned halfword and word accesses
      Unalign_Trp_0,
      --  trap unaligned halfword and word accesses
      Unalign_Trp_1)
     with Size => 1;
   for CCR_UNALIGN_TRP_Field use
     (Unalign_Trp_0 => 0,
      Unalign_Trp_1 => 1);

   --  Enables faulting or halting when the processor executes an SDIV or UDIV
   --  instruction with a divisor of 0
   type CCR_DIV_0_TRP_Field is
     (
      --  do not trap divide by 0
      Div_0_Trp_0,
      --  trap divide by 0
      Div_0_Trp_1)
     with Size => 1;
   for CCR_DIV_0_TRP_Field use
     (Div_0_Trp_0 => 0,
      Div_0_Trp_1 => 1);

   --  Enables handlers with priority -1 or -2 to ignore data BusFaults caused
   --  by load and store instructions.
   type CCR_BFHFNMIGN_Field is
     (
      --  data bus faults caused by load and store instructions cause a lock-up
      Bfhfnmign_0,
      --  handlers running at priority -1 and -2 ignore data bus faults caused
      --  by load and store instructions
      Bfhfnmign_1)
     with Size => 1;
   for CCR_BFHFNMIGN_Field use
     (Bfhfnmign_0 => 0,
      Bfhfnmign_1 => 1);

   --  Indicates stack alignment on exception entry
   type CCR_STKALIGN_Field is
     (
      --  4-byte aligned
      Stkalign_0,
      --  8-byte aligned
      Stkalign_1)
     with Size => 1;
   for CCR_STKALIGN_Field use
     (Stkalign_0 => 0,
      Stkalign_1 => 1);

   --  Configuration and Control Register
   type SCB_CCR_Register is record
      --  no description available
      NONBASETHRDENA : CCR_NONBASETHRDENA_Field :=
                        NRF_SVD.SCB.Nonbasethrdena_0;
      --  Enables unprivileged software access to the STIR
      USERSETMPEND   : CCR_USERSETMPEND_Field := NRF_SVD.SCB.Usersetmpend_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Enables unaligned access traps
      UNALIGN_TRP    : CCR_UNALIGN_TRP_Field := NRF_SVD.SCB.Unalign_Trp_0;
      --  Enables faulting or halting when the processor executes an SDIV or
      --  UDIV instruction with a divisor of 0
      DIV_0_TRP      : CCR_DIV_0_TRP_Field := NRF_SVD.SCB.Div_0_Trp_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Enables handlers with priority -1 or -2 to ignore data BusFaults
      --  caused by load and store instructions.
      BFHFNMIGN      : CCR_BFHFNMIGN_Field := NRF_SVD.SCB.Bfhfnmign_0;
      --  Indicates stack alignment on exception entry
      STKALIGN       : CCR_STKALIGN_Field := NRF_SVD.SCB.Stkalign_0;
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
      Memfaultact_0,
      --  exception is active
      Memfaultact_1)
     with Size => 1;
   for SHCSR_MEMFAULTACT_Field use
     (Memfaultact_0 => 0,
      Memfaultact_1 => 1);

   --  no description available
   type SHCSR_BUSFAULTACT_Field is
     (
      --  exception is not active
      Busfaultact_0,
      --  exception is active
      Busfaultact_1)
     with Size => 1;
   for SHCSR_BUSFAULTACT_Field use
     (Busfaultact_0 => 0,
      Busfaultact_1 => 1);

   --  no description available
   type SHCSR_USGFAULTACT_Field is
     (
      --  exception is not active
      Usgfaultact_0,
      --  exception is active
      Usgfaultact_1)
     with Size => 1;
   for SHCSR_USGFAULTACT_Field use
     (Usgfaultact_0 => 0,
      Usgfaultact_1 => 1);

   --  no description available
   type SHCSR_SVCALLACT_Field is
     (
      --  exception is not active
      Svcallact_0,
      --  exception is active
      Svcallact_1)
     with Size => 1;
   for SHCSR_SVCALLACT_Field use
     (Svcallact_0 => 0,
      Svcallact_1 => 1);

   --  no description available
   type SHCSR_MONITORACT_Field is
     (
      --  exception is not active
      Monitoract_0,
      --  exception is active
      Monitoract_1)
     with Size => 1;
   for SHCSR_MONITORACT_Field use
     (Monitoract_0 => 0,
      Monitoract_1 => 1);

   --  no description available
   type SHCSR_PENDSVACT_Field is
     (
      --  exception is not active
      Pendsvact_0,
      --  exception is active
      Pendsvact_1)
     with Size => 1;
   for SHCSR_PENDSVACT_Field use
     (Pendsvact_0 => 0,
      Pendsvact_1 => 1);

   --  no description available
   type SHCSR_SYSTICKACT_Field is
     (
      --  exception is not active
      Systickact_0,
      --  exception is active
      Systickact_1)
     with Size => 1;
   for SHCSR_SYSTICKACT_Field use
     (Systickact_0 => 0,
      Systickact_1 => 1);

   --  no description available
   type SHCSR_USGFAULTPENDED_Field is
     (
      --  exception is not pending
      Usgfaultpended_0,
      --  exception is pending
      Usgfaultpended_1)
     with Size => 1;
   for SHCSR_USGFAULTPENDED_Field use
     (Usgfaultpended_0 => 0,
      Usgfaultpended_1 => 1);

   --  no description available
   type SHCSR_MEMFAULTPENDED_Field is
     (
      --  exception is not pending
      Memfaultpended_0,
      --  exception is pending
      Memfaultpended_1)
     with Size => 1;
   for SHCSR_MEMFAULTPENDED_Field use
     (Memfaultpended_0 => 0,
      Memfaultpended_1 => 1);

   --  no description available
   type SHCSR_BUSFAULTPENDED_Field is
     (
      --  exception is not pending
      Busfaultpended_0,
      --  exception is pending
      Busfaultpended_1)
     with Size => 1;
   for SHCSR_BUSFAULTPENDED_Field use
     (Busfaultpended_0 => 0,
      Busfaultpended_1 => 1);

   --  no description available
   type SHCSR_SVCALLPENDED_Field is
     (
      --  exception is not pending
      Svcallpended_0,
      --  exception is pending
      Svcallpended_1)
     with Size => 1;
   for SHCSR_SVCALLPENDED_Field use
     (Svcallpended_0 => 0,
      Svcallpended_1 => 1);

   --  no description available
   type SHCSR_MEMFAULTENA_Field is
     (
      --  disable the exception
      Memfaultena_0,
      --  enable the exception
      Memfaultena_1)
     with Size => 1;
   for SHCSR_MEMFAULTENA_Field use
     (Memfaultena_0 => 0,
      Memfaultena_1 => 1);

   --  no description available
   type SHCSR_BUSFAULTENA_Field is
     (
      --  disable the exception
      Busfaultena_0,
      --  enable the exception
      Busfaultena_1)
     with Size => 1;
   for SHCSR_BUSFAULTENA_Field use
     (Busfaultena_0 => 0,
      Busfaultena_1 => 1);

   --  no description available
   type SHCSR_USGFAULTENA_Field is
     (
      --  disable the exception
      Usgfaultena_0,
      --  enable the exception
      Usgfaultena_1)
     with Size => 1;
   for SHCSR_USGFAULTENA_Field use
     (Usgfaultena_0 => 0,
      Usgfaultena_1 => 1);

   --  System Handler Control and State Register
   type SCB_SHCSR_Register is record
      --  no description available
      MEMFAULTACT    : SHCSR_MEMFAULTACT_Field := NRF_SVD.SCB.Memfaultact_0;
      --  no description available
      BUSFAULTACT    : SHCSR_BUSFAULTACT_Field := NRF_SVD.SCB.Busfaultact_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  no description available
      USGFAULTACT    : SHCSR_USGFAULTACT_Field := NRF_SVD.SCB.Usgfaultact_0;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  no description available
      SVCALLACT      : SHCSR_SVCALLACT_Field := NRF_SVD.SCB.Svcallact_0;
      --  no description available
      MONITORACT     : SHCSR_MONITORACT_Field := NRF_SVD.SCB.Monitoract_0;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  no description available
      PENDSVACT      : SHCSR_PENDSVACT_Field := NRF_SVD.SCB.Pendsvact_0;
      --  no description available
      SYSTICKACT     : SHCSR_SYSTICKACT_Field := NRF_SVD.SCB.Systickact_0;
      --  no description available
      USGFAULTPENDED : SHCSR_USGFAULTPENDED_Field :=
                        NRF_SVD.SCB.Usgfaultpended_0;
      --  no description available
      MEMFAULTPENDED : SHCSR_MEMFAULTPENDED_Field :=
                        NRF_SVD.SCB.Memfaultpended_0;
      --  no description available
      BUSFAULTPENDED : SHCSR_BUSFAULTPENDED_Field :=
                        NRF_SVD.SCB.Busfaultpended_0;
      --  no description available
      SVCALLPENDED   : SHCSR_SVCALLPENDED_Field := NRF_SVD.SCB.Svcallpended_0;
      --  no description available
      MEMFAULTENA    : SHCSR_MEMFAULTENA_Field := NRF_SVD.SCB.Memfaultena_0;
      --  no description available
      BUSFAULTENA    : SHCSR_BUSFAULTENA_Field := NRF_SVD.SCB.Busfaultena_0;
      --  no description available
      USGFAULTENA    : SHCSR_USGFAULTENA_Field := NRF_SVD.SCB.Usgfaultena_0;
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
      Iaccviol_0,
      --  the processor attempted an instruction fetch from a location that
      --  does not permit execution
      Iaccviol_1)
     with Size => 1;
   for CFSR_IACCVIOL_Field use
     (Iaccviol_0 => 0,
      Iaccviol_1 => 1);

   --  no description available
   type CFSR_DACCVIOL_Field is
     (
      --  no data access violation fault
      Daccviol_0,
      --  the processor attempted a load or store at a location that does not
      --  permit the operation
      Daccviol_1)
     with Size => 1;
   for CFSR_DACCVIOL_Field use
     (Daccviol_0 => 0,
      Daccviol_1 => 1);

   --  no description available
   type CFSR_MUNSTKERR_Field is
     (
      --  no unstacking fault
      Munstkerr_0,
      --  unstack for an exception return has caused one or more access
      --  violations
      Munstkerr_1)
     with Size => 1;
   for CFSR_MUNSTKERR_Field use
     (Munstkerr_0 => 0,
      Munstkerr_1 => 1);

   --  no description available
   type CFSR_MSTKERR_Field is
     (
      --  no stacking fault
      Mstkerr_0,
      --  stacking for an exception entry has caused one or more access
      --  violations
      Mstkerr_1)
     with Size => 1;
   for CFSR_MSTKERR_Field use
     (Mstkerr_0 => 0,
      Mstkerr_1 => 1);

   --  no description available
   type CFSR_MLSPERR_Field is
     (
      --  No MemManage fault occurred during floating-point lazy state
      --  preservation
      Mlsperr_0,
      --  A MemManage fault occurred during floating-point lazy state
      --  preservation
      Mlsperr_1)
     with Size => 1;
   for CFSR_MLSPERR_Field use
     (Mlsperr_0 => 0,
      Mlsperr_1 => 1);

   --  no description available
   type CFSR_MMARVALID_Field is
     (
      --  value in MMAR is not a valid fault address
      Mmarvalid_0,
      --  MMAR holds a valid fault address
      Mmarvalid_1)
     with Size => 1;
   for CFSR_MMARVALID_Field use
     (Mmarvalid_0 => 0,
      Mmarvalid_1 => 1);

   --  no description available
   type CFSR_IBUSERR_Field is
     (
      --  no instruction bus error
      Ibuserr_0,
      --  instruction bus error
      Ibuserr_1)
     with Size => 1;
   for CFSR_IBUSERR_Field use
     (Ibuserr_0 => 0,
      Ibuserr_1 => 1);

   --  no description available
   type CFSR_PRECISERR_Field is
     (
      --  no precise data bus error
      Preciserr_0,
      --  a data bus error has occurred, and the PC value stacked for the
      --  exception return points to the instruction that caused the fault
      Preciserr_1)
     with Size => 1;
   for CFSR_PRECISERR_Field use
     (Preciserr_0 => 0,
      Preciserr_1 => 1);

   --  no description available
   type CFSR_IMPRECISERR_Field is
     (
      --  no imprecise data bus error
      Impreciserr_0,
      --  a data bus error has occurred, but the return address in the stack
      --  frame is not related to the instruction that caused the error
      Impreciserr_1)
     with Size => 1;
   for CFSR_IMPRECISERR_Field use
     (Impreciserr_0 => 0,
      Impreciserr_1 => 1);

   --  no description available
   type CFSR_UNSTKERR_Field is
     (
      --  no unstacking fault
      Unstkerr_0,
      --  unstack for an exception return has caused one or more BusFaults
      Unstkerr_1)
     with Size => 1;
   for CFSR_UNSTKERR_Field use
     (Unstkerr_0 => 0,
      Unstkerr_1 => 1);

   --  no description available
   type CFSR_STKERR_Field is
     (
      --  no stacking fault
      Stkerr_0,
      --  stacking for an exception entry has caused one or more BusFaults
      Stkerr_1)
     with Size => 1;
   for CFSR_STKERR_Field use
     (Stkerr_0 => 0,
      Stkerr_1 => 1);

   --  no description available
   type CFSR_LSPERR_Field is
     (
      --  No bus fault occurred during floating-point lazy state preservation
      Lsperr_0,
      --  A bus fault occurred during floating-point lazy state preservation
      Lsperr_1)
     with Size => 1;
   for CFSR_LSPERR_Field use
     (Lsperr_0 => 0,
      Lsperr_1 => 1);

   --  no description available
   type CFSR_BFARVALID_Field is
     (
      --  value in BFAR is not a valid fault address
      Bfarvalid_0,
      --  BFAR holds a valid fault address
      Bfarvalid_1)
     with Size => 1;
   for CFSR_BFARVALID_Field use
     (Bfarvalid_0 => 0,
      Bfarvalid_1 => 1);

   --  no description available
   type CFSR_UNDEFINSTR_Field is
     (
      --  no undefined instruction UsageFault
      Undefinstr_0,
      --  the processor has attempted to execute an undefined instruction
      Undefinstr_1)
     with Size => 1;
   for CFSR_UNDEFINSTR_Field use
     (Undefinstr_0 => 0,
      Undefinstr_1 => 1);

   --  no description available
   type CFSR_INVSTATE_Field is
     (
      --  no invalid state UsageFault
      Invstate_0,
      --  the processor has attempted to execute an instruction that makes
      --  illegal use of the EPSR
      Invstate_1)
     with Size => 1;
   for CFSR_INVSTATE_Field use
     (Invstate_0 => 0,
      Invstate_1 => 1);

   --  no description available
   type CFSR_INVPC_Field is
     (
      --  no invalid PC load UsageFault
      Invpc_0,
      --  the processor has attempted an illegal load of EXC_RETURN to the PC
      Invpc_1)
     with Size => 1;
   for CFSR_INVPC_Field use
     (Invpc_0 => 0,
      Invpc_1 => 1);

   --  no description available
   type CFSR_NOCP_Field is
     (
      --  no UsageFault caused by attempting to access a coprocessor
      Nocp_0,
      --  the processor has attempted to access a coprocessor
      Nocp_1)
     with Size => 1;
   for CFSR_NOCP_Field use
     (Nocp_0 => 0,
      Nocp_1 => 1);

   --  no description available
   type CFSR_UNALIGNED_Field is
     (
      --  no unaligned access fault, or unaligned access trapping not enabled
      Unaligned_0,
      --  the processor has made an unaligned memory access
      Unaligned_1)
     with Size => 1;
   for CFSR_UNALIGNED_Field use
     (Unaligned_0 => 0,
      Unaligned_1 => 1);

   --  no description available
   type CFSR_DIVBYZERO_Field is
     (
      --  no divide by zero fault, or divide by zero trapping not enabled
      Divbyzero_0,
      --  the processor has executed an SDIV or UDIV instruction with a divisor
      --  of 0
      Divbyzero_1)
     with Size => 1;
   for CFSR_DIVBYZERO_Field use
     (Divbyzero_0 => 0,
      Divbyzero_1 => 1);

   --  Configurable Fault Status Registers
   type SCB_CFSR_Register is record
      --  no description available
      IACCVIOL       : CFSR_IACCVIOL_Field := NRF_SVD.SCB.Iaccviol_0;
      --  no description available
      DACCVIOL       : CFSR_DACCVIOL_Field := NRF_SVD.SCB.Daccviol_0;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  no description available
      MUNSTKERR      : CFSR_MUNSTKERR_Field := NRF_SVD.SCB.Munstkerr_0;
      --  no description available
      MSTKERR        : CFSR_MSTKERR_Field := NRF_SVD.SCB.Mstkerr_0;
      --  no description available
      MLSPERR        : CFSR_MLSPERR_Field := NRF_SVD.SCB.Mlsperr_0;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  no description available
      MMARVALID      : CFSR_MMARVALID_Field := NRF_SVD.SCB.Mmarvalid_0;
      --  no description available
      IBUSERR        : CFSR_IBUSERR_Field := NRF_SVD.SCB.Ibuserr_0;
      --  no description available
      PRECISERR      : CFSR_PRECISERR_Field := NRF_SVD.SCB.Preciserr_0;
      --  no description available
      IMPRECISERR    : CFSR_IMPRECISERR_Field := NRF_SVD.SCB.Impreciserr_0;
      --  no description available
      UNSTKERR       : CFSR_UNSTKERR_Field := NRF_SVD.SCB.Unstkerr_0;
      --  no description available
      STKERR         : CFSR_STKERR_Field := NRF_SVD.SCB.Stkerr_0;
      --  no description available
      LSPERR         : CFSR_LSPERR_Field := NRF_SVD.SCB.Lsperr_0;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  no description available
      BFARVALID      : CFSR_BFARVALID_Field := NRF_SVD.SCB.Bfarvalid_0;
      --  no description available
      UNDEFINSTR     : CFSR_UNDEFINSTR_Field := NRF_SVD.SCB.Undefinstr_0;
      --  no description available
      INVSTATE       : CFSR_INVSTATE_Field := NRF_SVD.SCB.Invstate_0;
      --  no description available
      INVPC          : CFSR_INVPC_Field := NRF_SVD.SCB.Invpc_0;
      --  no description available
      NOCP           : CFSR_NOCP_Field := NRF_SVD.SCB.Nocp_0;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  no description available
      UNALIGNED      : CFSR_UNALIGNED_Field := NRF_SVD.SCB.Unaligned_0;
      --  no description available
      DIVBYZERO      : CFSR_DIVBYZERO_Field := NRF_SVD.SCB.Divbyzero_0;
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
      Vecttbl_0,
      --  BusFault on vector table read
      Vecttbl_1)
     with Size => 1;
   for HFSR_VECTTBL_Field use
     (Vecttbl_0 => 0,
      Vecttbl_1 => 1);

   --  no description available
   type HFSR_FORCED_Field is
     (
      --  no forced HardFault
      Forced_0,
      --  forced HardFault
      Forced_1)
     with Size => 1;
   for HFSR_FORCED_Field use
     (Forced_0 => 0,
      Forced_1 => 1);

   --  HardFault Status register
   type SCB_HFSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  no description available
      VECTTBL       : HFSR_VECTTBL_Field := NRF_SVD.SCB.Vecttbl_0;
      --  unspecified
      Reserved_2_29 : HAL.UInt28 := 16#0#;
      --  no description available
      FORCED        : HFSR_FORCED_Field := NRF_SVD.SCB.Forced_0;
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
      Halted_0,
      --  Halt request debug event active
      Halted_1)
     with Size => 1;
   for DFSR_HALTED_Field use
     (Halted_0 => 0,
      Halted_1 => 1);

   --  no description available
   type DFSR_BKPT_Field is
     (
      --  No current breakpoint debug event
      Bkpt_0,
      --  At least one current breakpoint debug event
      Bkpt_1)
     with Size => 1;
   for DFSR_BKPT_Field use
     (Bkpt_0 => 0,
      Bkpt_1 => 1);

   --  no description available
   type DFSR_DWTTRAP_Field is
     (
      --  No current debug events generated by the DWT
      Dwttrap_0,
      --  At least one current debug event generated by the DWT
      Dwttrap_1)
     with Size => 1;
   for DFSR_DWTTRAP_Field use
     (Dwttrap_0 => 0,
      Dwttrap_1 => 1);

   --  no description available
   type DFSR_VCATCH_Field is
     (
      --  No Vector catch triggered
      Vcatch_0,
      --  Vector catch triggered
      Vcatch_1)
     with Size => 1;
   for DFSR_VCATCH_Field use
     (Vcatch_0 => 0,
      Vcatch_1 => 1);

   --  no description available
   type DFSR_EXTERNAL_Field is
     (
      --  No EDBGRQ debug event
      External_0,
      --  EDBGRQ debug event
      External_1)
     with Size => 1;
   for DFSR_EXTERNAL_Field use
     (External_0 => 0,
      External_1 => 1);

   --  Debug Fault Status Register
   type SCB_DFSR_Register is record
      --  no description available
      HALTED        : DFSR_HALTED_Field := NRF_SVD.SCB.Halted_0;
      --  no description available
      BKPT          : DFSR_BKPT_Field := NRF_SVD.SCB.Bkpt_0;
      --  no description available
      DWTTRAP       : DFSR_DWTTRAP_Field := NRF_SVD.SCB.Dwttrap_0;
      --  no description available
      VCATCH        : DFSR_VCATCH_Field := NRF_SVD.SCB.Vcatch_0;
      --  no description available
      EXTERNAL      : DFSR_EXTERNAL_Field := NRF_SVD.SCB.External_0;
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
      Cp10_0,
      --  Privileged access only. An unprivileged access generates a NOCP
      --  fault.
      Cp10_1,
      --  Full access.
      Cp10_3)
     with Size => 2;
   for CPACR_CP10_Field use
     (Cp10_0 => 0,
      Cp10_1 => 1,
      Cp10_3 => 3);

   --  Access privileges for coprocessor 11.
   type CPACR_CP11_Field is
     (
      --  Access denied. Any attempted access generates a NOCP UsageFault
      Cp11_0,
      --  Privileged access only. An unprivileged access generates a NOCP
      --  fault.
      Cp11_1,
      --  Full access.
      Cp11_3)
     with Size => 2;
   for CPACR_CP11_Field use
     (Cp11_0 => 0,
      Cp11_1 => 1,
      Cp11_3 => 3);

   --  Coprocessor Access Control Register
   type SCB_CPACR_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  Access privileges for coprocessor 10.
      CP10           : CPACR_CP10_Field := NRF_SVD.SCB.Cp10_0;
      --  Access privileges for coprocessor 11.
      CP11           : CPACR_CP11_Field := NRF_SVD.SCB.Cp11_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CPACR_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      CP10           at 0 range 20 .. 21;
      CP11           at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Lazy state preservation.
   type FPCCR_LSPACT_Field is
     (
      --  Lazy state preservation is not active.
      Lspact_0,
      --  Lazy state preservation is active. floating-point stack frame has
      --  been allocated but saving state to it has been deferred.
      Lspact_1)
     with Size => 1;
   for FPCCR_LSPACT_Field use
     (Lspact_0 => 0,
      Lspact_1 => 1);

   --  Privilege level when the floating-point stack frame was allocated.
   type FPCCR_USER_Field is
     (
      --  Privilege level was not user when the floating-point stack frame was
      --  allocated.
      User_0,
      --  Privilege level was user when the floating-point stack frame was
      --  allocated.
      User_1)
     with Size => 1;
   for FPCCR_USER_Field use
     (User_0 => 0,
      User_1 => 1);

   --  Mode when the floating-point stack frame was allocated.
   type FPCCR_THREAD_Field is
     (
      --  Mode was not Thread Mode when the floating-point stack frame was
      --  allocated.
      Thread_0,
      --  Mode was Thread Mode when the floating-point stack frame was
      --  allocated.
      Thread_1)
     with Size => 1;
   for FPCCR_THREAD_Field use
     (Thread_0 => 0,
      Thread_1 => 1);

   --  Permission to set the HardFault handler to the pending state when the
   --  floating-point stack frame was allocated.
   type FPCCR_HFRDY_Field is
     (
      --  Priority did not permit setting the HardFault handler to the pending
      --  state when the floating-point stack frame was allocated.
      Hfrdy_0,
      --  Priority permitted setting the HardFault handler to the pending state
      --  when the floating-point stack frame was allocated.
      Hfrdy_1)
     with Size => 1;
   for FPCCR_HFRDY_Field use
     (Hfrdy_0 => 0,
      Hfrdy_1 => 1);

   --  Permission to set the MemManage handler to the pending state when the
   --  floating-point stack frame was allocated.
   type FPCCR_MMRDY_Field is
     (
      --  MemManage is disabled or priority did not permit setting the
      --  MemManage handler to the pending state when the floating-point stack
      --  frame was allocated.
      Mmrdy_0,
      --  MemManage is enabled and priority permitted setting the MemManage
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      Mmrdy_1)
     with Size => 1;
   for FPCCR_MMRDY_Field use
     (Mmrdy_0 => 0,
      Mmrdy_1 => 1);

   --  Permission to set the BusFault handler to the pending state when the
   --  floating-point stack frame was allocated.
   type FPCCR_BFRDY_Field is
     (
      --  BusFault is disabled or priority did not permit setting the BusFault
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      Bfrdy_0,
      --  BusFault is disabled or priority did not permit setting the BusFault
      --  handler to the pending state when the floating-point stack frame was
      --  allocated.
      Bfrdy_1)
     with Size => 1;
   for FPCCR_BFRDY_Field use
     (Bfrdy_0 => 0,
      Bfrdy_1 => 1);

   --  Permission to set the MON_PEND when the floating-point stack frame was
   --  allocated.
   type FPCCR_MONRDY_Field is
     (
      --  DebugMonitor is disabled or priority did not permit setting MON_PEND
      --  when the floating-point stack frame was allocated.
      Monrdy_0,
      --  DebugMonitor is enabled and priority permits setting MON_PEND when
      --  the floating-point stack frame was allocated.
      Monrdy_1)
     with Size => 1;
   for FPCCR_MONRDY_Field use
     (Monrdy_0 => 0,
      Monrdy_1 => 1);

   --  Lazy state preservation for floating-point context.
   type FPCCR_LSPEN_Field is
     (
      --  Disable automatic lazy state preservation for floating-point context.
      Lspen_0,
      --  Enable automatic lazy state preservation for floating-point context.
      Lspen_1)
     with Size => 1;
   for FPCCR_LSPEN_Field use
     (Lspen_0 => 0,
      Lspen_1 => 1);

   --  Enables CONTROL2 setting on execution of a floating-point instruction.
   --  This results in automatic hardware state preservation and restoration,
   --  for floating-point context, on exception entry and exit.
   type FPCCR_ASPEN_Field is
     (
      --  Disable CONTROL2 setting on execution of a floating-point
      --  instruction.
      Aspen_0,
      --  Enable CONTROL2 setting on execution of a floating-point instruction.
      Aspen_1)
     with Size => 1;
   for FPCCR_ASPEN_Field use
     (Aspen_0 => 0,
      Aspen_1 => 1);

   --  Floating-point Context Control Register
   type SCB_FPCCR_Register is record
      --  Lazy state preservation.
      LSPACT        : FPCCR_LSPACT_Field := NRF_SVD.SCB.Lspact_0;
      --  Privilege level when the floating-point stack frame was allocated.
      USER          : FPCCR_USER_Field := NRF_SVD.SCB.User_0;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Mode when the floating-point stack frame was allocated.
      THREAD        : FPCCR_THREAD_Field := NRF_SVD.SCB.Thread_0;
      --  Permission to set the HardFault handler to the pending state when the
      --  floating-point stack frame was allocated.
      HFRDY         : FPCCR_HFRDY_Field := NRF_SVD.SCB.Hfrdy_0;
      --  Permission to set the MemManage handler to the pending state when the
      --  floating-point stack frame was allocated.
      MMRDY         : FPCCR_MMRDY_Field := NRF_SVD.SCB.Mmrdy_0;
      --  Permission to set the BusFault handler to the pending state when the
      --  floating-point stack frame was allocated.
      BFRDY         : FPCCR_BFRDY_Field := NRF_SVD.SCB.Bfrdy_0;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Permission to set the MON_PEND when the floating-point stack frame
      --  was allocated.
      MONRDY        : FPCCR_MONRDY_Field := NRF_SVD.SCB.Monrdy_0;
      --  unspecified
      Reserved_9_29 : HAL.UInt21 := 16#0#;
      --  Lazy state preservation for floating-point context.
      LSPEN         : FPCCR_LSPEN_Field := NRF_SVD.SCB.Lspen_1;
      --  Enables CONTROL2 setting on execution of a floating-point
      --  instruction. This results in automatic hardware state preservation
      --  and restoration, for floating-point context, on exception entry and
      --  exit.
      ASPEN         : FPCCR_ASPEN_Field := NRF_SVD.SCB.Aspen_1;
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
      Rmode_0,
      --  Round towards Plus Infinity (RP) mode.
      Rmode_1,
      --  Round towards Minus Infinity (RM) mode.
      Rmode_2,
      --  Round towards Zero (RZ) mode.
      Rmode_3)
     with Size => 2;
   for FPDSCR_RMode_Field use
     (Rmode_0 => 0,
      Rmode_1 => 1,
      Rmode_2 => 2,
      Rmode_3 => 3);

   --  Default value for FPSCR.FZ (Flush-to-zero mode control bit).
   type FPDSCR_FZ_Field is
     (
      --  Flush-to-zero mode disabled. Behavior of the floating-point system is
      --  fully compliant with the IEEE 754 standard.
      Fz_0,
      --  Flush-to-zero mode enabled.
      Fz_1)
     with Size => 1;
   for FPDSCR_FZ_Field use
     (Fz_0 => 0,
      Fz_1 => 1);

   --  Default value for FPSCR.DN (Default NaN mode control bit).
   type FPDSCR_DN_Field is
     (
      --  NaN operands propagate through to the output of a floating-point
      --  operation.
      Dn_0,
      --  Any operation involving one or more NaNs returns the Default NaN.
      Dn_1)
     with Size => 1;
   for FPDSCR_DN_Field use
     (Dn_0 => 0,
      Dn_1 => 1);

   --  Default value for FPSCR.AHP (Alternative half-precision control bit).
   type FPDSCR_AHP_Field is
     (
      --  IEEE half-precision format selected.
      Ahp_0,
      --  Alternative half-precision format selected.
      Ahp_1)
     with Size => 1;
   for FPDSCR_AHP_Field use
     (Ahp_0 => 0,
      Ahp_1 => 1);

   --  Floating-point Default Status Control Register
   type SCB_FPDSCR_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  Default value for FPSCR.RMode (Rounding Mode control field).
      RMode          : FPDSCR_RMode_Field := NRF_SVD.SCB.Rmode_0;
      --  Default value for FPSCR.FZ (Flush-to-zero mode control bit).
      FZ             : FPDSCR_FZ_Field := NRF_SVD.SCB.Fz_0;
      --  Default value for FPSCR.DN (Default NaN mode control bit).
      DN             : FPDSCR_DN_Field := NRF_SVD.SCB.Dn_0;
      --  Default value for FPSCR.AHP (Alternative half-precision control bit).
      AHP            : FPDSCR_AHP_Field := NRF_SVD.SCB.Ahp_0;
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
     with Import, Address => System'To_Address (16#E000E000#);

end NRF_SVD.SCB;
