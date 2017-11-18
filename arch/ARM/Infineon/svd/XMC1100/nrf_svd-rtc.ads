--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Real Time Clock
package NRF_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  RTC Module ID Register
   type ID_Register is record
      --  Read-only. Module Revision Number
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number Value
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   subtype CTR_DIV_Field is HAL.UInt16;

   --  RTC Control Register
   type CTR_Register is record
      --  RTC Module Enable
      ENB           : Boolean := False;
      --  Debug Suspend Control
      SUS           : Boolean := False;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
      --  Divider Value
      DIV           : CTR_DIV_Field := 16#7FFF#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTR_Register use record
      ENB           at 0 range 0 .. 0;
      SUS           at 0 range 1 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
      DIV           at 0 range 16 .. 31;
   end record;

   --  RTC Raw Service Request Register
   type RAWSTAT_Register is record
      --  Read-only. Raw Periodic Seconds Service Request
      RPSE          : Boolean;
      --  Read-only. Raw Periodic Minutes Service Request
      RPMI          : Boolean;
      --  Read-only. Raw Periodic Hours Service Request
      RPHO          : Boolean;
      --  Read-only. Raw Periodic Days Service Request
      RPDA          : Boolean;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Raw Periodic Months Service Request
      RPMO          : Boolean;
      --  Read-only. Raw Periodic Years Service Request
      RPYE          : Boolean;
      --  unspecified
      Reserved_7_7  : HAL.Bit;
      --  Read-only. Alarm Service Request
      RAI           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAWSTAT_Register use record
      RPSE          at 0 range 0 .. 0;
      RPMI          at 0 range 1 .. 1;
      RPHO          at 0 range 2 .. 2;
      RPDA          at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      RPMO          at 0 range 5 .. 5;
      RPYE          at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      RAI           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RTC Service Request Status Register
   type STSSR_Register is record
      --  Read-only. Periodic Seconds Service Request Status after masking
      SPSE          : Boolean;
      --  Read-only. Periodic Minutes Service Request Status after masking
      SPMI          : Boolean;
      --  Read-only. Periodic Hours Service Request Status after masking
      SPHO          : Boolean;
      --  Read-only. Periodic Days Service Request Status after masking
      SPDA          : Boolean;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Periodic Months Service Request Status after masking
      SPMO          : Boolean;
      --  Read-only. Periodic Years Service Request Status after masking
      SPYE          : Boolean;
      --  unspecified
      Reserved_7_7  : HAL.Bit;
      --  Read-only. Alarm Service Request Status after masking
      SAI           : Boolean;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STSSR_Register use record
      SPSE          at 0 range 0 .. 0;
      SPMI          at 0 range 1 .. 1;
      SPHO          at 0 range 2 .. 2;
      SPDA          at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      SPMO          at 0 range 5 .. 5;
      SPYE          at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      SAI           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RTC Service Request Mask Register
   type MSKSR_Register is record
      --  Periodic Seconds Interrupt Mask
      MPSE          : Boolean := False;
      --  Periodic Minutes Interrupt Mask
      MPMI          : Boolean := False;
      --  Periodic Hours Interrupt Mask
      MPHO          : Boolean := False;
      --  Periodic Days Interrupt Mask
      MPDA          : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Periodic Months Interrupt Mask
      MPMO          : Boolean := False;
      --  Periodic Years Interrupt Mask
      MPYE          : Boolean := False;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Alarm Interrupt Mask
      MAI           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSKSR_Register use record
      MPSE          at 0 range 0 .. 0;
      MPMI          at 0 range 1 .. 1;
      MPHO          at 0 range 2 .. 2;
      MPDA          at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      MPMO          at 0 range 5 .. 5;
      MPYE          at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      MAI           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RTC Clear Service Request Register
   type CLRSR_Register is record
      --  Write-only. Raw Periodic Seconds Interrupt Clear
      RPSE          : Boolean := False;
      --  Write-only. Raw Periodic Minutes Interrupt Clear
      RPMI          : Boolean := False;
      --  Write-only. Raw Periodic Hours Interrupt Clear
      RPHO          : Boolean := False;
      --  Write-only. Raw Periodic Days Interrupt Clear
      RPDA          : Boolean := False;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Write-only. Raw Periodic Months Interrupt Clear
      RPMO          : Boolean := False;
      --  Write-only. Raw Periodic Years Interrupt Clear
      RPYE          : Boolean := False;
      --  unspecified
      Reserved_7_7  : HAL.Bit := 16#0#;
      --  Write-only. Raw Alarm Interrupt Clear
      RAI           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLRSR_Register use record
      RPSE          at 0 range 0 .. 0;
      RPMI          at 0 range 1 .. 1;
      RPHO          at 0 range 2 .. 2;
      RPDA          at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      RPMO          at 0 range 5 .. 5;
      RPYE          at 0 range 6 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      RAI           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype ATIM0_ASE_Field is HAL.UInt6;
   subtype ATIM0_AMI_Field is HAL.UInt6;
   subtype ATIM0_AHO_Field is HAL.UInt5;
   subtype ATIM0_ADA_Field is HAL.UInt5;

   --  RTC Alarm Time Register 0
   type ATIM0_Register is record
      --  Alarm Seconds Compare Value
      ASE            : ATIM0_ASE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Alarm Minutes Compare Value
      AMI            : ATIM0_AMI_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Alarm Hours Compare Value
      AHO            : ATIM0_AHO_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Alarm Days Compare Value
      ADA            : ATIM0_ADA_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ATIM0_Register use record
      ASE            at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AMI            at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      AHO            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ADA            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ATIM1_AMO_Field is HAL.UInt4;
   subtype ATIM1_AYE_Field is HAL.UInt16;

   --  RTC Alarm Time Register 1
   type ATIM1_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Alarm Month Compare Value
      AMO            : ATIM1_AMO_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Alarm Year Compare Value
      AYE            : ATIM1_AYE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ATIM1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      AMO            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      AYE            at 0 range 16 .. 31;
   end record;

   subtype TIM0_SE_Field is HAL.UInt6;
   subtype TIM0_MI_Field is HAL.UInt6;
   subtype TIM0_HO_Field is HAL.UInt5;
   subtype TIM0_DA_Field is HAL.UInt5;

   --  RTC Time Register 0
   type TIM0_Register is record
      --  Seconds Time Value
      SE             : TIM0_SE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Minutes Time Value
      MI             : TIM0_MI_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Hours Time Value
      HO             : TIM0_HO_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Days Time Value
      DA             : TIM0_DA_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM0_Register use record
      SE             at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MI             at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      HO             at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      DA             at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype TIM1_DAWE_Field is HAL.UInt3;
   subtype TIM1_MO_Field is HAL.UInt4;
   subtype TIM1_YE_Field is HAL.UInt16;

   --  RTC Time Register 1
   type TIM1_Register is record
      --  Days of Week Time Value
      DAWE           : TIM1_DAWE_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Month Time Value
      MO             : TIM1_MO_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Year Time Value
      YE             : TIM1_YE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIM1_Register use record
      DAWE           at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      MO             at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      YE             at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real Time Clock
   type RTC_Peripheral is record
      --  RTC Module ID Register
      ID      : aliased ID_Register;
      --  RTC Control Register
      CTR     : aliased CTR_Register;
      --  RTC Raw Service Request Register
      RAWSTAT : aliased RAWSTAT_Register;
      --  RTC Service Request Status Register
      STSSR   : aliased STSSR_Register;
      --  RTC Service Request Mask Register
      MSKSR   : aliased MSKSR_Register;
      --  RTC Clear Service Request Register
      CLRSR   : aliased CLRSR_Register;
      --  RTC Alarm Time Register 0
      ATIM0   : aliased ATIM0_Register;
      --  RTC Alarm Time Register 1
      ATIM1   : aliased ATIM1_Register;
      --  RTC Time Register 0
      TIM0    : aliased TIM0_Register;
      --  RTC Time Register 1
      TIM1    : aliased TIM1_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      ID      at 16#0# range 0 .. 31;
      CTR     at 16#4# range 0 .. 31;
      RAWSTAT at 16#8# range 0 .. 31;
      STSSR   at 16#C# range 0 .. 31;
      MSKSR   at 16#10# range 0 .. 31;
      CLRSR   at 16#14# range 0 .. 31;
      ATIM0   at 16#18# range 0 .. 31;
      ATIM1   at 16#1C# range 0 .. 31;
      TIM0    at 16#20# range 0 .. 31;
      TIM1    at 16#24# range 0 .. 31;
   end record;

   --  Real Time Clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end NRF_SVD.RTC;
