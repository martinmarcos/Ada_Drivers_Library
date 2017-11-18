--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Cortex-M0 Private Peripheral Block
package NRF_SVD.PPB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Counter Enable
   type SYST_CSR_ENABLE_Field is
     (
      --  Counter disabled.
      VALUE1,
      --  Counter enabled.
      VALUE2)
     with Size => 1;
   for SYST_CSR_ENABLE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SysTick Exception Request
   type SYST_CSR_TICKINT_Field is
     (
      --  Counting down to zero does not assert the SysTick exception request.
      VALUE1,
      --  Counting down to zero to assert the SysTick exception request.
      VALUE2)
     with Size => 1;
   for SYST_CSR_TICKINT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clock Source
   type SYST_CSR_CLKSOURCE_Field is
     (
      --  External clock.
      VALUE1,
      --  Processor clock.
      VALUE2)
     with Size => 1;
   for SYST_CSR_CLKSOURCE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SysTick Control and Status Register
   type SYST_CSR_Register is record
      --  Counter Enable
      ENABLE         : SYST_CSR_ENABLE_Field := NRF_SVD.PPB.VALUE1;
      --  SysTick Exception Request
      TICKINT        : SYST_CSR_TICKINT_Field := NRF_SVD.PPB.VALUE1;
      --  Clock Source
      CLKSOURCE      : SYST_CSR_CLKSOURCE_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Counter Flag
      COUNTFLAG      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CSR_Register use record
      ENABLE         at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      COUNTFLAG      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype SYST_RVR_RELOAD_Field is HAL.UInt24;

   --  SysTick Reload Value Register
   type SYST_RVR_Register is record
      --  Reload Value
      RELOAD         : SYST_RVR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_RVR_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SYST_CVR_CURRENT_Field is HAL.UInt24;

   --  SysTick Current Value Register
   type SYST_CVR_Register is record
      --  SysTick Counter Current Value
      CURRENT        : SYST_CVR_CURRENT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CVR_Register use record
      CURRENT        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype SYST_CALIB_TENMS_Field is HAL.UInt24;

   --  SysTick Calibration Value Register
   type SYST_CALIB_Register is record
      --  Read-only. 10 Milliseconds
      TENMS          : SYST_CALIB_TENMS_Field;
      --  unspecified
      Reserved_24_29 : HAL.UInt6;
      --  Read-only. Clock Skew
      SKEW           : Boolean;
      --  Read-only. Reference Clock
      NOREF          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYST_CALIB_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   subtype NVIC_IPR_PRI_0_Field is HAL.UInt8;
   subtype NVIC_IPR_PRI_1_Field is HAL.UInt8;
   subtype NVIC_IPR_PRI_2_Field is HAL.UInt8;
   subtype NVIC_IPR_PRI_3_Field is HAL.UInt8;

   --  Interrupt Priority Register 0
   type NVIC_IPR_Register is record
      --  Priority, Byte Offset 0
      PRI_0 : NVIC_IPR_PRI_0_Field := 16#0#;
      --  Priority, Byte Offset 1
      PRI_1 : NVIC_IPR_PRI_1_Field := 16#0#;
      --  Priority, Byte Offset 2
      PRI_2 : NVIC_IPR_PRI_2_Field := 16#0#;
      --  Priority, Byte Offset 3
      PRI_3 : NVIC_IPR_PRI_3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR_Register use record
      PRI_0 at 0 range 0 .. 7;
      PRI_1 at 0 range 8 .. 15;
      PRI_2 at 0 range 16 .. 23;
      PRI_3 at 0 range 24 .. 31;
   end record;

   --  Revision Number
   type CPUID_Revision_Field is
     (
      --  Patch 0
      VALUE1)
     with Size => 4;
   for CPUID_Revision_Field use
     (VALUE1 => 0);

   --  Part Number of the Processor
   type CPUID_PartNo_Field is
     (
      --  Cortex-M0
      VALUE1)
     with Size => 12;
   for CPUID_PartNo_Field use
     (VALUE1 => 3104);

   --  Architecture
   type CPUID_Architecture_Field is
     (
      --  ARMv6-M
      VALUE1)
     with Size => 4;
   for CPUID_Architecture_Field use
     (VALUE1 => 12);

   --  Variant Number
   type CPUID_Variant_Field is
     (
      --  Revision 0
      VALUE1)
     with Size => 4;
   for CPUID_Variant_Field use
     (VALUE1 => 0);

   --  Implementer Code
   type CPUID_Implementer_Field is
     (
      --  ARM
      VALUE1)
     with Size => 8;
   for CPUID_Implementer_Field use
     (VALUE1 => 65);

   --  CPUID Base Register
   type CPUID_Register is record
      --  Read-only. Revision Number
      Revision     : CPUID_Revision_Field;
      --  Read-only. Part Number of the Processor
      PartNo       : CPUID_PartNo_Field;
      --  Read-only. Architecture
      Architecture : CPUID_Architecture_Field;
      --  Read-only. Variant Number
      Variant      : CPUID_Variant_Field;
      --  Read-only. Implementer Code
      Implementer  : CPUID_Implementer_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUID_Register use record
      Revision     at 0 range 0 .. 3;
      PartNo       at 0 range 4 .. 15;
      Architecture at 0 range 16 .. 19;
      Variant      at 0 range 20 .. 23;
      Implementer  at 0 range 24 .. 31;
   end record;

   --  Active Exception Number
   type ICSR_VECTACTIVE_Field is
     (
      --  Thread mode
      VALUE1)
     with Size => 6;
   for ICSR_VECTACTIVE_Field use
     (VALUE1 => 0);

   --  Pending Exception Number
   type ICSR_VECTPENDING_Field is
     (
      --  No pending exceptions
      VALUE1)
     with Size => 6;
   for ICSR_VECTPENDING_Field use
     (VALUE1 => 0);

   --  Interrupt Pending Flag
   type ICSR_ISRPENDING_Field is
     (
      --  Interrupt not pending
      VALUE1,
      --  Interrupt pending.
      VALUE2)
     with Size => 1;
   for ICSR_ISRPENDING_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SysTick Exception Clear-pending
   type ICSR_PENDSTCLR_Field is
     (
      --  No effect
      VALUE1,
      --  removes the pending state from the SysTick exception.
      VALUE2)
     with Size => 1;
   for ICSR_PENDSTCLR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SysTick Exception Set-pending
   type ICSR_PENDSTSET_Field is
     (
      --  SysTick exception is not pending
      VALUE1,
      --  SysTick exception is pending.
      VALUE2)
     with Size => 1;
   for ICSR_PENDSTSET_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PendSV Clear Pending
   type ICSR_PENDSVCLR_Field is
     (
      --  Do not clear.
      VALUE1,
      --  Removes pending state from PendSV exception.
      VALUE2)
     with Size => 1;
   for ICSR_PENDSVCLR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  PendSV Set Pending
   type ICSR_PENDSVSET_Field is
     (
      --  PendSV exception is not pending.
      VALUE1,
      --  PendSV excepton is pending.
      VALUE2)
     with Size => 1;
   for ICSR_PENDSVSET_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Interrupt Control and State Register
   type ICSR_Register is record
      --  Read-only. Active Exception Number
      VECTACTIVE     : ICSR_VECTACTIVE_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_6_11  : HAL.UInt6 := 16#0#;
      --  Read-only. Pending Exception Number
      VECTPENDING    : ICSR_VECTPENDING_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Read-only. Interrupt Pending Flag
      ISRPENDING     : ICSR_ISRPENDING_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_23_24 : HAL.UInt2 := 16#0#;
      --  Write-only. SysTick Exception Clear-pending
      PENDSTCLR      : ICSR_PENDSTCLR_Field := NRF_SVD.PPB.VALUE1;
      --  SysTick Exception Set-pending
      PENDSTSET      : ICSR_PENDSTSET_Field := NRF_SVD.PPB.VALUE1;
      --  Write-only. PendSV Clear Pending
      PENDSVCLR      : ICSR_PENDSVCLR_Field := NRF_SVD.PPB.VALUE1;
      --  PendSV Set Pending
      PENDSVSET      : ICSR_PENDSVSET_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSR_Register use record
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
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  System Reset Request
   type AIRCR_SYSRESETREQ_Field is
     (
      --  No effect.
      VALUE1,
      --  Requests a system level reset.
      VALUE2)
     with Size => 1;
   for AIRCR_SYSRESETREQ_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Data Endianness
   type AIRCR_ENDIANNESS_Field is
     (
      --  Little-endian
      VALUE1)
     with Size => 1;
   for AIRCR_ENDIANNESS_Field use
     (VALUE1 => 0);

   subtype AIRCR_VECTKEY_Field is HAL.UInt16;

   --  Application Interrupt and Reset Control Register
   type AIRCR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. System Reset Request
      SYSRESETREQ   : AIRCR_SYSRESETREQ_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_3_14 : HAL.UInt12 := 16#0#;
      --  Read-only. Data Endianness
      ENDIANNESS    : AIRCR_ENDIANNESS_Field := NRF_SVD.PPB.VALUE1;
      --  Register Key
      VECTKEY       : AIRCR_VECTKEY_Field := 16#FA05#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIRCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      SYSRESETREQ   at 0 range 2 .. 2;
      Reserved_3_14 at 0 range 3 .. 14;
      ENDIANNESS    at 0 range 15 .. 15;
      VECTKEY       at 0 range 16 .. 31;
   end record;

   --  Sleep-on-exit
   type SCR_SLEEPONEXIT_Field is
     (
      --  Do not sleep when returning to Thread mode.
      VALUE1,
      --  Enter sleep, or deep sleep, on return from an ISR to Thread mode.
      VALUE2)
     with Size => 1;
   for SCR_SLEEPONEXIT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Low Power Sleep Mode
   type SCR_SLEEPDEEP_Field is
     (
      --  Sleep
      VALUE1,
      --  Deep sleep
      VALUE2)
     with Size => 1;
   for SCR_SLEEPDEEP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Send Event on Pending bit
   type SCR_SEVONPEND_Field is
     (
      --  Only enabled interrupts or events can wakeup the processor, disabled
      --  interrupts are excluded.
      VALUE1,
      --  Enabled events and all interrupts, including disabled interrupts, can
      --  wakeup the processor.
      VALUE2)
     with Size => 1;
   for SCR_SEVONPEND_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  System Control Register
   type SCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Sleep-on-exit
      SLEEPONEXIT   : SCR_SLEEPONEXIT_Field := NRF_SVD.PPB.VALUE1;
      --  Low Power Sleep Mode
      SLEEPDEEP     : SCR_SLEEPDEEP_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Send Event on Pending bit
      SEVONPEND     : SCR_SEVONPEND_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SLEEPONEXIT   at 0 range 1 .. 1;
      SLEEPDEEP     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SEVONPEND     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Configuration and Control Register
   type CCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. Unaligned Access Traps
      UNALIGN_TRP    : Boolean;
      --  unspecified
      Reserved_4_8   : HAL.UInt5;
      --  Read-only. Stack Alignment
      STKALIGN       : Boolean;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SHPR2_PRI_11_Field is HAL.UInt8;

   --  System Handler Priority Register 2
   type SHPR2_Register is record
      --  unspecified
      Reserved_0_23 : HAL.UInt24 := 16#0#;
      --  Priority of System Handler 11
      PRI_11        : SHPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR2_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      PRI_11        at 0 range 24 .. 31;
   end record;

   subtype SHPR3_PRI_14_Field is HAL.UInt8;
   subtype SHPR3_PRI_15_Field is HAL.UInt8;

   --  System Handler Priority Register 3
   type SHPR3_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Priority of System Handler 14
      PRI_14        : SHPR3_PRI_14_Field := 16#0#;
      --  Priority of System Handler 15
      PRI_15        : SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR3_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      PRI_14        at 0 range 16 .. 23;
      PRI_15        at 0 range 24 .. 31;
   end record;

   --  SVCall Pending bit
   type SHCSR_SVCALLPENDED_Field is
     (
      --  SVCall is not pending.
      VALUE1,
      --  SVCall is pending.
      VALUE2)
     with Size => 1;
   for SHCSR_SVCALLPENDED_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  System Handler Control and State Register
   type SHCSR_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  SVCall Pending bit
      SVCALLPENDED   : SHCSR_SVCALLPENDED_Field := NRF_SVD.PPB.VALUE1;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHCSR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      SVCALLPENDED   at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex-M0 Private Peripheral Block
   type PPB_Peripheral is record
      --  SysTick Control and Status Register
      SYST_CSR   : aliased SYST_CSR_Register;
      --  SysTick Reload Value Register
      SYST_RVR   : aliased SYST_RVR_Register;
      --  SysTick Current Value Register
      SYST_CVR   : aliased SYST_CVR_Register;
      --  SysTick Calibration Value Register
      SYST_CALIB : aliased SYST_CALIB_Register;
      --  Interrupt Set-enable Register
      NVIC_ISER  : aliased HAL.UInt32;
      --  IInterrupt Clear-enable Register
      NVIC_ICER  : aliased HAL.UInt32;
      --  Interrupt Set-pending Register
      NVIC_ISPR  : aliased HAL.UInt32;
      --  Interrupt Clear-pending Register
      NVIC_ICPR  : aliased HAL.UInt32;
      --  Interrupt Priority Register 0
      NVIC_IPR0  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 1
      NVIC_IPR1  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 2
      NVIC_IPR2  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 3
      NVIC_IPR3  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 4
      NVIC_IPR4  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 5
      NVIC_IPR5  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 6
      NVIC_IPR6  : aliased NVIC_IPR_Register;
      --  Interrupt Priority Register 7
      NVIC_IPR7  : aliased NVIC_IPR_Register;
      --  CPUID Base Register
      CPUID      : aliased CPUID_Register;
      --  Interrupt Control and State Register
      ICSR       : aliased ICSR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR      : aliased AIRCR_Register;
      --  System Control Register
      SCR        : aliased SCR_Register;
      --  Configuration and Control Register
      CCR        : aliased CCR_Register;
      --  System Handler Priority Register 2
      SHPR2      : aliased SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3      : aliased SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR      : aliased SHCSR_Register;
   end record
     with Volatile;

   for PPB_Peripheral use record
      SYST_CSR   at 16#10# range 0 .. 31;
      SYST_RVR   at 16#14# range 0 .. 31;
      SYST_CVR   at 16#18# range 0 .. 31;
      SYST_CALIB at 16#1C# range 0 .. 31;
      NVIC_ISER  at 16#100# range 0 .. 31;
      NVIC_ICER  at 16#180# range 0 .. 31;
      NVIC_ISPR  at 16#200# range 0 .. 31;
      NVIC_ICPR  at 16#280# range 0 .. 31;
      NVIC_IPR0  at 16#400# range 0 .. 31;
      NVIC_IPR1  at 16#404# range 0 .. 31;
      NVIC_IPR2  at 16#408# range 0 .. 31;
      NVIC_IPR3  at 16#40C# range 0 .. 31;
      NVIC_IPR4  at 16#410# range 0 .. 31;
      NVIC_IPR5  at 16#414# range 0 .. 31;
      NVIC_IPR6  at 16#418# range 0 .. 31;
      NVIC_IPR7  at 16#41C# range 0 .. 31;
      CPUID      at 16#D00# range 0 .. 31;
      ICSR       at 16#D04# range 0 .. 31;
      AIRCR      at 16#D0C# range 0 .. 31;
      SCR        at 16#D10# range 0 .. 31;
      CCR        at 16#D14# range 0 .. 31;
      SHPR2      at 16#D1C# range 0 .. 31;
      SHPR3      at 16#D20# range 0 .. 31;
      SHCSR      at 16#D24# range 0 .. 31;
   end record;

   --  Cortex-M0 Private Peripheral Block
   PPB_Periph : aliased PPB_Peripheral
     with Import, Address => PPB_Base;

end NRF_SVD.PPB;
