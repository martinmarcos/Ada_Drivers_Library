--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SCS0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ICTR_INTLINESNUM_Field is HAL.UInt5;

   --  Interrupt Control Type Register
   type ICTR_Register is record
      --  Read-only. Total number of interrupt lines in groups of 32
      INTLINESNUM   : ICTR_INTLINESNUM_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICTR_Register use record
      INTLINESNUM   at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Auxiliary Control Register
   type ACTLR_Register is record
      --  Disables interruption of multi-cycle instructions
      DISMCYCINT     : Boolean := False;
      --  Disables write buffer us during default memorty map accesses
      DISDEFWBUF     : Boolean := False;
      --  Disables IT folding
      DISFOLD        : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Disable automatic update of CONTROL.FPCA. See Exceptions on page 7-8
      --  for more information.
      DISFPCA        : Boolean := False;
      --  Disables floating point instructions completing out of order with
      --  respect to integer instructions.
      DISOOFP        : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACTLR_Register use record
      DISMCYCINT     at 0 range 0 .. 0;
      DISDEFWBUF     at 0 range 1 .. 1;
      DISFOLD        at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DISFPCA        at 0 range 8 .. 8;
      DISOOFP        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SysTick Control and Status Register
   type STCSR_Register is record
      --  Enable SysTick counter
      EN             : Boolean := False;
      --  Unknown
      TICKINT        : Boolean := False;
      --  Read-only. Clock source
      CLKSOURCE      : Boolean := False;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Read-only. Returns 1 if timer counted to 0 since last time this was
      --  read
      CNTFLAG        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCSR_Register use record
      EN             at 0 range 0 .. 0;
      TICKINT        at 0 range 1 .. 1;
      CLKSOURCE      at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      CNTFLAG        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype STRVR_RELOAD_Field is HAL.UInt24;

   --  SysTick Reload Value Register
   type STRVR_Register is record
      --  Value to load into the SysTick Current Value Register when the
      --  counter reaches 0
      RELOAD         : STRVR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STRVR_Register use record
      RELOAD         at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype STCVR_CUR_Field is HAL.UInt24;

   --  SysTick Current Value Register
   type STCVR_Register is record
      --  Current value at the time the register is accessed
      CUR            : STCVR_CUR_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCVR_Register use record
      CUR            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype STCR_TENMS_Field is HAL.UInt24;

   --  SysTick Calibration Value Register
   type STCR_Register is record
      --  Read-only. Reads as zero
      TENMS          : STCR_TENMS_Field;
      --  unspecified
      Reserved_24_29 : HAL.UInt6;
      --  Read-only. Reads as one
      SKEW           : Boolean;
      --  Read-only. Reads as one
      NOREF          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCR_Register use record
      TENMS          at 0 range 0 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      SKEW           at 0 range 30 .. 30;
      NOREF          at 0 range 31 .. 31;
   end record;

   --  Irq Set Enable Register n

   --  Irq Set Enable Register n
   type NVIC_ISER_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Irq Clear Enable Register n

   --  Irq Clear Enable Register n
   type NVIC_ICER_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Irq Set Pending Register n

   --  Irq Set Pending Register n
   type NVIC_ISPR_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Irq Clear Pending Register n

   --  Irq Clear Pending Register n
   type NVIC_ICPR_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   --  Irq Active Bit Register n

   --  Irq Active Bit Register n
   type NVIC_IABR_Registers is array (0 .. 5) of HAL.UInt32
     with Volatile;

   subtype NVIC_IPR_POS0_Field is HAL.UInt4;
   subtype NVIC_IPR_POS1_Field is HAL.UInt4;
   subtype NVIC_IPR_POS2_Field is HAL.UInt4;
   subtype NVIC_IPR_POS3_Field is HAL.UInt4;

   --  Irq Priority Register nn
   type NVIC_IPR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Priority of interrupt in Position 0
      POS0           : NVIC_IPR_POS0_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Priority of interrupt in Position 1
      POS1           : NVIC_IPR_POS1_Field := 16#0#;
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt in Position 2
      POS2           : NVIC_IPR_POS2_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt in Position 3
      POS3           : NVIC_IPR_POS3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      POS0           at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      POS1           at 0 range 12 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      POS2           at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      POS3           at 0 range 28 .. 31;
   end record;

   --  Irq Priority Register nn
   type NVIC_IPR_Registers is array (0 .. 40) of NVIC_IPR_Register
     with Volatile;

   subtype CPUID_REVISION_Field is HAL.UInt4;
   subtype CPUID_PARTNO_Field is HAL.UInt12;
   subtype CPUID_CONSTANT_Field is HAL.UInt4;
   subtype CPUID_VARIANT_Field is HAL.UInt4;
   subtype CPUID_IMPLEMENTER_Field is HAL.UInt8;

   --  CPUID Base Register
   type CPUID_Register is record
      --  Read-only. Implementation defined revision number
      REVISION    : CPUID_REVISION_Field;
      --  Read-only. Number of processor within family
      PARTNO      : CPUID_PARTNO_Field;
      --  Read-only. Reads as 0xC
      CONSTANT_k  : CPUID_CONSTANT_Field;
      --  Read-only. Implementation defined variant number
      VARIANT     : CPUID_VARIANT_Field;
      --  Read-only. Implementor code
      IMPLEMENTER : CPUID_IMPLEMENTER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUID_Register use record
      REVISION    at 0 range 0 .. 3;
      PARTNO      at 0 range 4 .. 15;
      CONSTANT_k  at 0 range 16 .. 19;
      VARIANT     at 0 range 20 .. 23;
      IMPLEMENTER at 0 range 24 .. 31;
   end record;

   subtype ICSR_VECTACTIVE_Field is HAL.UInt9;
   subtype ICSR_VECTPENDING_Field is HAL.UInt6;

   --  Interrupt Control State Register
   type ICSR_Register is record
      --  Read-only. Active ISR number field
      VECTACTIVE     : ICSR_VECTACTIVE_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Read-only. This bit is 1 when the set of all active exceptions minus
      --  the IPSR_current_exception yields the empty set
      RETTOBASE      : Boolean := False;
      --  Read-only. Pending ISR number field
      VECTPENDING    : ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Read-only. Interrupt pending flag
      ISRPENDING     : Boolean := False;
      --  Read-only. You must only use this at debug time
      ISRPREEMPT     : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Clear pending SysTick bit
      PNDSTCLR       : Boolean := False;
      --  Set a pending SysTick bit
      PNDSTSET       : Boolean := False;
      --  Clear pending pendSV bit
      PNDSVCLR       : Boolean := False;
      --  Set pending pendSV bit
      PNDSVSET       : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Set pending NMI bit
      NMIPENDSET     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSR_Register use record
      VECTACTIVE     at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      RETTOBASE      at 0 range 11 .. 11;
      VECTPENDING    at 0 range 12 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      ISRPENDING     at 0 range 22 .. 22;
      ISRPREEMPT     at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      PNDSTCLR       at 0 range 25 .. 25;
      PNDSTSET       at 0 range 26 .. 26;
      PNDSVCLR       at 0 range 27 .. 27;
      PNDSVSET       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      NMIPENDSET     at 0 range 31 .. 31;
   end record;

   subtype VTOR_TBLOFF_Field is HAL.UInt22;

   --  Vector Table Offset Register
   type VTOR_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Vector table base offset field
      TBLOFF         : VTOR_TBLOFF_Field := 16#0#;
      --  Table base is in Code (0) or RAM (1)
      TBLBASE        : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VTOR_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      TBLOFF         at 0 range 7 .. 28;
      TBLBASE        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype AIRCR_PRIGROUP_Field is HAL.UInt3;
   subtype AIRCR_VECTKEY_Field is HAL.UInt16;

   --  Application Interrupt/Reset Control Register
   type AIRCR_Register is record
      --  System Reset bit
      VECTRESET      : Boolean := False;
      --  Clears all active state information for active NMI, fault, and
      --  interrupts
      VECTCLRACTIVE  : Boolean := False;
      --  Causes a signal to be asserted to the outer system that indicates a
      --  reset is requested
      SYSRESETREQ    : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Interrupt priority grouping field
      PRIGROUP       : AIRCR_PRIGROUP_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Read-only. Data endianness bit
      ENDIANESS      : Boolean := False;
      --  Register key
      VECTKEY        : AIRCR_VECTKEY_Field := 16#FA05#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIRCR_Register use record
      VECTRESET      at 0 range 0 .. 0;
      VECTCLRACTIVE  at 0 range 1 .. 1;
      SYSRESETREQ    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PRIGROUP       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      ENDIANESS      at 0 range 15 .. 15;
      VECTKEY        at 0 range 16 .. 31;
   end record;

   --  System Control Register
   type SCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Sleep on exit when returning from Handler mode to Thread mode
      SLEEPONEXIT   : Boolean := False;
      --  Sleep deep bit
      SLEEPDEEP     : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  When enabled, this causes WFE to wake up when an interrupt moves from
      --  inactive to pended
      SEVONPEND     : Boolean := False;
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

   --  Configuration Control Register
   type CCR_Register is record
      --  When 0, default, It is only possible to enter Thread mode when
      --  returning from the last exception
      NONBASETHREDENA : Boolean := False;
      --  If written as 1, enables user code to write the Software Trigger
      --  Interrupt register to trigger (pend) a Main exception, which is one
      --  associated with the Main stack pointer
      USERSETMPEND    : Boolean := False;
      --  unspecified
      Reserved_2_2    : HAL.Bit := 16#0#;
      --  Trap for unaligned access
      UNALIGN_TRP     : Boolean := False;
      --  Trap on Divide by 0
      DIV_0_TRP       : Boolean := False;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  When enabled, this causes handlers running at priority -1 and -2
      --  (Hard Fault, NMI, and FAULTMASK escalated handlers) to ignore Data
      --  Bus faults caused by load and store instructions
      BFHFNMIGN       : Boolean := False;
      --  Stack alignment bit
      STKALIGN        : Boolean := True;
      --  unspecified
      Reserved_10_31  : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      NONBASETHREDENA at 0 range 0 .. 0;
      USERSETMPEND    at 0 range 1 .. 1;
      Reserved_2_2    at 0 range 2 .. 2;
      UNALIGN_TRP     at 0 range 3 .. 3;
      DIV_0_TRP       at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      BFHFNMIGN       at 0 range 8 .. 8;
      STKALIGN        at 0 range 9 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   subtype SHPR1_PRI_4_Field is HAL.UInt8;
   subtype SHPR1_PRI_5_Field is HAL.UInt8;
   subtype SHPR1_PRI_6_Field is HAL.UInt8;
   subtype SHPR1_PRI_7_Field is HAL.UInt8;

   --  System Handlers 4-7 Priority Register
   type SHPR1_Register is record
      --  Priority of system handler 4
      PRI_4 : SHPR1_PRI_4_Field := 16#0#;
      --  Priority of system handler 5
      PRI_5 : SHPR1_PRI_5_Field := 16#0#;
      --  Priority of system handler 6
      PRI_6 : SHPR1_PRI_6_Field := 16#0#;
      --  Priority of system handler 7
      PRI_7 : SHPR1_PRI_7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR1_Register use record
      PRI_4 at 0 range 0 .. 7;
      PRI_5 at 0 range 8 .. 15;
      PRI_6 at 0 range 16 .. 23;
      PRI_7 at 0 range 24 .. 31;
   end record;

   subtype SHPR2_PRI_8_Field is HAL.UInt8;
   subtype SHPR2_PRI_9_Field is HAL.UInt8;
   subtype SHPR2_PRI_10_Field is HAL.UInt8;
   subtype SHPR2_PRI_11_Field is HAL.UInt8;

   --  System Handlers 8-11 Priority Register
   type SHPR2_Register is record
      --  Priority of system handler 8
      PRI_8  : SHPR2_PRI_8_Field := 16#0#;
      --  Priority of system handler 9
      PRI_9  : SHPR2_PRI_9_Field := 16#0#;
      --  Priority of system handler 10
      PRI_10 : SHPR2_PRI_10_Field := 16#0#;
      --  Priority of system handler 11
      PRI_11 : SHPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR2_Register use record
      PRI_8  at 0 range 0 .. 7;
      PRI_9  at 0 range 8 .. 15;
      PRI_10 at 0 range 16 .. 23;
      PRI_11 at 0 range 24 .. 31;
   end record;

   subtype SHPR3_PRI_12_Field is HAL.UInt8;
   subtype SHPR3_PRI_13_Field is HAL.UInt8;
   subtype SHPR3_PRI_14_Field is HAL.UInt8;
   subtype SHPR3_PRI_15_Field is HAL.UInt8;

   --  System Handlers 12-15 Priority Register
   type SHPR3_Register is record
      --  Priority of system handler 12
      PRI_12 : SHPR3_PRI_12_Field := 16#0#;
      --  Priority of system handler 13
      PRI_13 : SHPR3_PRI_13_Field := 16#0#;
      --  Priority of system handler 14
      PRI_14 : SHPR3_PRI_14_Field := 16#0#;
      --  Priority of system handler 15
      PRI_15 : SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR3_Register use record
      PRI_12 at 0 range 0 .. 7;
      PRI_13 at 0 range 8 .. 15;
      PRI_14 at 0 range 16 .. 23;
      PRI_15 at 0 range 24 .. 31;
   end record;

   --  System Handler Control and State Register
   type SHCSR_Register is record
      --  Read-only. MemManage active flag
      MEMFAULTACT    : Boolean := False;
      --  Read-only. BusFault active flag
      BUSFAULTACT    : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Read-only. UsageFault active flag
      USGFAULTACT    : Boolean := False;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Read-only. SVCall active flag
      SVCALLACT      : Boolean := False;
      --  Read-only. the Monitor active flag
      MONACT         : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Read-only. PendSV active flag
      PNDSVACT       : Boolean := False;
      --  Read-only. SysTick active flag
      SYSTICKACT     : Boolean := False;
      --  Read-only. usage fault pended flag
      USGFAULTPENDED : Boolean := False;
      --  Read-only. MemManage pended flag
      MEMFAULTPENDED : Boolean := False;
      --  Read-only. BusFault pended flag
      BUSFAULTPENDED : Boolean := False;
      --  Read-only. SVCall pended flag
      SVCALLPENDED   : Boolean := False;
      --  MemManage fault system handler enable
      MEMFAULTENA    : Boolean := False;
      --  Bus fault system handler enable
      BUSFAULTENA    : Boolean := False;
      --  Usage fault system handler enable
      USGFAULTENA    : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHCSR_Register use record
      MEMFAULTACT    at 0 range 0 .. 0;
      BUSFAULTACT    at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      USGFAULTACT    at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      SVCALLACT      at 0 range 7 .. 7;
      MONACT         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PNDSVACT       at 0 range 10 .. 10;
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

   --  When derived MemManage fault has occurred.
   type CFSR_MLSPERR_Field is
     (
      --  Unknown
      En000,
      --  Unknown
      En001)
     with Size => 1;
   for CFSR_MLSPERR_Field use
     (En000 => 0,
      En001 => 1);

   --  Configurable Fault Status Registers
   type CFSR_Register is record
      --  Instruction access violation flag
      IACCVIOL       : Boolean := False;
      --  Data access violation flag
      DACCVIOL       : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Unstack from exception return has caused one or more access
      --  violations
      MUNSTKERR      : Boolean := False;
      --  Stacking from exception has caused one or more access violations
      MSTKERR        : Boolean := False;
      --  When derived MemManage fault has occurred.
      MLSPERR        : CFSR_MLSPERR_Field := NRF_SVD.SCS0.En000;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Memory Manage Address Register (MMAR) address valid flag
      MMARVALID      : Boolean := False;
      --  Instruction bus error flag
      IBUSERR        : Boolean := False;
      --  Precise data bus error return
      PRECISERR      : Boolean := False;
      --  Imprecise data bus error
      IMPRECISERR    : Boolean := False;
      --  Unstack from exception return has caused one or more bus faults
      UNSTKERR       : Boolean := False;
      --  Stacking from exception has caused one or more bus faults
      STKERR         : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  This bit is set if the Bus Fault Address Register (BFAR) contains a
      --  valid address
      BFARVALID      : Boolean := False;
      --  The UNDEFINSTR flag is set when the processor attempts to execute an
      --  undefined instruction
      UNDEFINSTR     : Boolean := False;
      --  Invalid combination of EPSR and instruction, for reasons other than
      --  UNDEFINED instruction
      INVSTATE       : Boolean := False;
      --  Attempt to load EXC_RETURN into PC illegally
      INVPC          : Boolean := False;
      --  Attempt to use a coprocessor instruction
      NOCP           : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  When UNALIGN_TRP is enabled (see Configuration Control Register on
      --  page 8-26), and there is an attempt to make an unaligned memory
      --  access, then this fault occurs
      UNALIGNED      : Boolean := False;
      --  When DIV_0_TRP (see Configuration Control Register on page 8-26) is
      --  enabled and an SDIV or UDIV instruction is used with a divisor of 0,
      --  this fault occurs The instruction is executed and the return PC
      --  points to it
      DIVBYZERO      : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFSR_Register use record
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
      Reserved_13_14 at 0 range 13 .. 14;
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

   --  Hard Fault Status Register
   type HFSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  This bit is set if there is a fault because of vector table read on
      --  exception processing (Bus Fault)
      VECTTBL       : Boolean := False;
      --  unspecified
      Reserved_2_29 : HAL.UInt28 := 16#0#;
      --  Hard Fault activated because a Configurable Fault was received and
      --  cannot activate because of priority or because the Configurable Fault
      --  is disabled
      FRCD          : Boolean := False;
      --  This bit is set if there is a fault related to debug
      DBGEVT        : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTTBL       at 0 range 1 .. 1;
      Reserved_2_29 at 0 range 2 .. 29;
      FRCD          at 0 range 30 .. 30;
      DBGEVT        at 0 range 31 .. 31;
   end record;

   --  Debug Fault Status Register
   type DFSR_Register is record
      --  Halt request flag
      HALTED        : Boolean := False;
      --  BKPT flag
      BKPT          : Boolean := False;
      --  Data Watchpoint and Trace (DWT) flag
      DWTTRAP       : Boolean := False;
      --  Vector catch flag
      VCATCH        : Boolean := False;
      --  External debug request flag
      EXTERNAL      : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFSR_Register use record
      HALTED        at 0 range 0 .. 0;
      BKPT          at 0 range 1 .. 1;
      DWTTRAP       at 0 range 2 .. 2;
      VCATCH        at 0 range 3 .. 3;
      EXTERNAL      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  ID_PFR0_STATE array element
   subtype ID_PFR0_STATE_Element is HAL.UInt4;

   --  ID_PFR0_STATE array
   type ID_PFR0_STATE_Field_Array is array (0 .. 1) of ID_PFR0_STATE_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for ID_PFR0_STATE
   type ID_PFR0_STATE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STATE as a value
            Val : HAL.UInt8;
         when True =>
            --  STATE as an array
            Arr : ID_PFR0_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ID_PFR0_STATE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Processor Feature register0
   type ID_PFR0_Register is record
      --  Read-only. State0 (T-bit == 0)
      STATE         : ID_PFR0_STATE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_PFR0_Register use record
      STATE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ID_PFR1_MICROCONTROLLER_PROGRAMMERS_MODEL_Field is HAL.UInt4;

   --  Processor Feature register1
   type ID_PFR1_Register is record
      --  unspecified
      Reserved_0_7                      : HAL.UInt8;
      --  Read-only. Microcontroller programmer's model
      MICROCONTROLLER_PROGRAMMERS_MODEL : ID_PFR1_MICROCONTROLLER_PROGRAMMERS_MODEL_Field;
      --  unspecified
      Reserved_12_31                    : HAL.UInt20;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_PFR1_Register use record
      Reserved_0_7                      at 0 range 0 .. 7;
      MICROCONTROLLER_PROGRAMMERS_MODEL at 0 range 8 .. 11;
      Reserved_12_31                    at 0 range 12 .. 31;
   end record;

   subtype ID_DFR0_MICROCONTROLLER_DBG_MODEL_Field is HAL.UInt4;

   --  Debug Feature register0
   type ID_DFR0_Register is record
      --  unspecified
      Reserved_0_19             : HAL.UInt20;
      --  Read-only. Microcontroller Debug Model - memory mapped
      MICROCONTROLLER_DBG_MODEL : ID_DFR0_MICROCONTROLLER_DBG_MODEL_Field;
      --  unspecified
      Reserved_24_31            : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_DFR0_Register use record
      Reserved_0_19             at 0 range 0 .. 19;
      MICROCONTROLLER_DBG_MODEL at 0 range 20 .. 23;
      Reserved_24_31            at 0 range 24 .. 31;
   end record;

   subtype ID_MMFR0_PMSA_SUPPORT_Field is HAL.UInt4;
   subtype ID_MMFR0_OUTER_NON_SHARABLE_SUPPORT_Field is HAL.UInt4;
   subtype ID_MMFR0_AUXILIARY_REGISTER_SUPPORT_Field is HAL.UInt4;

   --  Memory Model Feature register0
   type ID_MMFR0_Register is record
      --  unspecified
      Reserved_0_3               : HAL.UInt4;
      --  Read-only. PMSA support
      PMSA_SUPPORT               : ID_MMFR0_PMSA_SUPPORT_Field;
      --  unspecified
      Reserved_8_11              : HAL.UInt4;
      --  Read-only. Outer non-sharable support
      OUTER_NON_SHARABLE_SUPPORT : ID_MMFR0_OUTER_NON_SHARABLE_SUPPORT_Field;
      --  unspecified
      Reserved_16_19             : HAL.UInt4;
      --  Read-only. Auxiliary register support
      AUXILIARY_REGISTER_SUPPORT : ID_MMFR0_AUXILIARY_REGISTER_SUPPORT_Field;
      --  unspecified
      Reserved_24_31             : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_MMFR0_Register use record
      Reserved_0_3               at 0 range 0 .. 3;
      PMSA_SUPPORT               at 0 range 4 .. 7;
      Reserved_8_11              at 0 range 8 .. 11;
      OUTER_NON_SHARABLE_SUPPORT at 0 range 12 .. 15;
      Reserved_16_19             at 0 range 16 .. 19;
      AUXILIARY_REGISTER_SUPPORT at 0 range 20 .. 23;
      Reserved_24_31             at 0 range 24 .. 31;
   end record;

   subtype ID_MMFR2_WAIT_FOR_INTERRUPT_STALLING_Field is HAL.UInt4;

   --  Memory Model Feature register2
   type ID_MMFR2_Register is record
      --  unspecified
      Reserved_0_23               : HAL.UInt24;
      --  Read-only. wait for interrupt stalling
      WAIT_FOR_INTERRUPT_STALLING : ID_MMFR2_WAIT_FOR_INTERRUPT_STALLING_Field;
      --  unspecified
      Reserved_28_31              : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_MMFR2_Register use record
      Reserved_0_23               at 0 range 0 .. 23;
      WAIT_FOR_INTERRUPT_STALLING at 0 range 24 .. 27;
      Reserved_28_31              at 0 range 28 .. 31;
   end record;

   subtype ISAR0_BITCOUNT_INSTRS_Field is HAL.UInt4;
   subtype ISAR0_BITFIELD_INSTRS_Field is HAL.UInt4;
   subtype ISAR0_CMPBRANCH_INSTRS_Field is HAL.UInt4;
   subtype ISAR0_COPROC_INSTRS_Field is HAL.UInt4;
   subtype ISAR0_DBG_INSTRS_Field is HAL.UInt4;
   subtype ISAR0_DIV_INSTRS_Field is HAL.UInt4;

   --  ISA Feature register0
   type ISAR0_Register is record
      --  unspecified
      Reserved_0_3     : HAL.UInt4;
      --  Read-only. BitCount instructions
      BITCOUNT_INSTRS  : ISAR0_BITCOUNT_INSTRS_Field;
      --  Read-only. BitField instructions
      BITFIELD_INSTRS  : ISAR0_BITFIELD_INSTRS_Field;
      --  Read-only. CmpBranch instructions
      CMPBRANCH_INSTRS : ISAR0_CMPBRANCH_INSTRS_Field;
      --  Read-only. Coprocessor instructions
      COPROC_INSTRS    : ISAR0_COPROC_INSTRS_Field;
      --  Read-only. Debug instructions
      DBG_INSTRS       : ISAR0_DBG_INSTRS_Field;
      --  Read-only. Divide instructions
      DIV_INSTRS       : ISAR0_DIV_INSTRS_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISAR0_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      BITCOUNT_INSTRS  at 0 range 4 .. 7;
      BITFIELD_INSTRS  at 0 range 8 .. 11;
      CMPBRANCH_INSTRS at 0 range 12 .. 15;
      COPROC_INSTRS    at 0 range 16 .. 19;
      DBG_INSTRS       at 0 range 20 .. 23;
      DIV_INSTRS       at 0 range 24 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype ID_ISAR1_EXTEND_INSRS_Field is HAL.UInt4;
   subtype ID_ISAR1_IFTHEN_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR1_IMMEDIATE_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR1_INTERWORK_INSTRS_Field is HAL.UInt4;

   --  ISA Feature register1
   type ID_ISAR1_Register is record
      --  unspecified
      Reserved_0_11    : HAL.UInt12;
      --  Read-only. Extend instructions
      EXTEND_INSRS     : ID_ISAR1_EXTEND_INSRS_Field;
      --  Read-only. IfThen instructions
      IFTHEN_INSTRS    : ID_ISAR1_IFTHEN_INSTRS_Field;
      --  Read-only. Immediate instructions
      IMMEDIATE_INSTRS : ID_ISAR1_IMMEDIATE_INSTRS_Field;
      --  Read-only. Interwork instructions
      INTERWORK_INSTRS : ID_ISAR1_INTERWORK_INSTRS_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_ISAR1_Register use record
      Reserved_0_11    at 0 range 0 .. 11;
      EXTEND_INSRS     at 0 range 12 .. 15;
      IFTHEN_INSTRS    at 0 range 16 .. 19;
      IMMEDIATE_INSTRS at 0 range 20 .. 23;
      INTERWORK_INSTRS at 0 range 24 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype ID_ISAR2_LOADSTORE_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR2_MEMHINT_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR2_MULTIACCESSINT_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR2_MULT_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR2_MULTS_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR2_MULTU_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR2_REVERSAL_INSTRS_Field is HAL.UInt4;

   --  ISA Feature register2
   type ID_ISAR2_Register is record
      --  Read-only. LoadStore instructions
      LOADSTORE_INSTRS      : ID_ISAR2_LOADSTORE_INSTRS_Field;
      --  Read-only. MemoryHint instructions
      MEMHINT_INSTRS        : ID_ISAR2_MEMHINT_INSTRS_Field;
      --  Read-only. Multi-Access interruptible instructions
      MULTIACCESSINT_INSTRS : ID_ISAR2_MULTIACCESSINT_INSTRS_Field;
      --  Read-only. Multiply instructions
      MULT_INSTRS           : ID_ISAR2_MULT_INSTRS_Field;
      --  Read-only. Multiply instructions (advanced, signed)
      MULTS_INSTRS          : ID_ISAR2_MULTS_INSTRS_Field;
      --  Read-only. Multiply instructions (advanced, unsigned)
      MULTU_INSTRS          : ID_ISAR2_MULTU_INSTRS_Field;
      --  unspecified
      Reserved_24_27        : HAL.UInt4;
      --  Read-only. Reversal instructions
      REVERSAL_INSTRS       : ID_ISAR2_REVERSAL_INSTRS_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_ISAR2_Register use record
      LOADSTORE_INSTRS      at 0 range 0 .. 3;
      MEMHINT_INSTRS        at 0 range 4 .. 7;
      MULTIACCESSINT_INSTRS at 0 range 8 .. 11;
      MULT_INSTRS           at 0 range 12 .. 15;
      MULTS_INSTRS          at 0 range 16 .. 19;
      MULTU_INSTRS          at 0 range 20 .. 23;
      Reserved_24_27        at 0 range 24 .. 27;
      REVERSAL_INSTRS       at 0 range 28 .. 31;
   end record;

   subtype ID_ISAR3_SATRUATE_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR3_SIMD_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR3_SVC_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR3_SYNCPRIM_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR3_TABBRANCH_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR3_THUMBCOPY_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR3_TRUENOP_INSTRS_Field is HAL.UInt4;

   --  ISA Feature register3
   type ID_ISAR3_Register is record
      --  Read-only. Saturate instructions
      SATRUATE_INSTRS  : ID_ISAR3_SATRUATE_INSTRS_Field;
      --  Read-only. SIMD instructions
      SIMD_INSTRS      : ID_ISAR3_SIMD_INSTRS_Field;
      --  Read-only. SVC instructions
      SVC_INSTRS       : ID_ISAR3_SVC_INSTRS_Field;
      --  Read-only. SyncPrim instructions
      SYNCPRIM_INSTRS  : ID_ISAR3_SYNCPRIM_INSTRS_Field;
      --  Read-only. TableBranch instructions
      TABBRANCH_INSTRS : ID_ISAR3_TABBRANCH_INSTRS_Field;
      --  Read-only. ThumbCopy instructions
      THUMBCOPY_INSTRS : ID_ISAR3_THUMBCOPY_INSTRS_Field;
      --  Read-only. TrueNOP instructions
      TRUENOP_INSTRS   : ID_ISAR3_TRUENOP_INSTRS_Field;
      --  unspecified
      Reserved_28_31   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_ISAR3_Register use record
      SATRUATE_INSTRS  at 0 range 0 .. 3;
      SIMD_INSTRS      at 0 range 4 .. 7;
      SVC_INSTRS       at 0 range 8 .. 11;
      SYNCPRIM_INSTRS  at 0 range 12 .. 15;
      TABBRANCH_INSTRS at 0 range 16 .. 19;
      THUMBCOPY_INSTRS at 0 range 20 .. 23;
      TRUENOP_INSTRS   at 0 range 24 .. 27;
      Reserved_28_31   at 0 range 28 .. 31;
   end record;

   subtype ID_ISAR4_UNPRIV_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR4_WITHSHIFTS_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR4_WB_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR4_BARRIER_INSTRS_Field is HAL.UInt4;
   subtype ID_ISAR4_SYNCPRIM_INSTRS_FRAC_Field is HAL.UInt4;
   subtype ID_ISAR4_PSR_M_INSTRS_Field is HAL.UInt4;

   --  ISA Feature register4
   type ID_ISAR4_Register is record
      --  Read-only. Unprivileged instructions
      UNPRIV_INSTRS        : ID_ISAR4_UNPRIV_INSTRS_Field;
      --  Read-only. WithShift instructions
      WITHSHIFTS_INSTRS    : ID_ISAR4_WITHSHIFTS_INSTRS_Field;
      --  Read-only. Writeback instructions
      WB_INSTRS            : ID_ISAR4_WB_INSTRS_Field;
      --  unspecified
      Reserved_12_15       : HAL.UInt4;
      --  Read-only. Barrier instructions
      BARRIER_INSTRS       : ID_ISAR4_BARRIER_INSTRS_Field;
      --  Read-only. SyncPrim_instrs_frac
      SYNCPRIM_INSTRS_FRAC : ID_ISAR4_SYNCPRIM_INSTRS_FRAC_Field;
      --  Read-only. PSR_M_instrs
      PSR_M_INSTRS         : ID_ISAR4_PSR_M_INSTRS_Field;
      --  unspecified
      Reserved_28_31       : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_ISAR4_Register use record
      UNPRIV_INSTRS        at 0 range 0 .. 3;
      WITHSHIFTS_INSTRS    at 0 range 4 .. 7;
      WB_INSTRS            at 0 range 8 .. 11;
      Reserved_12_15       at 0 range 12 .. 15;
      BARRIER_INSTRS       at 0 range 16 .. 19;
      SYNCPRIM_INSTRS_FRAC at 0 range 20 .. 23;
      PSR_M_INSTRS         at 0 range 24 .. 27;
      Reserved_28_31       at 0 range 28 .. 31;
   end record;

   --  CPACR_CP array element
   subtype CPACR_CP_Element is HAL.UInt2;

   --  CPACR_CP array
   type CPACR_CP_Field_Array is array (10 .. 11) of CPACR_CP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for CPACR_CP
   type CPACR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : HAL.UInt4;
         when True =>
            --  CP as an array
            Arr : CPACR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CPACR_CP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Coprocessor Access Control Register
   type CPACR_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  Access privileges for coprocessor 10
      CP             : CPACR_CP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPACR_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      CP             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MPU_TYPE_DREGION_Field is HAL.UInt8;
   subtype MPU_TYPE_IREGION_Field is HAL.UInt8;

   --  MPU Type Register
   type MPU_TYPE_Register is record
      --  Read-only. Because the processor core uses only a unified MPU,
      --  SEPARATE is always 0
      SEPARATE_k     : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Number of supported MPU regions field
      DREGION        : MPU_TYPE_DREGION_Field;
      --  Read-only. Because the processor core uses only a unified MPU,
      --  IREGION always contains 0x00
      IREGION        : MPU_TYPE_IREGION_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_TYPE_Register use record
      SEPARATE_k     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DREGION        at 0 range 8 .. 15;
      IREGION        at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  MPU Control Register
   type MPU_CTRL_Register is record
      --  MPU enable bit
      EN            : Boolean := False;
      --  This bit enables the MPU when in Hard Fault, NMI, and FAULTMASK
      --  escalated handlers
      HFNMIENA      : Boolean := False;
      --  This bit enables the default memory map for privileged access, as a
      --  background region, when the MPU is enabled
      PRIVDEFENA    : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_CTRL_Register use record
      EN            at 0 range 0 .. 0;
      HFNMIENA      at 0 range 1 .. 1;
      PRIVDEFENA    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype MPU_RNR_REGION_Field is HAL.UInt8;

   --  MPU Region Number Register
   type MPU_RNR_Register is record
      --  Region select field
      REGION        : MPU_RNR_REGION_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RNR_Register use record
      REGION        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MPU_RBAR_REGION_Field is HAL.UInt4;
   subtype MPU_RBAR_ADDR_Field is HAL.UInt27;

   --  MPU Region Base Address Register
   type MPU_RBAR_Register is record
      --  MPU region override field
      REGION : MPU_RBAR_REGION_Field := 16#0#;
      --  MPU Region Number valid bit
      VALID  : Boolean := False;
      --  Region base address field
      ADDR   : MPU_RBAR_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RBAR_Register use record
      REGION at 0 range 0 .. 3;
      VALID  at 0 range 4 .. 4;
      ADDR   at 0 range 5 .. 31;
   end record;

   subtype MPU_RASR_SIZE_Field is HAL.UInt5;
   subtype MPU_RASR_SRD_Field is HAL.UInt8;
   subtype MPU_RASR_TEX_Field is HAL.UInt3;
   subtype MPU_RASR_AP_Field is HAL.UInt3;

   --  MPU Region Attribute and Size Register
   type MPU_RASR_Register is record
      --  Region enable bit
      EN             : Boolean := False;
      --  MPU Protection Region Size Field
      SIZE           : MPU_RASR_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Sub-Region Disable (SRD) field
      SRD            : MPU_RASR_SRD_Field := 16#0#;
      --  Bufferable bit
      B              : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Shareable bit
      S              : Boolean := False;
      --  Type extension field
      TEX            : MPU_RASR_TEX_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Data access permission field
      AP             : MPU_RASR_AP_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Instruction access disable bit
      XN             : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MPU_RASR_Register use record
      EN             at 0 range 0 .. 0;
      SIZE           at 0 range 1 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SRD            at 0 range 8 .. 15;
      B              at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      S              at 0 range 18 .. 18;
      TEX            at 0 range 19 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      AP             at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      XN             at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Debug Halting Control and Status Register
   type DHCSR_Register is record
      --  Enables debug
      C_DBGEN        : Boolean := False;
      --  Halts the core
      C_HALT         : Boolean := False;
      --  Steps the core in halted debug
      C_STEP         : Boolean := False;
      --  Mask interrupts when stepping or running in halted debug
      C_MSKINTS      : Boolean := False;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  If the core is stalled on a load/store operation the stall ceases and
      --  the instruction is forced to complete
      C_SNAPSTALL    : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  Read-only. Register Read/Write on the Debug Core Register Selector
      --  register is available
      S_REGRDY       : Boolean := False;
      --  Read-only. The core is in debug state when S_HALT is set
      S_HALT         : Boolean := False;
      --  Read-only. Indicates that the core is sleeping (WFI, WFE, or
      --  SLEEP-ON-EXIT)
      S_SLEEP        : Boolean := False;
      --  Read-only. Reads as one if the core is running (not halted) and a
      --  lockup condition is present
      S_LOCKUP       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Read-only. Indicates that an instruction has completed since last
      --  read
      S_RETIRE_ST    : Boolean := False;
      --  Read-only. Indicates that the core has been reset, or is now being
      --  reset, since the last time this bit was read
      S_RST_ST       : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHCSR_Register use record
      C_DBGEN        at 0 range 0 .. 0;
      C_HALT         at 0 range 1 .. 1;
      C_STEP         at 0 range 2 .. 2;
      C_MSKINTS      at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      C_SNAPSTALL    at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      S_REGRDY       at 0 range 16 .. 16;
      S_HALT         at 0 range 17 .. 17;
      S_SLEEP        at 0 range 18 .. 18;
      S_LOCKUP       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      S_RETIRE_ST    at 0 range 24 .. 24;
      S_RST_ST       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCRSR_REGSEL_Field is HAL.UInt5;

   --  Deubg Core Register Selector Register
   type DCRSR_Register is record
      --  Register select
      REGSEL         : DCRSR_REGSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Write = 1, Read = 0
      REGWNR         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCRSR_Register use record
      REGSEL         at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      REGWNR         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Debug Exception and Monitor Control Register
   type DEMCR_Register is record
      --  Reset Vector Catch
      VC_CORERESET   : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Debug trap on Memory Management faults
      VC_MMERR       : Boolean := False;
      --  Debug trap on Usage Fault access to Coprocessor that is not present
      --  or marked as not present in CAR register
      VC_NOCPERR     : Boolean := False;
      --  Debug trap on Usage Fault enabled checking errors
      VC_CHKERR      : Boolean := False;
      --  Debug trap on Usage Fault state errors
      VC_STATERR     : Boolean := False;
      --  Debug Trap on normal Bus error
      VC_BUSERR      : Boolean := False;
      --  Debug Trap on interrupt/exception service errors
      VC_INTERR      : Boolean := False;
      --  Debug trap on Hard Fault
      VC_HARDERR     : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Enable the debug monitor
      MON_EN         : Boolean := False;
      --  Pend the monitor to activate when priority permits
      MON_PND        : Boolean := False;
      --  When MON_EN = 1, this steps the core
      MON_STEP       : Boolean := False;
      --  This enables the monitor to identify how it wakes up
      MON_REQ        : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  This bit must be set to 1 to enable use of the trace and debug
      --  blocks: Data Watchpoint and Trace (DWT), Instrumentation Trace
      --  Macrocell (ITM), Embedded Trace Macrocell (ETM), Trace Port Interface
      --  Unit (TPIU)
      TRCENA         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEMCR_Register use record
      VC_CORERESET   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      VC_MMERR       at 0 range 4 .. 4;
      VC_NOCPERR     at 0 range 5 .. 5;
      VC_CHKERR      at 0 range 6 .. 6;
      VC_STATERR     at 0 range 7 .. 7;
      VC_BUSERR      at 0 range 8 .. 8;
      VC_INTERR      at 0 range 9 .. 9;
      VC_HARDERR     at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      MON_EN         at 0 range 16 .. 16;
      MON_PND        at 0 range 17 .. 17;
      MON_STEP       at 0 range 18 .. 18;
      MON_REQ        at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      TRCENA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype STIR_INTID_Field is HAL.UInt9;

   --  Software Trigger Interrupt Register
   type STIR_Register is record
      --  Interrupt ID field
      INTID         : STIR_INTID_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STIR_Register use record
      INTID         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Floating Point Context Control Register
   type FPCCR_Register is record
      --  Indicates whether Lazy preservation of the FP state is active
      LSPACT        : Boolean := False;
      --  Indicates the privilege level of the software executing was User
      --  (Unpriviledged) when the processor allocated the FP stack frame
      USER          : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Indicates the processor mode was Thread when it allocated the FP
      --  stack frame
      THREAD        : Boolean := False;
      --  Indicates whether the software executing when the processor allocated
      --  the FP stack frame was able to set the HardFault exception to pending
      HFRDY         : Boolean := False;
      --  Indicates whether the software executing when the processor allocated
      --  the FP stack frame was able to set the MemManage exception to pending
      MMRDY         : Boolean := False;
      --  Indicates whether the software executing when the processor allocated
      --  the FP stack frame was able to set the BusFault exception to pending
      BFRDY         : Boolean := False;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Indicates whether the the software executing when the processor
      --  allocated the FP stack frame was able to set the DebugMonitor
      --  exception to pending
      MONRDY        : Boolean := False;
      --  unspecified
      Reserved_9_29 : HAL.UInt21 := 16#0#;
      --  Lazy State Preservation ENable
      LSPEN         : Boolean := True;
      --  Automatic State Preservation ENable
      ASPEN         : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPCCR_Register use record
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

   subtype FPCAR_ADDR_Field is HAL.UInt29;

   --  Floating-Point Context Address Register
   type FPCAR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Holds the (double-word-aligned) location of the unpopulated
      --  floating-point register space allocated on an exception stack frame
      ADDR           : FPCAR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPCAR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ADDR           at 0 range 2 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FPDSCR_RMODE_Field is HAL.UInt2;

   --  Floating Point Default Status Control Register
   type FPDSCR_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  Default value for Rounding Mode control field
      RMODE          : FPDSCR_RMODE_Field := 16#0#;
      --  Default value for Flush-to-Zero mode bit
      FZ             : Boolean := False;
      --  Default value for Default NaN mode bit
      DN             : Boolean := False;
      --  Default value for Alternative Half Precision bit
      AHP            : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPDSCR_Register use record
      Reserved_0_21  at 0 range 0 .. 21;
      RMODE          at 0 range 22 .. 23;
      FZ             at 0 range 24 .. 24;
      DN             at 0 range 25 .. 25;
      AHP            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype MVFR0_A_SIMD_REGISTERS_Field is HAL.UInt4;
   subtype MVFR0_SINGLE_PRECISION_Field is HAL.UInt4;
   subtype MVFR0_DOUBLE_PRECISION_Field is HAL.UInt4;
   subtype MVFR0_FP_EXCEPTION_TRAPPING_Field is HAL.UInt4;
   subtype MVFR0_DIV_Field is HAL.UInt4;
   subtype MVFR0_SQUARE_ROOT_Field is HAL.UInt4;
   subtype MVFR0_SHORT_VECTORS_Field is HAL.UInt4;
   subtype MVFR0_FP_ROUNDING_MODES_Field is HAL.UInt4;

   --  Media and FP Feature Register 0 (MVFR0)
   type MVFR0_Register is record
      --  Read-only. Indicates the size of the FP register bank
      A_SIMD_REGISTERS      : MVFR0_A_SIMD_REGISTERS_Field;
      --  Read-only. Indicates the hardware support for FP single-precision
      --  operations
      SINGLE_PRECISION      : MVFR0_SINGLE_PRECISION_Field;
      --  Read-only. Indicates the hardware support for FP double-precision
      --  operations
      DOUBLE_PRECISION      : MVFR0_DOUBLE_PRECISION_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  exception trapping
      FP_EXCEPTION_TRAPPING : MVFR0_FP_EXCEPTION_TRAPPING_Field;
      --  Read-only. Indicates the hardware support for FP divide operations
      DIV                   : MVFR0_DIV_Field;
      --  Read-only. Indicates the hardware support for FP square root
      --  operations
      SQUARE_ROOT           : MVFR0_SQUARE_ROOT_Field;
      --  Read-only. Indicates the hardware support for FP short vectors
      SHORT_VECTORS         : MVFR0_SHORT_VECTORS_Field;
      --  Read-only. Indicates the rounding modes supported by the FP
      --  floating-point hardware
      FP_ROUNDING_MODES     : MVFR0_FP_ROUNDING_MODES_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MVFR0_Register use record
      A_SIMD_REGISTERS      at 0 range 0 .. 3;
      SINGLE_PRECISION      at 0 range 4 .. 7;
      DOUBLE_PRECISION      at 0 range 8 .. 11;
      FP_EXCEPTION_TRAPPING at 0 range 12 .. 15;
      DIV                   at 0 range 16 .. 19;
      SQUARE_ROOT           at 0 range 20 .. 23;
      SHORT_VECTORS         at 0 range 24 .. 27;
      FP_ROUNDING_MODES     at 0 range 28 .. 31;
   end record;

   subtype MVFR1_FTZ_MODE_Field is HAL.UInt4;
   subtype MVFR1_D_NAN_MODE_Field is HAL.UInt4;
   subtype MVFR1_FP_HPFP_Field is HAL.UInt4;
   subtype MVFR1_FP_FUSED_MAC_Field is HAL.UInt4;

   --  Media and FP Feature Register 1 (MVFR1)
   type MVFR1_Register is record
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  only the Flush-to-Zero mode of operation
      FTZ_MODE      : MVFR1_FTZ_MODE_Field;
      --  Read-only. Indicates whether the FP hardware implementation supports
      --  only the Default NaN mode
      D_NAN_MODE    : MVFR1_D_NAN_MODE_Field;
      --  unspecified
      Reserved_8_23 : HAL.UInt16;
      --  Read-only. Indicates whether the FP supports half-precision
      --  floating-point conversion operations
      FP_HPFP       : MVFR1_FP_HPFP_Field;
      --  Read-only. Indicates whether the FP supports fused multiply
      --  accumulate operations
      FP_FUSED_MAC  : MVFR1_FP_FUSED_MAC_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MVFR1_Register use record
      FTZ_MODE      at 0 range 0 .. 3;
      D_NAN_MODE    at 0 range 4 .. 7;
      Reserved_8_23 at 0 range 8 .. 23;
      FP_HPFP       at 0 range 24 .. 27;
      FP_FUSED_MAC  at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Unknown
   type SCS0_Peripheral is record
      --  Interrupt Control Type Register
      ICTR        : aliased ICTR_Register;
      --  Auxiliary Control Register
      ACTLR       : aliased ACTLR_Register;
      --  SysTick Control and Status Register
      STCSR       : aliased STCSR_Register;
      --  SysTick Reload Value Register
      STRVR       : aliased STRVR_Register;
      --  SysTick Current Value Register
      STCVR       : aliased STCVR_Register;
      --  SysTick Calibration Value Register
      STCR        : aliased STCR_Register;
      --  Irq Set Enable Register n
      NVIC_ISER   : aliased NVIC_ISER_Registers;
      --  Irq Clear Enable Register n
      NVIC_ICER   : aliased NVIC_ICER_Registers;
      --  Irq Set Pending Register n
      NVIC_ISPR   : aliased NVIC_ISPR_Registers;
      --  Irq Clear Pending Register n
      NVIC_ICPR   : aliased NVIC_ICPR_Registers;
      --  Irq Active Bit Register n
      NVIC_IABR   : aliased NVIC_IABR_Registers;
      --  Irq Priority Register nn
      NVIC_IPR    : aliased NVIC_IPR_Registers;
      --  CPUID Base Register
      CPUID       : aliased CPUID_Register;
      --  Interrupt Control State Register
      ICSR        : aliased ICSR_Register;
      --  Vector Table Offset Register
      VTOR        : aliased VTOR_Register;
      --  Application Interrupt/Reset Control Register
      AIRCR       : aliased AIRCR_Register;
      --  System Control Register
      SCR         : aliased SCR_Register;
      --  Configuration Control Register
      CCR         : aliased CCR_Register;
      --  System Handlers 4-7 Priority Register
      SHPR1       : aliased SHPR1_Register;
      --  System Handlers 8-11 Priority Register
      SHPR2       : aliased SHPR2_Register;
      --  System Handlers 12-15 Priority Register
      SHPR3       : aliased SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR       : aliased SHCSR_Register;
      --  Configurable Fault Status Registers
      CFSR        : aliased CFSR_Register;
      --  Hard Fault Status Register
      HFSR        : aliased HFSR_Register;
      --  Debug Fault Status Register
      DFSR        : aliased DFSR_Register;
      --  Mem Manage Fault Address Register
      MMFAR       : aliased HAL.UInt32;
      --  Bus Fault Address Register
      BFAR        : aliased HAL.UInt32;
      --  Auxiliary Fault Status Register
      AFSR        : aliased HAL.UInt32;
      --  Processor Feature register0
      ID_PFR0     : aliased ID_PFR0_Register;
      --  Processor Feature register1
      ID_PFR1     : aliased ID_PFR1_Register;
      --  Debug Feature register0
      ID_DFR0     : aliased ID_DFR0_Register;
      --  Auxiliary Feature register0
      ID_AFR0     : aliased HAL.UInt32;
      --  Memory Model Feature register0
      ID_MMFR0    : aliased ID_MMFR0_Register;
      --  Memory Model Feature register1
      ID_MMFR1    : aliased HAL.UInt32;
      --  Memory Model Feature register2
      ID_MMFR2    : aliased ID_MMFR2_Register;
      --  Memory Model Feature register3
      ID_MMFR3    : aliased HAL.UInt32;
      --  ISA Feature register0
      ISAR0       : aliased ISAR0_Register;
      --  ISA Feature register1
      ID_ISAR1    : aliased ID_ISAR1_Register;
      --  ISA Feature register2
      ID_ISAR2    : aliased ID_ISAR2_Register;
      --  ISA Feature register3
      ID_ISAR3    : aliased ID_ISAR3_Register;
      --  ISA Feature register4
      ID_ISAR4    : aliased ID_ISAR4_Register;
      --  Coprocessor Access Control Register
      CPACR       : aliased CPACR_Register;
      --  MPU Type Register
      MPU_TYPE    : aliased MPU_TYPE_Register;
      --  MPU Control Register
      MPU_CTRL    : aliased MPU_CTRL_Register;
      --  MPU Region Number Register
      MPU_RNR     : aliased MPU_RNR_Register;
      --  MPU Region Base Address Register
      MPU_RBAR    : aliased MPU_RBAR_Register;
      --  MPU Region Attribute and Size Register
      MPU_RASR    : aliased MPU_RASR_Register;
      --  MPU Alias 1 Region Base Address register
      MPU_RBAR_A1 : aliased HAL.UInt32;
      --  MPU Alias 1 Region Attribute and Size register
      MPU_RASR_A1 : aliased HAL.UInt32;
      --  MPU Alias 2 Region Base Address register
      MPU_RBAR_A2 : aliased HAL.UInt32;
      --  MPU Alias 2 Region Attribute and Size register
      MPU_RASR_A2 : aliased HAL.UInt32;
      --  MPU Alias 3 Region Base Address register
      MPU_RBAR_A3 : aliased HAL.UInt32;
      --  MPU Alias 3 Region Attribute and Size register
      MPU_RASR_A3 : aliased HAL.UInt32;
      --  Debug Halting Control and Status Register
      DHCSR       : aliased DHCSR_Register;
      --  Deubg Core Register Selector Register
      DCRSR       : aliased DCRSR_Register;
      --  Debug Core Register Data Register
      DCRDR       : aliased HAL.UInt32;
      --  Debug Exception and Monitor Control Register
      DEMCR       : aliased DEMCR_Register;
      --  Software Trigger Interrupt Register
      STIR        : aliased STIR_Register;
      --  Floating Point Context Control Register
      FPCCR       : aliased FPCCR_Register;
      --  Floating-Point Context Address Register
      FPCAR       : aliased FPCAR_Register;
      --  Floating Point Default Status Control Register
      FPDSCR      : aliased FPDSCR_Register;
      --  Media and FP Feature Register 0 (MVFR0)
      MVFR0       : aliased MVFR0_Register;
      --  Media and FP Feature Register 1 (MVFR1)
      MVFR1       : aliased MVFR1_Register;
      --  Peripheral identification register (PID4)
      PID4        : aliased HAL.UInt32;
      --  Peripheral identification register (PID5)
      PID5        : aliased HAL.UInt32;
      --  Peripheral identification register (PID6)
      PID6        : aliased HAL.UInt32;
      --  Peripheral identification register (PID7)
      PID7        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 7:0 (PID0)
      PID0        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 15:8 (PID1)
      PID1        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 23:16 (PID2)
      PID2        : aliased HAL.UInt32;
      --  Peripheral identification register Bits 31:24 (PID3)
      PID3        : aliased HAL.UInt32;
      --  Component identification register Bits 7:0 (CID0)
      CID0        : aliased HAL.UInt32;
      --  Component identification register Bits 15:8 (CID1)
      CID1        : aliased HAL.UInt32;
      --  Component identification register Bits 23:16 (CID2)
      CID2        : aliased HAL.UInt32;
      --  Component identification register Bits 31:24 (CID3)
      CID3        : aliased HAL.UInt32;
   end record
     with Volatile;

   for SCS0_Peripheral use record
      ICTR        at 16#4# range 0 .. 31;
      ACTLR       at 16#8# range 0 .. 31;
      STCSR       at 16#10# range 0 .. 31;
      STRVR       at 16#14# range 0 .. 31;
      STCVR       at 16#18# range 0 .. 31;
      STCR        at 16#1C# range 0 .. 31;
      NVIC_ISER   at 16#100# range 0 .. 191;
      NVIC_ICER   at 16#180# range 0 .. 191;
      NVIC_ISPR   at 16#200# range 0 .. 191;
      NVIC_ICPR   at 16#280# range 0 .. 191;
      NVIC_IABR   at 16#300# range 0 .. 191;
      NVIC_IPR    at 16#400# range 0 .. 1311;
      CPUID       at 16#D00# range 0 .. 31;
      ICSR        at 16#D04# range 0 .. 31;
      VTOR        at 16#D08# range 0 .. 31;
      AIRCR       at 16#D0C# range 0 .. 31;
      SCR         at 16#D10# range 0 .. 31;
      CCR         at 16#D14# range 0 .. 31;
      SHPR1       at 16#D18# range 0 .. 31;
      SHPR2       at 16#D1C# range 0 .. 31;
      SHPR3       at 16#D20# range 0 .. 31;
      SHCSR       at 16#D24# range 0 .. 31;
      CFSR        at 16#D28# range 0 .. 31;
      HFSR        at 16#D2C# range 0 .. 31;
      DFSR        at 16#D30# range 0 .. 31;
      MMFAR       at 16#D34# range 0 .. 31;
      BFAR        at 16#D38# range 0 .. 31;
      AFSR        at 16#D3C# range 0 .. 31;
      ID_PFR0     at 16#D40# range 0 .. 31;
      ID_PFR1     at 16#D44# range 0 .. 31;
      ID_DFR0     at 16#D48# range 0 .. 31;
      ID_AFR0     at 16#D4C# range 0 .. 31;
      ID_MMFR0    at 16#D50# range 0 .. 31;
      ID_MMFR1    at 16#D54# range 0 .. 31;
      ID_MMFR2    at 16#D58# range 0 .. 31;
      ID_MMFR3    at 16#D5C# range 0 .. 31;
      ISAR0       at 16#D60# range 0 .. 31;
      ID_ISAR1    at 16#D64# range 0 .. 31;
      ID_ISAR2    at 16#D68# range 0 .. 31;
      ID_ISAR3    at 16#D6C# range 0 .. 31;
      ID_ISAR4    at 16#D70# range 0 .. 31;
      CPACR       at 16#D88# range 0 .. 31;
      MPU_TYPE    at 16#D90# range 0 .. 31;
      MPU_CTRL    at 16#D94# range 0 .. 31;
      MPU_RNR     at 16#D98# range 0 .. 31;
      MPU_RBAR    at 16#D9C# range 0 .. 31;
      MPU_RASR    at 16#DA0# range 0 .. 31;
      MPU_RBAR_A1 at 16#DA4# range 0 .. 31;
      MPU_RASR_A1 at 16#DA8# range 0 .. 31;
      MPU_RBAR_A2 at 16#DAC# range 0 .. 31;
      MPU_RASR_A2 at 16#DB0# range 0 .. 31;
      MPU_RBAR_A3 at 16#DB4# range 0 .. 31;
      MPU_RASR_A3 at 16#DB8# range 0 .. 31;
      DHCSR       at 16#DF0# range 0 .. 31;
      DCRSR       at 16#DF4# range 0 .. 31;
      DCRDR       at 16#DF8# range 0 .. 31;
      DEMCR       at 16#DFC# range 0 .. 31;
      STIR        at 16#F00# range 0 .. 31;
      FPCCR       at 16#F34# range 0 .. 31;
      FPCAR       at 16#F38# range 0 .. 31;
      FPDSCR      at 16#F3C# range 0 .. 31;
      MVFR0       at 16#F40# range 0 .. 31;
      MVFR1       at 16#F44# range 0 .. 31;
      PID4        at 16#FD0# range 0 .. 31;
      PID5        at 16#FD4# range 0 .. 31;
      PID6        at 16#FD8# range 0 .. 31;
      PID7        at 16#FDC# range 0 .. 31;
      PID0        at 16#FE0# range 0 .. 31;
      PID1        at 16#FE4# range 0 .. 31;
      PID2        at 16#FE8# range 0 .. 31;
      PID3        at 16#FEC# range 0 .. 31;
      CID0        at 16#FF0# range 0 .. 31;
      CID1        at 16#FF4# range 0 .. 31;
      CID2        at 16#FF8# range 0 .. 31;
      CID3        at 16#FFC# range 0 .. 31;
   end record;

   --  Unknown
   SCS0_Periph : aliased SCS0_Peripheral
     with Import, Address => System'To_Address (16#E000E000#);

end NRF_SVD.SCS0;
