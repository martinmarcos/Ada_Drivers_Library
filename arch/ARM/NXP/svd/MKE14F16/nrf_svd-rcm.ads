--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.RCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Feature Specification Number
   type VERID_FEATURE_Field is
     (
      --  Standard feature set.
      Feature_3)
     with Size => 16;
   for VERID_FEATURE_Field use
     (Feature_3 => 3);

   subtype RCM_VERID_MINOR_Field is HAL.UInt8;
   subtype RCM_VERID_MAJOR_Field is HAL.UInt8;

   --  Version ID Register
   type RCM_VERID_Register is record
      --  Read-only. Feature Specification Number
      FEATURE : VERID_FEATURE_Field;
      --  Read-only. Minor Version Number
      MINOR   : RCM_VERID_MINOR_Field;
      --  Read-only. Major Version Number
      MAJOR   : RCM_VERID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_VERID_Register use record
      FEATURE at 0 range 0 .. 15;
      MINOR   at 0 range 16 .. 23;
      MAJOR   at 0 range 24 .. 31;
   end record;

   --  Existence of SRS[LVD] status indication feature
   type PARAM_ELVD_Field is
     (
      --  The feature is not available.
      Elvd_0,
      --  The feature is available.
      Elvd_1)
     with Size => 1;
   for PARAM_ELVD_Field use
     (Elvd_0 => 0,
      Elvd_1 => 1);

   --  Existence of SRS[LOC] status indication feature
   type PARAM_ELOC_Field is
     (
      --  The feature is not available.
      Eloc_0,
      --  The feature is available.
      Eloc_1)
     with Size => 1;
   for PARAM_ELOC_Field use
     (Eloc_0 => 0,
      Eloc_1 => 1);

   --  Existence of SRS[LOL] status indication feature
   type PARAM_ELOL_Field is
     (
      --  The feature is not available.
      Elol_0,
      --  The feature is available.
      Elol_1)
     with Size => 1;
   for PARAM_ELOL_Field use
     (Elol_0 => 0,
      Elol_1 => 1);

   --  Existence of SRS[WDOG] status indication feature
   type PARAM_EWDOG_Field is
     (
      --  The feature is not available.
      Ewdog_0,
      --  The feature is available.
      Ewdog_1)
     with Size => 1;
   for PARAM_EWDOG_Field use
     (Ewdog_0 => 0,
      Ewdog_1 => 1);

   --  Existence of SRS[PIN] status indication feature
   type PARAM_EPIN_Field is
     (
      --  The feature is not available.
      Epin_0,
      --  The feature is available.
      Epin_1)
     with Size => 1;
   for PARAM_EPIN_Field use
     (Epin_0 => 0,
      Epin_1 => 1);

   --  Existence of SRS[POR] status indication feature
   type PARAM_EPOR_Field is
     (
      --  The feature is not available.
      Epor_0,
      --  The feature is available.
      Epor_1)
     with Size => 1;
   for PARAM_EPOR_Field use
     (Epor_0 => 0,
      Epor_1 => 1);

   --  Existence of SRS[LOCKUP] status indication feature
   type PARAM_ELOCKUP_Field is
     (
      --  The feature is not available.
      Elockup_0,
      --  The feature is available.
      Elockup_1)
     with Size => 1;
   for PARAM_ELOCKUP_Field use
     (Elockup_0 => 0,
      Elockup_1 => 1);

   --  Existence of SRS[SW] status indication feature
   type PARAM_ESW_Field is
     (
      --  The feature is not available.
      Esw_0,
      --  The feature is available.
      Esw_1)
     with Size => 1;
   for PARAM_ESW_Field use
     (Esw_0 => 0,
      Esw_1 => 1);

   --  Existence of SRS[SACKERR] status indication feature
   type PARAM_ESACKERR_Field is
     (
      --  The feature is not available.
      Esackerr_0,
      --  The feature is available.
      Esackerr_1)
     with Size => 1;
   for PARAM_ESACKERR_Field use
     (Esackerr_0 => 0,
      Esackerr_1 => 1);

   --  Existence of SRS[CORE1] status indication feature
   type PARAM_ECORE1_Field is
     (
      --  The feature is not available.
      Ecore1_0,
      --  The feature is available.
      Ecore1_1)
     with Size => 1;
   for PARAM_ECORE1_Field use
     (Ecore1_0 => 0,
      Ecore1_1 => 1);

   --  Parameter Register
   type RCM_PARAM_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Existence of SRS[LVD] status indication feature
      ELVD           : PARAM_ELVD_Field;
      --  Read-only. Existence of SRS[LOC] status indication feature
      ELOC           : PARAM_ELOC_Field;
      --  Read-only. Existence of SRS[LOL] status indication feature
      ELOL           : PARAM_ELOL_Field;
      --  unspecified
      Reserved_4_4   : HAL.Bit;
      --  Read-only. Existence of SRS[WDOG] status indication feature
      EWDOG          : PARAM_EWDOG_Field;
      --  Read-only. Existence of SRS[PIN] status indication feature
      EPIN           : PARAM_EPIN_Field;
      --  Read-only. Existence of SRS[POR] status indication feature
      EPOR           : PARAM_EPOR_Field;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Existence of SRS[LOCKUP] status indication feature
      ELOCKUP        : PARAM_ELOCKUP_Field;
      --  Read-only. Existence of SRS[SW] status indication feature
      ESW            : PARAM_ESW_Field;
      --  unspecified
      Reserved_11_12 : HAL.UInt2;
      --  Read-only. Existence of SRS[SACKERR] status indication feature
      ESACKERR       : PARAM_ESACKERR_Field;
      --  unspecified
      Reserved_14_15 : HAL.UInt2;
      --  Read-only. Existence of SRS[CORE1] status indication feature
      ECORE1         : PARAM_ECORE1_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_PARAM_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ELVD           at 0 range 1 .. 1;
      ELOC           at 0 range 2 .. 2;
      ELOL           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      EWDOG          at 0 range 5 .. 5;
      EPIN           at 0 range 6 .. 6;
      EPOR           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ELOCKUP        at 0 range 9 .. 9;
      ESW            at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      ESACKERR       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ECORE1         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Low-Voltage Detect Reset or High-Voltage Detect Reset
   type SRS_LVD_Field is
     (
      --  Reset not caused by LVD trip, HVD trip or POR
      Lvd_0,
      --  Reset caused by LVD trip, HVD trip or POR
      Lvd_1)
     with Size => 1;
   for SRS_LVD_Field use
     (Lvd_0 => 0,
      Lvd_1 => 1);

   --  Loss-of-Clock Reset
   type SRS_LOC_Field is
     (
      --  Reset not caused by a loss of external clock.
      Loc_0,
      --  Reset caused by a loss of external clock.
      Loc_1)
     with Size => 1;
   for SRS_LOC_Field use
     (Loc_0 => 0,
      Loc_1 => 1);

   --  Loss-of-Lock Reset
   type SRS_LOL_Field is
     (
      --  Reset not caused by a loss of lock in the PLL/FLL
      Lol_0,
      --  Reset caused by a loss of lock in the PLL/FLL
      Lol_1)
     with Size => 1;
   for SRS_LOL_Field use
     (Lol_0 => 0,
      Lol_1 => 1);

   --  Watchdog
   type SRS_WDOG_Field is
     (
      --  Reset not caused by watchdog timeout
      Wdog_0,
      --  Reset caused by watchdog timeout
      Wdog_1)
     with Size => 1;
   for SRS_WDOG_Field use
     (Wdog_0 => 0,
      Wdog_1 => 1);

   --  External Reset Pin
   type SRS_PIN_Field is
     (
      --  Reset not caused by external reset pin
      Pin_0,
      --  Reset caused by external reset pin
      Pin_1)
     with Size => 1;
   for SRS_PIN_Field use
     (Pin_0 => 0,
      Pin_1 => 1);

   --  Power-On Reset
   type SRS_POR_Field is
     (
      --  Reset not caused by POR
      Por_0,
      --  Reset caused by POR
      Por_1)
     with Size => 1;
   for SRS_POR_Field use
     (Por_0 => 0,
      Por_1 => 1);

   --  JTAG generated reset
   type SRS_JTAG_Field is
     (
      --  Reset not caused by JTAG
      Jtag_0,
      --  Reset caused by JTAG
      Jtag_1)
     with Size => 1;
   for SRS_JTAG_Field use
     (Jtag_0 => 0,
      Jtag_1 => 1);

   --  Core Lockup
   type SRS_LOCKUP_Field is
     (
      --  Reset not caused by core LOCKUP event
      Lockup_0,
      --  Reset caused by core LOCKUP event
      Lockup_1)
     with Size => 1;
   for SRS_LOCKUP_Field use
     (Lockup_0 => 0,
      Lockup_1 => 1);

   --  Software
   type SRS_SW_Field is
     (
      --  Reset not caused by software setting of SYSRESETREQ bit
      Sw_0,
      --  Reset caused by software setting of SYSRESETREQ bit
      Sw_1)
     with Size => 1;
   for SRS_SW_Field use
     (Sw_0 => 0,
      Sw_1 => 1);

   --  MDM-AP System Reset Request
   type SRS_MDM_AP_Field is
     (
      --  Reset was not caused by host debugger system setting of the System
      --  Reset Request bit
      Mdm_Ap_0,
      --  Reset was caused by host debugger system setting of the System Reset
      --  Request bit
      Mdm_Ap_1)
     with Size => 1;
   for SRS_MDM_AP_Field use
     (Mdm_Ap_0 => 0,
      Mdm_Ap_1 => 1);

   --  Stop Acknowledge Error
   type SRS_SACKERR_Field is
     (
      --  Reset not caused by peripheral failure to acknowledge attempt to
      --  enter stop mode
      Sackerr_0,
      --  Reset caused by peripheral failure to acknowledge attempt to enter
      --  stop mode
      Sackerr_1)
     with Size => 1;
   for SRS_SACKERR_Field use
     (Sackerr_0 => 0,
      Sackerr_1 => 1);

   --  System Reset Status Register
   type RCM_SRS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Low-Voltage Detect Reset or High-Voltage Detect Reset
      LVD            : SRS_LVD_Field;
      --  Read-only. Loss-of-Clock Reset
      LOC            : SRS_LOC_Field;
      --  Read-only. Loss-of-Lock Reset
      LOL            : SRS_LOL_Field;
      --  unspecified
      Reserved_4_4   : HAL.Bit;
      --  Read-only. Watchdog
      WDOG           : SRS_WDOG_Field;
      --  Read-only. External Reset Pin
      PIN            : SRS_PIN_Field;
      --  Read-only. Power-On Reset
      POR            : SRS_POR_Field;
      --  Read-only. JTAG generated reset
      JTAG           : SRS_JTAG_Field;
      --  Read-only. Core Lockup
      LOCKUP         : SRS_LOCKUP_Field;
      --  Read-only. Software
      SW             : SRS_SW_Field;
      --  Read-only. MDM-AP System Reset Request
      MDM_AP         : SRS_MDM_AP_Field;
      --  unspecified
      Reserved_12_12 : HAL.Bit;
      --  Read-only. Stop Acknowledge Error
      SACKERR        : SRS_SACKERR_Field;
      --  unspecified
      Reserved_14_31 : HAL.UInt18;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_SRS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LVD            at 0 range 1 .. 1;
      LOC            at 0 range 2 .. 2;
      LOL            at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      WDOG           at 0 range 5 .. 5;
      PIN            at 0 range 6 .. 6;
      POR            at 0 range 7 .. 7;
      JTAG           at 0 range 8 .. 8;
      LOCKUP         at 0 range 9 .. 9;
      SW             at 0 range 10 .. 10;
      MDM_AP         at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      SACKERR        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Reset Pin Filter Select in Run and Wait Modes
   type RPC_RSTFLTSRW_Field is
     (
      --  All filtering disabled
      Rstfltsrw_0,
      --  Bus clock filter enabled for normal operation
      Rstfltsrw_1,
      --  LPO clock filter enabled for normal operation
      Rstfltsrw_2)
     with Size => 2;
   for RPC_RSTFLTSRW_Field use
     (Rstfltsrw_0 => 0,
      Rstfltsrw_1 => 1,
      Rstfltsrw_2 => 2);

   --  Reset Pin Filter Select in Stop Mode
   type RPC_RSTFLTSS_Field is
     (
      --  All filtering disabled
      Rstfltss_0,
      --  LPO clock filter enabled
      Rstfltss_1)
     with Size => 1;
   for RPC_RSTFLTSS_Field use
     (Rstfltss_0 => 0,
      Rstfltss_1 => 1);

   subtype RCM_RPC_RSTFLTSEL_Field is HAL.UInt5;

   --  Reset Pin Control register
   type RCM_RPC_Register is record
      --  Reset Pin Filter Select in Run and Wait Modes
      RSTFLTSRW      : RPC_RSTFLTSRW_Field := NRF_SVD.RCM.Rstfltsrw_0;
      --  Reset Pin Filter Select in Stop Mode
      RSTFLTSS       : RPC_RSTFLTSS_Field := NRF_SVD.RCM.Rstfltss_0;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Reset Pin Filter Bus Clock Select
      RSTFLTSEL      : RCM_RPC_RSTFLTSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_RPC_Register use record
      RSTFLTSRW      at 0 range 0 .. 1;
      RSTFLTSS       at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RSTFLTSEL      at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Boot ROM Configuration
   type MR_BOOTROM_Field is
     (
      --  Boot from Flash
      Bootrom_0,
      --  Boot from ROM due to BOOTCFG0 pin assertion / Reserved if no Boot pin
      Bootrom_1,
      --  Boot form ROM due to FOPT[7] configuration
      Bootrom_2,
      --  Boot from ROM due to both BOOTCFG0 pin assertion and FOPT[7]
      --  configuration
      Bootrom_3)
     with Size => 2;
   for MR_BOOTROM_Field use
     (Bootrom_0 => 0,
      Bootrom_1 => 1,
      Bootrom_2 => 2,
      Bootrom_3 => 3);

   --  Mode Register
   type RCM_MR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Boot ROM Configuration
      BOOTROM       : MR_BOOTROM_Field := NRF_SVD.RCM.Bootrom_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_MR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BOOTROM       at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Force ROM Boot
   type FM_FORCEROM_Field is
     (
      --  No effect
      Forcerom_0,
      --  Force boot from ROM with RCM_MR[1] set.
      Forcerom_1,
      --  Force boot from ROM with RCM_MR[2] set.
      Forcerom_2,
      --  Force boot from ROM with RCM_MR[2:1] set.
      Forcerom_3)
     with Size => 2;
   for FM_FORCEROM_Field use
     (Forcerom_0 => 0,
      Forcerom_1 => 1,
      Forcerom_2 => 2,
      Forcerom_3 => 3);

   --  Force Mode Register
   type RCM_FM_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Force ROM Boot
      FORCEROM      : FM_FORCEROM_Field := NRF_SVD.RCM.Forcerom_0;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_FM_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FORCEROM      at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Sticky Low-Voltage Detect Reset
   type SSRS_SLVD_Field is
     (
      --  Reset not caused by LVD trip or POR
      Slvd_0,
      --  Reset caused by LVD trip or POR
      Slvd_1)
     with Size => 1;
   for SSRS_SLVD_Field use
     (Slvd_0 => 0,
      Slvd_1 => 1);

   --  Sticky Loss-of-Clock Reset
   type SSRS_SLOC_Field is
     (
      --  Reset not caused by a loss of external clock.
      Sloc_0,
      --  Reset caused by a loss of external clock.
      Sloc_1)
     with Size => 1;
   for SSRS_SLOC_Field use
     (Sloc_0 => 0,
      Sloc_1 => 1);

   --  Sticky Loss-of-Lock Reset
   type SSRS_SLOL_Field is
     (
      --  Reset not caused by a loss of lock in the PLL/FLL
      Slol_0,
      --  Reset caused by a loss of lock in the PLL/FLL
      Slol_1)
     with Size => 1;
   for SSRS_SLOL_Field use
     (Slol_0 => 0,
      Slol_1 => 1);

   --  Sticky Watchdog
   type SSRS_SWDOG_Field is
     (
      --  Reset not caused by watchdog timeout
      Swdog_0,
      --  Reset caused by watchdog timeout
      Swdog_1)
     with Size => 1;
   for SSRS_SWDOG_Field use
     (Swdog_0 => 0,
      Swdog_1 => 1);

   --  Sticky External Reset Pin
   type SSRS_SPIN_Field is
     (
      --  Reset not caused by external reset pin
      Spin_0,
      --  Reset caused by external reset pin
      Spin_1)
     with Size => 1;
   for SSRS_SPIN_Field use
     (Spin_0 => 0,
      Spin_1 => 1);

   --  Sticky Power-On Reset
   type SSRS_SPOR_Field is
     (
      --  Reset not caused by POR
      Spor_0,
      --  Reset caused by POR
      Spor_1)
     with Size => 1;
   for SSRS_SPOR_Field use
     (Spor_0 => 0,
      Spor_1 => 1);

   --  Sticky JTAG generated reset
   type SSRS_SJTAG_Field is
     (
      --  Reset not caused by JTAG
      Sjtag_0,
      --  Reset caused by JTAG
      Sjtag_1)
     with Size => 1;
   for SSRS_SJTAG_Field use
     (Sjtag_0 => 0,
      Sjtag_1 => 1);

   --  Sticky Core Lockup
   type SSRS_SLOCKUP_Field is
     (
      --  Reset not caused by core LOCKUP event
      Slockup_0,
      --  Reset caused by core LOCKUP event
      Slockup_1)
     with Size => 1;
   for SSRS_SLOCKUP_Field use
     (Slockup_0 => 0,
      Slockup_1 => 1);

   --  Sticky Software
   type SSRS_SSW_Field is
     (
      --  Reset not caused by software setting of SYSRESETREQ bit
      Ssw_0,
      --  Reset caused by software setting of SYSRESETREQ bit
      Ssw_1)
     with Size => 1;
   for SSRS_SSW_Field use
     (Ssw_0 => 0,
      Ssw_1 => 1);

   --  Sticky MDM-AP System Reset Request
   type SSRS_SMDM_AP_Field is
     (
      --  Reset was not caused by host debugger system setting of the System
      --  Reset Request bit
      Smdm_Ap_0,
      --  Reset was caused by host debugger system setting of the System Reset
      --  Request bit
      Smdm_Ap_1)
     with Size => 1;
   for SSRS_SMDM_AP_Field use
     (Smdm_Ap_0 => 0,
      Smdm_Ap_1 => 1);

   --  Sticky Stop Acknowledge Error
   type SSRS_SSACKERR_Field is
     (
      --  Reset not caused by peripheral failure to acknowledge attempt to
      --  enter stop mode
      Ssackerr_0,
      --  Reset caused by peripheral failure to acknowledge attempt to enter
      --  stop mode
      Ssackerr_1)
     with Size => 1;
   for SSRS_SSACKERR_Field use
     (Ssackerr_0 => 0,
      Ssackerr_1 => 1);

   --  Sticky System Reset Status Register
   type RCM_SSRS_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Low-Voltage Detect Reset
      SLVD           : SSRS_SLVD_Field := NRF_SVD.RCM.Slvd_1;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Loss-of-Clock Reset
      SLOC           : SSRS_SLOC_Field := NRF_SVD.RCM.Sloc_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Loss-of-Lock Reset
      SLOL           : SSRS_SLOL_Field := NRF_SVD.RCM.Slol_0;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Watchdog
      SWDOG          : SSRS_SWDOG_Field := NRF_SVD.RCM.Swdog_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky External Reset Pin
      SPIN           : SSRS_SPIN_Field := NRF_SVD.RCM.Spin_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Power-On Reset
      SPOR           : SSRS_SPOR_Field := NRF_SVD.RCM.Spor_1;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky JTAG generated reset
      SJTAG          : SSRS_SJTAG_Field := NRF_SVD.RCM.Sjtag_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Core Lockup
      SLOCKUP        : SSRS_SLOCKUP_Field := NRF_SVD.RCM.Slockup_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Software
      SSW            : SSRS_SSW_Field := NRF_SVD.RCM.Ssw_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky MDM-AP System Reset Request
      SMDM_AP        : SSRS_SMDM_AP_Field := NRF_SVD.RCM.Smdm_Ap_0;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Sticky Stop Acknowledge Error
      SSACKERR       : SSRS_SSACKERR_Field := NRF_SVD.RCM.Ssackerr_0;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_SSRS_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SLVD           at 0 range 1 .. 1;
      SLOC           at 0 range 2 .. 2;
      SLOL           at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      SWDOG          at 0 range 5 .. 5;
      SPIN           at 0 range 6 .. 6;
      SPOR           at 0 range 7 .. 7;
      SJTAG          at 0 range 8 .. 8;
      SLOCKUP        at 0 range 9 .. 9;
      SSW            at 0 range 10 .. 10;
      SMDM_AP        at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      SSACKERR       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Reset Delay Time
   type SRIE_DELAY_Field is
     (
      --  10 LPO cycles
      Delay_0,
      --  34 LPO cycles
      Delay_1,
      --  130 LPO cycles
      Delay_2,
      --  514 LPO cycles
      Delay_3)
     with Size => 2;
   for SRIE_DELAY_Field use
     (Delay_0 => 0,
      Delay_1 => 1,
      Delay_2 => 2,
      Delay_3 => 3);

   --  Loss-of-Clock Interrupt
   type SRIE_LOC_Field is
     (
      --  Interrupt disabled.
      Loc_0,
      --  Interrupt enabled.
      Loc_1)
     with Size => 1;
   for SRIE_LOC_Field use
     (Loc_0 => 0,
      Loc_1 => 1);

   --  Loss-of-Lock Interrupt
   type SRIE_LOL_Field is
     (
      --  Interrupt disabled.
      Lol_0,
      --  Interrupt enabled.
      Lol_1)
     with Size => 1;
   for SRIE_LOL_Field use
     (Lol_0 => 0,
      Lol_1 => 1);

   --  Watchdog Interrupt
   type SRIE_WDOG_Field is
     (
      --  Interrupt disabled.
      Wdog_0,
      --  Interrupt enabled.
      Wdog_1)
     with Size => 1;
   for SRIE_WDOG_Field use
     (Wdog_0 => 0,
      Wdog_1 => 1);

   --  External Reset Pin Interrupt
   type SRIE_PIN_Field is
     (
      --  Reset not caused by external reset pin
      Pin_0,
      --  Reset caused by external reset pin
      Pin_1)
     with Size => 1;
   for SRIE_PIN_Field use
     (Pin_0 => 0,
      Pin_1 => 1);

   --  Global Interrupt Enable
   type SRIE_GIE_Field is
     (
      --  All interrupt sources disabled.
      Gie_0,
      --  All interrupt sources enabled. Note that the individual
      --  interrupt-enable bits still need to be set to generate interrupts.
      Gie_1)
     with Size => 1;
   for SRIE_GIE_Field use
     (Gie_0 => 0,
      Gie_1 => 1);

   --  JTAG generated reset
   type SRIE_JTAG_Field is
     (
      --  Interrupt disabled.
      Jtag_0,
      --  Interrupt enabled.
      Jtag_1)
     with Size => 1;
   for SRIE_JTAG_Field use
     (Jtag_0 => 0,
      Jtag_1 => 1);

   --  Core Lockup Interrupt
   type SRIE_LOCKUP_Field is
     (
      --  Interrupt disabled.
      Lockup_0,
      --  Interrupt enabled.
      Lockup_1)
     with Size => 1;
   for SRIE_LOCKUP_Field use
     (Lockup_0 => 0,
      Lockup_1 => 1);

   --  Software Interrupt
   type SRIE_SW_Field is
     (
      --  Interrupt disabled.
      Sw_0,
      --  Interrupt enabled.
      Sw_1)
     with Size => 1;
   for SRIE_SW_Field use
     (Sw_0 => 0,
      Sw_1 => 1);

   --  MDM-AP System Reset Request
   type SRIE_MDM_AP_Field is
     (
      --  Interrupt disabled.
      Mdm_Ap_0,
      --  Interrupt enabled.
      Mdm_Ap_1)
     with Size => 1;
   for SRIE_MDM_AP_Field use
     (Mdm_Ap_0 => 0,
      Mdm_Ap_1 => 1);

   --  Stop Acknowledge Error Interrupt
   type SRIE_SACKERR_Field is
     (
      --  Interrupt disabled.
      Sackerr_0,
      --  Interrupt enabled.
      Sackerr_1)
     with Size => 1;
   for SRIE_SACKERR_Field use
     (Sackerr_0 => 0,
      Sackerr_1 => 1);

   --  System Reset Interrupt Enable Register
   type RCM_SRIE_Register is record
      --  Reset Delay Time
      DELAY_k        : SRIE_DELAY_Field := NRF_SVD.RCM.Delay_0;
      --  Loss-of-Clock Interrupt
      LOC            : SRIE_LOC_Field := NRF_SVD.RCM.Loc_0;
      --  Loss-of-Lock Interrupt
      LOL            : SRIE_LOL_Field := NRF_SVD.RCM.Lol_0;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Watchdog Interrupt
      WDOG           : SRIE_WDOG_Field := NRF_SVD.RCM.Wdog_0;
      --  External Reset Pin Interrupt
      PIN            : SRIE_PIN_Field := NRF_SVD.RCM.Pin_0;
      --  Global Interrupt Enable
      GIE            : SRIE_GIE_Field := NRF_SVD.RCM.Gie_0;
      --  JTAG generated reset
      JTAG           : SRIE_JTAG_Field := NRF_SVD.RCM.Jtag_0;
      --  Core Lockup Interrupt
      LOCKUP         : SRIE_LOCKUP_Field := NRF_SVD.RCM.Lockup_0;
      --  Software Interrupt
      SW             : SRIE_SW_Field := NRF_SVD.RCM.Sw_0;
      --  MDM-AP System Reset Request
      MDM_AP         : SRIE_MDM_AP_Field := NRF_SVD.RCM.Mdm_Ap_0;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Stop Acknowledge Error Interrupt
      SACKERR        : SRIE_SACKERR_Field := NRF_SVD.RCM.Sackerr_0;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCM_SRIE_Register use record
      DELAY_k        at 0 range 0 .. 1;
      LOC            at 0 range 2 .. 2;
      LOL            at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      WDOG           at 0 range 5 .. 5;
      PIN            at 0 range 6 .. 6;
      GIE            at 0 range 7 .. 7;
      JTAG           at 0 range 8 .. 8;
      LOCKUP         at 0 range 9 .. 9;
      SW             at 0 range 10 .. 10;
      MDM_AP         at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      SACKERR        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset Control Module
   type RCM_Peripheral is record
      --  Version ID Register
      VERID : aliased RCM_VERID_Register;
      --  Parameter Register
      PARAM : aliased RCM_PARAM_Register;
      --  System Reset Status Register
      SRS   : aliased RCM_SRS_Register;
      --  Reset Pin Control register
      RPC   : aliased RCM_RPC_Register;
      --  Mode Register
      MR    : aliased RCM_MR_Register;
      --  Force Mode Register
      FM    : aliased RCM_FM_Register;
      --  Sticky System Reset Status Register
      SSRS  : aliased RCM_SSRS_Register;
      --  System Reset Interrupt Enable Register
      SRIE  : aliased RCM_SRIE_Register;
   end record
     with Volatile;

   for RCM_Peripheral use record
      VERID at 16#0# range 0 .. 31;
      PARAM at 16#4# range 0 .. 31;
      SRS   at 16#8# range 0 .. 31;
      RPC   at 16#C# range 0 .. 31;
      MR    at 16#10# range 0 .. 31;
      FM    at 16#14# range 0 .. 31;
      SSRS  at 16#18# range 0 .. 31;
      SRIE  at 16#1C# range 0 .. 31;
   end record;

   --  Reset Control Module
   RCM_Periph : aliased RCM_Peripheral
     with Import, Address => System'To_Address (16#4007F000#);

end NRF_SVD.RCM;
