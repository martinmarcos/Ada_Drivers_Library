--

--  This spec has been automatically generated from SN32F100.svd

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

   --  Comparator negative input pin control bit (CMPEN must be "1")
   type CMPM_CMCH_Field is
     (
      --  Comparator negative input pin is P2.0
      Cm0,
      --  Comparator negative input pin is P2.1
      Cm1,
      --  Comparator negative input pin is P2.2
      Cm2,
      --  Comparator negative input pin is P2.3
      Cm3,
      --  Comparator negative input pin is P2.4
      Cm4,
      --  Comparator negative input pin is P2.5
      Cm5,
      --  Comparator negative input pin is P2.6
      Cm6,
      --  Comparator negative input pin is P2.7
      Cm7,
      --  Comparator negative input pin is P2.8
      Cm8,
      --  Comparator negative input pin is P2.9
      Cm9,
      --  Comparator negative input pin is P2.10
      Cm10,
      --  Comparator negative input pin is P2.11
      Cm11,
      --  Comparator negative input pin is P2.12
      Cm12,
      --  Comparator negative input pin is P2.13
      Cm13,
      --  Comparator negative input pin is P2.14
      Cm14,
      --  Comparator negative input pin is P2.15
      Cm15,
      --  Comparator negative input pin is P3.0
      Cm16,
      --  Comparator negative input pin is P3.1
      Cm17,
      --  Comparator negative input pin is P3.2
      Cm18,
      --  Comparator negative input pin is P3.3
      Cm19,
      --  Comparator negative input pin is P3.4
      Cm20,
      --  Comparator negative input pin is P3.5
      Cm21,
      --  Comparator negative input pin is P3.6
      Cm22,
      --  Comparator negative input pin is P3.7
      Cm23)
     with Size => 5;
   for CMPM_CMCH_Field use
     (Cm0 => 0,
      Cm1 => 1,
      Cm2 => 2,
      Cm3 => 3,
      Cm4 => 4,
      Cm5 => 5,
      Cm6 => 6,
      Cm7 => 7,
      Cm8 => 8,
      Cm9 => 9,
      Cm10 => 10,
      Cm11 => 11,
      Cm12 => 12,
      Cm13 => 13,
      Cm14 => 14,
      Cm15 => 15,
      Cm16 => 16,
      Cm17 => 17,
      Cm18 => 18,
      Cm19 => 19,
      Cm20 => 20,
      Cm21 => 21,
      Cm22 => 22,
      Cm23 => 23);

   --  Comparator positive input voltage control bit
   type CMPM_CMPS_Field is
     (
      --  Internal 1/4*Vdd and enable internal reference voltage generato
      CMPM_CMPS_Field_1/4*Vdd,
      --  Internal 1/2*Vdd and enable internal reference voltage generator
      CMPM_CMPS_Field_1/2*Vdd,
      --  Internal 3/4*Vdd and enable internal reference voltage generator
      CMPM_CMPS_Field_3/4*Vdd,
      --  Internal 3/4*Vdd and enable internal reference voltage generator
      CMPM_CMPS_Field_3/4*Vdd_1)
     with Size => 2;
   for CMPM_CMPS_Field use
     (CMPM_CMPS_Field_1/4*Vdd => 0,
      CMPM_CMPS_Field_1/2*Vdd => 1,
      CMPM_CMPS_Field_3/4*Vdd => 2,
      CMPM_CMPS_Field_3/4*Vdd_1 => 3);

   --  Comparator interrupt trigger direction control bit
   type CMPM_CMPG_Field is
     (
      --  Rising edge trigger (CMPP larger than CMPN or comparator internal
      --  reference voltage)
      Rising EDGE,
      --  Falling edge trigger (CMPP less than CMPN or comparator internal
      --  reference voltage)
      Falling EDGE)
     with Size => 1;
   for CMPM_CMPG_Field use
     (Rising EDGE => 0,
      Falling EDGE => 1);

   --  Comparator output pin control bit
   type CMPM_CMPOEN_Field is
     (
      --  CMO pin is GPIO mode
      Disable,
      --  Enable comparator output pin (P3.8 pin exchanges to comparator output
      --  pin and GPIO function is isolated)
      Enable)
     with Size => 1;
   for CMPM_CMPOEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Comparator output debounce time select bit(TCHEN=1 is HCLK, TCHEN=0 is
   --  CMP_PCLK)
   type CMPM_CMDB_Field is
     (
      --  Comparator output debounce time = 1*CMP_PCLK
      CMPM_CMDB_Field_1*Cmp_Pclk,
      --  Comparator output debounce time = 2*CMP_PCLK
      CMPM_CMDB_Field_2*Cmp_Pclk,
      --  Comparator output debounce time = 3*CMP_PCLK
      CMPM_CMDB_Field_3*Cmp_Pclk,
      --  Comparator output debounce time = 0
      No-DEBOUNCE)
     with Size => 2;
   for CMPM_CMDB_Field use
     (CMPM_CMDB_Field_1*Cmp_Pclk => 0,
      CMPM_CMDB_Field_2*Cmp_Pclk => 1,
      CMPM_CMDB_Field_3*Cmp_Pclk => 2,
      No-DEBOUNCE => 3);

   --  Comparator output flag bit (The comparator output status is "1" as
   --  comparator disable)
   type CMPM_CMPOUT_Field is
     (
      Comparator INTERNAL REFERENCE VOLTAGE IS LESS THAN Cmpn VOLTAGE,
      Comparator INTERNAL REFERENCE VOLTAGE IS LARGER THAN Cmpn VOLTAGE)
     with Size => 1;
   for CMPM_CMPOUT_Field use
     (Comparator INTERNAL REFERENCE VOLTAGE IS LESS THAN Cmpn VOLTAGE => 0,
      Comparator INTERNAL REFERENCE VOLTAGE IS LARGER THAN Cmpn VOLTAGE => 1);

   --  Comparator control bit
   type CMPM_CMPEN_Field is
     (
      --  P2[15:0], P3[7:0] are GPIO mode
      Disable,
      --  Comparator negative input pins are controlled by CMCH[4:0] bits
      Enable)
     with Size => 1;
   for CMPM_CMPEN_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x00 Comparator Control register
   type CMPM_Register is record
      --  Comparator negative input pin control bit (CMPEN must be "1")
      CMCH           : CMPM_CMCH_Field := NRF_SVD.CMP.Cm0;
      --  Comparator positive input voltage control bit
      CMPS           : CMPM_CMPS_Field := NRF_SVD.CMP.CMPM_CMPS_Field_1/4*Vdd;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Comparator interrupt trigger direction control bit
      CMPG           : CMPM_CMPG_Field := NRF_SVD.CMP.Rising EDGE;
      --  Comparator output pin control bit
      CMPOEN         : CMPM_CMPOEN_Field := NRF_SVD.CMP.Disable;
      --  Comparator output debounce time select bit(TCHEN=1 is HCLK, TCHEN=0
      --  is CMP_PCLK)
      CMDB           : CMPM_CMDB_Field :=
                        NRF_SVD.CMP.CMPM_CMDB_Field_1*Cmp_Pclk;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Comparator output flag bit (The comparator output status is "1" as
      --  comparator disable)
      CMPOUT         : CMPM_CMPOUT_Field :=
                        NRF_SVD.CMP.Comparator INTERNAL REFERENCE VOLTAGE IS LARGER THAN Cmpn VOLTAGE;
      --  unspecified
      Reserved_15_30 : HAL.UInt16 := 16#0#;
      --  Comparator control bit
      CMPEN          : CMPM_CMPEN_Field := NRF_SVD.CMP.Disable;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPM_Register use record
      CMCH           at 0 range 0 .. 4;
      CMPS           at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CMPG           at 0 range 8 .. 8;
      CMPOEN         at 0 range 9 .. 9;
      CMDB           at 0 range 10 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CMPOUT         at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      CMPEN          at 0 range 31 .. 31;
   end record;

   --  Comparator edge trigger interrupt enable (Comparator interrupt trigger
   --  direction refer to CMPG)
   type CMP_IE_CMPGIE_Field is
     (
      Disable,
      Enable)
     with Size => 1;
   for CMP_IE_CMPGIE_Field use
     (Disable => 0,
      Enable => 1);

   --  Offset:0x10 Comparator Interrupt Enable register
   type CMP_IE_Register is record
      --  Comparator edge trigger interrupt enable (Comparator interrupt
      --  trigger direction refer to CMPG)
      CMPGIE        : CMP_IE_CMPGIE_Field := NRF_SVD.CMP.Disable;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP_IE_Register use record
      CMPGIE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Comparator edge trigger interrupt flag
   type CMP_RIS_CMPGIF_Field is
     (
      --  Comparator edge trigger doesn't occur
      No INTERRUPT,
      --  Comparator edge trigger occurs
      Met INTERRUPT REQUIREMENTS)
     with Size => 1;
   for CMP_RIS_CMPGIF_Field use
     (No INTERRUPT => 0,
      Met INTERRUPT REQUIREMENTS => 1);

   --  Offset:0x14 Comparator Interrupt Status register
   type CMP_RIS_Register is record
      --  Read-only. Comparator edge trigger interrupt flag
      CMPGIF        : CMP_RIS_CMPGIF_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP_RIS_Register use record
      CMPGIF        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Comparator CMPGIF interrupt flag clear
   type CMP_IC_CMPGIC_Field is
     (
      No EFFECT,
      --  Clear CMPGIF bit
      Clear)
     with Size => 1;
   for CMP_IC_CMPGIC_Field use
     (No EFFECT => 0,
      Clear => 1);

   --  Offset:0x18 Comparator Interrupt Clear register
   type CMP_IC_Register is record
      --  Write-only. Comparator CMPGIF interrupt flag clear
      CMPGIC        : CMP_IC_CMPGIC_Field := NRF_SVD.CMP.No EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMP_IC_Register use record
      CMPGIC        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Comparator Control Register
   type SN_CMP_Peripheral is record
      --  Offset:0x00 Comparator Control register
      CMPM    : aliased CMPM_Register;
      --  Offset:0x10 Comparator Interrupt Enable register
      CMP_IE  : aliased CMP_IE_Register;
      --  Offset:0x14 Comparator Interrupt Status register
      CMP_RIS : aliased CMP_RIS_Register;
      --  Offset:0x18 Comparator Interrupt Clear register
      CMP_IC  : aliased CMP_IC_Register;
   end record
     with Volatile;

   for SN_CMP_Peripheral use record
      CMPM    at 16#0# range 0 .. 31;
      CMP_IE  at 16#10# range 0 .. 31;
      CMP_RIS at 16#14# range 0 .. 31;
      CMP_IC  at 16#18# range 0 .. 31;
   end record;

   --  Comparator Control Register
   SN_CMP_Periph : aliased SN_CMP_Peripheral
     with Import, Address => System'To_Address (16#40066000#);

end NRF_SVD.CMP;
