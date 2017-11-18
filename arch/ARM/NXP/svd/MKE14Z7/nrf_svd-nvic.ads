--  This spec has been automatically generated from MKE14Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.NVIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMA channel 0 or 4 transfer complete interrupt set-enable bit
   type NVICISER_SETENA0_Field is
     (
      --  write: no effect; read: DMA channel 0 or 4 transfer complete
      --  interrupt disabled
      Setena0_0,
      --  write: enable DMA channel 0 or 4 transfer complete interrupt; read:
      --  DMA channel 0 or 4 transfer complete interrupt enabled
      Setena0_1)
     with Size => 1;
   for NVICISER_SETENA0_Field use
     (Setena0_0 => 0,
      Setena0_1 => 1);

   --  DMA channel 1 or 5 transfer complete interrupt set-enable bit
   type NVICISER_SETENA1_Field is
     (
      --  write: no effect; read: DMA channel 1 or 5 transfer complete
      --  interrupt disabled
      Setena1_0,
      --  write: enable DMA channel 1 or 5 transfer complete interrupt; read:
      --  DMA channel 1 or 5 transfer complete interrupt enabled
      Setena1_1)
     with Size => 1;
   for NVICISER_SETENA1_Field use
     (Setena1_0 => 0,
      Setena1_1 => 1);

   --  DMA channel 2 or 6 transfer complete interrupt set-enable bit
   type NVICISER_SETENA2_Field is
     (
      --  write: no effect; read: DMA channel 2 or 6 transfer complete
      --  interrupt disabled
      Setena2_0,
      --  write: enable DMA channel 2 or 6 transfer complete interrupt; read:
      --  DMA channel 2 or 6 transfer complete interrupt enabled
      Setena2_1)
     with Size => 1;
   for NVICISER_SETENA2_Field use
     (Setena2_0 => 0,
      Setena2_1 => 1);

   --  DMA channel 3 or 7 transfer complete interrupt set-enable bit
   type NVICISER_SETENA3_Field is
     (
      --  write: no effect; read: DMA channel 3 or 7 transfer complete
      --  interrupt disabled
      Setena3_0,
      --  write: enable DMA channel 3 or 7 transfer complete interrupt; read:
      --  DMA channel 3 or 7 transfer complete interrupt enabled
      Setena3_1)
     with Size => 1;
   for NVICISER_SETENA3_Field use
     (Setena3_0 => 0,
      Setena3_1 => 1);

   --  DMA error interrupt channels 0-7 interrupt set-enable bit
   type NVICISER_SETENA4_Field is
     (
      --  write: no effect; read: DMA error interrupt channels 0-7 interrupt
      --  disabled
      Setena4_0,
      --  write: enable DMA error interrupt channels 0-7 interrupt; read: DMA
      --  error interrupt channels 0-7 interrupt enabled
      Setena4_1)
     with Size => 1;
   for NVICISER_SETENA4_Field use
     (Setena4_0 => 0,
      Setena4_1 => 1);

   --  Single interrupt vector all sources interrupt set-enable bit
   type NVICISER_SETENA5_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  disabled
      Setena5_0,
      --  write: enable Single interrupt vector all sources interrupt; read:
      --  Single interrupt vector all sources interrupt enabled
      Setena5_1)
     with Size => 1;
   for NVICISER_SETENA5_Field use
     (Setena5_0 => 0,
      Setena5_1 => 1);

   --  Low-voltage detect, low-voltage warning interrupt set-enable bit
   type NVICISER_SETENA6_Field is
     (
      --  write: no effect; read: Low-voltage detect, low-voltage warning
      --  interrupt disabled
      Setena6_0,
      --  write: enable Low-voltage detect, low-voltage warning interrupt;
      --  read: Low-voltage detect, low-voltage warning interrupt enabled
      Setena6_1)
     with Size => 1;
   for NVICISER_SETENA6_Field use
     (Setena6_0 => 0,
      Setena6_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA7_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena7_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena7_1)
     with Size => 1;
   for NVICISER_SETENA7_Field use
     (Setena7_0 => 0,
      Setena7_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA8_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena8_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena8_1)
     with Size => 1;
   for NVICISER_SETENA8_Field use
     (Setena8_0 => 0,
      Setena8_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA9_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena9_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena9_1)
     with Size => 1;
   for NVICISER_SETENA9_Field use
     (Setena9_0 => 0,
      Setena9_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA10_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena10_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena10_1)
     with Size => 1;
   for NVICISER_SETENA10_Field use
     (Setena10_0 => 0,
      Setena10_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA11_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena11_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena11_1)
     with Size => 1;
   for NVICISER_SETENA11_Field use
     (Setena11_0 => 0,
      Setena11_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA12_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena12_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena12_1)
     with Size => 1;
   for NVICISER_SETENA12_Field use
     (Setena12_0 => 0,
      Setena12_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA13_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena13_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena13_1)
     with Size => 1;
   for NVICISER_SETENA13_Field use
     (Setena13_0 => 0,
      Setena13_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA14_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena14_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena14_1)
     with Size => 1;
   for NVICISER_SETENA14_Field use
     (Setena14_0 => 0,
      Setena14_1 => 1);

   --  Analog-to-Digital Converter 0 interrupt set-enable bit
   type NVICISER_SETENA15_Field is
     (
      --  write: no effect; read: Analog-to-Digital Converter 0 interrupt
      --  disabled
      Setena15_0,
      --  write: enable Analog-to-Digital Converter 0 interrupt; read:
      --  Analog-to-Digital Converter 0 interrupt enabled
      Setena15_1)
     with Size => 1;
   for NVICISER_SETENA15_Field use
     (Setena15_0 => 0,
      Setena15_1 => 1);

   --  Analog comparator 0 interrupt interrupt set-enable bit
   type NVICISER_SETENA16_Field is
     (
      --  write: no effect; read: Analog comparator 0 interrupt interrupt
      --  disabled
      Setena16_0,
      --  write: enable Analog comparator 0 interrupt interrupt; read: Analog
      --  comparator 0 interrupt interrupt enabled
      Setena16_1)
     with Size => 1;
   for NVICISER_SETENA16_Field use
     (Setena16_0 => 0,
      Setena16_1 => 1);

   --  FlexTimer Module 0 interrupt set-enable bit
   type NVICISER_SETENA17_Field is
     (
      --  write: no effect; read: FlexTimer Module 0 interrupt disabled
      Setena17_0,
      --  write: enable FlexTimer Module 0 interrupt; read: FlexTimer Module 0
      --  interrupt enabled
      Setena17_1)
     with Size => 1;
   for NVICISER_SETENA17_Field use
     (Setena17_0 => 0,
      Setena17_1 => 1);

   --  FlexTimer Module 1 interrupt set-enable bit
   type NVICISER_SETENA18_Field is
     (
      --  write: no effect; read: FlexTimer Module 1 interrupt disabled
      Setena18_0,
      --  write: enable FlexTimer Module 1 interrupt; read: FlexTimer Module 1
      --  interrupt enabled
      Setena18_1)
     with Size => 1;
   for NVICISER_SETENA18_Field use
     (Setena18_0 => 0,
      Setena18_1 => 1);

   --  FlexTimer Module 2 interrupt set-enable bit
   type NVICISER_SETENA19_Field is
     (
      --  write: no effect; read: FlexTimer Module 2 interrupt disabled
      Setena19_0,
      --  write: enable FlexTimer Module 2 interrupt; read: FlexTimer Module 2
      --  interrupt enabled
      Setena19_1)
     with Size => 1;
   for NVICISER_SETENA19_Field use
     (Setena19_0 => 0,
      Setena19_1 => 1);

   --  Single interrupt vector all sources interrupt set-enable bit
   type NVICISER_SETENA20_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  disabled
      Setena20_0,
      --  write: enable Single interrupt vector all sources interrupt; read:
      --  Single interrupt vector all sources interrupt enabled
      Setena20_1)
     with Size => 1;
   for NVICISER_SETENA20_Field use
     (Setena20_0 => 0,
      Setena20_1 => 1);

   --  Analog comparator 1 interrupt interrupt set-enable bit
   type NVICISER_SETENA21_Field is
     (
      --  write: no effect; read: Analog comparator 1 interrupt interrupt
      --  disabled
      Setena21_0,
      --  write: enable Analog comparator 1 interrupt interrupt; read: Analog
      --  comparator 1 interrupt interrupt enabled
      Setena21_1)
     with Size => 1;
   for NVICISER_SETENA21_Field use
     (Setena21_0 => 0,
      Setena21_1 => 1);

   --  Periodic timer overflow interrupt set-enable bit
   type NVICISER_SETENA22_Field is
     (
      --  write: no effect; read: Periodic timer overflow interrupt disabled
      Setena22_0,
      --  write: enable Periodic timer overflow interrupt; read: Periodic timer
      --  overflow interrupt enabled
      Setena22_1)
     with Size => 1;
   for NVICISER_SETENA22_Field use
     (Setena22_0 => 0,
      Setena22_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA23_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena23_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena23_1)
     with Size => 1;
   for NVICISER_SETENA23_Field use
     (Setena23_0 => 0,
      Setena23_1 => 1);

   --  Reserved iv 40 interrupt set-enable bit
   type NVICISER_SETENA24_Field is
     (
      --  write: no effect; read: Reserved iv 40 interrupt disabled
      Setena24_0,
      --  write: enable Reserved iv 40 interrupt; read: Reserved iv 40
      --  interrupt enabled
      Setena24_1)
     with Size => 1;
   for NVICISER_SETENA24_Field use
     (Setena24_0 => 0,
      Setena24_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA25_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena25_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena25_1)
     with Size => 1;
   for NVICISER_SETENA25_Field use
     (Setena25_0 => 0,
      Setena25_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA26_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena26_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena26_1)
     with Size => 1;
   for NVICISER_SETENA26_Field use
     (Setena26_0 => 0,
      Setena26_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA27_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena27_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena27_1)
     with Size => 1;
   for NVICISER_SETENA27_Field use
     (Setena27_0 => 0,
      Setena27_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA28_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena28_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena28_1)
     with Size => 1;
   for NVICISER_SETENA28_Field use
     (Setena28_0 => 0,
      Setena28_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA29_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena29_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena29_1)
     with Size => 1;
   for NVICISER_SETENA29_Field use
     (Setena29_0 => 0,
      Setena29_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA30_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena30_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena30_1)
     with Size => 1;
   for NVICISER_SETENA30_Field use
     (Setena30_0 => 0,
      Setena30_1 => 1);

   --  interrupt set-enable bit
   type NVICISER_SETENA31_Field is
     (
      --  write: no effect; read: interrupt disabled
      Setena31_0,
      --  write: enable interrupt; read: interrupt enabled
      Setena31_1)
     with Size => 1;
   for NVICISER_SETENA31_Field use
     (Setena31_0 => 0,
      Setena31_1 => 1);

   --  Interrupt Set Enable Register
   type NVICISER_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 0 or 4 transfer complete interrupt
      --  set-enable bit
      SETENA0  : NVICISER_SETENA0_Field := NRF_SVD.NVIC.Setena0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 1 or 5 transfer complete interrupt
      --  set-enable bit
      SETENA1  : NVICISER_SETENA1_Field := NRF_SVD.NVIC.Setena1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 2 or 6 transfer complete interrupt
      --  set-enable bit
      SETENA2  : NVICISER_SETENA2_Field := NRF_SVD.NVIC.Setena2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 3 or 7 transfer complete interrupt
      --  set-enable bit
      SETENA3  : NVICISER_SETENA3_Field := NRF_SVD.NVIC.Setena3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA error interrupt channels 0-7 interrupt set-enable
      --  bit
      SETENA4  : NVICISER_SETENA4_Field := NRF_SVD.NVIC.Setena4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  set-enable bit
      SETENA5  : NVICISER_SETENA5_Field := NRF_SVD.NVIC.Setena5_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Low-voltage detect, low-voltage warning interrupt
      --  set-enable bit
      SETENA6  : NVICISER_SETENA6_Field := NRF_SVD.NVIC.Setena6_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA7  : NVICISER_SETENA7_Field := NRF_SVD.NVIC.Setena7_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA8  : NVICISER_SETENA8_Field := NRF_SVD.NVIC.Setena8_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA9  : NVICISER_SETENA9_Field := NRF_SVD.NVIC.Setena9_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA10 : NVICISER_SETENA10_Field := NRF_SVD.NVIC.Setena10_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA11 : NVICISER_SETENA11_Field := NRF_SVD.NVIC.Setena11_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA12 : NVICISER_SETENA12_Field := NRF_SVD.NVIC.Setena12_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA13 : NVICISER_SETENA13_Field := NRF_SVD.NVIC.Setena13_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA14 : NVICISER_SETENA14_Field := NRF_SVD.NVIC.Setena14_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog-to-Digital Converter 0 interrupt set-enable bit
      SETENA15 : NVICISER_SETENA15_Field := NRF_SVD.NVIC.Setena15_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 0 interrupt interrupt set-enable bit
      SETENA16 : NVICISER_SETENA16_Field := NRF_SVD.NVIC.Setena16_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 0 interrupt set-enable bit
      SETENA17 : NVICISER_SETENA17_Field := NRF_SVD.NVIC.Setena17_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 1 interrupt set-enable bit
      SETENA18 : NVICISER_SETENA18_Field := NRF_SVD.NVIC.Setena18_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 2 interrupt set-enable bit
      SETENA19 : NVICISER_SETENA19_Field := NRF_SVD.NVIC.Setena19_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  set-enable bit
      SETENA20 : NVICISER_SETENA20_Field := NRF_SVD.NVIC.Setena20_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 1 interrupt interrupt set-enable bit
      SETENA21 : NVICISER_SETENA21_Field := NRF_SVD.NVIC.Setena21_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Periodic timer overflow interrupt set-enable bit
      SETENA22 : NVICISER_SETENA22_Field := NRF_SVD.NVIC.Setena22_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA23 : NVICISER_SETENA23_Field := NRF_SVD.NVIC.Setena23_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reserved iv 40 interrupt set-enable bit
      SETENA24 : NVICISER_SETENA24_Field := NRF_SVD.NVIC.Setena24_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA25 : NVICISER_SETENA25_Field := NRF_SVD.NVIC.Setena25_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA26 : NVICISER_SETENA26_Field := NRF_SVD.NVIC.Setena26_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA27 : NVICISER_SETENA27_Field := NRF_SVD.NVIC.Setena27_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA28 : NVICISER_SETENA28_Field := NRF_SVD.NVIC.Setena28_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA29 : NVICISER_SETENA29_Field := NRF_SVD.NVIC.Setena29_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA30 : NVICISER_SETENA30_Field := NRF_SVD.NVIC.Setena30_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-enable bit
      SETENA31 : NVICISER_SETENA31_Field := NRF_SVD.NVIC.Setena31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICISER_Register use record
      SETENA0  at 0 range 0 .. 0;
      SETENA1  at 0 range 1 .. 1;
      SETENA2  at 0 range 2 .. 2;
      SETENA3  at 0 range 3 .. 3;
      SETENA4  at 0 range 4 .. 4;
      SETENA5  at 0 range 5 .. 5;
      SETENA6  at 0 range 6 .. 6;
      SETENA7  at 0 range 7 .. 7;
      SETENA8  at 0 range 8 .. 8;
      SETENA9  at 0 range 9 .. 9;
      SETENA10 at 0 range 10 .. 10;
      SETENA11 at 0 range 11 .. 11;
      SETENA12 at 0 range 12 .. 12;
      SETENA13 at 0 range 13 .. 13;
      SETENA14 at 0 range 14 .. 14;
      SETENA15 at 0 range 15 .. 15;
      SETENA16 at 0 range 16 .. 16;
      SETENA17 at 0 range 17 .. 17;
      SETENA18 at 0 range 18 .. 18;
      SETENA19 at 0 range 19 .. 19;
      SETENA20 at 0 range 20 .. 20;
      SETENA21 at 0 range 21 .. 21;
      SETENA22 at 0 range 22 .. 22;
      SETENA23 at 0 range 23 .. 23;
      SETENA24 at 0 range 24 .. 24;
      SETENA25 at 0 range 25 .. 25;
      SETENA26 at 0 range 26 .. 26;
      SETENA27 at 0 range 27 .. 27;
      SETENA28 at 0 range 28 .. 28;
      SETENA29 at 0 range 29 .. 29;
      SETENA30 at 0 range 30 .. 30;
      SETENA31 at 0 range 31 .. 31;
   end record;

   --  DMA channel 0 or 4 transfer complete interrupt clear-enable bit
   type NVICICER_CLRENA0_Field is
     (
      --  write: no effect; read: DMA channel 0 or 4 transfer complete
      --  interrupt disabled
      Clrena0_0,
      --  write: disable DMA channel 0 or 4 transfer complete interrupt; read:
      --  DMA channel 0 or 4 transfer complete interrupt enabled
      Clrena0_1)
     with Size => 1;
   for NVICICER_CLRENA0_Field use
     (Clrena0_0 => 0,
      Clrena0_1 => 1);

   --  DMA channel 1 or 5 transfer complete interrupt clear-enable bit
   type NVICICER_CLRENA1_Field is
     (
      --  write: no effect; read: DMA channel 1 or 5 transfer complete
      --  interrupt disabled
      Clrena1_0,
      --  write: disable DMA channel 1 or 5 transfer complete interrupt; read:
      --  DMA channel 1 or 5 transfer complete interrupt enabled
      Clrena1_1)
     with Size => 1;
   for NVICICER_CLRENA1_Field use
     (Clrena1_0 => 0,
      Clrena1_1 => 1);

   --  DMA channel 2 or 6 transfer complete interrupt clear-enable bit
   type NVICICER_CLRENA2_Field is
     (
      --  write: no effect; read: DMA channel 2 or 6 transfer complete
      --  interrupt disabled
      Clrena2_0,
      --  write: disable DMA channel 2 or 6 transfer complete interrupt; read:
      --  DMA channel 2 or 6 transfer complete interrupt enabled
      Clrena2_1)
     with Size => 1;
   for NVICICER_CLRENA2_Field use
     (Clrena2_0 => 0,
      Clrena2_1 => 1);

   --  DMA channel 3 or 7 transfer complete interrupt clear-enable bit
   type NVICICER_CLRENA3_Field is
     (
      --  write: no effect; read: DMA channel 3 or 7 transfer complete
      --  interrupt disabled
      Clrena3_0,
      --  write: disable DMA channel 3 or 7 transfer complete interrupt; read:
      --  DMA channel 3 or 7 transfer complete interrupt enabled
      Clrena3_1)
     with Size => 1;
   for NVICICER_CLRENA3_Field use
     (Clrena3_0 => 0,
      Clrena3_1 => 1);

   --  DMA error interrupt channels 0-7 interrupt clear-enable bit
   type NVICICER_CLRENA4_Field is
     (
      --  write: no effect; read: DMA error interrupt channels 0-7 interrupt
      --  disabled
      Clrena4_0,
      --  write: disable DMA error interrupt channels 0-7 interrupt; read: DMA
      --  error interrupt channels 0-7 interrupt enabled
      Clrena4_1)
     with Size => 1;
   for NVICICER_CLRENA4_Field use
     (Clrena4_0 => 0,
      Clrena4_1 => 1);

   --  Single interrupt vector all sources interrupt clear-enable bit
   type NVICICER_CLRENA5_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  disabled
      Clrena5_0,
      --  write: disable Single interrupt vector all sources interrupt; read:
      --  Single interrupt vector all sources interrupt enabled
      Clrena5_1)
     with Size => 1;
   for NVICICER_CLRENA5_Field use
     (Clrena5_0 => 0,
      Clrena5_1 => 1);

   --  Low-voltage detect, low-voltage warning interrupt clear-enable bit
   type NVICICER_CLRENA6_Field is
     (
      --  write: no effect; read: Low-voltage detect, low-voltage warning
      --  interrupt disabled
      Clrena6_0,
      --  write: disable Low-voltage detect, low-voltage warning interrupt;
      --  read: Low-voltage detect, low-voltage warning interrupt enabled
      Clrena6_1)
     with Size => 1;
   for NVICICER_CLRENA6_Field use
     (Clrena6_0 => 0,
      Clrena6_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA7_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena7_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena7_1)
     with Size => 1;
   for NVICICER_CLRENA7_Field use
     (Clrena7_0 => 0,
      Clrena7_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA8_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena8_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena8_1)
     with Size => 1;
   for NVICICER_CLRENA8_Field use
     (Clrena8_0 => 0,
      Clrena8_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA9_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena9_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena9_1)
     with Size => 1;
   for NVICICER_CLRENA9_Field use
     (Clrena9_0 => 0,
      Clrena9_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA10_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena10_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena10_1)
     with Size => 1;
   for NVICICER_CLRENA10_Field use
     (Clrena10_0 => 0,
      Clrena10_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA11_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena11_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena11_1)
     with Size => 1;
   for NVICICER_CLRENA11_Field use
     (Clrena11_0 => 0,
      Clrena11_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA12_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena12_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena12_1)
     with Size => 1;
   for NVICICER_CLRENA12_Field use
     (Clrena12_0 => 0,
      Clrena12_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA13_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena13_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena13_1)
     with Size => 1;
   for NVICICER_CLRENA13_Field use
     (Clrena13_0 => 0,
      Clrena13_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA14_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena14_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena14_1)
     with Size => 1;
   for NVICICER_CLRENA14_Field use
     (Clrena14_0 => 0,
      Clrena14_1 => 1);

   --  Analog-to-Digital Converter 0 interrupt clear-enable bit
   type NVICICER_CLRENA15_Field is
     (
      --  write: no effect; read: Analog-to-Digital Converter 0 interrupt
      --  disabled
      Clrena15_0,
      --  write: disable Analog-to-Digital Converter 0 interrupt; read:
      --  Analog-to-Digital Converter 0 interrupt enabled
      Clrena15_1)
     with Size => 1;
   for NVICICER_CLRENA15_Field use
     (Clrena15_0 => 0,
      Clrena15_1 => 1);

   --  Analog comparator 0 interrupt interrupt clear-enable bit
   type NVICICER_CLRENA16_Field is
     (
      --  write: no effect; read: Analog comparator 0 interrupt interrupt
      --  disabled
      Clrena16_0,
      --  write: disable Analog comparator 0 interrupt interrupt; read: Analog
      --  comparator 0 interrupt interrupt enabled
      Clrena16_1)
     with Size => 1;
   for NVICICER_CLRENA16_Field use
     (Clrena16_0 => 0,
      Clrena16_1 => 1);

   --  FlexTimer Module 0 interrupt clear-enable bit
   type NVICICER_CLRENA17_Field is
     (
      --  write: no effect; read: FlexTimer Module 0 interrupt disabled
      Clrena17_0,
      --  write: disable FlexTimer Module 0 interrupt; read: FlexTimer Module 0
      --  interrupt enabled
      Clrena17_1)
     with Size => 1;
   for NVICICER_CLRENA17_Field use
     (Clrena17_0 => 0,
      Clrena17_1 => 1);

   --  FlexTimer Module 1 interrupt clear-enable bit
   type NVICICER_CLRENA18_Field is
     (
      --  write: no effect; read: FlexTimer Module 1 interrupt disabled
      Clrena18_0,
      --  write: disable FlexTimer Module 1 interrupt; read: FlexTimer Module 1
      --  interrupt enabled
      Clrena18_1)
     with Size => 1;
   for NVICICER_CLRENA18_Field use
     (Clrena18_0 => 0,
      Clrena18_1 => 1);

   --  FlexTimer Module 2 interrupt clear-enable bit
   type NVICICER_CLRENA19_Field is
     (
      --  write: no effect; read: FlexTimer Module 2 interrupt disabled
      Clrena19_0,
      --  write: disable FlexTimer Module 2 interrupt; read: FlexTimer Module 2
      --  interrupt enabled
      Clrena19_1)
     with Size => 1;
   for NVICICER_CLRENA19_Field use
     (Clrena19_0 => 0,
      Clrena19_1 => 1);

   --  Single interrupt vector all sources interrupt clear-enable bit
   type NVICICER_CLRENA20_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  disabled
      Clrena20_0,
      --  write: disable Single interrupt vector all sources interrupt; read:
      --  Single interrupt vector all sources interrupt enabled
      Clrena20_1)
     with Size => 1;
   for NVICICER_CLRENA20_Field use
     (Clrena20_0 => 0,
      Clrena20_1 => 1);

   --  Analog comparator 1 interrupt interrupt clear-enable bit
   type NVICICER_CLRENA21_Field is
     (
      --  write: no effect; read: Analog comparator 1 interrupt interrupt
      --  disabled
      Clrena21_0,
      --  write: disable Analog comparator 1 interrupt interrupt; read: Analog
      --  comparator 1 interrupt interrupt enabled
      Clrena21_1)
     with Size => 1;
   for NVICICER_CLRENA21_Field use
     (Clrena21_0 => 0,
      Clrena21_1 => 1);

   --  Periodic timer overflow interrupt clear-enable bit
   type NVICICER_CLRENA22_Field is
     (
      --  write: no effect; read: Periodic timer overflow interrupt disabled
      Clrena22_0,
      --  write: disable Periodic timer overflow interrupt; read: Periodic
      --  timer overflow interrupt enabled
      Clrena22_1)
     with Size => 1;
   for NVICICER_CLRENA22_Field use
     (Clrena22_0 => 0,
      Clrena22_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA23_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena23_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena23_1)
     with Size => 1;
   for NVICICER_CLRENA23_Field use
     (Clrena23_0 => 0,
      Clrena23_1 => 1);

   --  Reserved iv 40 interrupt clear-enable bit
   type NVICICER_CLRENA24_Field is
     (
      --  write: no effect; read: Reserved iv 40 interrupt disabled
      Clrena24_0,
      --  write: disable Reserved iv 40 interrupt; read: Reserved iv 40
      --  interrupt enabled
      Clrena24_1)
     with Size => 1;
   for NVICICER_CLRENA24_Field use
     (Clrena24_0 => 0,
      Clrena24_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA25_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena25_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena25_1)
     with Size => 1;
   for NVICICER_CLRENA25_Field use
     (Clrena25_0 => 0,
      Clrena25_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA26_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena26_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena26_1)
     with Size => 1;
   for NVICICER_CLRENA26_Field use
     (Clrena26_0 => 0,
      Clrena26_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA27_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena27_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena27_1)
     with Size => 1;
   for NVICICER_CLRENA27_Field use
     (Clrena27_0 => 0,
      Clrena27_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA28_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena28_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena28_1)
     with Size => 1;
   for NVICICER_CLRENA28_Field use
     (Clrena28_0 => 0,
      Clrena28_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA29_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena29_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena29_1)
     with Size => 1;
   for NVICICER_CLRENA29_Field use
     (Clrena29_0 => 0,
      Clrena29_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA30_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena30_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena30_1)
     with Size => 1;
   for NVICICER_CLRENA30_Field use
     (Clrena30_0 => 0,
      Clrena30_1 => 1);

   --  interrupt clear-enable bit
   type NVICICER_CLRENA31_Field is
     (
      --  write: no effect; read: interrupt disabled
      Clrena31_0,
      --  write: disable interrupt; read: interrupt enabled
      Clrena31_1)
     with Size => 1;
   for NVICICER_CLRENA31_Field use
     (Clrena31_0 => 0,
      Clrena31_1 => 1);

   --  Interrupt Clear Enable Register
   type NVICICER_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 0 or 4 transfer complete interrupt
      --  clear-enable bit
      CLRENA0  : NVICICER_CLRENA0_Field := NRF_SVD.NVIC.Clrena0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 1 or 5 transfer complete interrupt
      --  clear-enable bit
      CLRENA1  : NVICICER_CLRENA1_Field := NRF_SVD.NVIC.Clrena1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 2 or 6 transfer complete interrupt
      --  clear-enable bit
      CLRENA2  : NVICICER_CLRENA2_Field := NRF_SVD.NVIC.Clrena2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 3 or 7 transfer complete interrupt
      --  clear-enable bit
      CLRENA3  : NVICICER_CLRENA3_Field := NRF_SVD.NVIC.Clrena3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA error interrupt channels 0-7 interrupt clear-enable
      --  bit
      CLRENA4  : NVICICER_CLRENA4_Field := NRF_SVD.NVIC.Clrena4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  clear-enable bit
      CLRENA5  : NVICICER_CLRENA5_Field := NRF_SVD.NVIC.Clrena5_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Low-voltage detect, low-voltage warning interrupt
      --  clear-enable bit
      CLRENA6  : NVICICER_CLRENA6_Field := NRF_SVD.NVIC.Clrena6_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA7  : NVICICER_CLRENA7_Field := NRF_SVD.NVIC.Clrena7_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA8  : NVICICER_CLRENA8_Field := NRF_SVD.NVIC.Clrena8_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA9  : NVICICER_CLRENA9_Field := NRF_SVD.NVIC.Clrena9_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA10 : NVICICER_CLRENA10_Field := NRF_SVD.NVIC.Clrena10_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA11 : NVICICER_CLRENA11_Field := NRF_SVD.NVIC.Clrena11_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA12 : NVICICER_CLRENA12_Field := NRF_SVD.NVIC.Clrena12_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA13 : NVICICER_CLRENA13_Field := NRF_SVD.NVIC.Clrena13_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA14 : NVICICER_CLRENA14_Field := NRF_SVD.NVIC.Clrena14_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog-to-Digital Converter 0 interrupt clear-enable
      --  bit
      CLRENA15 : NVICICER_CLRENA15_Field := NRF_SVD.NVIC.Clrena15_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 0 interrupt interrupt clear-enable
      --  bit
      CLRENA16 : NVICICER_CLRENA16_Field := NRF_SVD.NVIC.Clrena16_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 0 interrupt clear-enable bit
      CLRENA17 : NVICICER_CLRENA17_Field := NRF_SVD.NVIC.Clrena17_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 1 interrupt clear-enable bit
      CLRENA18 : NVICICER_CLRENA18_Field := NRF_SVD.NVIC.Clrena18_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 2 interrupt clear-enable bit
      CLRENA19 : NVICICER_CLRENA19_Field := NRF_SVD.NVIC.Clrena19_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  clear-enable bit
      CLRENA20 : NVICICER_CLRENA20_Field := NRF_SVD.NVIC.Clrena20_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 1 interrupt interrupt clear-enable
      --  bit
      CLRENA21 : NVICICER_CLRENA21_Field := NRF_SVD.NVIC.Clrena21_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Periodic timer overflow interrupt clear-enable bit
      CLRENA22 : NVICICER_CLRENA22_Field := NRF_SVD.NVIC.Clrena22_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA23 : NVICICER_CLRENA23_Field := NRF_SVD.NVIC.Clrena23_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reserved iv 40 interrupt clear-enable bit
      CLRENA24 : NVICICER_CLRENA24_Field := NRF_SVD.NVIC.Clrena24_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA25 : NVICICER_CLRENA25_Field := NRF_SVD.NVIC.Clrena25_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA26 : NVICICER_CLRENA26_Field := NRF_SVD.NVIC.Clrena26_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA27 : NVICICER_CLRENA27_Field := NRF_SVD.NVIC.Clrena27_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA28 : NVICICER_CLRENA28_Field := NRF_SVD.NVIC.Clrena28_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA29 : NVICICER_CLRENA29_Field := NRF_SVD.NVIC.Clrena29_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA30 : NVICICER_CLRENA30_Field := NRF_SVD.NVIC.Clrena30_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-enable bit
      CLRENA31 : NVICICER_CLRENA31_Field := NRF_SVD.NVIC.Clrena31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICICER_Register use record
      CLRENA0  at 0 range 0 .. 0;
      CLRENA1  at 0 range 1 .. 1;
      CLRENA2  at 0 range 2 .. 2;
      CLRENA3  at 0 range 3 .. 3;
      CLRENA4  at 0 range 4 .. 4;
      CLRENA5  at 0 range 5 .. 5;
      CLRENA6  at 0 range 6 .. 6;
      CLRENA7  at 0 range 7 .. 7;
      CLRENA8  at 0 range 8 .. 8;
      CLRENA9  at 0 range 9 .. 9;
      CLRENA10 at 0 range 10 .. 10;
      CLRENA11 at 0 range 11 .. 11;
      CLRENA12 at 0 range 12 .. 12;
      CLRENA13 at 0 range 13 .. 13;
      CLRENA14 at 0 range 14 .. 14;
      CLRENA15 at 0 range 15 .. 15;
      CLRENA16 at 0 range 16 .. 16;
      CLRENA17 at 0 range 17 .. 17;
      CLRENA18 at 0 range 18 .. 18;
      CLRENA19 at 0 range 19 .. 19;
      CLRENA20 at 0 range 20 .. 20;
      CLRENA21 at 0 range 21 .. 21;
      CLRENA22 at 0 range 22 .. 22;
      CLRENA23 at 0 range 23 .. 23;
      CLRENA24 at 0 range 24 .. 24;
      CLRENA25 at 0 range 25 .. 25;
      CLRENA26 at 0 range 26 .. 26;
      CLRENA27 at 0 range 27 .. 27;
      CLRENA28 at 0 range 28 .. 28;
      CLRENA29 at 0 range 29 .. 29;
      CLRENA30 at 0 range 30 .. 30;
      CLRENA31 at 0 range 31 .. 31;
   end record;

   --  DMA channel 0 or 4 transfer complete interrupt set-pending bit
   type NVICISPR_SETPEND0_Field is
     (
      --  write: no effect; read: DMA channel 0 or 4 transfer complete
      --  interrupt is not pending
      Setpend0_0,
      --  write: changes the DMA channel 0 or 4 transfer complete interrupt
      --  state to pending; read: DMA channel 0 or 4 transfer complete
      --  interrupt is pending
      Setpend0_1)
     with Size => 1;
   for NVICISPR_SETPEND0_Field use
     (Setpend0_0 => 0,
      Setpend0_1 => 1);

   --  DMA channel 1 or 5 transfer complete interrupt set-pending bit
   type NVICISPR_SETPEND1_Field is
     (
      --  write: no effect; read: DMA channel 1 or 5 transfer complete
      --  interrupt is not pending
      Setpend1_0,
      --  write: changes the DMA channel 1 or 5 transfer complete interrupt
      --  state to pending; read: DMA channel 1 or 5 transfer complete
      --  interrupt is pending
      Setpend1_1)
     with Size => 1;
   for NVICISPR_SETPEND1_Field use
     (Setpend1_0 => 0,
      Setpend1_1 => 1);

   --  DMA channel 2 or 6 transfer complete interrupt set-pending bit
   type NVICISPR_SETPEND2_Field is
     (
      --  write: no effect; read: DMA channel 2 or 6 transfer complete
      --  interrupt is not pending
      Setpend2_0,
      --  write: changes the DMA channel 2 or 6 transfer complete interrupt
      --  state to pending; read: DMA channel 2 or 6 transfer complete
      --  interrupt is pending
      Setpend2_1)
     with Size => 1;
   for NVICISPR_SETPEND2_Field use
     (Setpend2_0 => 0,
      Setpend2_1 => 1);

   --  DMA channel 3 or 7 transfer complete interrupt set-pending bit
   type NVICISPR_SETPEND3_Field is
     (
      --  write: no effect; read: DMA channel 3 or 7 transfer complete
      --  interrupt is not pending
      Setpend3_0,
      --  write: changes the DMA channel 3 or 7 transfer complete interrupt
      --  state to pending; read: DMA channel 3 or 7 transfer complete
      --  interrupt is pending
      Setpend3_1)
     with Size => 1;
   for NVICISPR_SETPEND3_Field use
     (Setpend3_0 => 0,
      Setpend3_1 => 1);

   --  DMA error interrupt channels 0-7 interrupt set-pending bit
   type NVICISPR_SETPEND4_Field is
     (
      --  write: no effect; read: DMA error interrupt channels 0-7 interrupt is
      --  not pending
      Setpend4_0,
      --  write: changes the DMA error interrupt channels 0-7 interrupt state
      --  to pending; read: DMA error interrupt channels 0-7 interrupt is
      --  pending
      Setpend4_1)
     with Size => 1;
   for NVICISPR_SETPEND4_Field use
     (Setpend4_0 => 0,
      Setpend4_1 => 1);

   --  Single interrupt vector all sources interrupt set-pending bit
   type NVICISPR_SETPEND5_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  is not pending
      Setpend5_0,
      --  write: changes the Single interrupt vector all sources interrupt
      --  state to pending; read: Single interrupt vector all sources interrupt
      --  is pending
      Setpend5_1)
     with Size => 1;
   for NVICISPR_SETPEND5_Field use
     (Setpend5_0 => 0,
      Setpend5_1 => 1);

   --  Low-voltage detect, low-voltage warning interrupt set-pending bit
   type NVICISPR_SETPEND6_Field is
     (
      --  write: no effect; read: Low-voltage detect, low-voltage warning
      --  interrupt is not pending
      Setpend6_0,
      --  write: changes the Low-voltage detect, low-voltage warning interrupt
      --  state to pending; read: Low-voltage detect, low-voltage warning
      --  interrupt is pending
      Setpend6_1)
     with Size => 1;
   for NVICISPR_SETPEND6_Field use
     (Setpend6_0 => 0,
      Setpend6_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND7_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend7_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend7_1)
     with Size => 1;
   for NVICISPR_SETPEND7_Field use
     (Setpend7_0 => 0,
      Setpend7_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND8_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend8_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend8_1)
     with Size => 1;
   for NVICISPR_SETPEND8_Field use
     (Setpend8_0 => 0,
      Setpend8_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND9_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend9_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend9_1)
     with Size => 1;
   for NVICISPR_SETPEND9_Field use
     (Setpend9_0 => 0,
      Setpend9_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND10_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend10_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend10_1)
     with Size => 1;
   for NVICISPR_SETPEND10_Field use
     (Setpend10_0 => 0,
      Setpend10_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND11_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend11_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend11_1)
     with Size => 1;
   for NVICISPR_SETPEND11_Field use
     (Setpend11_0 => 0,
      Setpend11_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND12_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend12_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend12_1)
     with Size => 1;
   for NVICISPR_SETPEND12_Field use
     (Setpend12_0 => 0,
      Setpend12_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND13_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend13_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend13_1)
     with Size => 1;
   for NVICISPR_SETPEND13_Field use
     (Setpend13_0 => 0,
      Setpend13_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND14_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend14_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend14_1)
     with Size => 1;
   for NVICISPR_SETPEND14_Field use
     (Setpend14_0 => 0,
      Setpend14_1 => 1);

   --  Analog-to-Digital Converter 0 interrupt set-pending bit
   type NVICISPR_SETPEND15_Field is
     (
      --  write: no effect; read: Analog-to-Digital Converter 0 interrupt is
      --  not pending
      Setpend15_0,
      --  write: changes the Analog-to-Digital Converter 0 interrupt state to
      --  pending; read: Analog-to-Digital Converter 0 interrupt is pending
      Setpend15_1)
     with Size => 1;
   for NVICISPR_SETPEND15_Field use
     (Setpend15_0 => 0,
      Setpend15_1 => 1);

   --  Analog comparator 0 interrupt interrupt set-pending bit
   type NVICISPR_SETPEND16_Field is
     (
      --  write: no effect; read: Analog comparator 0 interrupt interrupt is
      --  not pending
      Setpend16_0,
      --  write: changes the Analog comparator 0 interrupt interrupt state to
      --  pending; read: Analog comparator 0 interrupt interrupt is pending
      Setpend16_1)
     with Size => 1;
   for NVICISPR_SETPEND16_Field use
     (Setpend16_0 => 0,
      Setpend16_1 => 1);

   --  FlexTimer Module 0 interrupt set-pending bit
   type NVICISPR_SETPEND17_Field is
     (
      --  write: no effect; read: FlexTimer Module 0 interrupt is not pending
      Setpend17_0,
      --  write: changes the FlexTimer Module 0 interrupt state to pending;
      --  read: FlexTimer Module 0 interrupt is pending
      Setpend17_1)
     with Size => 1;
   for NVICISPR_SETPEND17_Field use
     (Setpend17_0 => 0,
      Setpend17_1 => 1);

   --  FlexTimer Module 1 interrupt set-pending bit
   type NVICISPR_SETPEND18_Field is
     (
      --  write: no effect; read: FlexTimer Module 1 interrupt is not pending
      Setpend18_0,
      --  write: changes the FlexTimer Module 1 interrupt state to pending;
      --  read: FlexTimer Module 1 interrupt is pending
      Setpend18_1)
     with Size => 1;
   for NVICISPR_SETPEND18_Field use
     (Setpend18_0 => 0,
      Setpend18_1 => 1);

   --  FlexTimer Module 2 interrupt set-pending bit
   type NVICISPR_SETPEND19_Field is
     (
      --  write: no effect; read: FlexTimer Module 2 interrupt is not pending
      Setpend19_0,
      --  write: changes the FlexTimer Module 2 interrupt state to pending;
      --  read: FlexTimer Module 2 interrupt is pending
      Setpend19_1)
     with Size => 1;
   for NVICISPR_SETPEND19_Field use
     (Setpend19_0 => 0,
      Setpend19_1 => 1);

   --  Single interrupt vector all sources interrupt set-pending bit
   type NVICISPR_SETPEND20_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  is not pending
      Setpend20_0,
      --  write: changes the Single interrupt vector all sources interrupt
      --  state to pending; read: Single interrupt vector all sources interrupt
      --  is pending
      Setpend20_1)
     with Size => 1;
   for NVICISPR_SETPEND20_Field use
     (Setpend20_0 => 0,
      Setpend20_1 => 1);

   --  Analog comparator 1 interrupt interrupt set-pending bit
   type NVICISPR_SETPEND21_Field is
     (
      --  write: no effect; read: Analog comparator 1 interrupt interrupt is
      --  not pending
      Setpend21_0,
      --  write: changes the Analog comparator 1 interrupt interrupt state to
      --  pending; read: Analog comparator 1 interrupt interrupt is pending
      Setpend21_1)
     with Size => 1;
   for NVICISPR_SETPEND21_Field use
     (Setpend21_0 => 0,
      Setpend21_1 => 1);

   --  Periodic timer overflow interrupt set-pending bit
   type NVICISPR_SETPEND22_Field is
     (
      --  write: no effect; read: Periodic timer overflow interrupt is not
      --  pending
      Setpend22_0,
      --  write: changes the Periodic timer overflow interrupt state to
      --  pending; read: Periodic timer overflow interrupt is pending
      Setpend22_1)
     with Size => 1;
   for NVICISPR_SETPEND22_Field use
     (Setpend22_0 => 0,
      Setpend22_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND23_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend23_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend23_1)
     with Size => 1;
   for NVICISPR_SETPEND23_Field use
     (Setpend23_0 => 0,
      Setpend23_1 => 1);

   --  Reserved iv 40 interrupt set-pending bit
   type NVICISPR_SETPEND24_Field is
     (
      --  write: no effect; read: Reserved iv 40 interrupt is not pending
      Setpend24_0,
      --  write: changes the Reserved iv 40 interrupt state to pending; read:
      --  Reserved iv 40 interrupt is pending
      Setpend24_1)
     with Size => 1;
   for NVICISPR_SETPEND24_Field use
     (Setpend24_0 => 0,
      Setpend24_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND25_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend25_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend25_1)
     with Size => 1;
   for NVICISPR_SETPEND25_Field use
     (Setpend25_0 => 0,
      Setpend25_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND26_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend26_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend26_1)
     with Size => 1;
   for NVICISPR_SETPEND26_Field use
     (Setpend26_0 => 0,
      Setpend26_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND27_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend27_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend27_1)
     with Size => 1;
   for NVICISPR_SETPEND27_Field use
     (Setpend27_0 => 0,
      Setpend27_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND28_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend28_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend28_1)
     with Size => 1;
   for NVICISPR_SETPEND28_Field use
     (Setpend28_0 => 0,
      Setpend28_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND29_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend29_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend29_1)
     with Size => 1;
   for NVICISPR_SETPEND29_Field use
     (Setpend29_0 => 0,
      Setpend29_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND30_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend30_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend30_1)
     with Size => 1;
   for NVICISPR_SETPEND30_Field use
     (Setpend30_0 => 0,
      Setpend30_1 => 1);

   --  interrupt set-pending bit
   type NVICISPR_SETPEND31_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Setpend31_0,
      --  write: changes the interrupt state to pending; read: interrupt is
      --  pending
      Setpend31_1)
     with Size => 1;
   for NVICISPR_SETPEND31_Field use
     (Setpend31_0 => 0,
      Setpend31_1 => 1);

   --  Interrupt Set Pending Register
   type NVICISPR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 0 or 4 transfer complete interrupt
      --  set-pending bit
      SETPEND0  : NVICISPR_SETPEND0_Field := NRF_SVD.NVIC.Setpend0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 1 or 5 transfer complete interrupt
      --  set-pending bit
      SETPEND1  : NVICISPR_SETPEND1_Field := NRF_SVD.NVIC.Setpend1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 2 or 6 transfer complete interrupt
      --  set-pending bit
      SETPEND2  : NVICISPR_SETPEND2_Field := NRF_SVD.NVIC.Setpend2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 3 or 7 transfer complete interrupt
      --  set-pending bit
      SETPEND3  : NVICISPR_SETPEND3_Field := NRF_SVD.NVIC.Setpend3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA error interrupt channels 0-7 interrupt set-pending
      --  bit
      SETPEND4  : NVICISPR_SETPEND4_Field := NRF_SVD.NVIC.Setpend4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  set-pending bit
      SETPEND5  : NVICISPR_SETPEND5_Field := NRF_SVD.NVIC.Setpend5_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Low-voltage detect, low-voltage warning interrupt
      --  set-pending bit
      SETPEND6  : NVICISPR_SETPEND6_Field := NRF_SVD.NVIC.Setpend6_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND7  : NVICISPR_SETPEND7_Field := NRF_SVD.NVIC.Setpend7_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND8  : NVICISPR_SETPEND8_Field := NRF_SVD.NVIC.Setpend8_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND9  : NVICISPR_SETPEND9_Field := NRF_SVD.NVIC.Setpend9_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND10 : NVICISPR_SETPEND10_Field := NRF_SVD.NVIC.Setpend10_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND11 : NVICISPR_SETPEND11_Field := NRF_SVD.NVIC.Setpend11_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND12 : NVICISPR_SETPEND12_Field := NRF_SVD.NVIC.Setpend12_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND13 : NVICISPR_SETPEND13_Field := NRF_SVD.NVIC.Setpend13_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND14 : NVICISPR_SETPEND14_Field := NRF_SVD.NVIC.Setpend14_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog-to-Digital Converter 0 interrupt set-pending bit
      SETPEND15 : NVICISPR_SETPEND15_Field := NRF_SVD.NVIC.Setpend15_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 0 interrupt interrupt set-pending bit
      SETPEND16 : NVICISPR_SETPEND16_Field := NRF_SVD.NVIC.Setpend16_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 0 interrupt set-pending bit
      SETPEND17 : NVICISPR_SETPEND17_Field := NRF_SVD.NVIC.Setpend17_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 1 interrupt set-pending bit
      SETPEND18 : NVICISPR_SETPEND18_Field := NRF_SVD.NVIC.Setpend18_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 2 interrupt set-pending bit
      SETPEND19 : NVICISPR_SETPEND19_Field := NRF_SVD.NVIC.Setpend19_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  set-pending bit
      SETPEND20 : NVICISPR_SETPEND20_Field := NRF_SVD.NVIC.Setpend20_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 1 interrupt interrupt set-pending bit
      SETPEND21 : NVICISPR_SETPEND21_Field := NRF_SVD.NVIC.Setpend21_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Periodic timer overflow interrupt set-pending bit
      SETPEND22 : NVICISPR_SETPEND22_Field := NRF_SVD.NVIC.Setpend22_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND23 : NVICISPR_SETPEND23_Field := NRF_SVD.NVIC.Setpend23_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reserved iv 40 interrupt set-pending bit
      SETPEND24 : NVICISPR_SETPEND24_Field := NRF_SVD.NVIC.Setpend24_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND25 : NVICISPR_SETPEND25_Field := NRF_SVD.NVIC.Setpend25_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND26 : NVICISPR_SETPEND26_Field := NRF_SVD.NVIC.Setpend26_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND27 : NVICISPR_SETPEND27_Field := NRF_SVD.NVIC.Setpend27_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND28 : NVICISPR_SETPEND28_Field := NRF_SVD.NVIC.Setpend28_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND29 : NVICISPR_SETPEND29_Field := NRF_SVD.NVIC.Setpend29_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND30 : NVICISPR_SETPEND30_Field := NRF_SVD.NVIC.Setpend30_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt set-pending bit
      SETPEND31 : NVICISPR_SETPEND31_Field := NRF_SVD.NVIC.Setpend31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICISPR_Register use record
      SETPEND0  at 0 range 0 .. 0;
      SETPEND1  at 0 range 1 .. 1;
      SETPEND2  at 0 range 2 .. 2;
      SETPEND3  at 0 range 3 .. 3;
      SETPEND4  at 0 range 4 .. 4;
      SETPEND5  at 0 range 5 .. 5;
      SETPEND6  at 0 range 6 .. 6;
      SETPEND7  at 0 range 7 .. 7;
      SETPEND8  at 0 range 8 .. 8;
      SETPEND9  at 0 range 9 .. 9;
      SETPEND10 at 0 range 10 .. 10;
      SETPEND11 at 0 range 11 .. 11;
      SETPEND12 at 0 range 12 .. 12;
      SETPEND13 at 0 range 13 .. 13;
      SETPEND14 at 0 range 14 .. 14;
      SETPEND15 at 0 range 15 .. 15;
      SETPEND16 at 0 range 16 .. 16;
      SETPEND17 at 0 range 17 .. 17;
      SETPEND18 at 0 range 18 .. 18;
      SETPEND19 at 0 range 19 .. 19;
      SETPEND20 at 0 range 20 .. 20;
      SETPEND21 at 0 range 21 .. 21;
      SETPEND22 at 0 range 22 .. 22;
      SETPEND23 at 0 range 23 .. 23;
      SETPEND24 at 0 range 24 .. 24;
      SETPEND25 at 0 range 25 .. 25;
      SETPEND26 at 0 range 26 .. 26;
      SETPEND27 at 0 range 27 .. 27;
      SETPEND28 at 0 range 28 .. 28;
      SETPEND29 at 0 range 29 .. 29;
      SETPEND30 at 0 range 30 .. 30;
      SETPEND31 at 0 range 31 .. 31;
   end record;

   --  DMA channel 0 or 4 transfer complete interrupt clear-pending bit
   type NVICICPR_CLRPEND0_Field is
     (
      --  write: no effect; read: DMA channel 0 or 4 transfer complete
      --  interrupt is not pending
      Clrpend0_0,
      --  write: removes pending state from the DMA channel 0 or 4 transfer
      --  complete interrupt; read: DMA channel 0 or 4 transfer complete
      --  interrupt is pending
      Clrpend0_1)
     with Size => 1;
   for NVICICPR_CLRPEND0_Field use
     (Clrpend0_0 => 0,
      Clrpend0_1 => 1);

   --  DMA channel 1 or 5 transfer complete interrupt clear-pending bit
   type NVICICPR_CLRPEND1_Field is
     (
      --  write: no effect; read: DMA channel 1 or 5 transfer complete
      --  interrupt is not pending
      Clrpend1_0,
      --  write: removes pending state from the DMA channel 1 or 5 transfer
      --  complete interrupt; read: DMA channel 1 or 5 transfer complete
      --  interrupt is pending
      Clrpend1_1)
     with Size => 1;
   for NVICICPR_CLRPEND1_Field use
     (Clrpend1_0 => 0,
      Clrpend1_1 => 1);

   --  DMA channel 2 or 6 transfer complete interrupt clear-pending bit
   type NVICICPR_CLRPEND2_Field is
     (
      --  write: no effect; read: DMA channel 2 or 6 transfer complete
      --  interrupt is not pending
      Clrpend2_0,
      --  write: removes pending state from the DMA channel 2 or 6 transfer
      --  complete interrupt; read: DMA channel 2 or 6 transfer complete
      --  interrupt is pending
      Clrpend2_1)
     with Size => 1;
   for NVICICPR_CLRPEND2_Field use
     (Clrpend2_0 => 0,
      Clrpend2_1 => 1);

   --  DMA channel 3 or 7 transfer complete interrupt clear-pending bit
   type NVICICPR_CLRPEND3_Field is
     (
      --  write: no effect; read: DMA channel 3 or 7 transfer complete
      --  interrupt is not pending
      Clrpend3_0,
      --  write: removes pending state from the DMA channel 3 or 7 transfer
      --  complete interrupt; read: DMA channel 3 or 7 transfer complete
      --  interrupt is pending
      Clrpend3_1)
     with Size => 1;
   for NVICICPR_CLRPEND3_Field use
     (Clrpend3_0 => 0,
      Clrpend3_1 => 1);

   --  DMA error interrupt channels 0-7 interrupt clear-pending bit
   type NVICICPR_CLRPEND4_Field is
     (
      --  write: no effect; read: DMA error interrupt channels 0-7 interrupt is
      --  not pending
      Clrpend4_0,
      --  write: removes pending state from the DMA error interrupt channels
      --  0-7 interrupt; read: DMA error interrupt channels 0-7 interrupt is
      --  pending
      Clrpend4_1)
     with Size => 1;
   for NVICICPR_CLRPEND4_Field use
     (Clrpend4_0 => 0,
      Clrpend4_1 => 1);

   --  Single interrupt vector all sources interrupt clear-pending bit
   type NVICICPR_CLRPEND5_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  is not pending
      Clrpend5_0,
      --  write: removes pending state from the Single interrupt vector all
      --  sources interrupt; read: Single interrupt vector all sources
      --  interrupt is pending
      Clrpend5_1)
     with Size => 1;
   for NVICICPR_CLRPEND5_Field use
     (Clrpend5_0 => 0,
      Clrpend5_1 => 1);

   --  Low-voltage detect, low-voltage warning interrupt clear-pending bit
   type NVICICPR_CLRPEND6_Field is
     (
      --  write: no effect; read: Low-voltage detect, low-voltage warning
      --  interrupt is not pending
      Clrpend6_0,
      --  write: removes pending state from the Low-voltage detect, low-voltage
      --  warning interrupt; read: Low-voltage detect, low-voltage warning
      --  interrupt is pending
      Clrpend6_1)
     with Size => 1;
   for NVICICPR_CLRPEND6_Field use
     (Clrpend6_0 => 0,
      Clrpend6_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND7_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend7_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend7_1)
     with Size => 1;
   for NVICICPR_CLRPEND7_Field use
     (Clrpend7_0 => 0,
      Clrpend7_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND8_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend8_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend8_1)
     with Size => 1;
   for NVICICPR_CLRPEND8_Field use
     (Clrpend8_0 => 0,
      Clrpend8_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND9_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend9_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend9_1)
     with Size => 1;
   for NVICICPR_CLRPEND9_Field use
     (Clrpend9_0 => 0,
      Clrpend9_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND10_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend10_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend10_1)
     with Size => 1;
   for NVICICPR_CLRPEND10_Field use
     (Clrpend10_0 => 0,
      Clrpend10_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND11_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend11_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend11_1)
     with Size => 1;
   for NVICICPR_CLRPEND11_Field use
     (Clrpend11_0 => 0,
      Clrpend11_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND12_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend12_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend12_1)
     with Size => 1;
   for NVICICPR_CLRPEND12_Field use
     (Clrpend12_0 => 0,
      Clrpend12_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND13_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend13_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend13_1)
     with Size => 1;
   for NVICICPR_CLRPEND13_Field use
     (Clrpend13_0 => 0,
      Clrpend13_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND14_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend14_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend14_1)
     with Size => 1;
   for NVICICPR_CLRPEND14_Field use
     (Clrpend14_0 => 0,
      Clrpend14_1 => 1);

   --  Analog-to-Digital Converter 0 interrupt clear-pending bit
   type NVICICPR_CLRPEND15_Field is
     (
      --  write: no effect; read: Analog-to-Digital Converter 0 interrupt is
      --  not pending
      Clrpend15_0,
      --  write: removes pending state from the Analog-to-Digital Converter 0
      --  interrupt; read: Analog-to-Digital Converter 0 interrupt is pending
      Clrpend15_1)
     with Size => 1;
   for NVICICPR_CLRPEND15_Field use
     (Clrpend15_0 => 0,
      Clrpend15_1 => 1);

   --  Analog comparator 0 interrupt interrupt clear-pending bit
   type NVICICPR_CLRPEND16_Field is
     (
      --  write: no effect; read: Analog comparator 0 interrupt interrupt is
      --  not pending
      Clrpend16_0,
      --  write: removes pending state from the Analog comparator 0 interrupt
      --  interrupt; read: Analog comparator 0 interrupt interrupt is pending
      Clrpend16_1)
     with Size => 1;
   for NVICICPR_CLRPEND16_Field use
     (Clrpend16_0 => 0,
      Clrpend16_1 => 1);

   --  FlexTimer Module 0 interrupt clear-pending bit
   type NVICICPR_CLRPEND17_Field is
     (
      --  write: no effect; read: FlexTimer Module 0 interrupt is not pending
      Clrpend17_0,
      --  write: removes pending state from the FlexTimer Module 0 interrupt;
      --  read: FlexTimer Module 0 interrupt is pending
      Clrpend17_1)
     with Size => 1;
   for NVICICPR_CLRPEND17_Field use
     (Clrpend17_0 => 0,
      Clrpend17_1 => 1);

   --  FlexTimer Module 1 interrupt clear-pending bit
   type NVICICPR_CLRPEND18_Field is
     (
      --  write: no effect; read: FlexTimer Module 1 interrupt is not pending
      Clrpend18_0,
      --  write: removes pending state from the FlexTimer Module 1 interrupt;
      --  read: FlexTimer Module 1 interrupt is pending
      Clrpend18_1)
     with Size => 1;
   for NVICICPR_CLRPEND18_Field use
     (Clrpend18_0 => 0,
      Clrpend18_1 => 1);

   --  FlexTimer Module 2 interrupt clear-pending bit
   type NVICICPR_CLRPEND19_Field is
     (
      --  write: no effect; read: FlexTimer Module 2 interrupt is not pending
      Clrpend19_0,
      --  write: removes pending state from the FlexTimer Module 2 interrupt;
      --  read: FlexTimer Module 2 interrupt is pending
      Clrpend19_1)
     with Size => 1;
   for NVICICPR_CLRPEND19_Field use
     (Clrpend19_0 => 0,
      Clrpend19_1 => 1);

   --  Single interrupt vector all sources interrupt clear-pending bit
   type NVICICPR_CLRPEND20_Field is
     (
      --  write: no effect; read: Single interrupt vector all sources interrupt
      --  is not pending
      Clrpend20_0,
      --  write: removes pending state from the Single interrupt vector all
      --  sources interrupt; read: Single interrupt vector all sources
      --  interrupt is pending
      Clrpend20_1)
     with Size => 1;
   for NVICICPR_CLRPEND20_Field use
     (Clrpend20_0 => 0,
      Clrpend20_1 => 1);

   --  Analog comparator 1 interrupt interrupt clear-pending bit
   type NVICICPR_CLRPEND21_Field is
     (
      --  write: no effect; read: Analog comparator 1 interrupt interrupt is
      --  not pending
      Clrpend21_0,
      --  write: removes pending state from the Analog comparator 1 interrupt
      --  interrupt; read: Analog comparator 1 interrupt interrupt is pending
      Clrpend21_1)
     with Size => 1;
   for NVICICPR_CLRPEND21_Field use
     (Clrpend21_0 => 0,
      Clrpend21_1 => 1);

   --  Periodic timer overflow interrupt clear-pending bit
   type NVICICPR_CLRPEND22_Field is
     (
      --  write: no effect; read: Periodic timer overflow interrupt is not
      --  pending
      Clrpend22_0,
      --  write: removes pending state from the Periodic timer overflow
      --  interrupt; read: Periodic timer overflow interrupt is pending
      Clrpend22_1)
     with Size => 1;
   for NVICICPR_CLRPEND22_Field use
     (Clrpend22_0 => 0,
      Clrpend22_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND23_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend23_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend23_1)
     with Size => 1;
   for NVICICPR_CLRPEND23_Field use
     (Clrpend23_0 => 0,
      Clrpend23_1 => 1);

   --  Reserved iv 40 interrupt clear-pending bit
   type NVICICPR_CLRPEND24_Field is
     (
      --  write: no effect; read: Reserved iv 40 interrupt is not pending
      Clrpend24_0,
      --  write: removes pending state from the Reserved iv 40 interrupt; read:
      --  Reserved iv 40 interrupt is pending
      Clrpend24_1)
     with Size => 1;
   for NVICICPR_CLRPEND24_Field use
     (Clrpend24_0 => 0,
      Clrpend24_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND25_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend25_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend25_1)
     with Size => 1;
   for NVICICPR_CLRPEND25_Field use
     (Clrpend25_0 => 0,
      Clrpend25_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND26_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend26_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend26_1)
     with Size => 1;
   for NVICICPR_CLRPEND26_Field use
     (Clrpend26_0 => 0,
      Clrpend26_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND27_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend27_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend27_1)
     with Size => 1;
   for NVICICPR_CLRPEND27_Field use
     (Clrpend27_0 => 0,
      Clrpend27_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND28_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend28_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend28_1)
     with Size => 1;
   for NVICICPR_CLRPEND28_Field use
     (Clrpend28_0 => 0,
      Clrpend28_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND29_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend29_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend29_1)
     with Size => 1;
   for NVICICPR_CLRPEND29_Field use
     (Clrpend29_0 => 0,
      Clrpend29_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND30_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend30_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend30_1)
     with Size => 1;
   for NVICICPR_CLRPEND30_Field use
     (Clrpend30_0 => 0,
      Clrpend30_1 => 1);

   --  interrupt clear-pending bit
   type NVICICPR_CLRPEND31_Field is
     (
      --  write: no effect; read: interrupt is not pending
      Clrpend31_0,
      --  write: removes pending state from the interrupt; read: interrupt is
      --  pending
      Clrpend31_1)
     with Size => 1;
   for NVICICPR_CLRPEND31_Field use
     (Clrpend31_0 => 0,
      Clrpend31_1 => 1);

   --  Interrupt Clear Pending Register
   type NVICICPR_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 0 or 4 transfer complete interrupt
      --  clear-pending bit
      CLRPEND0  : NVICICPR_CLRPEND0_Field := NRF_SVD.NVIC.Clrpend0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 1 or 5 transfer complete interrupt
      --  clear-pending bit
      CLRPEND1  : NVICICPR_CLRPEND1_Field := NRF_SVD.NVIC.Clrpend1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 2 or 6 transfer complete interrupt
      --  clear-pending bit
      CLRPEND2  : NVICICPR_CLRPEND2_Field := NRF_SVD.NVIC.Clrpend2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA channel 3 or 7 transfer complete interrupt
      --  clear-pending bit
      CLRPEND3  : NVICICPR_CLRPEND3_Field := NRF_SVD.NVIC.Clrpend3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. DMA error interrupt channels 0-7 interrupt
      --  clear-pending bit
      CLRPEND4  : NVICICPR_CLRPEND4_Field := NRF_SVD.NVIC.Clrpend4_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  clear-pending bit
      CLRPEND5  : NVICICPR_CLRPEND5_Field := NRF_SVD.NVIC.Clrpend5_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Low-voltage detect, low-voltage warning interrupt
      --  clear-pending bit
      CLRPEND6  : NVICICPR_CLRPEND6_Field := NRF_SVD.NVIC.Clrpend6_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND7  : NVICICPR_CLRPEND7_Field := NRF_SVD.NVIC.Clrpend7_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND8  : NVICICPR_CLRPEND8_Field := NRF_SVD.NVIC.Clrpend8_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND9  : NVICICPR_CLRPEND9_Field := NRF_SVD.NVIC.Clrpend9_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND10 : NVICICPR_CLRPEND10_Field := NRF_SVD.NVIC.Clrpend10_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND11 : NVICICPR_CLRPEND11_Field := NRF_SVD.NVIC.Clrpend11_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND12 : NVICICPR_CLRPEND12_Field := NRF_SVD.NVIC.Clrpend12_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND13 : NVICICPR_CLRPEND13_Field := NRF_SVD.NVIC.Clrpend13_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND14 : NVICICPR_CLRPEND14_Field := NRF_SVD.NVIC.Clrpend14_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog-to-Digital Converter 0 interrupt clear-pending
      --  bit
      CLRPEND15 : NVICICPR_CLRPEND15_Field := NRF_SVD.NVIC.Clrpend15_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 0 interrupt interrupt clear-pending
      --  bit
      CLRPEND16 : NVICICPR_CLRPEND16_Field := NRF_SVD.NVIC.Clrpend16_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 0 interrupt clear-pending bit
      CLRPEND17 : NVICICPR_CLRPEND17_Field := NRF_SVD.NVIC.Clrpend17_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 1 interrupt clear-pending bit
      CLRPEND18 : NVICICPR_CLRPEND18_Field := NRF_SVD.NVIC.Clrpend18_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. FlexTimer Module 2 interrupt clear-pending bit
      CLRPEND19 : NVICICPR_CLRPEND19_Field := NRF_SVD.NVIC.Clrpend19_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Single interrupt vector all sources interrupt
      --  clear-pending bit
      CLRPEND20 : NVICICPR_CLRPEND20_Field := NRF_SVD.NVIC.Clrpend20_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Analog comparator 1 interrupt interrupt clear-pending
      --  bit
      CLRPEND21 : NVICICPR_CLRPEND21_Field := NRF_SVD.NVIC.Clrpend21_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Periodic timer overflow interrupt clear-pending bit
      CLRPEND22 : NVICICPR_CLRPEND22_Field := NRF_SVD.NVIC.Clrpend22_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND23 : NVICICPR_CLRPEND23_Field := NRF_SVD.NVIC.Clrpend23_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Reserved iv 40 interrupt clear-pending bit
      CLRPEND24 : NVICICPR_CLRPEND24_Field := NRF_SVD.NVIC.Clrpend24_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND25 : NVICICPR_CLRPEND25_Field := NRF_SVD.NVIC.Clrpend25_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND26 : NVICICPR_CLRPEND26_Field := NRF_SVD.NVIC.Clrpend26_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND27 : NVICICPR_CLRPEND27_Field := NRF_SVD.NVIC.Clrpend27_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND28 : NVICICPR_CLRPEND28_Field := NRF_SVD.NVIC.Clrpend28_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND29 : NVICICPR_CLRPEND29_Field := NRF_SVD.NVIC.Clrpend29_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND30 : NVICICPR_CLRPEND30_Field := NRF_SVD.NVIC.Clrpend30_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. interrupt clear-pending bit
      CLRPEND31 : NVICICPR_CLRPEND31_Field := NRF_SVD.NVIC.Clrpend31_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICICPR_Register use record
      CLRPEND0  at 0 range 0 .. 0;
      CLRPEND1  at 0 range 1 .. 1;
      CLRPEND2  at 0 range 2 .. 2;
      CLRPEND3  at 0 range 3 .. 3;
      CLRPEND4  at 0 range 4 .. 4;
      CLRPEND5  at 0 range 5 .. 5;
      CLRPEND6  at 0 range 6 .. 6;
      CLRPEND7  at 0 range 7 .. 7;
      CLRPEND8  at 0 range 8 .. 8;
      CLRPEND9  at 0 range 9 .. 9;
      CLRPEND10 at 0 range 10 .. 10;
      CLRPEND11 at 0 range 11 .. 11;
      CLRPEND12 at 0 range 12 .. 12;
      CLRPEND13 at 0 range 13 .. 13;
      CLRPEND14 at 0 range 14 .. 14;
      CLRPEND15 at 0 range 15 .. 15;
      CLRPEND16 at 0 range 16 .. 16;
      CLRPEND17 at 0 range 17 .. 17;
      CLRPEND18 at 0 range 18 .. 18;
      CLRPEND19 at 0 range 19 .. 19;
      CLRPEND20 at 0 range 20 .. 20;
      CLRPEND21 at 0 range 21 .. 21;
      CLRPEND22 at 0 range 22 .. 22;
      CLRPEND23 at 0 range 23 .. 23;
      CLRPEND24 at 0 range 24 .. 24;
      CLRPEND25 at 0 range 25 .. 25;
      CLRPEND26 at 0 range 26 .. 26;
      CLRPEND27 at 0 range 27 .. 27;
      CLRPEND28 at 0 range 28 .. 28;
      CLRPEND29 at 0 range 29 .. 29;
      CLRPEND30 at 0 range 30 .. 30;
      CLRPEND31 at 0 range 31 .. 31;
   end record;

   subtype NVICIPR0_PRI_0_Field is HAL.UInt2;
   subtype NVICIPR0_PRI_1_Field is HAL.UInt2;
   subtype NVICIPR0_PRI_2_Field is HAL.UInt2;
   subtype NVICIPR0_PRI_3_Field is HAL.UInt2;

   --  Interrupt Priority Register 0
   type NVICIPR0_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the DMA channel 0 or 4 transfer complete interrupt
      PRI_0          : NVICIPR0_PRI_0_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the DMA channel 1 or 5 transfer complete interrupt
      PRI_1          : NVICIPR0_PRI_1_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the DMA channel 2 or 6 transfer complete interrupt
      PRI_2          : NVICIPR0_PRI_2_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the DMA channel 3 or 7 transfer complete interrupt
      PRI_3          : NVICIPR0_PRI_3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR0_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_0          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_1          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_2          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_3          at 0 range 30 .. 31;
   end record;

   subtype NVICIPR1_PRI_4_Field is HAL.UInt2;
   subtype NVICIPR1_PRI_5_Field is HAL.UInt2;
   subtype NVICIPR1_PRI_6_Field is HAL.UInt2;
   subtype NVICIPR1_PRI_7_Field is HAL.UInt2;

   --  Interrupt Priority Register 1
   type NVICIPR1_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the DMA error interrupt channels 0-7 interrupt
      PRI_4          : NVICIPR1_PRI_4_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the Single interrupt vector all sources interrupt
      PRI_5          : NVICIPR1_PRI_5_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the Low-voltage detect, low-voltage warning interrupt
      PRI_6          : NVICIPR1_PRI_6_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_7          : NVICIPR1_PRI_7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR1_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_4          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_5          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_6          at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_7          at 0 range 30 .. 31;
   end record;

   subtype NVICIPR2_PRI_8_Field is HAL.UInt2;
   subtype NVICIPR2_PRI_9_Field is HAL.UInt2;
   subtype NVICIPR2_PRI_10_Field is HAL.UInt2;
   subtype NVICIPR2_PRI_11_Field is HAL.UInt2;

   --  Interrupt Priority Register 2
   type NVICIPR2_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_8          : NVICIPR2_PRI_8_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_9          : NVICIPR2_PRI_9_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_10         : NVICIPR2_PRI_10_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_11         : NVICIPR2_PRI_11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR2_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_8          at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_9          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_10         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_11         at 0 range 30 .. 31;
   end record;

   subtype NVICIPR3_PRI_12_Field is HAL.UInt2;
   subtype NVICIPR3_PRI_13_Field is HAL.UInt2;
   subtype NVICIPR3_PRI_14_Field is HAL.UInt2;
   subtype NVICIPR3_PRI_15_Field is HAL.UInt2;

   --  Interrupt Priority Register 3
   type NVICIPR3_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_12         : NVICIPR3_PRI_12_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_13         : NVICIPR3_PRI_13_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_14         : NVICIPR3_PRI_14_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the Analog-to-Digital Converter 0 interrupt
      PRI_15         : NVICIPR3_PRI_15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR3_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_12         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_13         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_14         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_15         at 0 range 30 .. 31;
   end record;

   subtype NVICIPR4_PRI_16_Field is HAL.UInt2;
   subtype NVICIPR4_PRI_17_Field is HAL.UInt2;
   subtype NVICIPR4_PRI_18_Field is HAL.UInt2;
   subtype NVICIPR4_PRI_19_Field is HAL.UInt2;

   --  Interrupt Priority Register 4
   type NVICIPR4_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the Analog comparator 0 interrupt interrupt
      PRI_16         : NVICIPR4_PRI_16_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the FlexTimer Module 0 interrupt
      PRI_17         : NVICIPR4_PRI_17_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the FlexTimer Module 1 interrupt
      PRI_18         : NVICIPR4_PRI_18_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the FlexTimer Module 2 interrupt
      PRI_19         : NVICIPR4_PRI_19_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR4_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_16         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_17         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_18         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_19         at 0 range 30 .. 31;
   end record;

   subtype NVICIPR5_PRI_20_Field is HAL.UInt2;
   subtype NVICIPR5_PRI_21_Field is HAL.UInt2;
   subtype NVICIPR5_PRI_22_Field is HAL.UInt2;
   subtype NVICIPR5_PRI_23_Field is HAL.UInt2;

   --  Interrupt Priority Register 5
   type NVICIPR5_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the Single interrupt vector all sources interrupt
      PRI_20         : NVICIPR5_PRI_20_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the Analog comparator 1 interrupt interrupt
      PRI_21         : NVICIPR5_PRI_21_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the Periodic timer overflow interrupt
      PRI_22         : NVICIPR5_PRI_22_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_23         : NVICIPR5_PRI_23_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR5_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_20         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_21         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_22         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_23         at 0 range 30 .. 31;
   end record;

   subtype NVICIPR6_PRI_24_Field is HAL.UInt2;
   subtype NVICIPR6_PRI_25_Field is HAL.UInt2;
   subtype NVICIPR6_PRI_26_Field is HAL.UInt2;
   subtype NVICIPR6_PRI_27_Field is HAL.UInt2;

   --  Interrupt Priority Register 6
   type NVICIPR6_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the Reserved iv 40 interrupt
      PRI_24         : NVICIPR6_PRI_24_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_25         : NVICIPR6_PRI_25_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_26         : NVICIPR6_PRI_26_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_27         : NVICIPR6_PRI_27_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR6_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_24         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_25         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_26         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_27         at 0 range 30 .. 31;
   end record;

   subtype NVICIPR7_PRI_28_Field is HAL.UInt2;
   subtype NVICIPR7_PRI_29_Field is HAL.UInt2;
   subtype NVICIPR7_PRI_30_Field is HAL.UInt2;
   subtype NVICIPR7_PRI_31_Field is HAL.UInt2;

   --  Interrupt Priority Register 7
   type NVICIPR7_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_28         : NVICIPR7_PRI_28_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_29         : NVICIPR7_PRI_29_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_30         : NVICIPR7_PRI_30_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Priority of the interrupt
      PRI_31         : NVICIPR7_PRI_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICIPR7_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRI_28         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      PRI_29         at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      PRI_30         at 0 range 22 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      PRI_31         at 0 range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Nested Vectored Interrupt Controller
   type NVIC_Peripheral is record
      --  Interrupt Set Enable Register
      NVICISER : aliased NVICISER_Register;
      --  Interrupt Clear Enable Register
      NVICICER : aliased NVICICER_Register;
      --  Interrupt Set Pending Register
      NVICISPR : aliased NVICISPR_Register;
      --  Interrupt Clear Pending Register
      NVICICPR : aliased NVICICPR_Register;
      --  Interrupt Priority Register 0
      NVICIPR0 : aliased NVICIPR0_Register;
      --  Interrupt Priority Register 1
      NVICIPR1 : aliased NVICIPR1_Register;
      --  Interrupt Priority Register 2
      NVICIPR2 : aliased NVICIPR2_Register;
      --  Interrupt Priority Register 3
      NVICIPR3 : aliased NVICIPR3_Register;
      --  Interrupt Priority Register 4
      NVICIPR4 : aliased NVICIPR4_Register;
      --  Interrupt Priority Register 5
      NVICIPR5 : aliased NVICIPR5_Register;
      --  Interrupt Priority Register 6
      NVICIPR6 : aliased NVICIPR6_Register;
      --  Interrupt Priority Register 7
      NVICIPR7 : aliased NVICIPR7_Register;
   end record
     with Volatile;

   for NVIC_Peripheral use record
      NVICISER at 16#0# range 0 .. 31;
      NVICICER at 16#80# range 0 .. 31;
      NVICISPR at 16#100# range 0 .. 31;
      NVICICPR at 16#180# range 0 .. 31;
      NVICIPR0 at 16#300# range 0 .. 31;
      NVICIPR1 at 16#304# range 0 .. 31;
      NVICIPR2 at 16#308# range 0 .. 31;
      NVICIPR3 at 16#30C# range 0 .. 31;
      NVICIPR4 at 16#310# range 0 .. 31;
      NVICIPR5 at 16#314# range 0 .. 31;
      NVICIPR6 at 16#318# range 0 .. 31;
      NVICIPR7 at 16#31C# range 0 .. 31;
   end record;

   --  Nested Vectored Interrupt Controller
   NVIC_Periph : aliased NVIC_Peripheral
     with Import, Address => System'To_Address (16#E000E100#);

end NRF_SVD.NVIC;
