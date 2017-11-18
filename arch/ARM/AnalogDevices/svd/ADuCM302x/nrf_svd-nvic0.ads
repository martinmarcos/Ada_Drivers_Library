--

--  This spec has been automatically generated from ADuCM302x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.NVIC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  System Control
   type INTCON0_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Sleeps the core on exit from an ISR
      SLEEPONEXIT   : Boolean := False;
      --  deep sleep flag for HIBERNATE mode
      SLEEPDEEP     : Boolean := False;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for INTCON0_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SLEEPONEXIT   at 0 range 1 .. 1;
      SLEEPDEEP     at 0 range 2 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cortex-M3 Interrupt Controller
   type NVIC0_Peripheral is record
      --  Interrupt Control Type
      INTNUM     : aliased HAL.UInt32;
      --  Systick Control and Status
      STKSTA     : aliased HAL.UInt32;
      --  Systick Reload Value
      STKLD      : aliased HAL.UInt32;
      --  Systick Current Value
      STKVAL     : aliased HAL.UInt32;
      --  Systick Calibration Value
      STKCAL     : aliased HAL.UInt32;
      --  IRQ0..31 Set_Enable
      INTSETE0   : aliased HAL.UInt32;
      --  IRQ32..63 Set_Enable
      INTSETE1   : aliased HAL.UInt32;
      --  IRQ0..31 Clear_Enable
      INTCLRE0   : aliased HAL.UInt32;
      --  IRQ32..63 Clear_Enable
      INTCLRE1   : aliased HAL.UInt32;
      --  IRQ0..31 Set_Pending
      INTSETP0   : aliased HAL.UInt32;
      --  IRQ32..63 Set_Pending
      INTSETP1   : aliased HAL.UInt32;
      --  IRQ0..31 Clear_Pending
      INTCLRP0   : aliased HAL.UInt32;
      --  IRQ32..63 Clear_Pending
      INTCLRP1   : aliased HAL.UInt32;
      --  IRQ0..31 Active Bit
      INTACT0    : aliased HAL.UInt32;
      --  IRQ32..63 Active Bit
      INTACT1    : aliased HAL.UInt32;
      --  IRQ0..3 Priority
      INTPRI0    : aliased HAL.UInt32;
      --  IRQ4..7 Priority
      INTPRI1    : aliased HAL.UInt32;
      --  IRQ8..11 Priority
      INTPRI2    : aliased HAL.UInt32;
      --  IRQ12..15 Priority
      INTPRI3    : aliased HAL.UInt32;
      --  IRQ16..19 Priority
      INTPRI4    : aliased HAL.UInt32;
      --  IRQ20..23 Priority
      INTPRI5    : aliased HAL.UInt32;
      --  IRQ24..27 Priority
      INTPRI6    : aliased HAL.UInt32;
      --  IRQ28..31 Priority
      INTPRI7    : aliased HAL.UInt32;
      --  IRQ32..35 Priority
      INTPRI8    : aliased HAL.UInt32;
      --  IRQ36..39 Priority
      INTPRI9    : aliased HAL.UInt32;
      --  IRQ40..43 Priority
      INTPRI10   : aliased HAL.UInt32;
      --  CPUID Base
      INTCPID    : aliased HAL.UInt32;
      --  Interrupt Control State
      INTSTA     : aliased HAL.UInt32;
      --  Vector Table Offset
      INTVEC     : aliased HAL.UInt32;
      --  Application Interrupt/Reset Control
      INTAIRC    : aliased HAL.UInt32;
      --  System Control
      INTCON0    : aliased INTCON0_Register;
      --  Configuration Control
      INTCON1    : aliased HAL.UInt32;
      --  System Handlers 4-7 Priority
      INTSHPRIO0 : aliased HAL.UInt32;
      --  System Handlers 8-11 Priority
      INTSHPRIO1 : aliased HAL.UInt32;
      --  System Handlers 12-15 Priority
      INTSHPRIO3 : aliased HAL.UInt32;
      --  System Handler Control and State
      INTSHCSR   : aliased HAL.UInt32;
      --  Configurable Fault Status
      INTCFSR    : aliased HAL.UInt32;
      --  Hard Fault Status
      INTHFSR    : aliased HAL.UInt32;
      --  Debug Fault Status
      INTDFSR    : aliased HAL.UInt32;
      --  Mem Manage Address
      INTMMAR    : aliased HAL.UInt32;
      --  Bus Fault Address
      INTBFAR    : aliased HAL.UInt32;
      --  Auxiliary Fault Status
      INTAFSR    : aliased HAL.UInt32;
      --  Processor Feature Register 0
      INTPFR0    : aliased HAL.UInt32;
      --  Processor Feature Register 1
      INTPFR1    : aliased HAL.UInt32;
      --  Debug Feature Register 0
      INTDFR0    : aliased HAL.UInt32;
      --  Auxiliary Feature Register 0
      INTAFR0    : aliased HAL.UInt32;
      --  Memory Model Feature Register 0
      INTMMFR0   : aliased HAL.UInt32;
      --  Memory Model Feature Register 1
      INTMMFR1   : aliased HAL.UInt32;
      --  Memory Model Feature Register 2
      INTMMFR2   : aliased HAL.UInt32;
      --  Memory Model Feature Register 3
      INTMMFR3   : aliased HAL.UInt32;
      --  ISA Feature Register 0
      INTISAR0   : aliased HAL.UInt32;
      --  ISA Feature Register 1
      INTISAR1   : aliased HAL.UInt32;
      --  ISA Feature Register 2
      INTISAR2   : aliased HAL.UInt32;
      --  ISA Feature Register 3
      INTISAR3   : aliased HAL.UInt32;
      --  ISA Feature Register 4
      INTISAR4   : aliased HAL.UInt32;
      --  Software Trigger Interrupt Register
      INTTRGI    : aliased HAL.UInt32;
      --  Peripheral Identification Register 4
      INTPID4    : aliased HAL.UInt32;
      --  Peripheral Identification Register 5
      INTPID5    : aliased HAL.UInt32;
      --  Peripheral Identification Register 6
      INTPID6    : aliased HAL.UInt32;
      --  Peripheral Identification Register 7
      INTPID7    : aliased HAL.UInt32;
      --  Peripheral Identification Bits7:0
      INTPID0    : aliased HAL.UInt32;
      --  Peripheral Identification Bits15:8
      INTPID1    : aliased HAL.UInt32;
      --  Peripheral Identification Bits16:23
      INTPID2    : aliased HAL.UInt32;
      --  Peripheral Identification Bits24:31
      INTPID3    : aliased HAL.UInt32;
      --  Component Identification Bits7:0
      INTCID0    : aliased HAL.UInt32;
      --  Component Identification Bits15:8
      INTCID1    : aliased HAL.UInt32;
      --  Component Identification Bits16:23
      INTCID2    : aliased HAL.UInt32;
      --  Component Identification Bits24:31
      INTCID3    : aliased HAL.UInt32;
   end record
     with Volatile;

   for NVIC0_Peripheral use record
      INTNUM     at 16#4# range 0 .. 31;
      STKSTA     at 16#10# range 0 .. 31;
      STKLD      at 16#14# range 0 .. 31;
      STKVAL     at 16#18# range 0 .. 31;
      STKCAL     at 16#1C# range 0 .. 31;
      INTSETE0   at 16#100# range 0 .. 31;
      INTSETE1   at 16#104# range 0 .. 31;
      INTCLRE0   at 16#180# range 0 .. 31;
      INTCLRE1   at 16#184# range 0 .. 31;
      INTSETP0   at 16#200# range 0 .. 31;
      INTSETP1   at 16#204# range 0 .. 31;
      INTCLRP0   at 16#280# range 0 .. 31;
      INTCLRP1   at 16#284# range 0 .. 31;
      INTACT0    at 16#300# range 0 .. 31;
      INTACT1    at 16#304# range 0 .. 31;
      INTPRI0    at 16#400# range 0 .. 31;
      INTPRI1    at 16#404# range 0 .. 31;
      INTPRI2    at 16#408# range 0 .. 31;
      INTPRI3    at 16#40C# range 0 .. 31;
      INTPRI4    at 16#410# range 0 .. 31;
      INTPRI5    at 16#414# range 0 .. 31;
      INTPRI6    at 16#418# range 0 .. 31;
      INTPRI7    at 16#41C# range 0 .. 31;
      INTPRI8    at 16#420# range 0 .. 31;
      INTPRI9    at 16#424# range 0 .. 31;
      INTPRI10   at 16#428# range 0 .. 31;
      INTCPID    at 16#D00# range 0 .. 31;
      INTSTA     at 16#D04# range 0 .. 31;
      INTVEC     at 16#D08# range 0 .. 31;
      INTAIRC    at 16#D0C# range 0 .. 31;
      INTCON0    at 16#D10# range 0 .. 15;
      INTCON1    at 16#D14# range 0 .. 31;
      INTSHPRIO0 at 16#D18# range 0 .. 31;
      INTSHPRIO1 at 16#D1C# range 0 .. 31;
      INTSHPRIO3 at 16#D20# range 0 .. 31;
      INTSHCSR   at 16#D24# range 0 .. 31;
      INTCFSR    at 16#D28# range 0 .. 31;
      INTHFSR    at 16#D2C# range 0 .. 31;
      INTDFSR    at 16#D30# range 0 .. 31;
      INTMMAR    at 16#D34# range 0 .. 31;
      INTBFAR    at 16#D38# range 0 .. 31;
      INTAFSR    at 16#D3C# range 0 .. 31;
      INTPFR0    at 16#D40# range 0 .. 31;
      INTPFR1    at 16#D44# range 0 .. 31;
      INTDFR0    at 16#D48# range 0 .. 31;
      INTAFR0    at 16#D4C# range 0 .. 31;
      INTMMFR0   at 16#D50# range 0 .. 31;
      INTMMFR1   at 16#D54# range 0 .. 31;
      INTMMFR2   at 16#D58# range 0 .. 31;
      INTMMFR3   at 16#D5C# range 0 .. 31;
      INTISAR0   at 16#D60# range 0 .. 31;
      INTISAR1   at 16#D64# range 0 .. 31;
      INTISAR2   at 16#D68# range 0 .. 31;
      INTISAR3   at 16#D6C# range 0 .. 31;
      INTISAR4   at 16#D70# range 0 .. 31;
      INTTRGI    at 16#F00# range 0 .. 31;
      INTPID4    at 16#FD0# range 0 .. 31;
      INTPID5    at 16#FD4# range 0 .. 31;
      INTPID6    at 16#FD8# range 0 .. 31;
      INTPID7    at 16#FDC# range 0 .. 31;
      INTPID0    at 16#FE0# range 0 .. 31;
      INTPID1    at 16#FE4# range 0 .. 31;
      INTPID2    at 16#FE8# range 0 .. 31;
      INTPID3    at 16#FEC# range 0 .. 31;
      INTCID0    at 16#FF0# range 0 .. 31;
      INTCID1    at 16#FF4# range 0 .. 31;
      INTCID2    at 16#FF8# range 0 .. 31;
      INTCID3    at 16#FFC# range 0 .. 31;
   end record;

   --  Cortex-M3 Interrupt Controller
   NVIC0_Periph : aliased NVIC0_Peripheral
     with Import, Address => System'To_Address (16#E000E000#);

end NRF_SVD.NVIC0;
