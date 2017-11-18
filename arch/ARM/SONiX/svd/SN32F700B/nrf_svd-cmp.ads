--

--  This spec has been automatically generated from SN32F700B.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.CMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  CMP0 Enable bit
   type CTRL_CM0EN_Field is
     (
      --  Disable CMP0
      Disable,
      --  Enable CMP0
      Enable)
     with Size => 1;
   for CTRL_CM0EN_Field use
     (Disable => 0,
      Enable => 1);

   --  CMP0 Positive reference voltage (VPREF0) source
   type CTRL_CM0PREF_Field is
     (
      --  VPREF0=VIREF0
      Viref0,
      --  CM0P is VPREF0 input pin.
      Cm0P)
     with Size => 1;
   for CTRL_CM0PREF_Field use
     (Viref0 => 0,
      Cm0P => 1);

   --  CMP0 internal reference voltage (VIREF0) selection bits
   type CTRL_CM0RS_Field is
     (
      --  VIREF0=VIREF
      CTRL_CM0RS_Field_0000B,
      --  VIREF0=VIREF*1/16
      CTRL_CM0RS_Field_0001B,
      --  VIREF0=VIREF*2/16
      CTRL_CM0RS_Field_0010B,
      --  VIREF0=VIREF*3/16
      CTRL_CM0RS_Field_0011B,
      --  VIREF0=VIREF*4/16
      CTRL_CM0RS_Field_0100B,
      --  VIREF0=VIREF*5/16
      CTRL_CM0RS_Field_0101B,
      --  VIREF0=VIREF*6/16
      CTRL_CM0RS_Field_0110B,
      --  VIREF0=VIREF*7/16
      CTRL_CM0RS_Field_0111B,
      --  VIREF0=VIREF*8/16
      CTRL_CM0RS_Field_1000B,
      --  VIREF0=VIREF*9/16
      CTRL_CM0RS_Field_1001B,
      --  VIREF0=VIREF*10/16
      CTRL_CM0RS_Field_1010B,
      --  VIREF0=VIREF*11/16
      CTRL_CM0RS_Field_1011B,
      --  VIREF0=VIREF*12/16
      CTRL_CM0RS_Field_1100B,
      --  VIREF0=VIREF*13/16
      CTRL_CM0RS_Field_1101B,
      --  VIREF0=VIREF*14/16
      CTRL_CM0RS_Field_1110B,
      --  VIREF0=VIREF*15/16
      CTRL_CM0RS_Field_1111B)
     with Size => 4;
   for CTRL_CM0RS_Field use
     (CTRL_CM0RS_Field_0000B => 0,
      CTRL_CM0RS_Field_0001B => 1,
      CTRL_CM0RS_Field_0010B => 2,
      CTRL_CM0RS_Field_0011B => 3,
      CTRL_CM0RS_Field_0100B => 4,
      CTRL_CM0RS_Field_0101B => 5,
      CTRL_CM0RS_Field_0110B => 6,
      CTRL_CM0RS_Field_0111B => 7,
      CTRL_CM0RS_Field_1000B => 8,
      CTRL_CM0RS_Field_1001B => 9,
      CTRL_CM0RS_Field_1010B => 10,
      CTRL_CM0RS_Field_1011B => 11,
      CTRL_CM0RS_Field_1100B => 12,
      CTRL_CM0RS_Field_1101B => 13,
      CTRL_CM0RS_Field_1110B => 14,
      CTRL_CM0RS_Field_1111B => 15);

   --  CMP0 Output pin control bit
   type CTRL_CM0OEN_Field is
     (
      --  Disable CM0O
      Disable,
      --  Enable CM0O
      Enable)
     with Size => 1;
   for CTRL_CM0OEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CMP0 interrupt trigger direction control bit
   type CTRL_CM0G_Field is
     (
      --  CMP0 output status is from high to low as VPREF0 less than CM0N
      Falling RANGE TRIGGER,
      --  CMP0 output status is from low to high as VPREF0 more than CM0N
      Rising EDGE TRIGGER)
     with Size => 1;
   for CTRL_CM0G_Field use
     (Falling RANGE TRIGGER => 0,
      Rising EDGE TRIGGER => 1);

   --  CMP1 Enable bit
   type CTRL_CM1EN_Field is
     (
      --  Disable CMP1
      Disable,
      --  Enable CMP1
      Enable)
     with Size => 1;
   for CTRL_CM1EN_Field use
     (Disable => 0,
      Enable => 1);

   --  CMP1 Positive reference voltage (VPREF1) source
   type CTRL_CM1PREF_Field is
     (
      --  VPREF1=VIREF1
      Viref1,
      --  CM1P is VPREF1 input pin.
      Cm1P)
     with Size => 1;
   for CTRL_CM1PREF_Field use
     (Viref1 => 0,
      Cm1P => 1);

   --  CMP1 internal reference voltage (VIREF1) selection bits
   type CTRL_CM1RS_Field is
     (
      --  VIREF1=VIREF
      CTRL_CM1RS_Field_0000B,
      --  VIREF1=VIREF*1/16
      CTRL_CM1RS_Field_0001B,
      --  VIREF1=VIREF*2/16
      CTRL_CM1RS_Field_0010B,
      --  VIREF1=VIREF*3/16
      CTRL_CM1RS_Field_0011B,
      --  VIREF1=VIREF*4/16
      CTRL_CM1RS_Field_0100B,
      --  VIREF1=VIREF*5/16
      CTRL_CM1RS_Field_0101B,
      --  VIREF1=VIREF*6/16
      CTRL_CM1RS_Field_0110B,
      --  VIREF1=VIREF*7/16
      CTRL_CM1RS_Field_0111B,
      --  VIREF1=VIREF*8/16
      CTRL_CM1RS_Field_1000B,
      --  VIREF1=VIREF*9/16
      CTRL_CM1RS_Field_1001B,
      --  VIREF1=VIREF*10/16
      CTRL_CM1RS_Field_1010B,
      --  VIREF1=VIREF*11/16
      CTRL_CM1RS_Field_1011B,
      --  VIREF1=VIREF*12/16
      CTRL_CM1RS_Field_1100B,
      --  VIREF1=VIREF*13/16
      CTRL_CM1RS_Field_1101B,
      --  VIREF1=VIREF*14/16
      CTRL_CM1RS_Field_1110B,
      --  VIREF1=VIREF*15/16
      CTRL_CM1RS_Field_1111B)
     with Size => 4;
   for CTRL_CM1RS_Field use
     (CTRL_CM1RS_Field_0000B => 0,
      CTRL_CM1RS_Field_0001B => 1,
      CTRL_CM1RS_Field_0010B => 2,
      CTRL_CM1RS_Field_0011B => 3,
      CTRL_CM1RS_Field_0100B => 4,
      CTRL_CM1RS_Field_0101B => 5,
      CTRL_CM1RS_Field_0110B => 6,
      CTRL_CM1RS_Field_0111B => 7,
      CTRL_CM1RS_Field_1000B => 8,
      CTRL_CM1RS_Field_1001B => 9,
      CTRL_CM1RS_Field_1010B => 10,
      CTRL_CM1RS_Field_1011B => 11,
      CTRL_CM1RS_Field_1100B => 12,
      CTRL_CM1RS_Field_1101B => 13,
      CTRL_CM1RS_Field_1110B => 14,
      CTRL_CM1RS_Field_1111B => 15);

   --  CMP1 Output pin control bit
   type CTRL_CM1OEN_Field is
     (
      --  Disable CM1O
      Disable,
      --  Enable CM1O
      Enable)
     with Size => 1;
   for CTRL_CM1OEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CMP1 interrupt trigger direction control bit
   type CTRL_CM1G_Field is
     (
      --  CMP1 output status is from high to low as VPREF1 less than CM1N
      Falling RANGE TRIGGER,
      --  CMP1 output status is from low to high as VPREF1 more than CM1N
      Rising EDGE TRIGGER)
     with Size => 1;
   for CTRL_CM1G_Field use
     (Falling RANGE TRIGGER => 0,
      Rising EDGE TRIGGER => 1);

   --  Offset:0x00 CMP Control Register
   type CTRL_Register is record
      --  CMP0 Enable bit
      CM0EN          : CTRL_CM0EN_Field := NRF_SVD.CMP.Disable;
      --  CMP0 Positive reference voltage (VPREF0) source
      CM0PREF        : CTRL_CM0PREF_Field := NRF_SVD.CMP.Viref0;
      --  CMP0 internal reference voltage (VIREF0) selection bits
      CM0RS          : CTRL_CM0RS_Field := NRF_SVD.CMP.CTRL_CM0RS_Field_0000B;
      --  CMP0 Output pin control bit
      CM0OEN         : CTRL_CM0OEN_Field := NRF_SVD.CMP.Disable;
      --  CMP0 interrupt trigger direction control bit
      CM0G           : CTRL_CM0G_Field := NRF_SVD.CMP.Falling RANGE TRIGGER;
      --  CMP1 Enable bit
      CM1EN          : CTRL_CM1EN_Field := NRF_SVD.CMP.Disable;
      --  CMP1 Positive reference voltage (VPREF1) source
      CM1PREF        : CTRL_CM1PREF_Field := NRF_SVD.CMP.Viref1;
      --  CMP1 internal reference voltage (VIREF1) selection bits
      CM1RS          : CTRL_CM1RS_Field := NRF_SVD.CMP.CTRL_CM1RS_Field_0000B;
      --  CMP1 Output pin control bit
      CM1OEN         : CTRL_CM1OEN_Field := NRF_SVD.CMP.Disable;
      --  CMP1 interrupt trigger direction control bit
      CM1G           : CTRL_CM1G_Field := NRF_SVD.CMP.Falling RANGE TRIGGER;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      CM0EN          at 0 range 0 .. 0;
      CM0PREF        at 0 range 1 .. 1;
      CM0RS          at 0 range 2 .. 5;
      CM0OEN         at 0 range 6 .. 6;
      CM0G           at 0 range 7 .. 7;
      CM1EN          at 0 range 8 .. 8;
      CM1PREF        at 0 range 9 .. 9;
      CM1RS          at 0 range 10 .. 13;
      CM1OEN         at 0 range 14 .. 14;
      CM1G           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  CMP internal reference voltage (VIREF) enable
   type VIREF_CMPIREFEN_Field is
     (
      --  Disable CMP internal reference voltage
      Disable,
      --  Enable CMP internal reference voltage
      Enable)
     with Size => 1;
   for VIREF_CMPIREFEN_Field use
     (Disable => 0,
      Enable => 1);

   --  CMP internal reference voltage (VIREF) source
   type VIREF_CMPIREF_Field is
     (
      --  VIREF=VDD
      Vdd,
      --  VIREF=Internal 3V
      Internal 3V)
     with Size => 1;
   for VIREF_CMPIREF_Field use
     (Vdd => 0,
      Internal 3V => 1);

   --  Offset:0x04 CMP Internal Reference Voltage register
   type VIREF_Register is record
      --  CMP internal reference voltage (VIREF) enable
      CMPIREFEN     : VIREF_CMPIREFEN_Field := NRF_SVD.CMP.Disable;
      --  CMP internal reference voltage (VIREF) source
      CMPIREF       : VIREF_CMPIREF_Field := NRF_SVD.CMP.Vdd;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VIREF_Register use record
      CMPIREFEN     at 0 range 0 .. 0;
      CMPIREF       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CMP0 Output flag bit
   type OS_CM0OUT_Field is
     (
      --  VPREF0 is less than CM0N voltage
      Cmp0 POSITIVE VOLTAGE IS LESS THAN Cm0N VOLTAGE,
      --  VPREF0 is more than CM0N voltage
      Cmp0 POSITIVE VOLTAGE IS MORE THAN Cm0N VOLTAGE)
     with Size => 1;
   for OS_CM0OUT_Field use
     (Cmp0 POSITIVE VOLTAGE IS LESS THAN Cm0N VOLTAGE => 0,
      Cmp0 POSITIVE VOLTAGE IS MORE THAN Cm0N VOLTAGE => 1);

   --  CMP1 Output flag bit
   type OS_CM1OUT_Field is
     (
      --  VPREF1 is less than CM1N voltage
      Cmp1 POSITIVE VOLTAGE IS LESS THAN Cm1N VOLTAGE,
      --  VPREF1 is more than CM1N voltage
      Cmp1 POSITIVE VOLTAGE IS MORE THAN Cm1N VOLTAGE)
     with Size => 1;
   for OS_CM1OUT_Field use
     (Cmp1 POSITIVE VOLTAGE IS LESS THAN Cm1N VOLTAGE => 0,
      Cmp1 POSITIVE VOLTAGE IS MORE THAN Cm1N VOLTAGE => 1);

   --  Offset:0x08 CMP Output Status Register
   type OS_Register is record
      --  Read-only. CMP0 Output flag bit
      CM0OUT        : OS_CM0OUT_Field;
      --  Read-only. CMP1 Output flag bit
      CM1OUT        : OS_CM1OUT_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OS_Register use record
      CM0OUT        at 0 range 0 .. 0;
      CM1OUT        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CMP0 interrupt enable
   type IE_CM0IE_Field is
     (
      --  Disable CMP0 interrupt
      Disable,
      --  Enable CMP0 interrupt
      Enable)
     with Size => 1;
   for IE_CM0IE_Field use
     (Disable => 0,
      Enable => 1);

   --  CMP1 interrupt enable
   type IE_CM1IE_Field is
     (
      --  Disable CMP1 interrupt
      Disable,
      --  Enable CMP1 interrupt
      Enable)
     with Size => 1;
   for IE_CM1IE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x0C CMP Interrupt Enable Register
   type IE_Register is record
      --  CMP0 interrupt enable
      CM0IE         : IE_CM0IE_Field := NRF_SVD.CMP.Disable;
      --  CMP1 interrupt enable
      CM1IE         : IE_CM1IE_Field := NRF_SVD.CMP.Disable;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      CM0IE         at 0 range 0 .. 0;
      CM1IE         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CMP0 raw interrupt flag
   type RIS_CM0IF_Field is
     (
      --  No interrupt on CMP0
      No INTERRUPT,
      --  Interrupt requirements met on CMP0
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_CM0IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  CMP1 raw interrupt flag
   type RIS_CM1IF_Field is
     (
      --  No interrupt on CMP1
      No INTERRUPT,
      --  Interrupt requirements met on CMP1
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for RIS_CM1IF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x10 CMP n Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. CMP0 raw interrupt flag
      CM0IF         : RIS_CM0IF_Field;
      --  Read-only. CMP1 raw interrupt flag
      CM1IF         : RIS_CM1IF_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      CM0IF         at 0 range 0 .. 0;
      CM1IF         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CMP0 interrupt flag clear bit
   type IC_CM0IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear CMP0 interrupt flag
      Clear)
     with Size => 1;
   for IC_CM0IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  CMP1 interrupt flag clear bit
   type IC_CM1IC_Field is
     (
      --  No effect
      No EFFECT,
      --  Clear CMP1 interrupt flag
      Clear)
     with Size => 1;
   for IC_CM1IC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x14 CMP Interrupt Clear Register
   type IC_Register is record
      --  Write-only. CMP0 interrupt flag clear bit
      CM0IC         : IC_CM0IC_Field := NRF_SVD.CMP.No EFFECT;
      --  Write-only. CMP1 interrupt flag clear bit
      CM1IC         : IC_CM1IC_Field := NRF_SVD.CMP.No EFFECT;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      CM0IC         at 0 range 0 .. 0;
      CM1IC         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Comparator
   type SN_CMP_Peripheral is record
      --  Offset:0x00 CMP Control Register
      CTRL  : aliased CTRL_Register;
      --  Offset:0x04 CMP Internal Reference Voltage register
      VIREF : aliased VIREF_Register;
      --  Offset:0x08 CMP Output Status Register
      OS    : aliased OS_Register;
      --  Offset:0x0C CMP Interrupt Enable Register
      IE    : aliased IE_Register;
      --  Offset:0x10 CMP n Raw Interrupt Status Register
      RIS   : aliased RIS_Register;
      --  Offset:0x14 CMP Interrupt Clear Register
      IC    : aliased IC_Register;
   end record
     with Volatile;

   for SN_CMP_Peripheral use record
      CTRL  at 16#0# range 0 .. 31;
      VIREF at 16#4# range 0 .. 31;
      OS    at 16#8# range 0 .. 31;
      IE    at 16#C# range 0 .. 31;
      RIS   at 16#10# range 0 .. 31;
      IC    at 16#14# range 0 .. 31;
   end record;

   --  Comparator
   SN_CMP_Periph : aliased SN_CMP_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

end NRF_SVD.CMP;
