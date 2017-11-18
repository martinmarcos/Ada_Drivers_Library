--

--  This spec has been automatically generated from SN32F770.svd

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
      --  VIREF0. CM0P0/CM0P1/CM0P2 pins are GPIO mode.
      Viref0,
      --  CM0P0 is comparator positive input pin, and isolate GPIO function
      Cm0P0,
      --  CM0P1 is comparator positive input pin, and isolate GPIO function
      Cm0P1,
      --  CM0P2 is comparator positive input pin, and isolate GPIO function
      Cm0P2)
     with Size => 2;
   for CTRL_CM0PREF_Field use
     (Viref0 => 0,
      Cm0P0 => 1,
      Cm0P1 => 2,
      Cm0P2 => 3);

   --  CMP0 negative input pin selection bit
   type CTRL_CM0NS_Field is
     (
      --  CM0N0 is comparator negative input pin, and isolate GPIO function
      Cm0N0,
      --  CM0N1 is comparator negative input pin, and isolate GPIO function
      Cm0N1,
      --  CM0N2 is comparator negative input pin, and isolate GPIO function
      Cm0N2)
     with Size => 2;
   for CTRL_CM0NS_Field use
     (Cm0N0 => 0,
      Cm0N1 => 1,
      Cm0N2 => 2);

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

   --  Offset:0x00 CMP Control Register
   type CTRL_Register is record
      --  CMP0 Enable bit
      CM0EN          : CTRL_CM0EN_Field := NRF_SVD.CMP.Disable;
      --  CMP0 Positive reference voltage (VPREF0) source
      CM0PREF        : CTRL_CM0PREF_Field := NRF_SVD.CMP.Viref0;
      --  CMP0 negative input pin selection bit
      CM0NS          : CTRL_CM0NS_Field := NRF_SVD.CMP.Cm0N0;
      --  CMP0 internal reference voltage (VIREF0) selection bits
      CM0RS          : CTRL_CM0RS_Field := NRF_SVD.CMP.CTRL_CM0RS_Field_0000B;
      --  CMP0 Output pin control bit
      CM0OEN         : CTRL_CM0OEN_Field := NRF_SVD.CMP.Disable;
      --  CMP0 interrupt trigger direction control bit
      CM0G           : CTRL_CM0G_Field := NRF_SVD.CMP.Falling RANGE TRIGGER;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      CM0EN          at 0 range 0 .. 0;
      CM0PREF        at 0 range 1 .. 2;
      CM0NS          at 0 range 3 .. 4;
      CM0RS          at 0 range 5 .. 8;
      CM0OEN         at 0 range 9 .. 9;
      CM0G           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
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
      --  VIREF=Internal 3V
      Internal 3V,
      --  VIREF=Internal 2V
      Internal 2V,
      --  VIREF=Internal 1P5V
      Internal 1P5V,
      --  VIREF=VDD
      Vdd)
     with Size => 2;
   for VIREF_CMPIREF_Field use
     (Internal 3V => 0,
      Internal 2V => 1,
      Internal 1P5V => 2,
      Vdd => 3);

   --  Offset:0x04 CMP Internal Reference Voltage register
   type VIREF_Register is record
      --  CMP internal reference voltage (VIREF) enable
      CMPIREFEN     : VIREF_CMPIREFEN_Field := NRF_SVD.CMP.Disable;
      --  CMP internal reference voltage (VIREF) source
      CMPIREF       : VIREF_CMPIREF_Field := NRF_SVD.CMP.Internal 3V;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VIREF_Register use record
      CMPIREFEN     at 0 range 0 .. 0;
      CMPIREF       at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
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

   --  Offset:0x08 CMP Output Status Register
   type OS_Register is record
      --  Read-only. CMP0 Output flag bit
      CM0OUT        : OS_CM0OUT_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OS_Register use record
      CM0OUT        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
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

   --  Offset:0x0C CMP Interrupt Enable Register
   type IE_Register is record
      --  CMP0 interrupt enable
      CM0IE         : IE_CM0IE_Field := NRF_SVD.CMP.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IE_Register use record
      CM0IE         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
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

   --  Offset:0x10 CMP n Raw Interrupt Status Register
   type RIS_Register is record
      --  Read-only. CMP0 raw interrupt flag
      CM0IF         : RIS_CM0IF_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIS_Register use record
      CM0IF         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
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

   --  Offset:0x14 CMP Interrupt Clear Register
   type IC_Register is record
      --  Write-only. CMP0 interrupt flag clear bit
      CM0IC         : IC_CM0IC_Field := NRF_SVD.CMP.No EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IC_Register use record
      CM0IC         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Count for CMP0 output debounce time
   type DB_CM0DB_Field is
     (
      --  Disable CMP0 output debounce circuit
      DB_CM0DB_Field_000B,
      --  CMP0 output debounce time = 2*CMP0_PCLK
      DB_CM0DB_Field_001B,
      --  CMP0 output debounce time = 4*CMP0_PCLK
      DB_CM0DB_Field_010B,
      --  CMP0 output debounce time = 8*CMP0_PCLK
      DB_CM0DB_Field_011B,
      --  CMP0 output debounce time = 16*CMP0_PCLK
      DB_CM0DB_Field_100B,
      --  CMP0 output debounce time = 32*CMP0_PCLK
      DB_CM0DB_Field_101B,
      --  CMP0 output debounce time = 64*CMP0_PCLK
      DB_CM0DB_Field_110B,
      --  CMP0 output debounce time = 128*CMP0_PCLK
      DB_CM0DB_Field_111B)
     with Size => 3;
   for DB_CM0DB_Field use
     (DB_CM0DB_Field_000B => 0,
      DB_CM0DB_Field_001B => 1,
      DB_CM0DB_Field_010B => 2,
      DB_CM0DB_Field_011B => 3,
      DB_CM0DB_Field_100B => 4,
      DB_CM0DB_Field_101B => 5,
      DB_CM0DB_Field_110B => 6,
      DB_CM0DB_Field_111B => 7);

   --  Offset:0x18 CMP Interrupt Clear Register
   type DB_Register is record
      --  Count for CMP0 output debounce time
      CM0DB         : DB_CM0DB_Field := NRF_SVD.CMP.DB_CM0DB_Field_000B;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DB_Register use record
      CM0DB         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
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
      --  Offset:0x18 CMP Interrupt Clear Register
      DB    : aliased DB_Register;
   end record
     with Volatile;

   for SN_CMP_Peripheral use record
      CTRL  at 16#0# range 0 .. 31;
      VIREF at 16#4# range 0 .. 31;
      OS    at 16#8# range 0 .. 31;
      IE    at 16#C# range 0 .. 31;
      RIS   at 16#10# range 0 .. 31;
      IC    at 16#14# range 0 .. 31;
      DB    at 16#18# range 0 .. 31;
   end record;

   --  Comparator
   SN_CMP_Periph : aliased SN_CMP_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

end NRF_SVD.CMP;
