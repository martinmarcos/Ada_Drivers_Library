--  This spec has been automatically generated from MKE15Z7.xml

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

   subtype SCB_ICSR_VECTACTIVE_Field is HAL.UInt6;
   subtype SCB_ICSR_VECTPENDING_Field is HAL.UInt6;

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
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Read-only. Exception number of the highest priority pending enabled
      --  exception
      VECTPENDING    : SCB_ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Read-only. no description available
      ISRPENDING     : Boolean := False;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
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
      VECTACTIVE     at 0 range 0 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      VECTPENDING    at 0 range 12 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      ISRPENDING     at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
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
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write-only. no description available
      VECTCLRACTIVE : Boolean := False;
      --  Write-only. no description available
      SYSRESETREQ   : AIRCR_SYSRESETREQ_Field := NRF_SVD.SCB.Sysresetreq_0;
      --  unspecified
      Reserved_3_14 : HAL.UInt12 := 16#0#;
      --  Read-only. no description available
      ENDIANNESS    : AIRCR_ENDIANNESS_Field := NRF_SVD.SCB.Endianness_0;
      --  Register key
      VECTKEY       : SCB_AIRCR_VECTKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_AIRCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTCLRACTIVE at 0 range 1 .. 1;
      SYSRESETREQ   at 0 range 2 .. 2;
      Reserved_3_14 at 0 range 3 .. 14;
      ENDIANNESS    at 0 range 15 .. 15;
      VECTKEY       at 0 range 16 .. 31;
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

   --  Configuration and Control Register
   type SCB_CCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. Always reads as one, indicates that all unaligned accesses
      --  generate a HardFault
      UNALIGN_TRP    : Boolean;
      --  unspecified
      Reserved_4_8   : HAL.UInt5;
      --  Read-only. Indicates stack alignment on exception entry
      STKALIGN       : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_CCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
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

   --  System Handler Control and State Register
   type SCB_SHCSR_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  no description available
      SVCALLPENDED   : SHCSR_SVCALLPENDED_Field := NRF_SVD.SCB.Svcallpended_0;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCB_SHCSR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
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

   -----------------
   -- Peripherals --
   -----------------

   --  System Control Block
   type SystemControl_Peripheral is record
      --  Auxiliary Control Register,
      ACTLR : aliased HAL.UInt32;
      --  CPUID Base Register
      CPUID : aliased SCB_CPUID_Register;
      --  Interrupt Control and State Register
      ICSR  : aliased SCB_ICSR_Register;
      --  Vector Table Offset Register
      VTOR  : aliased SCB_VTOR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR : aliased SCB_AIRCR_Register;
      --  System Control Register
      SCR   : aliased SCB_SCR_Register;
      --  Configuration and Control Register
      CCR   : aliased SCB_CCR_Register;
      --  System Handler Priority Register 2
      SHPR2 : aliased SCB_SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3 : aliased SCB_SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR : aliased SCB_SHCSR_Register;
      --  Debug Fault Status Register
      DFSR  : aliased SCB_DFSR_Register;
   end record
     with Volatile;

   for SystemControl_Peripheral use record
      ACTLR at 16#8# range 0 .. 31;
      CPUID at 16#D00# range 0 .. 31;
      ICSR  at 16#D04# range 0 .. 31;
      VTOR  at 16#D08# range 0 .. 31;
      AIRCR at 16#D0C# range 0 .. 31;
      SCR   at 16#D10# range 0 .. 31;
      CCR   at 16#D14# range 0 .. 31;
      SHPR2 at 16#D1C# range 0 .. 31;
      SHPR3 at 16#D20# range 0 .. 31;
      SHCSR at 16#D24# range 0 .. 31;
      DFSR  at 16#D30# range 0 .. 31;
   end record;

   --  System Control Block
   SystemControl_Periph : aliased SystemControl_Peripheral
     with Import, Address => System'To_Address (16#E000E000#);

end NRF_SVD.SCB;
