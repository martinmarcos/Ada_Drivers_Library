--  Atmel software license text goes here    TODO  

--  This spec has been automatically generated from ATBTLC1000WLCSP.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package SAM_SVD.ARM_SYSCTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Indicates the enabled status of the SysTick counter
   type SYST_CSR_ENABLE_Field is
     (
      --  Counter Disabled
      SYST_CSR_ENABLE_Field_0,
      --  Counter Operating
      SYST_CSR_ENABLE_Field_1)
     with Size => 1;
   for SYST_CSR_ENABLE_Field use
     (SYST_CSR_ENABLE_Field_0 => 0,
      SYST_CSR_ENABLE_Field_1 => 1);

   --  Indicates whether counting to 0 causes the status of the SysTick
   --  exception to change to pending
   type SYST_CSR_TICKINT_Field is
     (
      --  Count to 0 does not affect the SysTick exception status
      SYST_CSR_TICKINT_Field_0,
      --  Count to 0 changes the SysTick excpetion status to pending
      SYST_CSR_TICKINT_Field_1)
     with Size => 1;
   for SYST_CSR_TICKINT_Field use
     (SYST_CSR_TICKINT_Field_0 => 0,
      SYST_CSR_TICKINT_Field_1 => 1);

   --  SysTick Control and Status Register
   type SYST_CSR_Register is record
      --  Indicates the enabled status of the SysTick counter
      ENABLE         : SYST_CSR_ENABLE_Field :=
                        SAM_SVD.ARM_SYSCTRL.SYST_CSR_ENABLE_Field_0;
      --  Indicates whether counting to 0 causes the status of the SysTick
      --  exception to change to pending
      TICKINT        : SYST_CSR_TICKINT_Field :=
                        SAM_SVD.ARM_SYSCTRL.SYST_CSR_TICKINT_Field_0;
      --  Read-only. SysTick uses the processor clock (writes are ignored)
      CLKSOURCE      : Boolean := True;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  Read-only. If 1 then the timer has counted to 0
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

   subtype SYST_CALIB_TENMS_Field is HAL.UInt24;

   --  SysTick Calibration Value Register
   type SYST_CALIB_Register is record
      --  Read-only. Holds a reload value to be used for 10ms timing. If 0 then
      --  calibration value is not known.
      TENMS          : SYST_CALIB_TENMS_Field;
      --  unspecified
      Reserved_24_29 : HAL.UInt6;
      --  Read-only. If 1 then 10ms calibration value is inexact
      SKEW           : Boolean;
      --  Read-only. If 1 then reference clock is not implemented
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

   subtype NVIC_IPR0_PRI_N0_Field is HAL.UInt2;
   subtype NVIC_IPR0_PRI_N1_Field is HAL.UInt2;
   subtype NVIC_IPR0_PRI_N2_Field is HAL.UInt2;
   subtype NVIC_IPR0_PRI_N3_Field is HAL.UInt2;

   --  Interrupt Priority Register 0
   type NVIC_IPR0_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 0
      PRI_N0         : NVIC_IPR0_PRI_N0_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 1
      PRI_N1         : NVIC_IPR0_PRI_N1_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 2
      PRI_N2         : NVIC_IPR0_PRI_N2_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 3
      PRI_N3         : NVIC_IPR0_PRI_N3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR0_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_N0         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N1         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N2         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N3         at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR1_PRI_N4_Field is HAL.UInt2;
   subtype NVIC_IPR1_PRI_N5_Field is HAL.UInt2;
   subtype NVIC_IPR1_PRI_N6_Field is HAL.UInt2;
   subtype NVIC_IPR1_PRI_N7_Field is HAL.UInt2;

   --  Interrupt Priority Register 1
   type NVIC_IPR1_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 4
      PRI_N4         : NVIC_IPR1_PRI_N4_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 5
      PRI_N5         : NVIC_IPR1_PRI_N5_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 6
      PRI_N6         : NVIC_IPR1_PRI_N6_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 7
      PRI_N7         : NVIC_IPR1_PRI_N7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR1_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_N4         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N5         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N6         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N7         at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR2_PRI_N8_Field is HAL.UInt2;
   subtype NVIC_IPR2_PRI_N9_Field is HAL.UInt2;
   subtype NVIC_IPR2_PRI_N10_Field is HAL.UInt2;
   subtype NVIC_IPR2_PRI_N11_Field is HAL.UInt2;

   --  Interrupt Priority Register 2
   type NVIC_IPR2_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 8
      PRI_N8         : NVIC_IPR2_PRI_N8_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 9
      PRI_N9         : NVIC_IPR2_PRI_N9_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 10
      PRI_N10        : NVIC_IPR2_PRI_N10_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 11
      PRI_N11        : NVIC_IPR2_PRI_N11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR2_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_N8         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N9         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N10        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N11        at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR3_PRI_N12_Field is HAL.UInt2;
   subtype NVIC_IPR3_PRI_N13_Field is HAL.UInt2;
   subtype NVIC_IPR3_PRI_N14_Field is HAL.UInt2;
   subtype NVIC_IPR3_PRI_N15_Field is HAL.UInt2;

   --  Interrupt Priority Register 3
   type NVIC_IPR3_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 12
      PRI_N12        : NVIC_IPR3_PRI_N12_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 13
      PRI_N13        : NVIC_IPR3_PRI_N13_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 14
      PRI_N14        : NVIC_IPR3_PRI_N14_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 15
      PRI_N15        : NVIC_IPR3_PRI_N15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR3_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_N12        at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N13        at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N14        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N15        at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR4_PRI_N16_Field is HAL.UInt3;
   subtype NVIC_IPR4_PRI_N17_Field is HAL.UInt2;
   subtype NVIC_IPR4_PRI_N18_Field is HAL.UInt2;
   subtype NVIC_IPR4_PRI_N19_Field is HAL.UInt2;

   --  Interrupt Priority Register 4
   type NVIC_IPR4_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Priority of Interrupt 16
      PRI_N16        : NVIC_IPR4_PRI_N16_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 17
      PRI_N17        : NVIC_IPR4_PRI_N17_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 18
      PRI_N18        : NVIC_IPR4_PRI_N18_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 19
      PRI_N19        : NVIC_IPR4_PRI_N19_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR4_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      PRI_N16        at 0 range 5 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N17        at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N18        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N19        at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR5_PRI_N20_Field is HAL.UInt3;
   subtype NVIC_IPR5_PRI_N21_Field is HAL.UInt2;
   subtype NVIC_IPR5_PRI_N22_Field is HAL.UInt2;
   subtype NVIC_IPR5_PRI_N23_Field is HAL.UInt2;

   --  Interrupt Priority Register 5
   type NVIC_IPR5_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Priority of Interrupt 20
      PRI_N20        : NVIC_IPR5_PRI_N20_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 21
      PRI_N21        : NVIC_IPR5_PRI_N21_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 22
      PRI_N22        : NVIC_IPR5_PRI_N22_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 23
      PRI_N23        : NVIC_IPR5_PRI_N23_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR5_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      PRI_N20        at 0 range 5 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N21        at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N22        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N23        at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR6_PRI_N24_Field is HAL.UInt3;
   subtype NVIC_IPR6_PRI_N25_Field is HAL.UInt2;
   subtype NVIC_IPR6_PRI_N26_Field is HAL.UInt2;
   subtype NVIC_IPR6_PRI_N27_Field is HAL.UInt2;

   --  Interrupt Priority Register 6
   type NVIC_IPR6_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Priority of Interrupt 24
      PRI_N24        : NVIC_IPR6_PRI_N24_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 25
      PRI_N25        : NVIC_IPR6_PRI_N25_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 26
      PRI_N26        : NVIC_IPR6_PRI_N26_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 27
      PRI_N27        : NVIC_IPR6_PRI_N27_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR6_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      PRI_N24        at 0 range 5 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N25        at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N26        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N27        at 0 range 30 .. 31;
   end record;

   subtype NVIC_IPR7_PRI_N28_Field is HAL.UInt3;
   subtype NVIC_IPR7_PRI_N29_Field is HAL.UInt2;
   subtype NVIC_IPR7_PRI_N30_Field is HAL.UInt2;
   subtype NVIC_IPR7_PRI_N31_Field is HAL.UInt2;

   --  Interrupt Priority Register 7
   type NVIC_IPR7_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  Priority of Interrupt 28
      PRI_N28        : NVIC_IPR7_PRI_N28_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 29
      PRI_N29        : NVIC_IPR7_PRI_N29_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 30
      PRI_N30        : NVIC_IPR7_PRI_N30_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of Interrupt 31
      PRI_N31        : NVIC_IPR7_PRI_N31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVIC_IPR7_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      PRI_N28        at 0 range 5 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_N29        at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_N30        at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_N31        at 0 range 30 .. 31;
   end record;

   subtype ICSR_VECTACTIVE_Field is HAL.UInt9;
   subtype ICSR_VECTPENDING_Field is HAL.UInt9;

   --  Interrupt Control State Register
   type ICSR_Register is record
      --  Read-only. Exception number for the current executing exception
      VECTACTIVE     : ICSR_VECTACTIVE_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Read-only. Exception number for highest priority pending exception
      VECTPENDING    : ICSR_VECTPENDING_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Read-only. If 1, Interrupt is pending
      ISRPENDING     : Boolean := False;
      --  Read-only. If 1, will service a pending exception
      ISRPREEMPT     : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Write-only. Clear Pending SysTick
      PENDSTCLR      : Boolean := False;
      --  Set pending SysTick
      PENDSTSET      : Boolean := False;
      --  Write-only. Clearing pending PendSV
      PENDSVCLR      : Boolean := False;
      --  Set pending PendSV interrupt
      PENDSVSET      : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Activate NMI Exception
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
      --  Write-only. Clears all active state information for fixed and
      --  configurable exceptions
      VECTCLRACTIVE : Boolean := False;
      --  Write-only. Active High System Reset Request
      SYSRESETREQ   : Boolean := False;
      --  unspecified
      Reserved_3_14 : HAL.UInt12 := 16#0#;
      --  Read-only. If 1 then big endian
      ENDIANNESS    : Boolean := False;
      --  Vector Key, must write 0x05FA to this otherwise the write is
      --  UNPREDICTABLE
      VECTKEY       : AIRCR_VECTKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIRCR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VECTCLRACTIVE at 0 range 1 .. 1;
      SYSRESETREQ   at 0 range 2 .. 2;
      Reserved_3_14 at 0 range 3 .. 14;
      ENDIANNESS    at 0 range 15 .. 15;
      VECTKEY       at 0 range 16 .. 31;
   end record;

   --  System Control Register
   type SCR_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Enter sleep state on exit from an ISR
      SLEEPONEXIT  : Boolean := False;
      --  Selected sleep state is deep sleep
      SLEEPDEEP    : Boolean := False;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  Transitions from inactive to pending are wakeup events
      SEVONPEND    : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SCR_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      SLEEPONEXIT  at 0 range 1 .. 1;
      SLEEPDEEP    at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      SEVONPEND    at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Configuration and Control Register
   type CCR_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3;
      --  Read-only. Unaligned work and halfword accesses generate a HardFault
      --  exception
      UNALIGN_TRP    : Boolean;
      --  unspecified
      Reserved_4_8   : HAL.UInt5;
      --  Read-only. On exception entry, SP used prior to exception is adjusted
      --  to be 8-byte aligned and context to restore it is saved
      STKALIGN       : Boolean;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      UNALIGN_TRP    at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      STKALIGN       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
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
      Reserved_0_14 : HAL.UInt15 := 16#0#;
      --  SVCall is pending
      SVCALLPENDED  : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for SHCSR_Register use record
      Reserved_0_14 at 0 range 0 .. 14;
      SVCALLPENDED  at 0 range 15 .. 15;
   end record;

   --  Debug Fault Status Register
   type DFSR_Register is record
      --  Halt Request Debug Event Active
      HALTED       : Boolean := False;
      --  At least one breakpoint debug event
      BKPT         : Boolean := False;
      --  At least one debug event generated by DWT
      DWTTRAP      : Boolean := False;
      --  Vector catch debug event generated
      VCATCH       : Boolean := False;
      --  EDBGRQ debug event
      EXTERNAL     : Boolean := False;
      --  unspecified
      Reserved_5_7 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DFSR_Register use record
      HALTED       at 0 range 0 .. 0;
      BKPT         at 0 range 1 .. 1;
      DWTTRAP      at 0 range 2 .. 2;
      VCATCH       at 0 range 3 .. 3;
      EXTERNAL     at 0 range 4 .. 4;
      Reserved_5_7 at 0 range 5 .. 7;
   end record;

   --  Debug Halting Control and Status Register
   type DHCSR_Register is record
      --  Halting Debug Enabled (Must write 0xA05F to bits 31:16 to access)
      C_DEBUGEN      : Boolean := False;
      --  Request a running processor to halt (Must write 0xA05F to bits 31:16
      --  to access)
      C_HALT         : Boolean := False;
      --  Single-Stepping Enabled (Must write 0xA05F to bits 31:16 to access)
      C_STEP         : Boolean := False;
      --  Mask PendSV, SysTick and external configurable interrupts (Must write
      --  0xA05F to bits 31:16 to access)
      C_MASKINTS     : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Read-only. Transfer to or from the DCRDR is complete
      S_REGRDY       : Boolean := False;
      --  Read-only. In Debug State
      S_HALT         : Boolean := False;
      --  Read-only. Sleeping
      S_SLEEP        : Boolean := False;
      --  Read-only. Locked Up
      S_LOCKUP       : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Read-only. At least one instruction has completed since last DHCSR
      --  read
      S_RETIRE_ST    : Boolean := False;
      --  Read-only. At least one reset since last DHCSR read
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
      S_SLEEP        at 0 range 18 .. 18;
      S_LOCKUP       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      S_RETIRE_ST    at 0 range 24 .. 24;
      S_RESET_ST     at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Specifies the ARM core register or special purpose register to transfer
   type DCRSR_REGSEL_Field is
     (
      --  ARM Core Register R0
      DCRSR_REGSEL_Field_0,
      --  ARM Core Register R1
      DCRSR_REGSEL_Field_1,
      --  ARM Core Register R2
      DCRSR_REGSEL_Field_2,
      --  ARM Core Register R3
      DCRSR_REGSEL_Field_3,
      --  ARM Core Register R4
      DCRSR_REGSEL_Field_4,
      --  ARM Core Register R5
      DCRSR_REGSEL_Field_5,
      --  ARM Core Register R6
      DCRSR_REGSEL_Field_6,
      --  ARM Core Register R7
      DCRSR_REGSEL_Field_7,
      --  ARM Core Register R8
      DCRSR_REGSEL_Field_8,
      --  ARM Core Register R9
      DCRSR_REGSEL_Field_9,
      --  ARM Core Register R10
      DCRSR_REGSEL_Field_10,
      --  ARM Core Register R11
      DCRSR_REGSEL_Field_11,
      --  ARM Core Register R12
      DCRSR_REGSEL_Field_12,
      --  Current SP
      DCRSR_REGSEL_Field_13,
      --  LR
      DCRSR_REGSEL_Field_14,
      --  DebugReturnAddress
      DCRSR_REGSEL_Field_15,
      --  xPSR
      DCRSR_REGSEL_Field_16,
      --  MSP
      DCRSR_REGSEL_Field_17,
      --  PSP
      DCRSR_REGSEL_Field_18,
      --  CONTROL and PRIMASK
      DCRSR_REGSEL_Field_20)
     with Size => 5;
   for DCRSR_REGSEL_Field use
     (DCRSR_REGSEL_Field_0 => 0,
      DCRSR_REGSEL_Field_1 => 1,
      DCRSR_REGSEL_Field_2 => 2,
      DCRSR_REGSEL_Field_3 => 3,
      DCRSR_REGSEL_Field_4 => 4,
      DCRSR_REGSEL_Field_5 => 5,
      DCRSR_REGSEL_Field_6 => 6,
      DCRSR_REGSEL_Field_7 => 7,
      DCRSR_REGSEL_Field_8 => 8,
      DCRSR_REGSEL_Field_9 => 9,
      DCRSR_REGSEL_Field_10 => 10,
      DCRSR_REGSEL_Field_11 => 11,
      DCRSR_REGSEL_Field_12 => 12,
      DCRSR_REGSEL_Field_13 => 13,
      DCRSR_REGSEL_Field_14 => 14,
      DCRSR_REGSEL_Field_15 => 15,
      DCRSR_REGSEL_Field_16 => 16,
      DCRSR_REGSEL_Field_17 => 17,
      DCRSR_REGSEL_Field_18 => 18,
      DCRSR_REGSEL_Field_20 => 20);

   --  Debug Core Register Selector Register
   type DCRSR_Register is record
      --  Specifies the ARM core register or special purpose register to
      --  transfer
      REGSEL         : DCRSR_REGSEL_Field :=
                        SAM_SVD.ARM_SYSCTRL.DCRSR_REGSEL_Field_0;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  If 1 then transfer is a write
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
      --  Reset Vector Catch Enabled
      VC_CORERESET   : Boolean := False;
      --  unspecified
      Reserved_1_9   : HAL.UInt9 := 16#0#;
      --  Halting Debug Trap Enabled
      VC_HARDERR     : Boolean := False;
      --  unspecified
      Reserved_11_23 : HAL.UInt13 := 16#0#;
      --  DWT Enabled
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

   subtype SCS_PID4_JEP106_C_CODE_Field is HAL.UInt4;
   subtype SCS_PID4_BLOCK_COUNT_Field is HAL.UInt4;

   --  Peripheral ID Register 4
   type SCS_PID4_Register is record
      --  Read-only. JEP106 C Code
      JEP106_C_CODE : SCS_PID4_JEP106_C_CODE_Field;
      --  Read-only. Block Count
      BLOCK_COUNT   : SCS_PID4_BLOCK_COUNT_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SCS_PID4_Register use record
      JEP106_C_CODE at 0 range 0 .. 3;
      BLOCK_COUNT   at 0 range 4 .. 7;
   end record;

   subtype SCS_PID1_PART_NUMBER_Field is HAL.UInt4;
   subtype SCS_PID1_JEP106_ID_3_0_Field is HAL.UInt4;

   --  Peripheral ID Register 1
   type SCS_PID1_Register is record
      --  Read-only. Part Number Bits 11:8
      PART_NUMBER   : SCS_PID1_PART_NUMBER_Field;
      --  Read-only. JEP106 ID Code Bits 3:0
      JEP106_ID_3_0 : SCS_PID1_JEP106_ID_3_0_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SCS_PID1_Register use record
      PART_NUMBER   at 0 range 0 .. 3;
      JEP106_ID_3_0 at 0 range 4 .. 7;
   end record;

   subtype SCS_PID2_JEP106_ID_6_4_Field is HAL.UInt3;
   subtype SCS_PID2_REVISION_Field is HAL.UInt4;

   --  Peripheral ID Register 2
   type SCS_PID2_Register is record
      --  Read-only. JEP106 ID Code Bits 6:4
      JEP106_ID_6_4 : SCS_PID2_JEP106_ID_6_4_Field;
      --  Read-only. JEDEC Used
      JEDEC_USED    : Boolean;
      --  Read-only. Revision
      REVISION      : SCS_PID2_REVISION_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SCS_PID2_Register use record
      JEP106_ID_6_4 at 0 range 0 .. 2;
      JEDEC_USED    at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
   end record;

   subtype SCS_PID3_CUSTOMER_MOD_NUMBER_Field is HAL.UInt4;
   subtype SCS_PID3_ECO_REV_NUMBER_Field is HAL.UInt4;

   --  Peripheral ID Register 3
   type SCS_PID3_Register is record
      --  Read-only. Customer Modification Number
      CUSTOMER_MOD_NUMBER : SCS_PID3_CUSTOMER_MOD_NUMBER_Field;
      --  Read-only. ECO Revision Number
      ECO_REV_NUMBER      : SCS_PID3_ECO_REV_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for SCS_PID3_Register use record
      CUSTOMER_MOD_NUMBER at 0 range 0 .. 3;
      ECO_REV_NUMBER      at 0 range 4 .. 7;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ARM System Control
   type ARM_SYSCTRL0_Peripheral is record
      --  Auxiliary Control Register (not implemented)
      ACTLR      : aliased HAL.UInt32;
      --  SysTick Control and Status Register
      SYST_CSR   : aliased SYST_CSR_Register;
      --  SysTick Reload Value Register
      SYST_RVR   : aliased HAL.UInt32;
      --  SysTick Current Value Register (Any Write Clears to 0)
      SYST_CVR   : aliased HAL.UInt32;
      --  SysTick Calibration Value Register
      SYST_CALIB : aliased SYST_CALIB_Register;
      --  Interrupt Set-Enable Register
      NVIC_ISER  : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register
      NVIC_ICER  : aliased HAL.UInt32;
      --  Interrupt Set-Pending Register
      NVIC_ISPR  : aliased HAL.UInt32;
      --  Interrupt Clear-Pending Register
      NVIC_ICPR  : aliased HAL.UInt32;
      --  Interrupt Priority Register 0
      NVIC_IPR0  : aliased NVIC_IPR0_Register;
      --  Interrupt Priority Register 1
      NVIC_IPR1  : aliased NVIC_IPR1_Register;
      --  Interrupt Priority Register 2
      NVIC_IPR2  : aliased NVIC_IPR2_Register;
      --  Interrupt Priority Register 3
      NVIC_IPR3  : aliased NVIC_IPR3_Register;
      --  Interrupt Priority Register 4
      NVIC_IPR4  : aliased NVIC_IPR4_Register;
      --  Interrupt Priority Register 5
      NVIC_IPR5  : aliased NVIC_IPR5_Register;
      --  Interrupt Priority Register 6
      NVIC_IPR6  : aliased NVIC_IPR6_Register;
      --  Interrupt Priority Register 7
      NVIC_IPR7  : aliased NVIC_IPR7_Register;
      --  CPU Identification Register
      CPUID      : aliased HAL.UInt32;
      --  Interrupt Control State Register
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
      --  Debug Fault Status Register
      DFSR       : aliased DFSR_Register;
      --  Debug Halting Control and Status Register
      DHCSR      : aliased DHCSR_Register;
      --  Debug Core Register Selector Register
      DCRSR      : aliased DCRSR_Register;
      --  Debug Core Register Data Register
      DCRDR      : aliased HAL.UInt32;
      --  Debug Exception and Monitor Control Register
      DEMCR      : aliased DEMCR_Register;
      --  Peripheral ID Register 4
      SCS_PID4   : aliased SCS_PID4_Register;
      --  Peripheral ID Register 0
      SCS_PID0   : aliased HAL.UInt8;
      --  Peripheral ID Register 1
      SCS_PID1   : aliased SCS_PID1_Register;
      --  Peripheral ID Register 2
      SCS_PID2   : aliased SCS_PID2_Register;
      --  Peripheral ID Register 3
      SCS_PID3   : aliased SCS_PID3_Register;
      --  Component ID Register 0
      SCS_CID0   : aliased HAL.UInt8;
      --  Component ID Register 1
      SCS_CID1   : aliased HAL.UInt8;
      --  Component ID Register 2
      SCS_CID2   : aliased HAL.UInt8;
      --  Component ID Register 3
      SCS_CID3   : aliased HAL.UInt8;
   end record
     with Volatile;

   for ARM_SYSCTRL0_Peripheral use record
      ACTLR      at 16#8# range 0 .. 31;
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
      SCR        at 16#D10# range 0 .. 7;
      CCR        at 16#D14# range 0 .. 15;
      SHPR2      at 16#D1C# range 0 .. 31;
      SHPR3      at 16#D20# range 0 .. 31;
      SHCSR      at 16#D24# range 0 .. 15;
      DFSR       at 16#D30# range 0 .. 7;
      DHCSR      at 16#DF0# range 0 .. 31;
      DCRSR      at 16#DF4# range 0 .. 31;
      DCRDR      at 16#DF8# range 0 .. 31;
      DEMCR      at 16#DFC# range 0 .. 31;
      SCS_PID4   at 16#FD0# range 0 .. 7;
      SCS_PID0   at 16#FE0# range 0 .. 7;
      SCS_PID1   at 16#FE4# range 0 .. 7;
      SCS_PID2   at 16#FE8# range 0 .. 7;
      SCS_PID3   at 16#FEC# range 0 .. 7;
      SCS_CID0   at 16#FF0# range 0 .. 7;
      SCS_CID1   at 16#FF4# range 0 .. 7;
      SCS_CID2   at 16#FF8# range 0 .. 7;
      SCS_CID3   at 16#FFC# range 0 .. 7;
   end record;

   --  ARM System Control
   ARM_SYSCTRL0_Periph : aliased ARM_SYSCTRL0_Peripheral
     with Import, Address => System'To_Address (16#E000E000#);

end SAM_SVD.ARM_SYSCTRL;
