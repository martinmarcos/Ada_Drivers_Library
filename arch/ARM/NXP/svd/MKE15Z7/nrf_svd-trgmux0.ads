--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.TRGMUX0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype TRGMUX_DMAMUX0_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_DMAMUX0_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_DMAMUX0_SEL2_Field is HAL.UInt6;
   subtype TRGMUX_DMAMUX0_SEL3_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_DMAMUX0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_DMAMUX0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_DMAMUX0_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_DMAMUX0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_DMAMUX0_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_DMAMUX0_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 3 Source Select
      SEL3           : TRGMUX_DMAMUX0_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_DMAMUX0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_DMAMUX0_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL3           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_EXTOUT_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_EXTOUT_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_EXTOUT_SEL2_Field is HAL.UInt6;
   subtype TRGMUX_EXTOUT_SEL3_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_EXTOUT0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_EXTOUT0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_EXTOUT_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_EXTOUT_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_EXTOUT_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_EXTOUT_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 3 Source Select
      SEL3           : TRGMUX_EXTOUT_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_EXTOUT0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_EXTOUT_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL3           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_ADC_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_ADC_SEL1_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_ADC0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_ADC0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_ADC_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_ADC_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_ADC_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_30 : HAL.UInt17 := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_ADC0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_ADC_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_CMP_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_CMP0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_CMP0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_CMP_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_CMP_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_CMP0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_CMP_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_FTM0_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_FTM0_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_FTM0_SEL2_Field is HAL.UInt6;
   subtype TRGMUX_FTM0_SEL3_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_FTM0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_FTM0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_FTM0_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_FTM0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_FTM0_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_FTM0_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 3 Source Select
      SEL3           : TRGMUX_FTM0_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_FTM0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_FTM0_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL3           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_FTM_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_FTM_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_FTM_SEL2_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_FTM1_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_FTM1_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_FTM_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_FTM_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_FTM_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_FTM_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_FTM1_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_FTM_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_PDB0_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_PDB0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_PDB0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_PDB0_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_PDB0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_PDB0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_PDB0_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_FLEXIO_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_FLEXIO_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_FLEXIO_SEL2_Field is HAL.UInt6;
   subtype TRGMUX_FLEXIO_SEL3_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_FLEXIO_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_FLEXIO_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_FLEXIO_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_FLEXIO_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_FLEXIO_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_FLEXIO_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 3 Source Select
      SEL3           : TRGMUX_FLEXIO_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_FLEXIO_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_FLEXIO_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL3           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_LPIT0_SEL0_Field is HAL.UInt6;
   subtype TRGMUX_LPIT0_SEL1_Field is HAL.UInt6;
   subtype TRGMUX_LPIT0_SEL2_Field is HAL.UInt6;
   subtype TRGMUX_LPIT0_SEL3_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_LPIT0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_LPIT0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_LPIT0_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0           : TRGMUX_LPIT0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 1 Source Select
      SEL1           : TRGMUX_LPIT0_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 2 Source Select
      SEL2           : TRGMUX_LPIT0_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Trigger MUX Input 3 Source Select
      SEL3           : TRGMUX_LPIT0_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : HAL.Bit := 16#0#;
      --  Read-only. Enable
      LK             : TRGMUX_LPIT0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_LPIT0_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL2           at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL3           at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      LK             at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_LPUART_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_LPUART0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_LPUART0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_LPUART_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_LPUART_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_LPUART0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_LPUART_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_LPI2C_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_LPI2C0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_LPI2C0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_LPI2C_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_LPI2C_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_LPI2C0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_LPI2C_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_LPSPI_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_LPSPI0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_LPSPI0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_LPSPI_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_LPSPI_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_LPSPI0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_LPSPI_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_LPTMR0_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_LPTMR0_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_LPTMR0_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_LPTMR0_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_LPTMR0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_LPTMR0_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_LPTMR0_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_TSI_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_TSI_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_TSI_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_TSI_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_TSI_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_TSI_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_TSI_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   subtype TRGMUX_PWT_SEL0_Field is HAL.UInt6;

   --  Enable
   type TRGMUX_PWT_LK_Field is
     (
      --  Register can be written.
      Lk_0,
      --  Register cannot be written until the next system Reset.
      Lk_1)
     with Size => 1;
   for TRGMUX_PWT_LK_Field use
     (Lk_0 => 0,
      Lk_1 => 1);

   --  TRGMUX Register
   type TRGMUX_PWT_Register is record
      --  Trigger MUX Input 0 Source Select
      SEL0          : TRGMUX_PWT_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Read-only. Enable
      LK            : TRGMUX_PWT_LK_Field := NRF_SVD.TRGMUX0.Lk_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRGMUX_PWT_Register use record
      SEL0          at 0 range 0 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      LK            at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Trigger MUX Control
   type TRGMUX0_Peripheral is record
      --  TRGMUX Register
      TRGMUX_DMAMUX0 : aliased TRGMUX_DMAMUX0_Register;
      --  TRGMUX Register
      TRGMUX_EXTOUT0 : aliased TRGMUX_EXTOUT_Register;
      --  TRGMUX Register
      TRGMUX_EXTOUT1 : aliased TRGMUX_EXTOUT_Register;
      --  TRGMUX Register
      TRGMUX_ADC0    : aliased TRGMUX_ADC_Register;
      --  TRGMUX Register
      TRGMUX_ADC1    : aliased TRGMUX_ADC_Register;
      --  TRGMUX Register
      TRGMUX_CMP0    : aliased TRGMUX_CMP_Register;
      --  TRGMUX Register
      TRGMUX_CMP1    : aliased TRGMUX_CMP_Register;
      --  TRGMUX Register
      TRGMUX_FTM0    : aliased TRGMUX_FTM0_Register;
      --  TRGMUX Register
      TRGMUX_FTM1    : aliased TRGMUX_FTM_Register;
      --  TRGMUX Register
      TRGMUX_FTM2    : aliased TRGMUX_FTM_Register;
      --  TRGMUX Register
      TRGMUX_PDB0    : aliased TRGMUX_PDB0_Register;
      --  TRGMUX Register
      TRGMUX_FLEXIO  : aliased TRGMUX_FLEXIO_Register;
      --  TRGMUX Register
      TRGMUX_LPIT0   : aliased TRGMUX_LPIT0_Register;
      --  TRGMUX Register
      TRGMUX_LPUART0 : aliased TRGMUX_LPUART_Register;
      --  TRGMUX Register
      TRGMUX_LPUART1 : aliased TRGMUX_LPUART_Register;
      --  TRGMUX Register
      TRGMUX_LPI2C0  : aliased TRGMUX_LPI2C_Register;
      --  TRGMUX Register
      TRGMUX_LPI2C1  : aliased TRGMUX_LPI2C_Register;
      --  TRGMUX Register
      TRGMUX_LPSPI0  : aliased TRGMUX_LPSPI_Register;
      --  TRGMUX Register
      TRGMUX_LPSPI1  : aliased TRGMUX_LPSPI_Register;
      --  TRGMUX Register
      TRGMUX_LPTMR0  : aliased TRGMUX_LPTMR0_Register;
      --  TRGMUX Register
      TRGMUX_TSI     : aliased TRGMUX_TSI_Register;
      --  TRGMUX Register
      TRGMUX_PWT     : aliased TRGMUX_PWT_Register;
   end record
     with Volatile;

   for TRGMUX0_Peripheral use record
      TRGMUX_DMAMUX0 at 16#0# range 0 .. 31;
      TRGMUX_EXTOUT0 at 16#4# range 0 .. 31;
      TRGMUX_EXTOUT1 at 16#8# range 0 .. 31;
      TRGMUX_ADC0    at 16#C# range 0 .. 31;
      TRGMUX_ADC1    at 16#10# range 0 .. 31;
      TRGMUX_CMP0    at 16#1C# range 0 .. 31;
      TRGMUX_CMP1    at 16#20# range 0 .. 31;
      TRGMUX_FTM0    at 16#28# range 0 .. 31;
      TRGMUX_FTM1    at 16#2C# range 0 .. 31;
      TRGMUX_FTM2    at 16#30# range 0 .. 31;
      TRGMUX_PDB0    at 16#38# range 0 .. 31;
      TRGMUX_FLEXIO  at 16#44# range 0 .. 31;
      TRGMUX_LPIT0   at 16#48# range 0 .. 31;
      TRGMUX_LPUART0 at 16#4C# range 0 .. 31;
      TRGMUX_LPUART1 at 16#50# range 0 .. 31;
      TRGMUX_LPI2C0  at 16#54# range 0 .. 31;
      TRGMUX_LPI2C1  at 16#58# range 0 .. 31;
      TRGMUX_LPSPI0  at 16#5C# range 0 .. 31;
      TRGMUX_LPSPI1  at 16#60# range 0 .. 31;
      TRGMUX_LPTMR0  at 16#64# range 0 .. 31;
      TRGMUX_TSI     at 16#68# range 0 .. 31;
      TRGMUX_PWT     at 16#6C# range 0 .. 31;
   end record;

   --  Trigger MUX Control
   TRGMUX0_Periph : aliased TRGMUX0_Peripheral
     with Import, Address => System'To_Address (16#40062000#);

end NRF_SVD.TRGMUX0;
