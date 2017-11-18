--  This spec has been automatically generated from XMC1100.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.VADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Module Disable Request Bit
   type CLC_DISR_Field is
     (
      --  On request: enable the module clock
      VALUE1,
      --  Off request: stop the module clock
      VALUE2)
     with Size => 1;
   for CLC_DISR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Module Disable Status Bit
   type CLC_DISS_Field is
     (
      --  Module clock is enabled
      VALUE1,
      --  Off: module is not clocked
      VALUE2)
     with Size => 1;
   for CLC_DISS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sleep Mode Enable Control
   type CLC_EDIS_Field is
     (
      --  Sleep mode request is enabled and functional
      VALUE1,
      --  Module disregards the sleep mode control signal
      VALUE2)
     with Size => 1;
   for CLC_EDIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clock Control Register
   type CLC_Register is record
      --  Module Disable Request Bit
      DISR          : CLC_DISR_Field := NRF_SVD.VADC.VALUE2;
      --  Read-only. Module Disable Status Bit
      DISS          : CLC_DISS_Field := NRF_SVD.VADC.VALUE2;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Sleep Mode Enable Control
      EDIS          : CLC_EDIS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLC_Register use record
      DISR          at 0 range 0 .. 0;
      DISS          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      EDIS          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  Module Identification Register
   type ID_Register is record
      --  Read-only. Module Revision
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   --  Trigger Set for OTGB0/1
   type OCS_TGS_Field is
     (
      --  No Trigger Set output
      VALUE1,
      --  Trigger Set 1: TS16_SSIG, input sample signals
      VALUE2)
     with Size => 2;
   for OCS_TGS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  OTGB0/1 Bus Select
   type OCS_TGB_Field is
     (
      --  Trigger Set is output on OTGB0
      VALUE1,
      --  Trigger Set is output on OTGB1
      VALUE2)
     with Size => 1;
   for OCS_TGB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  OCDS Suspend Control
   type OCS_SUS_Field is
     (
      --  Will not suspend
      VALUE1,
      --  Hard suspend: Clock is switched off immediately.
      VALUE2,
      --  Soft suspend mode 0: Stop conversions after the currently running one
      --  is completed and its result has been stored. No change for the
      --  arbiter.
      VALUE3,
      --  Soft suspend mode 1: Stop conversions after the currently running one
      --  is completed and its result has been stored. Stop arbiter after the
      --  current arbitration round.
      VALUE4)
     with Size => 4;
   for OCS_SUS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Suspend State
   type OCS_SUSSTA_Field is
     (
      --  Module is not (yet) suspended
      VALUE1,
      --  Module is suspended
      VALUE2)
     with Size => 1;
   for OCS_SUSSTA_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  OCDS Control and Status Register
   type OCS_Register is record
      --  Trigger Set for OTGB0/1
      TGS            : OCS_TGS_Field := NRF_SVD.VADC.VALUE1;
      --  OTGB0/1 Bus Select
      TGB            : OCS_TGB_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. TGS, TGB Write Protection
      TG_P           : Boolean := False;
      --  unspecified
      Reserved_4_23  : HAL.UInt20 := 16#0#;
      --  OCDS Suspend Control
      SUS            : OCS_SUS_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. SUS Write Protection
      SUS_P          : Boolean := False;
      --  Read-only. Suspend State
      SUSSTA         : OCS_SUSSTA_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCS_Register use record
      TGS            at 0 range 0 .. 1;
      TGB            at 0 range 2 .. 2;
      TG_P           at 0 range 3 .. 3;
      Reserved_4_23  at 0 range 4 .. 23;
      SUS            at 0 range 24 .. 27;
      SUS_P          at 0 range 28 .. 28;
      SUSSTA         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Divider Factor for the Analog Internal Clock
   type GLOBCFG_DIVA_Field is
     (
      --  fADCI = fADC
      VALUE1,
      --  fADCI = fADC / 2
      VALUE2,
      --  fADCI = fADC / 3
      VALUE3,
      --  fADCI = fADC / 32
      VALUE4)
     with Size => 5;
   for GLOBCFG_DIVA_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 31);

   --  Double Clock for the MSB Conversion
   type GLOBCFG_DCMSB_Field is
     (
      --  1 clock cycles for the MSB (standard)
      VALUE1,
      --  2 clock cycles for the MSB (fADCI > 20 MHz)
      VALUE2)
     with Size => 1;
   for GLOBCFG_DCMSB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Divider Factor for the Arbiter Clock
   type GLOBCFG_DIVD_Field is
     (
      --  fADCD = fADC
      VALUE1,
      --  fADCD = fADC / 2
      VALUE2,
      --  fADCD = fADC / 3
      VALUE3,
      --  fADCD = fADC / 4
      VALUE4)
     with Size => 2;
   for GLOBCFG_DIVD_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Write Control for Divider Parameters
   type GLOBCFG_DIVWC_Field is
     (
      --  No write access to divider parameters
      VALUE1,
      --  Bitfields DIVA, DCMSB, DIVD can be written
      VALUE2)
     with Size => 1;
   for GLOBCFG_DIVWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Disable Post-Calibration
   type GLOBCFG_DPCAL0_Field is
     (
      --  Automatic post-calibration after each conversion of group x
      VALUE1,
      --  No post-calibration
      VALUE2)
     with Size => 1;
   for GLOBCFG_DPCAL0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  GLOBCFG_DPCAL array
   type GLOBCFG_DPCAL_Field_Array is array (0 .. 1) of GLOBCFG_DPCAL0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for GLOBCFG_DPCAL
   type GLOBCFG_DPCAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DPCAL as a value
            Val : HAL.UInt2;
         when True =>
            --  DPCAL as an array
            Arr : GLOBCFG_DPCAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for GLOBCFG_DPCAL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Start-Up Calibration
   type GLOBCFG_SUCAL_Field is
     (
      --  No action
      VALUE1,
      --  Initiate the start-up calibration phase (indication in bit
      --  GxARBCFG.CAL)
      VALUE2)
     with Size => 1;
   for GLOBCFG_SUCAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Configuration Register
   type GLOBCFG_Register is record
      --  Divider Factor for the Analog Internal Clock
      DIVA           : GLOBCFG_DIVA_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Double Clock for the MSB Conversion
      DCMSB          : GLOBCFG_DCMSB_Field := NRF_SVD.VADC.VALUE1;
      --  Divider Factor for the Arbiter Clock
      DIVD           : GLOBCFG_DIVD_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. Write Control for Divider Parameters
      DIVWC          : GLOBCFG_DIVWC_Field := NRF_SVD.VADC.VALUE1;
      --  Disable Post-Calibration
      DPCAL          : GLOBCFG_DPCAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Write-only. Start-Up Calibration
      SUCAL          : GLOBCFG_SUCAL_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBCFG_Register use record
      DIVA           at 0 range 0 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      DCMSB          at 0 range 7 .. 7;
      DIVD           at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      DIVWC          at 0 range 15 .. 15;
      DPCAL          at 0 range 16 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      SUCAL          at 0 range 31 .. 31;
   end record;

   subtype GLOBICLASS_STCS_Field is HAL.UInt5;

   --  Conversion Mode for Standard Conversions
   type GLOBICLASS_CMS_Field is
     (
      --  12-bit conversion
      VALUE1,
      --  10-bit conversion
      VALUE2,
      --  8-bit conversion
      VALUE3,
      --  10-bit fast compare mode
      VALUE6)
     with Size => 3;
   for GLOBICLASS_CMS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE6 => 5);

   --  Input Class Register, Global
   type GLOBICLASS_Register is record
      --  Sample Time Control for Standard Conversions
      STCS           : GLOBICLASS_STCS_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Conversion Mode for Standard Conversions
      CMS            : GLOBICLASS_CMS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBICLASS_Register use record
      STCS           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMS            at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Input Class Register, Global
   type GLOBICLASS_Registers is array (0 .. 1) of GLOBICLASS_Register
     with Volatile;

   --  Source Event (Background)
   type GLOBEFLAG_SEVGLB_Field is
     (
      --  No source event
      VALUE1,
      --  A source event has occurred
      VALUE2)
     with Size => 1;
   for GLOBEFLAG_SEVGLB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Result Event
   type GLOBEFLAG_REVGLB_Field is
     (
      --  No result event
      VALUE1,
      --  New result was stored in register GLOBRES
      VALUE2)
     with Size => 1;
   for GLOBEFLAG_REVGLB_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Source Event (Background)
   type GLOBEFLAG_SEVGLBCLR_Field is
     (
      --  No action
      VALUE1,
      --  Clear the source event flag SEVGLB
      VALUE2)
     with Size => 1;
   for GLOBEFLAG_SEVGLBCLR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Global Result Event
   type GLOBEFLAG_REVGLBCLR_Field is
     (
      --  No action
      VALUE1,
      --  Clear the result event flag REVGLB
      VALUE2)
     with Size => 1;
   for GLOBEFLAG_REVGLBCLR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Event Flag Register
   type GLOBEFLAG_Register is record
      --  Source Event (Background)
      SEVGLB         : GLOBEFLAG_SEVGLB_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Global Result Event
      REVGLB         : GLOBEFLAG_REVGLB_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. Clear Source Event (Background)
      SEVGLBCLR      : GLOBEFLAG_SEVGLBCLR_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. Clear Global Result Event
      REVGLBCLR      : GLOBEFLAG_REVGLBCLR_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBEFLAG_Register use record
      SEVGLB         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      REVGLB         at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      SEVGLBCLR      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      REVGLBCLR      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Service Request Node Pointer Backgr. Source
   type GLOBEVNP_SEV0NP_Field is
     (
      --  Select shared service request line 0 of common service request group
      --  0
      VALUE1,
      --  Select shared service request line 3 of common service request group
      --  0
      VALUE2)
     with Size => 4;
   for GLOBEVNP_SEV0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3);

   --  Service Request Node Pointer Global Result
   type GLOBEVNP_REV0NP_Field is
     (
      --  Select shared service request line 0 of common service request group
      --  0
      VALUE1,
      --  Select shared service request line 3 of common service request group
      --  0
      VALUE2,
      --  Select shared service request line 0 of common service request group
      --  1
      VALUE3,
      --  Select shared service request line 3 of common service request group
      --  1
      VALUE4)
     with Size => 4;
   for GLOBEVNP_REV0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Global Event Node Pointer Register
   type GLOBEVNP_Register is record
      --  Service Request Node Pointer Backgr. Source
      SEV0NP         : GLOBEVNP_SEV0NP_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Service Request Node Pointer Global Result
      REV0NP         : GLOBEVNP_REV0NP_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBEVNP_Register use record
      SEV0NP         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      REV0NP         at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel Selection Group x
   type BRSSEL_CHSELG0_Field is
     (
      --  Ignore this channel
      VALUE1,
      --  This channel is part of the scan sequence
      VALUE2)
     with Size => 1;
   for BRSSEL_CHSELG0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BRSSEL_CHSELG array
   type BRSSEL_CHSELG_Field_Array is array (0 .. 7) of BRSSEL_CHSELG0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for BRSSEL_CHSELG
   type BRSSEL_CHSELG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHSELG as a value
            Val : HAL.UInt8;
         when True =>
            --  CHSELG as an array
            Arr : BRSSEL_CHSELG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BRSSEL_CHSELG_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Background Request Source Channel Select Register
   type BRSSEL_Register is record
      --  Channel Selection Group x
      CHSELG        : BRSSEL_CHSELG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRSSEL_Register use record
      CHSELG        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Background Request Source Channel Select Register
   type BRSSEL_Registers is array (0 .. 1) of BRSSEL_Register
     with Volatile;

   --  Channels Pending Group x
   type BRSPND_CHPNDG0_Field is
     (
      --  Ignore this channel
      VALUE1,
      --  Request conversion of this channel
      VALUE2)
     with Size => 1;
   for BRSPND_CHPNDG0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BRSPND_CHPNDG array
   type BRSPND_CHPNDG_Field_Array is array (0 .. 7) of BRSPND_CHPNDG0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for BRSPND_CHPNDG
   type BRSPND_CHPNDG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHPNDG as a value
            Val : HAL.UInt8;
         when True =>
            --  CHPNDG as an array
            Arr : BRSPND_CHPNDG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for BRSPND_CHPNDG_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Background Request Source Pending Register
   type BRSPND_Register is record
      --  Channels Pending Group x
      CHPNDG        : BRSPND_CHPNDG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRSPND_Register use record
      CHPNDG        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Background Request Source Pending Register
   type BRSPND_Registers is array (0 .. 1) of BRSPND_Register
     with Volatile;

   --  Source-specific Result Register
   type BRSCTRL_SRCRESREG_Field is
     (
      --  Use GxCHCTRy.RESREG to select a group result register
      VALUE1,
      --  Store result in group result register GxRES1
      VALUE2,
      --  Store result in group result register GxRES15
      VALUE3)
     with Size => 4;
   for BRSCTRL_SRCRESREG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 15);

   subtype BRSCTRL_XTSEL_Field is HAL.UInt4;

   --  Trigger Operating Mode
   type BRSCTRL_XTMODE_Field is
     (
      --  No external trigger
      VALUE1,
      --  Trigger event upon a falling edge
      VALUE2,
      --  Trigger event upon a rising edge
      VALUE3,
      --  Trigger event upon any edge
      VALUE4)
     with Size => 2;
   for BRSCTRL_XTMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Write Control for Trigger Configuration
   type BRSCTRL_XTWC_Field is
     (
      --  No write access to trigger configuration
      VALUE1,
      --  Bitfields XTMODE and XTSEL can be written
      VALUE2)
     with Size => 1;
   for BRSCTRL_XTWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype BRSCTRL_GTSEL_Field is HAL.UInt4;

   --  Write Control for Gate Configuration
   type BRSCTRL_GTWC_Field is
     (
      --  No write access to gate configuration
      VALUE1,
      --  Bitfield GTSEL can be written
      VALUE2)
     with Size => 1;
   for BRSCTRL_GTWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Background Request Source Control Register
   type BRSCTRL_Register is record
      --  Source-specific Result Register
      SRCRESREG      : BRSCTRL_SRCRESREG_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  External Trigger Input Selection
      XTSEL          : BRSCTRL_XTSEL_Field := 16#0#;
      --  Read-only. External Trigger Level
      XTLVL          : Boolean := False;
      --  Trigger Operating Mode
      XTMODE         : BRSCTRL_XTMODE_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Write Control for Trigger Configuration
      XTWC           : BRSCTRL_XTWC_Field := NRF_SVD.VADC.VALUE1;
      --  Gate Input Selection
      GTSEL          : BRSCTRL_GTSEL_Field := 16#0#;
      --  Read-only. Gate Input Level
      GTLVL          : Boolean := False;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Write-only. Write Control for Gate Configuration
      GTWC           : BRSCTRL_GTWC_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRSCTRL_Register use record
      SRCRESREG      at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      XTSEL          at 0 range 8 .. 11;
      XTLVL          at 0 range 12 .. 12;
      XTMODE         at 0 range 13 .. 14;
      XTWC           at 0 range 15 .. 15;
      GTSEL          at 0 range 16 .. 19;
      GTLVL          at 0 range 20 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      GTWC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Enable Gate
   type BRSMR_ENGT_Field is
     (
      --  No conversion requests are issued
      VALUE1,
      --  Conversion requests are issued if at least one pending bit is set
      VALUE2,
      --  Conversion requests are issued if at least one pending bit is set and
      --  REQGTx = 1.
      VALUE3,
      --  Conversion requests are issued if at least one pending bit is set and
      --  REQGTx = 0.
      VALUE4)
     with Size => 2;
   for BRSMR_ENGT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Enable External Trigger
   type BRSMR_ENTR_Field is
     (
      --  External trigger disabled
      VALUE1,
      --  The selected edge at the selected trigger input signal REQTR
      --  generates the load event
      VALUE2)
     with Size => 1;
   for BRSMR_ENTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Source Interrupt
   type BRSMR_ENSI_Field is
     (
      --  No request source interrupt
      VALUE1,
      --  A request source interrupt is generated upon a request source event
      --  (last pending conversion is finished)
      VALUE2)
     with Size => 1;
   for BRSMR_ENSI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Autoscan Enable
   type BRSMR_SCAN_Field is
     (
      --  No autoscan
      VALUE1,
      --  Autoscan functionality enabled: a request source event automatically
      --  generates a load event
      VALUE2)
     with Size => 1;
   for BRSMR_SCAN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Autoscan Source Load Event Mode
   type BRSMR_LDM_Field is
     (
      --  Overwrite mode: Copy all bits from the select registers to the
      --  pending registers upon a load event
      VALUE1,
      --  Combine mode: Set all pending bits that are set in the select
      --  registers upon a load event (logic OR)
      VALUE2)
     with Size => 1;
   for BRSMR_LDM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Request Gate Level
   type BRSMR_REQGT_Field is
     (
      --  The gate input is low
      VALUE1,
      --  The gate input is high
      VALUE2)
     with Size => 1;
   for BRSMR_REQGT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Pending Bits
   type BRSMR_CLRPND_Field is
     (
      --  No action
      VALUE1,
      --  The bits in registers BRSPNDx are cleared
      VALUE2)
     with Size => 1;
   for BRSMR_CLRPND_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Generate Load Event
   type BRSMR_LDEV_Field is
     (
      --  No action
      VALUE1,
      --  A load event is generated
      VALUE2)
     with Size => 1;
   for BRSMR_LDEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Repeat Disable
   type BRSMR_RPTDIS_Field is
     (
      --  A cancelled conversion is repeated
      VALUE1,
      --  A cancelled conversion is discarded
      VALUE2)
     with Size => 1;
   for BRSMR_RPTDIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Background Request Source Mode Register
   type BRSMR_Register is record
      --  Enable Gate
      ENGT           : BRSMR_ENGT_Field := NRF_SVD.VADC.VALUE1;
      --  Enable External Trigger
      ENTR           : BRSMR_ENTR_Field := NRF_SVD.VADC.VALUE1;
      --  Enable Source Interrupt
      ENSI           : BRSMR_ENSI_Field := NRF_SVD.VADC.VALUE1;
      --  Autoscan Enable
      SCAN           : BRSMR_SCAN_Field := NRF_SVD.VADC.VALUE1;
      --  Autoscan Source Load Event Mode
      LDM            : BRSMR_LDM_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Read-only. Request Gate Level
      REQGT          : BRSMR_REQGT_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Clear Pending Bits
      CLRPND         : BRSMR_CLRPND_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Generate Load Event
      LDEV           : BRSMR_LDEV_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Repeat Disable
      RPTDIS         : BRSMR_RPTDIS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRSMR_Register use record
      ENGT           at 0 range 0 .. 1;
      ENTR           at 0 range 2 .. 2;
      ENSI           at 0 range 3 .. 3;
      SCAN           at 0 range 4 .. 4;
      LDM            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      REQGT          at 0 range 7 .. 7;
      CLRPND         at 0 range 8 .. 8;
      LDEV           at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      RPTDIS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Data Reduction Control
   type GLOBRCR_DRCTR_Field is
     (
      --  Data reduction disabled
      VALUE1,
      --  Accumulate 2 result values
      VALUE2,
      --  Accumulate 3 result values
      VALUE3,
      --  Accumulate 4 result values
      VALUE4)
     with Size => 4;
   for GLOBRCR_DRCTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Wait-for-Read Mode Enable
   type GLOBRCR_WFR_Field is
     (
      --  Overwrite mode
      VALUE1,
      --  Wait-for-read mode enabled for this register
      VALUE2)
     with Size => 1;
   for GLOBRCR_WFR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Service Request Generation Enable
   type GLOBRCR_SRGEN_Field is
     (
      --  No service request
      VALUE1,
      --  Service request after a result event
      VALUE2)
     with Size => 1;
   for GLOBRCR_SRGEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Result Control Register
   type GLOBRCR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Data Reduction Control
      DRCTR          : GLOBRCR_DRCTR_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Wait-for-Read Mode Enable
      WFR            : GLOBRCR_WFR_Field := NRF_SVD.VADC.VALUE2;
      --  unspecified
      Reserved_25_30 : HAL.UInt6 := 16#0#;
      --  Service Request Generation Enable
      SRGEN          : GLOBRCR_SRGEN_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBRCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      DRCTR          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      WFR            at 0 range 24 .. 24;
      Reserved_25_30 at 0 range 25 .. 30;
      SRGEN          at 0 range 31 .. 31;
   end record;

   subtype GLOBRES_RESULT_Field is HAL.UInt16;
   subtype GLOBRES_GNR_Field is HAL.UInt4;
   subtype GLOBRES_CHNR_Field is HAL.UInt5;
   subtype GLOBRES_EMUX_Field is HAL.UInt3;
   subtype GLOBRES_CRS_Field is HAL.UInt2;

   --  Fast Compare Result
   type GLOBRES_FCR_Field is
     (
      --  Signal level was below compare value
      VALUE1,
      --  Signal level was above compare value
      VALUE2)
     with Size => 1;
   for GLOBRES_FCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Valid Flag
   type GLOBRES_VF_Field is
     (
      --  Read access: No new valid data available Write access: No effect
      VALUE1,
      --  Read access: Bitfield RESULT contains valid data and has not yet been
      --  read, or bit FCR has been updated Write access: Clear this valid flag
      --  and the data reduction counter (overrides a hardware set action)
      VALUE2)
     with Size => 1;
   for GLOBRES_VF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Result Register
   type GLOBRES_Register is record
      --  *** Reading this field has side effects on other resources ***.
      --  Result of most recent conversion
      RESULT : GLOBRES_RESULT_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Group Number
      GNR    : GLOBRES_GNR_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Channel Number
      CHNR   : GLOBRES_CHNR_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. External Multiplexer Setting
      EMUX   : GLOBRES_EMUX_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Converted Request Source
      CRS    : GLOBRES_CRS_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Fast Compare Result
      FCR    : GLOBRES_FCR_Field := NRF_SVD.VADC.VALUE1;
      --  *** Reading this field has side effects on other resources ***. Valid
      --  Flag
      VF     : GLOBRES_VF_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBRES_Register use record
      RESULT at 0 range 0 .. 15;
      GNR    at 0 range 16 .. 19;
      CHNR   at 0 range 20 .. 24;
      EMUX   at 0 range 25 .. 27;
      CRS    at 0 range 28 .. 29;
      FCR    at 0 range 30 .. 30;
      VF     at 0 range 31 .. 31;
   end record;

   subtype GLOBRESD_RESULT_Field is HAL.UInt16;
   subtype GLOBRESD_GNR_Field is HAL.UInt4;
   subtype GLOBRESD_CHNR_Field is HAL.UInt5;
   subtype GLOBRESD_EMUX_Field is HAL.UInt3;
   subtype GLOBRESD_CRS_Field is HAL.UInt2;

   --  Fast Compare Result
   type GLOBRESD_FCR_Field is
     (
      --  Signal level was below compare value
      VALUE1,
      --  Signal level was above compare value
      VALUE2)
     with Size => 1;
   for GLOBRESD_FCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Valid Flag
   type GLOBRESD_VF_Field is
     (
      --  Read access: No new valid data available Write access: No effect
      VALUE1,
      --  Read access: Bitfield RESULT contains valid data and has not yet been
      --  read, or bit FCR has been updated Write access: Clear this valid flag
      --  and the data reduction counter (overrides a hardware set action)
      VALUE2)
     with Size => 1;
   for GLOBRESD_VF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Global Result Register, Debug
   type GLOBRESD_Register is record
      --  Result of most recent conversion
      RESULT : GLOBRESD_RESULT_Field := 16#0#;
      --  Read-only. Group Number
      GNR    : GLOBRESD_GNR_Field := 16#0#;
      --  Read-only. Channel Number
      CHNR   : GLOBRESD_CHNR_Field := 16#0#;
      --  Read-only. External Multiplexer Setting
      EMUX   : GLOBRESD_EMUX_Field := 16#0#;
      --  Read-only. Converted Request Source
      CRS    : GLOBRESD_CRS_Field := 16#0#;
      --  Read-only. Fast Compare Result
      FCR    : GLOBRESD_FCR_Field := NRF_SVD.VADC.VALUE1;
      --  Valid Flag
      VF     : GLOBRESD_VF_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBRESD_Register use record
      RESULT at 0 range 0 .. 15;
      GNR    at 0 range 16 .. 19;
      CHNR   at 0 range 20 .. 24;
      EMUX   at 0 range 25 .. 27;
      CRS    at 0 range 28 .. 29;
      FCR    at 0 range 30 .. 30;
      VF     at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog to Digital Converter
   type VADC_Peripheral is record
      --  Clock Control Register
      CLC        : aliased CLC_Register;
      --  Module Identification Register
      ID         : aliased ID_Register;
      --  OCDS Control and Status Register
      OCS        : aliased OCS_Register;
      --  Global Configuration Register
      GLOBCFG    : aliased GLOBCFG_Register;
      --  Input Class Register, Global
      GLOBICLASS : aliased GLOBICLASS_Registers;
      --  Global Event Flag Register
      GLOBEFLAG  : aliased GLOBEFLAG_Register;
      --  Global Event Node Pointer Register
      GLOBEVNP   : aliased GLOBEVNP_Register;
      --  Background Request Source Channel Select Register
      BRSSEL     : aliased BRSSEL_Registers;
      --  Background Request Source Pending Register
      BRSPND     : aliased BRSPND_Registers;
      --  Background Request Source Control Register
      BRSCTRL    : aliased BRSCTRL_Register;
      --  Background Request Source Mode Register
      BRSMR      : aliased BRSMR_Register;
      --  Global Result Control Register
      GLOBRCR    : aliased GLOBRCR_Register;
      --  Global Result Register
      GLOBRES    : aliased GLOBRES_Register;
      --  Global Result Register, Debug
      GLOBRESD   : aliased GLOBRESD_Register;
   end record
     with Volatile;

   for VADC_Peripheral use record
      CLC        at 16#0# range 0 .. 31;
      ID         at 16#8# range 0 .. 31;
      OCS        at 16#28# range 0 .. 31;
      GLOBCFG    at 16#80# range 0 .. 31;
      GLOBICLASS at 16#A0# range 0 .. 63;
      GLOBEFLAG  at 16#E0# range 0 .. 31;
      GLOBEVNP   at 16#140# range 0 .. 31;
      BRSSEL     at 16#180# range 0 .. 63;
      BRSPND     at 16#1C0# range 0 .. 63;
      BRSCTRL    at 16#200# range 0 .. 31;
      BRSMR      at 16#204# range 0 .. 31;
      GLOBRCR    at 16#280# range 0 .. 31;
      GLOBRES    at 16#300# range 0 .. 31;
      GLOBRESD   at 16#380# range 0 .. 31;
   end record;

   --  Analog to Digital Converter
   VADC_Periph : aliased VADC_Peripheral
     with Import, Address => System'To_Address (16#48030000#);

end NRF_SVD.VADC;
