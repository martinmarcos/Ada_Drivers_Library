--

--  This spec has been automatically generated from AC30M1x64.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_MODE_Field is HAL.UInt2;
   subtype CR1_CLRMD_Field is HAL.UInt2;
   subtype CR1_CKSEL_Field is HAL.UInt3;

   --  Timer n Control Register 1
   type CR1_Register is record
      --  Timer operation mode control
      MODE           : CR1_MODE_Field := 16#0#;
      --  clear select when capture mode
      CLRMD          : CR1_CLRMD_Field := 16#0#;
      --  counter clock source select
      CKSEL          : CR1_CKSEL_Field := 16#0#;
      --  STARTLVL
      STARTLVL       : Boolean := False;
      --  ADCTRGEN
      ADCTRGEN       : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  timer output polarity
      OUTPOL         : Boolean := False;
      --  Select GRA,GRB Update mode
      UAO            : Boolean := False;
      --  Synchronize clear counter with other synchronized tip
      CSYNC          : Boolean := False;
      --  Synchronize start counter with other synchronized timers
      SSYNC          : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      MODE           at 0 range 0 .. 1;
      CLRMD          at 0 range 2 .. 3;
      CKSEL          at 0 range 4 .. 6;
      STARTLVL       at 0 range 7 .. 7;
      ADCTRGEN       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      OUTPOL         at 0 range 12 .. 12;
      UAO            at 0 range 13 .. 13;
      CSYNC          at 0 range 14 .. 14;
      SSYNC          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timer n Control Register 2
   type CR2_Register is record
      --  Timer enable bit
      TEN           : Boolean := False;
      --  Timer register clear
      TCLR          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      TEN           at 0 range 0 .. 0;
      TCLR          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PRS_PRS_Field is HAL.UInt10;

   --  Timer n Prescaler Register
   type PRS_Register is record
      --  Prescaler value of count clock
      PRS            : PRS_PRS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRS_Register use record
      PRS            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GRA_GRA_Field is HAL.UInt16;

   --  Timer n General Register A
   type GRA_Register is record
      --  GRA
      GRA            : GRA_GRA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRA_Register use record
      GRA            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GRB_GRB_Field is HAL.UInt16;

   --  Timer n General Register B
   type GRB_Register is record
      --  GRB
      GRB            : GRB_GRB_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRB_Register use record
      GRB            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CNT_CNT_Field is HAL.UInt16;

   --  Timer n Count Register
   type CNT_Register is record
      --  CNT
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timer n Status Register
   type SR_Register is record
      --  counter overflow flag
      OVF           : Boolean := False;
      --  GRB Match flag
      MFB           : Boolean := False;
      --  GRA Match flag
      MFA           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      OVF           at 0 range 0 .. 0;
      MFB           at 0 range 1 .. 1;
      MFA           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Timer n Interrupt Enable Register
   type IER_Register is record
      --  Counter overflow interrupt enable
      OVIE          : Boolean := False;
      --  GRB Match interrupt enable
      MBIE          : Boolean := False;
      --  GRA Match interrupt enable
      MAIE          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      OVIE          at 0 range 0 .. 0;
      MBIE          at 0 range 1 .. 1;
      MAIE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  16-BIT TIMER
   type TIMER_Peripheral is record
      --  Timer n Control Register 1
      CR1 : aliased CR1_Register;
      --  Timer n Control Register 2
      CR2 : aliased CR2_Register;
      --  Timer n Prescaler Register
      PRS : aliased PRS_Register;
      --  Timer n General Register A
      GRA : aliased GRA_Register;
      --  Timer n General Register B
      GRB : aliased GRB_Register;
      --  Timer n Count Register
      CNT : aliased CNT_Register;
      --  Timer n Status Register
      SR  : aliased SR_Register;
      --  Timer n Interrupt Enable Register
      IER : aliased IER_Register;
   end record
     with Volatile;

   for TIMER_Peripheral use record
      CR1 at 16#0# range 0 .. 31;
      CR2 at 16#4# range 0 .. 31;
      PRS at 16#8# range 0 .. 31;
      GRA at 16#C# range 0 .. 31;
      GRB at 16#10# range 0 .. 31;
      CNT at 16#14# range 0 .. 31;
      SR  at 16#18# range 0 .. 31;
      IER at 16#1C# range 0 .. 31;
   end record;

   --  16-BIT TIMER
   T0_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

   --  16-BIT TIMER
   T1_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40003020#);

   --  16-BIT TIMER
   T2_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40003040#);

   --  16-BIT TIMER
   T3_Periph : aliased TIMER_Peripheral
     with Import, Address => System'To_Address (16#40003060#);

end NRF_SVD.TIMER;
