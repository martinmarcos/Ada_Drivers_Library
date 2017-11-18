--

--  This spec has been automatically generated from SN32F240.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RTC enable
   type CTRL_RTCEN_Field is
     (
      --  Disable RTC
      Disable,
      --  Enable RTC
      Enable)
     with Size => 1;
   for CTRL_RTCEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 RTC Control Register
   type CTRL_Register is record
      --  RTC enable
      RTCEN         : CTRL_RTCEN_Field := NRF_SVD.RTC.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      RTCEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RTC clock source
   type CLKS_CLKSEL_Field is
     (
      --  ILRC is RTC clock source
      Ilrc,
      --  ELS Xtal is RTC clock source
      Els Xtal,
      --  EHS Xtal/128 is RTC clock source
      Ehs Xtal CLOCK/128)
     with Size => 2;
   for CLKS_CLKSEL_Field use
     (Ilrc => 0,
      Els Xtal => 1,
      Ehs Xtal CLOCK/128 => 3);

   --  Offset:0x04 RTC Clock Source Register
   type CLKS_Register is record
      --  RTC clock source
      CLKSEL        : CLKS_CLKSEL_Field := NRF_SVD.RTC.Ilrc;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKS_Register use record
      CLKSEL        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Second interrupt enable
   type IE_SECIE_Field is
     (
      --  Disable second interrupt
      Disable,
      --  Enable second interrupt
      Enable)
     with Size => 1;
   for IE_SECIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Alarm interrupt enable
   type IE_ALMIE_Field is
     (
      --  Disable alarm interrupt
      Disable,
      --  Enable alarm interrupt
      Enable)
     with Size => 1;
   for IE_ALMIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Overflow interrupt enable
   type IE_OVFIE_Field is
     (
      --  Disable overflow interrupt
      Disable,
      --  Enable overflow interrupt
      Enable)
     with Size => 1;
   for IE_OVFIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x08 RTC Interrupt Enable Register
   type IE_Register is record
      --  Second interrupt enable
      SECIE         : IE_SECIE_Field := NRF_SVD.RTC.Disable;
      --  Alarm interrupt enable
      ALMIE         : IE_ALMIE_Field := NRF_SVD.RTC.Disable;
      --  Overflow interrupt enable
      OVFIE         : IE_OVFIE_Field := NRF_SVD.RTC.Disable;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      SECIE         at 0 range 0 .. 0;
      ALMIE         at 0 range 1 .. 1;
      OVFIE         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Second interrupt flag
   type RIS_SECIF_Field is
     (
      --  No second interrupt
      No,
      --  Second interrupt is triggered when SECIE=1
      Met SECOND INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_SECIF_Field use
     (No => 0,
      Met SECOND INTERRUPT REQUIREMENTS => 1);

   --  Alarm interrupt flag
   type RIS_ALMIF_Field is
     (
      --  No alarm interrupt
      No,
      --  Alarm interrupt is triggered when ALMIE=1
      Met ALARM INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_ALMIF_Field use
     (No => 0,
      Met ALARM INTERRUPT REQUIREMENTS => 1);

   --  Overflow interrupt flag
   type RIS_OVFIF_Field is
     (
      --  No overflow interrupt
      No,
      --  Overflow interrupt is triggered when OVFIE=1
      Met OVERFLOW INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_OVFIF_Field use
     (No => 0,
      Met OVERFLOW INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x0C RTC Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. Second interrupt flag
      SECIF         : RIS_SECIF_Field;
      --  Read-only. Alarm interrupt flag
      ALMIF         : RIS_ALMIF_Field;
      --  Read-only. Overflow interrupt flag
      OVFIF         : RIS_OVFIF_Field;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      SECIF         at 0 range 0 .. 0;
      ALMIF         at 0 range 1 .. 1;
      OVFIF         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Second interrupt flag clear
   type IC_SECIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear second interrupt flag
      Clear)
     with Size => 1;
   for IC_SECIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Alarm interrupt flag clear
   type IC_ALMIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear alarm interrupt flag
      Clear)
     with Size => 1;
   for IC_ALMIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Overflow interrupt flag clear
   type IC_OVFIC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear overflow interrupt flag
      Clear)
     with Size => 1;
   for IC_OVFIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x10 RTC Interrupt Clear Register
   type IC_Register is record
      --  Write-only. Second interrupt flag clear
      SECIC         : IC_SECIC_Field := NRF_SVD.RTC.No EFFECT;
      --  Write-only. Alarm interrupt flag clear
      ALMIC         : IC_ALMIC_Field := NRF_SVD.RTC.No EFFECT;
      --  Write-only. Overflow interrupt flag clear
      OVFIC         : IC_OVFIC_Field := NRF_SVD.RTC.No EFFECT;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      SECIC         at 0 range 0 .. 0;
      ALMIC         at 0 range 1 .. 1;
      OVFIC         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time Clock
   type SN_RTC_Peripheral is record
      --  Offset:0x00 RTC Control Register
      CTRL    : aliased CTRL_Register;
      --  Offset:0x04 RTC Clock Source Register
      CLKS    : aliased CLKS_Register;
      --  Offset:0x08 RTC Interrupt Enable Register
      IE      : aliased IE_Register;
      --  Offset:0x0C RTC Raw Interrupt Status Register
      RIS     : aliased RIS_Register;
      --  Offset:0x10 RTC Interrupt Clear Register
      IC      : aliased IC_Register;
      --  Offset:0x14 RTC Second Counter Reload Value Register
      SECCNTV : aliased HAL.UInt32;
      --  Offset:0x18 RTC Second Counter Register
      SECCNT  : aliased HAL.UInt32;
      --  Offset:0x1C RTC Alarm Counter Reload Value Register
      ALMCNTV : aliased HAL.UInt32;
      --  Offset:0x20 RTC Alarm Counter Register
      ALMCNT  : aliased HAL.UInt32;
   end record
     with Volatile;

   for SN_RTC_Peripheral use record
      CTRL    at 16#0# range 0 .. 31;
      CLKS    at 16#4# range 0 .. 31;
      IE      at 16#8# range 0 .. 31;
      RIS     at 16#C# range 0 .. 31;
      IC      at 16#10# range 0 .. 31;
      SECCNTV at 16#14# range 0 .. 31;
      SECCNT  at 16#18# range 0 .. 31;
      ALMCNTV at 16#1C# range 0 .. 31;
      ALMCNT  at 16#20# range 0 .. 31;
   end record;

   --  Real-time Clock
   SN_RTC_Periph : aliased SN_RTC_Peripheral
     with Import, Address => System'To_Address (16#40012000#);

end NRF_SVD.RTC;
