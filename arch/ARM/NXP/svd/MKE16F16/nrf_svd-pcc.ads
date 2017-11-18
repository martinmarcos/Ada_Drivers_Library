--  This spec has been automatically generated from MKE16F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Clock Gate Control
   type PCC_DMA0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_DMA0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_DMA0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_DMA0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_DMA0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_DMA0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_DMA0_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_DMA0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_DMA0_CGC_Field := NRF_SVD.PCC.Cgc_1;
      --  Read-only. Enable
      PR            : PCC_DMA0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_DMA0_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_MPU_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_MPU_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_MPU_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_MPU_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_MPU_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_MPU_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_MPU_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_MPU_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_MPU_CGC_Field := NRF_SVD.PCC.Cgc_1;
      --  Read-only. Enable
      PR            : PCC_MPU_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_MPU_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_FLASH_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_FLASH_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_FLASH_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_FLASH_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_FLASH_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_FLASH_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_FLASH_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_FLASH_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_FLASH_CGC_Field := NRF_SVD.PCC.Cgc_1;
      --  Read-only. Enable
      PR            : PCC_FLASH_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_FLASH_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_DMAMUX0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_DMAMUX0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_DMAMUX0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_DMAMUX0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_DMAMUX0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_DMAMUX0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_DMAMUX0_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_DMAMUX0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_DMAMUX0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_DMAMUX0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_DMAMUX0_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_CAN0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_CAN0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_CAN0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_CAN0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_CAN0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_CAN0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_CAN_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_CAN0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_CAN0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_CAN0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_CAN_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_FLEXTMR3_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_FLEXTMR3_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_FLEXTMR3_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_FLEXTMR3_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_FLEXTMR3_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_FLEXTMR3_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_FLEXTMR3_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_FLEXTMR3_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_FLEXTMR_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_FLEXTMR3_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_FLEXTMR3_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_FLEXTMR3_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_FLEXTMR3_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_FLEXTMR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_ADC1_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_ADC1_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_ADC1_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_ADC1_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_ADC1_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_ADC1_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_ADC1_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_ADC1_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_ADC_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_ADC1_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_ADC1_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_ADC1_CGC_Field := NRF_SVD.PCC.Cgc_1;
      --  Read-only. Enable
      PR             : PCC_ADC1_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_ADC_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_LPSPI0_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_LPSPI0_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_LPSPI0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_LPSPI0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_LPSPI0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_LPSPI0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_LPSPI0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_LPSPI0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_LPSPI_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_LPSPI0_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_LPSPI0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_LPSPI0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_LPSPI0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_LPSPI_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PDB1_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PDB1_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PDB1_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PDB1_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PDB1_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PDB1_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PDB_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PDB1_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PDB1_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PDB1_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PDB_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_CRC_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_CRC_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_CRC_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_CRC_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_CRC_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_CRC_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_CRC_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_CRC_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_CRC_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_CRC_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_CRC_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_LPIT0_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_LPIT0_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_LPIT0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_LPIT0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_LPIT0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_LPIT0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_LPIT0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_LPIT0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_LPIT0_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_LPIT0_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_LPIT0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_LPIT0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_LPIT0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_LPIT0_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_RTC_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_RTC_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_RTC_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_RTC_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_RTC_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_RTC_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_RTC_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_RTC_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_RTC_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_RTC_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_RTC_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_DAC0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_DAC0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_DAC0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_DAC0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_DAC0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_DAC0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_DAC0_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_DAC0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_DAC0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_DAC0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_DAC0_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Divider Select
   type PCC_LPTMR0_PCD_Field is
     (
      --  Divide by 1 (pass-through, no clock divide).
      Pcd_0,
      --  Divide by 2.
      Pcd_1,
      --  Divide by 3.
      Pcd_2,
      --  Divide by 4.
      Pcd_3,
      --  Divide by 5.
      Pcd_4,
      --  Divide by 6.
      Pcd_5,
      --  Divide by 7.
      Pcd_6,
      --  Divide by 8.
      Pcd_7)
     with Size => 3;
   for PCC_LPTMR0_PCD_Field use
     (Pcd_0 => 0,
      Pcd_1 => 1,
      Pcd_2 => 2,
      Pcd_3 => 3,
      Pcd_4 => 4,
      Pcd_5 => 5,
      Pcd_6 => 6,
      Pcd_7 => 7);

   --  Peripheral Clock Divider Fraction
   type PCC_LPTMR0_FRAC_Field is
     (
      --  Fractional value is 0.
      Frac_0,
      --  Fractional value is 1.
      Frac_1)
     with Size => 1;
   for PCC_LPTMR0_FRAC_Field use
     (Frac_0 => 0,
      Frac_1 => 1);

   --  Peripheral Clock Source Select
   type PCC_LPTMR0_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_LPTMR0_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_LPTMR0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_LPTMR0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_LPTMR0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_LPTMR0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_LPTMR0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_LPTMR0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_LPTMR0_Register is record
      --  Peripheral Clock Divider Select
      PCD            : PCC_LPTMR0_PCD_Field := NRF_SVD.PCC.Pcd_0;
      --  Peripheral Clock Divider Fraction
      FRAC           : PCC_LPTMR0_FRAC_Field := NRF_SVD.PCC.Frac_0;
      --  unspecified
      Reserved_4_23  : HAL.UInt20 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_LPTMR0_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_LPTMR0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_LPTMR0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_LPTMR0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_LPTMR0_Register use record
      PCD            at 0 range 0 .. 2;
      FRAC           at 0 range 3 .. 3;
      Reserved_4_23  at 0 range 4 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PORTA_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PORTA_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PORTA_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PORTA_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PORTA_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PORTA_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PORTA_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PORTA_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PORTA_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PORTA_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PORTA_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PORTB_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PORTB_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PORTB_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PORTB_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PORTB_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PORTB_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PORTB_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PORTB_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PORTB_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PORTB_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PORTB_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PORTC_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PORTC_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PORTC_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PORTC_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PORTC_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PORTC_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PORTC_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PORTC_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PORTC_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PORTC_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PORTC_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PORTD_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PORTD_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PORTD_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PORTD_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PORTD_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PORTD_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PORTD_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PORTD_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PORTD_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PORTD_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PORTD_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PORTE_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PORTE_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PORTE_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PORTE_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PORTE_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PORTE_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PORTE_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PORTE_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PORTE_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PORTE_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PORTE_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_PWT_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_PWT_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_PWT_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_PWT_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_PWT_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_PWT_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_PWT_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_PWT_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_PWT_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_PWT_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_PWT_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_FLEXIO_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_FLEXIO_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_FLEXIO_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_FLEXIO_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_FLEXIO_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_FLEXIO_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_FLEXIO_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_FLEXIO_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_FLEXIO_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_FLEXIO_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_FLEXIO_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_FLEXIO_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_FLEXIO_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_FLEXIO_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_OSC32_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_OSC32_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_OSC32_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_OSC32_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_OSC32_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_OSC32_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_OSC32_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_OSC32_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_OSC32_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_OSC32_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_OSC32_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_EWM_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_EWM_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_EWM_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_EWM_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_EWM_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_EWM_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_EWM_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_EWM_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_EWM_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_EWM_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_EWM_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_LPI2C0_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_LPI2C0_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_LPI2C0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_LPI2C0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_LPI2C0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_LPI2C0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_LPI2C0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_LPI2C0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_LPI2C_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_LPI2C0_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_LPI2C0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_LPI2C0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_LPI2C0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_LPI2C_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Peripheral Clock Source Select
   type PCC_LPUART0_PCS_Field is
     (
      --  Clock is off (or test clock is enabled).
      Pcs_0,
      --  OSCCLK - System Oscillator Platform Clock(scg_sosc_plat_clk).
      Pcs_1,
      --  SCGIRCLK - Slow IRC Clock(scg_sirc_plat_clk), (maximum is 8MHz).
      Pcs_2,
      --  SCGFIRCLK - Fast IRC Clock(scg_firc_plat_clk), (maximum is 48MHz).
      Pcs_3,
      --  SCGPCLK System PLL clock(scg_spll_plat_clk).
      Pcs_6)
     with Size => 3;
   for PCC_LPUART0_PCS_Field use
     (Pcs_0 => 0,
      Pcs_1 => 1,
      Pcs_2 => 2,
      Pcs_3 => 3,
      Pcs_6 => 6);

   --  Clock Gate Control
   type PCC_LPUART0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_LPUART0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_LPUART0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_LPUART0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_LPUART0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_LPUART0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_LPUART_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Peripheral Clock Source Select
      PCS            : PCC_LPUART0_PCS_Field := NRF_SVD.PCC.Pcs_0;
      --  unspecified
      Reserved_27_28 : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE          : PCC_LPUART0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC            : PCC_LPUART0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR             : PCC_LPUART0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_LPUART_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      PCS            at 0 range 24 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      INUSE          at 0 range 29 .. 29;
      CGC            at 0 range 30 .. 30;
      PR             at 0 range 31 .. 31;
   end record;

   --  Clock Gate Control
   type PCC_CMP0_INUSE_Field is
     (
      --  Peripheral is not being used.
      Inuse_0,
      --  Peripheral is being used. Software cannot modify the existing
      --  clocking configuration.
      Inuse_1)
     with Size => 1;
   for PCC_CMP0_INUSE_Field use
     (Inuse_0 => 0,
      Inuse_1 => 1);

   --  Clock Control
   type PCC_CMP0_CGC_Field is
     (
      --  Clock disabled
      Cgc_0,
      --  Clock enabled
      Cgc_1)
     with Size => 1;
   for PCC_CMP0_CGC_Field use
     (Cgc_0 => 0,
      Cgc_1 => 1);

   --  Enable
   type PCC_CMP0_PR_Field is
     (
      --  Peripheral is not present.
      Pr_0,
      --  Peripheral is present.
      Pr_1)
     with Size => 1;
   for PCC_CMP0_PR_Field use
     (Pr_0 => 0,
      Pr_1 => 1);

   --  PCC Register
   type PCC_CMP_Register is record
      --  unspecified
      Reserved_0_28 : HAL.UInt29 := 16#0#;
      --  Read-only. Clock Gate Control
      INUSE         : PCC_CMP0_INUSE_Field := NRF_SVD.PCC.Inuse_0;
      --  Clock Control
      CGC           : PCC_CMP0_CGC_Field := NRF_SVD.PCC.Cgc_0;
      --  Read-only. Enable
      PR            : PCC_CMP0_PR_Field := NRF_SVD.PCC.Pr_1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCC_CMP_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      INUSE         at 0 range 29 .. 29;
      CGC           at 0 range 30 .. 30;
      PR            at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PCC
   type PCC_Peripheral is record
      --  PCC Register
      PCC_DMA0     : aliased PCC_DMA0_Register;
      --  PCC Register
      PCC_MPU      : aliased PCC_MPU_Register;
      --  PCC Register
      PCC_FLASH    : aliased PCC_FLASH_Register;
      --  PCC Register
      PCC_DMAMUX0  : aliased PCC_DMAMUX0_Register;
      --  PCC Register
      PCC_CAN0     : aliased PCC_CAN_Register;
      --  PCC Register
      PCC_CAN1     : aliased PCC_CAN_Register;
      --  PCC Register
      PCC_FLEXTMR3 : aliased PCC_FLEXTMR_Register;
      --  PCC Register
      PCC_ADC1     : aliased PCC_ADC_Register;
      --  PCC Register
      PCC_LPSPI0   : aliased PCC_LPSPI_Register;
      --  PCC Register
      PCC_LPSPI1   : aliased PCC_LPSPI_Register;
      --  PCC Register
      PCC_PDB1     : aliased PCC_PDB_Register;
      --  PCC Register
      PCC_CRC      : aliased PCC_CRC_Register;
      --  PCC Register
      PCC_PDB2     : aliased PCC_PDB_Register;
      --  PCC Register
      PCC_PDB0     : aliased PCC_PDB_Register;
      --  PCC Register
      PCC_LPIT0    : aliased PCC_LPIT0_Register;
      --  PCC Register
      PCC_FLEXTMR0 : aliased PCC_FLEXTMR_Register;
      --  PCC Register
      PCC_FLEXTMR1 : aliased PCC_FLEXTMR_Register;
      --  PCC Register
      PCC_FLEXTMR2 : aliased PCC_FLEXTMR_Register;
      --  PCC Register
      PCC_ADC0     : aliased PCC_ADC_Register;
      --  PCC Register
      PCC_ADC2     : aliased PCC_ADC_Register;
      --  PCC Register
      PCC_RTC      : aliased PCC_RTC_Register;
      --  PCC Register
      PCC_DAC0     : aliased PCC_DAC0_Register;
      --  PCC Register
      PCC_LPTMR0   : aliased PCC_LPTMR0_Register;
      --  PCC Register
      PCC_PORTA    : aliased PCC_PORTA_Register;
      --  PCC Register
      PCC_PORTB    : aliased PCC_PORTB_Register;
      --  PCC Register
      PCC_PORTC    : aliased PCC_PORTC_Register;
      --  PCC Register
      PCC_PORTD    : aliased PCC_PORTD_Register;
      --  PCC Register
      PCC_PORTE    : aliased PCC_PORTE_Register;
      --  PCC Register
      PCC_PWT      : aliased PCC_PWT_Register;
      --  PCC Register
      PCC_FLEXIO   : aliased PCC_FLEXIO_Register;
      --  PCC Register
      PCC_OSC32    : aliased PCC_OSC32_Register;
      --  PCC Register
      PCC_EWM      : aliased PCC_EWM_Register;
      --  PCC Register
      PCC_LPI2C0   : aliased PCC_LPI2C_Register;
      --  PCC Register
      PCC_LPI2C1   : aliased PCC_LPI2C_Register;
      --  PCC Register
      PCC_LPUART0  : aliased PCC_LPUART_Register;
      --  PCC Register
      PCC_LPUART1  : aliased PCC_LPUART_Register;
      --  PCC Register
      PCC_LPUART2  : aliased PCC_LPUART_Register;
      --  PCC Register
      PCC_CMP0     : aliased PCC_CMP_Register;
      --  PCC Register
      PCC_CMP1     : aliased PCC_CMP_Register;
      --  PCC Register
      PCC_CMP2     : aliased PCC_CMP_Register;
   end record
     with Volatile;

   for PCC_Peripheral use record
      PCC_DMA0     at 16#20# range 0 .. 31;
      PCC_MPU      at 16#34# range 0 .. 31;
      PCC_FLASH    at 16#80# range 0 .. 31;
      PCC_DMAMUX0  at 16#84# range 0 .. 31;
      PCC_CAN0     at 16#90# range 0 .. 31;
      PCC_CAN1     at 16#94# range 0 .. 31;
      PCC_FLEXTMR3 at 16#98# range 0 .. 31;
      PCC_ADC1     at 16#9C# range 0 .. 31;
      PCC_LPSPI0   at 16#B0# range 0 .. 31;
      PCC_LPSPI1   at 16#B4# range 0 .. 31;
      PCC_PDB1     at 16#C4# range 0 .. 31;
      PCC_CRC      at 16#C8# range 0 .. 31;
      PCC_PDB2     at 16#CC# range 0 .. 31;
      PCC_PDB0     at 16#D8# range 0 .. 31;
      PCC_LPIT0    at 16#DC# range 0 .. 31;
      PCC_FLEXTMR0 at 16#E0# range 0 .. 31;
      PCC_FLEXTMR1 at 16#E4# range 0 .. 31;
      PCC_FLEXTMR2 at 16#E8# range 0 .. 31;
      PCC_ADC0     at 16#EC# range 0 .. 31;
      PCC_ADC2     at 16#F0# range 0 .. 31;
      PCC_RTC      at 16#F4# range 0 .. 31;
      PCC_DAC0     at 16#FC# range 0 .. 31;
      PCC_LPTMR0   at 16#100# range 0 .. 31;
      PCC_PORTA    at 16#124# range 0 .. 31;
      PCC_PORTB    at 16#128# range 0 .. 31;
      PCC_PORTC    at 16#12C# range 0 .. 31;
      PCC_PORTD    at 16#130# range 0 .. 31;
      PCC_PORTE    at 16#134# range 0 .. 31;
      PCC_PWT      at 16#158# range 0 .. 31;
      PCC_FLEXIO   at 16#168# range 0 .. 31;
      PCC_OSC32    at 16#180# range 0 .. 31;
      PCC_EWM      at 16#184# range 0 .. 31;
      PCC_LPI2C0   at 16#198# range 0 .. 31;
      PCC_LPI2C1   at 16#19C# range 0 .. 31;
      PCC_LPUART0  at 16#1A8# range 0 .. 31;
      PCC_LPUART1  at 16#1AC# range 0 .. 31;
      PCC_LPUART2  at 16#1B0# range 0 .. 31;
      PCC_CMP0     at 16#1CC# range 0 .. 31;
      PCC_CMP1     at 16#1D0# range 0 .. 31;
      PCC_CMP2     at 16#1D4# range 0 .. 31;
   end record;

   --  PCC
   PCC_Periph : aliased PCC_Peripheral
     with Import, Address => System'To_Address (16#40065000#);

end NRF_SVD.PCC;
