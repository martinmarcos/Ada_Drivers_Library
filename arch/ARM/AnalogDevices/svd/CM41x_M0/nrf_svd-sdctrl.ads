--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SDCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CPUID_REVISION_Field is HAL.UInt4;
   subtype CPUID_PARTNO_Field is HAL.UInt12;
   subtype CPUID_CONSTANT_Field is HAL.UInt4;
   subtype CPUID_VARIANT_Field is HAL.UInt4;
   subtype CPUID_IMPLEMENTER_Field is HAL.UInt8;

   --  CPU ID Base Register
   type CPUID_Register is record
      --  Read-only. Revision Number
      REVISION    : CPUID_REVISION_Field;
      --  Read-only. Number of processor within family: 0xC20
      PARTNO      : CPUID_PARTNO_Field;
      --  Read-only. Reads as 0xC
      CONSTANT_k  : CPUID_CONSTANT_Field;
      --  Read-only. Implementation defined variant number: 0x0 (for r0)
      VARIANT     : CPUID_VARIANT_Field;
      --  Read-only. Implementor code: 0x41 = ARM
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
   subtype ICSR_VECTPENDING_Field is HAL.UInt9;

   --  Interrupt Control State Register
   type ICSR_Register is record
      --  Read-only. Active exception number field
      VECTACTIVE     : ICSR_VECTACTIVE_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Read-only. Highest pending exception
      VECTPENDING    : ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Read-only. External interrupt pending flag
      ISRPENDING     : Boolean := False;
      --  Read-only. Pending Interrupt
      ISRPREEMPT     : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Clear pending SysTick bit
      PENDSTCLR      : Boolean := False;
      --  Set a pending SysTick bit
      PENDSTSET      : Boolean := False;
      --  Clear pending PendSV bit
      PENDSVCLR      : Boolean := False;
      --  Set pending PendSV bit
      PENDSVSET      : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Set NMI
      NMIPENDSET     : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICSR_Register use record
      VECTACTIVE     at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
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

   subtype AIRCR_VECTKEY_Field is HAL.UInt16;

   --  Application Interrupt and Reset Control Register
   type AIRCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Clear active state information
      VECTCLRACTIVE : Boolean := False;
      --  Assert SYSRESETIRQ
      SYSRESETREQ   : Boolean := False;
      --  unspecified
      Reserved_3_14 : HAL.UInt12 := 16#0#;
      --  Read-only. Data endianness bit
      ENDIANESS     : Boolean := False;
      --  Register key
      VECTKEY       : AIRCR_VECTKEY_Field := 16#FA05#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIRCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTCLRACTIVE at 0 range 1 .. 1;
      SYSRESETREQ   at 0 range 2 .. 2;
      Reserved_3_14 at 0 range 3 .. 14;
      ENDIANESS     at 0 range 15 .. 15;
      VECTKEY       at 0 range 16 .. 31;
   end record;

   --  System Control Register
   type SCR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Sleep on exit
      SLEEPONEXIT   : Boolean := False;
      --  Sleep deep bit.
      SLEEPDEEP     : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Wake on pend
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

   --  Configuration and Control Register
   type CCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. Unalign Trp
      UNALIGN_TRP    : Boolean;
      --  unspecified
      Reserved_4_8   : HAL.UInt5;
      --  Read-only. Stack align
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

   subtype SHPR2_PRI_11_Field is HAL.UInt2;

   --  System Handler Priority Register 2
   type SHPR2_Register is record
      --  unspecified
      Reserved_0_29 : HAL.UInt30 := 16#0#;
      --  Priority of system handler 11, SVCall
      PRI_11        : SHPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR2_Register use record
      Reserved_0_29 at 0 range 0 .. 29;
      PRI_11        at 0 range 30 .. 31;
   end record;

   subtype SHPR3_PRI_14_Field is HAL.UInt2;
   subtype SHPR3_PRI_15_Field is HAL.UInt2;

   --  System Handler Priority Register 3
   type SHPR3_Register is record
      --  unspecified
      Reserved_0_21  : HAL.UInt22 := 16#0#;
      --  Priority of system handler 14, PendSV
      PRI_14         : SHPR3_PRI_14_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of system handler 15, SysTick
      PRI_15         : SHPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHPR3_Register use record
      Reserved_0_21  at 0 range 0 .. 21;
      PRI_14         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_15         at 0 range 30 .. 31;
   end record;

   --  System Handler Control and State Register
   type SHCSR_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  SVCall pending
      SVCALLPENDED   : Boolean := False;
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

   --  Debug Fault Status Register
   type DFSR_Register is record
      --  Halt request flag
      HALTED        : Boolean := False;
      --  BKPT flag
      BKPT          : Boolean := False;
      --  Data Watchpoint (DW) flag.
      DWTRAP        : Boolean := False;
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
      DWTRAP        at 0 range 2 .. 2;
      VCATCH        at 0 range 3 .. 3;
      EXTERNAL      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Debug Halting Control and Status Register
   type DHCSR_Register is record
      --  Enables or disable debug
      C_DEBUGEN      : Boolean := False;
      --  C Halt
      C_HALT         : Boolean := False;
      --  C Step
      C_STEP         : Boolean := False;
      --  C Maskints
      C_MASKINTS     : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Read-only. S Regrdy
      S_REGRDY       : Boolean := False;
      --  Read-only. The core is halted in debug state only if S_HALT is set.
      S_HALT         : Boolean := False;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Read-only. S Retire St
      S_RETIRE_ST    : Boolean := False;
      --  Read-only. S Reset St
      S_RESET_ST     : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHCSR_Register use record
      C_DEBUGEN      at 0 range 0 .. 0;
      C_HALT         at 0 range 1 .. 1;
      C_STEP         at 0 range 2 .. 2;
      C_MASKINTS     at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      S_REGRDY       at 0 range 16 .. 16;
      S_HALT         at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      S_RETIRE_ST    at 0 range 24 .. 24;
      S_RESET_ST     at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DCRSR_REGSEL_Field is HAL.UInt5;

   --  Debug Core Register Selector Register
   type DCRSR_Register is record
      --  Select processor register
      REGSEL         : DCRSR_REGSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Register Write-not-Read
      REGWnR         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCRSR_Register use record
      REGSEL         at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      REGWnR         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Debug Exception and Monitor Control Register
   type DEMCR_Register is record
      --  Vc Corereset
      VC_CORERESET   : Boolean := False;
      --  unspecified
      Reserved_1_9   : HAL.UInt9 := 16#0#;
      --  Debug trap on a Hard Fault
      VC_HARDERR     : Boolean := False;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  Global enable or disable for the DW unit
      DWTENA         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEMCR_Register use record
      VC_CORERESET   at 0 range 0 .. 0;
      Reserved_1_9   at 0 range 1 .. 9;
      VC_HARDERR     at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      DWTENA         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System and Debug Control
   type SDCTRL_Peripheral is record
      --  CPU ID Base Register
      CPUID : aliased CPUID_Register;
      --  Interrupt Control State Register
      ICSR  : aliased ICSR_Register;
      --  Application Interrupt and Reset Control Register
      AIRCR : aliased AIRCR_Register;
      --  System Control Register
      SCR   : aliased SCR_Register;
      --  Configuration and Control Register
      CCR   : aliased CCR_Register;
      --  System Handler Priority Register 2
      SHPR2 : aliased SHPR2_Register;
      --  System Handler Priority Register 3
      SHPR3 : aliased SHPR3_Register;
      --  System Handler Control and State Register
      SHCSR : aliased SHCSR_Register;
      --  Debug Fault Status Register
      DFSR  : aliased DFSR_Register;
      --  Debug Halting Control and Status Register
      DHCSR : aliased DHCSR_Register;
      --  Debug Core Register Selector Register
      DCRSR : aliased DCRSR_Register;
      --  Debug Core Register Data Register
      DCRDR : aliased HAL.UInt32;
      --  Debug Exception and Monitor Control Register
      DEMCR : aliased DEMCR_Register;
   end record
     with Volatile;

   for SDCTRL_Peripheral use record
      CPUID at 16#0# range 0 .. 31;
      ICSR  at 16#4# range 0 .. 31;
      AIRCR at 16#C# range 0 .. 31;
      SCR   at 16#10# range 0 .. 31;
      CCR   at 16#14# range 0 .. 31;
      SHPR2 at 16#1C# range 0 .. 31;
      SHPR3 at 16#20# range 0 .. 31;
      SHCSR at 16#24# range 0 .. 31;
      DFSR  at 16#30# range 0 .. 31;
      DHCSR at 16#F0# range 0 .. 31;
      DCRSR at 16#F4# range 0 .. 31;
      DCRDR at 16#F8# range 0 .. 31;
      DEMCR at 16#FC# range 0 .. 31;
   end record;

   --  System and Debug Control
   SDCTRL_Periph : aliased SDCTRL_Peripheral
     with Import, Address => System'To_Address (16#E000ED00#);

end NRF_SVD.SDCTRL;
