--  This spec has been automatically generated from ATSAM4E16E.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog Comparator Controller
package SAM_SVD.ACC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ACC_CR_Register is record
      --  Write-only. SoftWare ReSeT
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  SELection for MINUS comparator input
   type MR_SELMINUS_Field is
     (
      --  SelectTS
      Ts,
      --  Select ADVREF
      Advref,
      --  Select DAC0
      Dac0,
      --  Select DAC1
      Dac1,
      --  Select AD0
      Ad0,
      --  Select AD1
      Ad1,
      --  Select AD2
      Ad2,
      --  Select AD3
      Ad3)
     with Size => 3;
   for MR_SELMINUS_Field use
     (Ts => 0,
      Advref => 1,
      Dac0 => 2,
      Dac1 => 3,
      Ad0 => 4,
      Ad1 => 5,
      Ad2 => 6,
      Ad3 => 7);

   --  SELection for PLUS comparator input
   type MR_SELPLUS_Field is
     (
      --  Select AD0
      Ad0,
      --  Select AD1
      Ad1,
      --  Select AD2
      Ad2,
      --  Select AD3
      Ad3,
      --  Select AD4
      Ad4,
      --  Select AD5
      Ad5,
      --  Select AD6
      Ad6,
      --  Select AD7
      Ad7)
     with Size => 3;
   for MR_SELPLUS_Field use
     (Ad0 => 0,
      Ad1 => 1,
      Ad2 => 2,
      Ad3 => 3,
      Ad4 => 4,
      Ad5 => 5,
      Ad6 => 6,
      Ad7 => 7);

   --  Analog Comparator ENable
   type MR_ACEN_Field is
     (
      --  Analog Comparator Disabled.
      Dis,
      --  Analog Comparator Enabled.
      En)
     with Size => 1;
   for MR_ACEN_Field use
     (Dis => 0,
      En => 1);

   --  EDGE TYPe
   type MR_EDGETYP_Field is
     (
      --  only rising edge of comparator output
      Rising,
      --  falling edge of comparator output
      Falling,
      --  any edge of comparator output
      Any)
     with Size => 2;
   for MR_EDGETYP_Field use
     (Rising => 0,
      Falling => 1,
      Any => 2);

   --  INVert comparator output
   type MR_INV_Field is
     (
      --  Analog Comparator output is directly processed.
      Dis,
      --  Analog Comparator output is inverted prior to being processed.
      En)
     with Size => 1;
   for MR_INV_Field use
     (Dis => 0,
      En => 1);

   --  SELection of Fault Source
   type MR_SELFS_Field is
     (
      --  the CF flag is used to drive the FAULT output.
      Cf,
      --  the output of the Analog Comparator flag is used to drive the FAULT
      --  output.
      Output)
     with Size => 1;
   for MR_SELFS_Field use
     (Cf => 0,
      Output => 1);

   --  Fault Enable
   type MR_FE_Field is
     (
      --  the FAULT output is tied to 0.
      Dis,
      --  the FAULT output is driven by the signal defined by SELFS.
      En)
     with Size => 1;
   for MR_FE_Field use
     (Dis => 0,
      En => 1);

   --  Mode Register
   type ACC_MR_Register is record
      --  SELection for MINUS comparator input
      SELMINUS       : MR_SELMINUS_Field := SAM_SVD.ACC.Ts;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  SELection for PLUS comparator input
      SELPLUS        : MR_SELPLUS_Field := SAM_SVD.ACC.Ad0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Analog Comparator ENable
      ACEN           : MR_ACEN_Field := SAM_SVD.ACC.Dis;
      --  EDGE TYPe
      EDGETYP        : MR_EDGETYP_Field := SAM_SVD.ACC.Rising;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  INVert comparator output
      INV            : MR_INV_Field := SAM_SVD.ACC.Dis;
      --  SELection of Fault Source
      SELFS          : MR_SELFS_Field := SAM_SVD.ACC.Cf;
      --  Fault Enable
      FE             : MR_FE_Field := SAM_SVD.ACC.Dis;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_MR_Register use record
      SELMINUS       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SELPLUS        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ACEN           at 0 range 8 .. 8;
      EDGETYP        at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      INV            at 0 range 12 .. 12;
      SELFS          at 0 range 13 .. 13;
      FE             at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Interrupt Enable Register
   type ACC_IER_Register is record
      --  Write-only. Comparison Edge
      CE            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IER_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type ACC_IDR_Register is record
      --  Write-only. Comparison Edge
      CE            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IDR_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type ACC_IMR_Register is record
      --  Read-only. Comparison Edge
      CE            : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IMR_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type ACC_ISR_Register is record
      --  Read-only. Comparison Edge
      CE            : Boolean;
      --  Read-only. Synchronized Comparator Output
      SCO           : Boolean;
      --  unspecified
      Reserved_2_30 : HAL.UInt29;
      --  Read-only.
      MASK          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_ISR_Register use record
      CE            at 0 range 0 .. 0;
      SCO           at 0 range 1 .. 1;
      Reserved_2_30 at 0 range 2 .. 30;
      MASK          at 0 range 31 .. 31;
   end record;

   --  Current SELection
   type ACR_ISEL_Field is
     (
      --  low power option.
      Lopw,
      --  high speed option.
      Hisp)
     with Size => 1;
   for ACR_ISEL_Field use
     (Lopw => 0,
      Hisp => 1);

   subtype ACC_ACR_HYST_Field is HAL.UInt2;

   --  Analog Control Register
   type ACC_ACR_Register is record
      --  Current SELection
      ISEL          : ACR_ISEL_Field := SAM_SVD.ACC.Lopw;
      --  HYSTeresis selection
      HYST          : ACC_ACR_HYST_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_ACR_Register use record
      ISEL          at 0 range 0 .. 0;
      HYST          at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ACC_WPMR_WPKEY_Field is HAL.UInt24;

   --  Write Protect Mode Register
   type ACC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : ACC_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   --  Write Protect Status Register
   type ACC_WPSR_Register is record
      --  Read-only. Write PROTection ERRor
      WPROTERR      : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_WPSR_Register use record
      WPROTERR      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Comparator Controller
   type ACC_Peripheral is record
      --  Control Register
      CR   : aliased ACC_CR_Register;
      --  Mode Register
      MR   : aliased ACC_MR_Register;
      --  Interrupt Enable Register
      IER  : aliased ACC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased ACC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased ACC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased ACC_ISR_Register;
      --  Analog Control Register
      ACR  : aliased ACC_ACR_Register;
      --  Write Protect Mode Register
      WPMR : aliased ACC_WPMR_Register;
      --  Write Protect Status Register
      WPSR : aliased ACC_WPSR_Register;
   end record
     with Volatile;

   for ACC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#24# range 0 .. 31;
      IDR  at 16#28# range 0 .. 31;
      IMR  at 16#2C# range 0 .. 31;
      ISR  at 16#30# range 0 .. 31;
      ACR  at 16#94# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
   end record;

   --  Analog Comparator Controller
   ACC_Periph : aliased ACC_Peripheral
     with Import, Address => ACC_Base;

end SAM_SVD.ACC;
