--  This spec has been automatically generated from MKE18F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Specification Number
   type VERID_FEATURE_Field is
     (
      --  Standard features implemented
      Feature_0)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_0 => 0);

   subtype SMC_VERID_MINOR_Field is HAL.UInt8;
   subtype SMC_VERID_MAJOR_Field is HAL.UInt8;

   --  SMC Version ID Register
   type SMC_VERID_Register is record
      --  Read-only. Feature Specification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : SMC_VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : SMC_VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   --  Existence of HSRUN feature
   type PARAM_EHSRUN_Field is
     (
      --  The feature is not available.
      Ehsrun_0,
      --  The feature is available.
      Ehsrun_1)
     with Size => 1;
   for PARAM_EHSRUN_Field use
     (Ehsrun_0 => 0,
      Ehsrun_1 => 1);

   --  Existence of LLS feature
   type PARAM_ELLS_Field is
     (
      --  The feature is not available.
      Ells_0,
      --  The feature is available.
      Ells_1)
     with Size => 1;
   for PARAM_ELLS_Field use
     (Ells_0 => 0,
      Ells_1 => 1);

   --  Existence of LLS2 feature
   type PARAM_ELLS2_Field is
     (
      --  The feature is not available.
      Ells2_0,
      --  The feature is available.
      Ells2_1)
     with Size => 1;
   for PARAM_ELLS2_Field use
     (Ells2_0 => 0,
      Ells2_1 => 1);

   --  Existence of VLLS0 feature
   type PARAM_EVLLS0_Field is
     (
      --  The feature is not available.
      Evlls0_0,
      --  The feature is available.
      Evlls0_1)
     with Size => 1;
   for PARAM_EVLLS0_Field use
     (Evlls0_0 => 0,
      Evlls0_1 => 1);

   --  SMC Parameter Register
   type SMC_PARAM_Register is record
      --  Read-only. Existence of HSRUN feature
      EHSRUN        : PARAM_EHSRUN_Field;
      --  unspecified
      Reserved_1_2  : HAL.UInt2;
      --  Read-only. Existence of LLS feature
      ELLS          : PARAM_ELLS_Field;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Existence of LLS2 feature
      ELLS2         : PARAM_ELLS2_Field;
      --  Read-only. Existence of VLLS0 feature
      EVLLS0        : PARAM_EVLLS0_Field;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_PARAM_Register use record
      EHSRUN        at 0 range 0 .. 0;
      Reserved_1_2  at 0 range 1 .. 2;
      ELLS          at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      ELLS2         at 0 range 5 .. 5;
      EVLLS0        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Allow Very-Low-Power Modes
   type PMPROT_AVLP_Field is
     (
      --  VLPR, VLPW, and VLPS are not allowed.
      Avlp_0,
      --  VLPR, VLPW, and VLPS are allowed.
      Avlp_1)
     with Size => 1;
   for PMPROT_AVLP_Field use
     (Avlp_0 => 0,
      Avlp_1 => 1);

   --  Allow High Speed Run mode
   type PMPROT_AHSRUN_Field is
     (
      --  HSRUN is not allowed
      Ahsrun_0,
      --  HSRUN is allowed
      Ahsrun_1)
     with Size => 1;
   for PMPROT_AHSRUN_Field use
     (Ahsrun_0 => 0,
      Ahsrun_1 => 1);

   --  Power Mode Protection register
   type SMC_PMPROT_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5 := 16#0#;
      --  Allow Very-Low-Power Modes
      AVLP          : PMPROT_AVLP_Field := NRF_SVD.SMC.Avlp_0;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Allow High Speed Run mode
      AHSRUN        : PMPROT_AHSRUN_Field := NRF_SVD.SMC.Ahsrun_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_PMPROT_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      AVLP          at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      AHSRUN        at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Stop Mode Control
   type PMCTRL_STOPM_Field is
     (
      --  Normal Stop (STOP)
      Stopm_0,
      --  Very-Low-Power Stop (VLPS)
      Stopm_2,
      --  Reseved
      Stopm_6)
     with Size => 3;
   for PMCTRL_STOPM_Field use
     (Stopm_0 => 0,
      Stopm_2 => 2,
      Stopm_6 => 6);

   --  Stop Aborted
   type PMCTRL_STOPA_Field is
     (
      --  The previous stop mode entry was successful.
      Stopa_0,
      --  The previous stop mode entry was aborted.
      Stopa_1)
     with Size => 1;
   for PMCTRL_STOPA_Field use
     (Stopa_0 => 0,
      Stopa_1 => 1);

   --  Run Mode Control
   type PMCTRL_RUNM_Field is
     (
      --  Normal Run mode (RUN)
      Runm_0,
      --  Very-Low-Power Run mode (VLPR)
      Runm_2,
      --  High Speed Run mode (HSRUN)
      Runm_3)
     with Size => 2;
   for PMCTRL_RUNM_Field use
     (Runm_0 => 0,
      Runm_2 => 2,
      Runm_3 => 3);

   --  Power Mode Control register
   type SMC_PMCTRL_Register is record
      --  Stop Mode Control
      STOPM         : PMCTRL_STOPM_Field := NRF_SVD.SMC.Stopm_0;
      --  Read-only. Stop Aborted
      STOPA         : PMCTRL_STOPA_Field := NRF_SVD.SMC.Stopa_0;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Run Mode Control
      RUNM          : PMCTRL_RUNM_Field := NRF_SVD.SMC.Runm_0;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_PMCTRL_Register use record
      STOPM         at 0 range 0 .. 2;
      STOPA         at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      RUNM          at 0 range 5 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Partial Stop Option
   type STOPCTRL_PSTOPO_Field is
     (
      --  STOP - Normal Stop mode
      Pstopo_0,
      --  PSTOP1 - Partial Stop with both system and bus clocks disabled
      Pstopo_1,
      --  PSTOP2 - Partial Stop with system clock disabled and bus clock
      --  enabled
      Pstopo_2)
     with Size => 2;
   for STOPCTRL_PSTOPO_Field use
     (Pstopo_0 => 0,
      Pstopo_1 => 1,
      Pstopo_2 => 2);

   --  Stop Control Register
   type SMC_STOPCTRL_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#3#;
      --  Partial Stop Option
      PSTOPO        : STOPCTRL_PSTOPO_Field := NRF_SVD.SMC.Pstopo_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_STOPCTRL_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      PSTOPO        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SMC_PMSTAT_PMSTAT_Field is HAL.UInt8;

   --  Power Mode Status register
   type SMC_PMSTAT_Register is record
      --  Read-only. Power Mode Status
      PMSTAT        : SMC_PMSTAT_PMSTAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMC_PMSTAT_Register use record
      PMSTAT        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Mode Controller
   type SMC_Peripheral is record
      --  SMC Version ID Register
      VERID    : aliased SMC_VERID_Register;
      --  SMC Parameter Register
      PARAM    : aliased SMC_PARAM_Register;
      --  Power Mode Protection register
      PMPROT   : aliased SMC_PMPROT_Register;
      --  Power Mode Control register
      PMCTRL   : aliased SMC_PMCTRL_Register;
      --  Stop Control Register
      STOPCTRL : aliased SMC_STOPCTRL_Register;
      --  Power Mode Status register
      PMSTAT   : aliased SMC_PMSTAT_Register;
   end record
     with Volatile;

   for SMC_Peripheral use record
      VERID    at 16#0# range 0 .. 31;
      PARAM    at 16#4# range 0 .. 31;
      PMPROT   at 16#8# range 0 .. 31;
      PMCTRL   at 16#C# range 0 .. 31;
      STOPCTRL at 16#10# range 0 .. 31;
      PMSTAT   at 16#14# range 0 .. 31;
   end record;

   --  System Mode Controller
   SMC_Periph : aliased SMC_Peripheral
     with Import, Address => System'To_Address (16#4007E000#);

end NRF_SVD.SMC;
