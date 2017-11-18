--  This spec has been automatically generated from XMC1200.svd

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
      --  fADCI = fADC / 2
      VALUE1,
      --  fADCI = fADC / 2
      VALUE2,
      --  fADCI = fADC / 3
      VALUE3,
      --  Reset value for the field
      Globcfg_Diva_Field_Reset,
      --  fADCI = fADC / 32
      VALUE4)
     with Size => 5;
   for GLOBCFG_DIVA_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      Globcfg_Diva_Field_Reset => 15,
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
      DIVA           : GLOBCFG_DIVA_Field := Globcfg_Diva_Field_Reset;
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

   --  Access Protection Channel Control, Group 0 - 1
   type ACCPROT0_APC0_Field is
     (
      --  Full access to registers
      VALUE1,
      --  Write access to channel control registers is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT0_APC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ACCPROT0_APC array
   type ACCPROT0_APC_Field_Array is array (0 .. 1) of ACCPROT0_APC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for ACCPROT0_APC
   type ACCPROT0_APC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  APC as a value
            Val : HAL.UInt2;
         when True =>
            --  APC as an array
            Arr : ACCPROT0_APC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ACCPROT0_APC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Access Protection External Multiplexer
   type ACCPROT0_APEM_Field is
     (
      --  Full access to registers
      VALUE1,
      --  Write access to external multiplexer registers is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT0_APEM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Access Protection Initialization, Group 0 - 1
   type ACCPROT0_API0_Field is
     (
      --  Full access to registers
      VALUE1,
      --  Write access to initialization registers is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT0_API0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ACCPROT0_API array
   type ACCPROT0_API_Field_Array is array (0 .. 1) of ACCPROT0_API0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for ACCPROT0_API
   type ACCPROT0_API_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  API as a value
            Val : HAL.UInt2;
         when True =>
            --  API as an array
            Arr : ACCPROT0_API_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ACCPROT0_API_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Access Protection Global Configuration
   type ACCPROT0_APGC_Field is
     (
      --  Full access to register
      VALUE1,
      --  Write access to global configuration register is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT0_APGC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Access Protection Register
   type ACCPROT0_Register is record
      --  Access Protection Channel Control, Group 0 - 1
      APC            : ACCPROT0_APC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  Access Protection External Multiplexer
      APEM           : ACCPROT0_APEM_Field := NRF_SVD.VADC.VALUE1;
      --  Access Protection Initialization, Group 0 - 1
      API            : ACCPROT0_API_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_30 : HAL.UInt13 := 16#0#;
      --  Access Protection Global Configuration
      APGC           : ACCPROT0_APGC_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACCPROT0_Register use record
      APC            at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      APEM           at 0 range 15 .. 15;
      API            at 0 range 16 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      APGC           at 0 range 31 .. 31;
   end record;

   --  Access Protection Service Request, Group 0 - 1
   type ACCPROT1_APS0_Field is
     (
      --  Full access to registers
      VALUE1,
      --  Write access to service request registers is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT1_APS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ACCPROT1_APS array
   type ACCPROT1_APS_Field_Array is array (0 .. 1) of ACCPROT1_APS0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for ACCPROT1_APS
   type ACCPROT1_APS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  APS as a value
            Val : HAL.UInt2;
         when True =>
            --  APS as an array
            Arr : ACCPROT1_APS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ACCPROT1_APS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Access Protection Test Function
   type ACCPROT1_APTF_Field is
     (
      --  Full access to register
      VALUE1,
      --  Write access to test function register is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT1_APTF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Access Protection Result Registers, Group 0 - 1
   type ACCPROT1_APR0_Field is
     (
      --  Full access to registers
      VALUE1,
      --  Write access to result registers is blocked
      VALUE2)
     with Size => 1;
   for ACCPROT1_APR0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ACCPROT1_APR array
   type ACCPROT1_APR_Field_Array is array (0 .. 1) of ACCPROT1_APR0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for ACCPROT1_APR
   type ACCPROT1_APR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  APR as a value
            Val : HAL.UInt2;
         when True =>
            --  APR as an array
            Arr : ACCPROT1_APR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ACCPROT1_APR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Access Protection Register
   type ACCPROT1_Register is record
      --  Access Protection Service Request, Group 0 - 1
      APS            : ACCPROT1_APS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  Access Protection Test Function
      APTF           : ACCPROT1_APTF_Field := NRF_SVD.VADC.VALUE1;
      --  Access Protection Result Registers, Group 0 - 1
      APR            : ACCPROT1_APR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACCPROT1_Register use record
      APS            at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      APTF           at 0 range 15 .. 15;
      APR            at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
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

   subtype GLOBICLASS_STCE_Field is HAL.UInt5;

   --  Conversion Mode for EMUX Conversions
   type GLOBICLASS_CME_Field is
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
   for GLOBICLASS_CME_Field use
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
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Sample Time Control for EMUX Conversions
      STCE           : GLOBICLASS_STCE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Conversion Mode for EMUX Conversions
      CME            : GLOBICLASS_CME_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBICLASS_Register use record
      STCS           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMS            at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      STCE           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CME            at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Input Class Register, Global
   type GLOBICLASS_Registers is array (0 .. 1) of GLOBICLASS_Register
     with Volatile;

   subtype GLOBBOUND_BOUNDARY0_Field is HAL.UInt12;
   subtype GLOBBOUND_BOUNDARY1_Field is HAL.UInt12;

   --  Global Boundary Select Register
   type GLOBBOUND_Register is record
      --  Boundary Value 0 for Limit Checking
      BOUNDARY0      : GLOBBOUND_BOUNDARY0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Boundary Value 1 for Limit Checking
      BOUNDARY1      : GLOBBOUND_BOUNDARY1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBBOUND_Register use record
      BOUNDARY0      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      BOUNDARY1      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

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
      VALUE2)
     with Size => 4;
   for GLOBEVNP_REV0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3);

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
      VALUE1)
     with Size => 4;
   for GLOBRCR_DRCTR_Field use
     (VALUE1 => 0);

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
      WFR            : GLOBRCR_WFR_Field := NRF_SVD.VADC.VALUE1;
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

   --  EMUXSEL_EMUXGRP array element
   subtype EMUXSEL_EMUXGRP_Element is HAL.UInt4;

   --  EMUXSEL_EMUXGRP array
   type EMUXSEL_EMUXGRP_Field_Array is array (0 .. 1)
     of EMUXSEL_EMUXGRP_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for EMUXSEL_EMUXGRP
   type EMUXSEL_EMUXGRP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EMUXGRP as a value
            Val : HAL.UInt8;
         when True =>
            --  EMUXGRP as an array
            Arr : EMUXSEL_EMUXGRP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for EMUXSEL_EMUXGRP_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  External Multiplexer Select Register
   type EMUXSEL_Register is record
      --  External Multiplexer Group for Interface x
      EMUXGRP       : EMUXSEL_EMUXGRP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMUXSEL_Register use record
      EMUXGRP       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ARBCFG_ANONC_Field is HAL.UInt2;

   --  Arbitration Round Length
   type ARBCFG_ARBRND_Field is
     (
      --  4 arbitration slots per round (tARB = 4 / fADCD)
      VALUE1,
      --  8 arbitration slots per round (tARB = 8 / fADCD)
      VALUE2,
      --  16 arbitration slots per round (tARB = 16 / fADCD)
      VALUE3,
      --  20 arbitration slots per round (tARB = 20 / fADCD)
      VALUE4)
     with Size => 2;
   for ARBCFG_ARBRND_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Arbitration Mode
   type ARBCFG_ARBM_Field is
     (
      --  The arbiter runs permanently. This setting is required for a
      --  synchronization slave (see ) and for equidistant sampling using the
      --  signal ARBCNT (see ).
      VALUE1,
      --  The arbiter only runs if at least one conversion request of an
      --  enabled request source is pending. This setting ensures a
      --  reproducible latency from an incoming request to the conversion
      --  start, if the converter is idle. Synchronized conversions are not
      --  supported.
      VALUE2)
     with Size => 1;
   for ARBCFG_ARBM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Analog Converter Control Status
   type ARBCFG_ANONS_Field is
     (
      --  Analog converter off
      VALUE1,
      --  Slow standby mode
      VALUE3,
      --  Normal operation (permanently on)
      VALUE4)
     with Size => 2;
   for ARBCFG_ANONS_Field use
     (VALUE1 => 0,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Currently Converted Request Source
   type ARBCFG_CSRC_Field is
     (
      --  Current/last conversion for request source 0
      VALUE1,
      --  Current/last conversion for request source 1
      VALUE2,
      --  Current/last conversion for background source
      VALUE3,
      --  Current/last conversion for synchronization request (slave converter)
      VALUE4)
     with Size => 2;
   for ARBCFG_CSRC_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   subtype ARBCFG_CHNR_Field is HAL.UInt5;

   --  Synchronous Conversion Running
   type ARBCFG_SYNRUN_Field is
     (
      --  Normal conversion or no conversion running
      VALUE1,
      --  A synchronized conversion is running (cannot be cancelled by higher
      --  priority requests!)
      VALUE2)
     with Size => 1;
   for ARBCFG_SYNRUN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start-Up Calibration Active Indication
   type ARBCFG_CAL_Field is
     (
      --  Completed or not yet started
      VALUE1,
      --  Start-up calibration phase is active (set one clock cycle after
      --  setting bit SUCAL)
      VALUE2)
     with Size => 1;
   for ARBCFG_CAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Start-Up Calibration Started
   type ARBCFG_CALS_Field is
     (
      --  Requested but not yet started
      VALUE1,
      --  Start-up calibration has begun
      VALUE2)
     with Size => 1;
   for ARBCFG_CALS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Converter Busy Flag
   type ARBCFG_BUSY_Field is
     (
      --  Not busy
      VALUE1,
      --  Converter is busy with a conversion
      VALUE2)
     with Size => 1;
   for ARBCFG_BUSY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Sample Phase Flag
   type ARBCFG_SAMPLE_Field is
     (
      --  Converting or idle
      VALUE1,
      --  Input signal is currently sampled
      VALUE2)
     with Size => 1;
   for ARBCFG_SAMPLE_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Arbitration Configuration Register
   type ARBCFG_Register is record
      --  Analog Converter Control
      ANONC          : ARBCFG_ANONC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Arbitration Round Length
      ARBRND         : ARBCFG_ARBRND_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Arbitration Mode
      ARBM           : ARBCFG_ARBM_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Read-only. Analog Converter Control Status
      ANONS          : ARBCFG_ANONS_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. Currently Converted Request Source
      CSRC           : ARBCFG_CSRC_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. Channel Number
      CHNR           : ARBCFG_CHNR_Field := 16#0#;
      --  Read-only. Synchronous Conversion Running
      SYNRUN         : ARBCFG_SYNRUN_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Read-only. Start-Up Calibration Active Indication
      CAL            : ARBCFG_CAL_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. Start-Up Calibration Started
      CALS           : ARBCFG_CALS_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. Converter Busy Flag
      BUSY           : ARBCFG_BUSY_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. Sample Phase Flag
      SAMPLE         : ARBCFG_SAMPLE_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBCFG_Register use record
      ANONC          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ARBRND         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      ARBM           at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ANONS          at 0 range 16 .. 17;
      CSRC           at 0 range 18 .. 19;
      CHNR           at 0 range 20 .. 24;
      SYNRUN         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      CAL            at 0 range 28 .. 28;
      CALS           at 0 range 29 .. 29;
      BUSY           at 0 range 30 .. 30;
      SAMPLE         at 0 range 31 .. 31;
   end record;

   --  Priority of Request Source x
   type ARBPR_PRIO0_Field is
     (
      --  Lowest priority is selected.
      VALUE1,
      --  Highest priority is selected.
      VALUE2)
     with Size => 2;
   for ARBPR_PRIO0_Field use
     (VALUE1 => 0,
      VALUE2 => 3);

   --  Conversion Start Mode of Request Source x
   type ARBPR_CSM0_Field is
     (
      --  Wait-for-start mode
      VALUE1,
      --  Cancel-inject-repeat mode, i.e. this source can cancel conversion of
      --  other sources.
      VALUE2)
     with Size => 1;
   for ARBPR_CSM0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Priority of Request Source x
   type ARBPR_PRIO1_Field is
     (
      --  Lowest priority is selected.
      VALUE1,
      --  Highest priority is selected.
      VALUE2)
     with Size => 2;
   for ARBPR_PRIO1_Field use
     (VALUE1 => 0,
      VALUE2 => 3);

   --  Conversion Start Mode of Request Source x
   type ARBPR_CSM1_Field is
     (
      --  Wait-for-start mode
      VALUE1,
      --  Cancel-inject-repeat mode, i.e. this source can cancel conversion of
      --  other sources.
      VALUE2)
     with Size => 1;
   for ARBPR_CSM1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Priority of Request Source x
   type ARBPR_PRIO2_Field is
     (
      --  Lowest priority is selected.
      VALUE1,
      --  Highest priority is selected.
      VALUE2)
     with Size => 2;
   for ARBPR_PRIO2_Field use
     (VALUE1 => 0,
      VALUE2 => 3);

   --  Conversion Start Mode of Request Source x
   type ARBPR_CSM2_Field is
     (
      --  Wait-for-start mode
      VALUE1,
      --  Cancel-inject-repeat mode, i.e. this source can cancel conversion of
      --  other sources.
      VALUE2)
     with Size => 1;
   for ARBPR_CSM2_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Arbitration Slot 0 Enable
   type ARBPR_ASEN0_Field is
     (
      --  The corresponding arbitration slot is disabled and considered as
      --  empty. Pending conversion requests from the associated request source
      --  are disregarded.
      VALUE1,
      --  The corresponding arbitration slot is enabled. Pending conversion
      --  requests from the associated request source are arbitrated.
      VALUE2)
     with Size => 1;
   for ARBPR_ASEN0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ARBPR_ASEN array
   type ARBPR_ASEN_Field_Array is array (0 .. 2) of ARBPR_ASEN0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for ARBPR_ASEN
   type ARBPR_ASEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ASEN as a value
            Val : HAL.UInt3;
         when True =>
            --  ASEN as an array
            Arr : ARBPR_ASEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ARBPR_ASEN_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Arbitration Priority Register
   type ARBPR_Register is record
      --  Priority of Request Source x
      PRIO0          : ARBPR_PRIO0_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Conversion Start Mode of Request Source x
      CSM0           : ARBPR_CSM0_Field := NRF_SVD.VADC.VALUE1;
      --  Priority of Request Source x
      PRIO1          : ARBPR_PRIO1_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Conversion Start Mode of Request Source x
      CSM1           : ARBPR_CSM1_Field := NRF_SVD.VADC.VALUE1;
      --  Priority of Request Source x
      PRIO2          : ARBPR_PRIO2_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Conversion Start Mode of Request Source x
      CSM2           : ARBPR_CSM2_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_12_23 : HAL.UInt12 := 16#0#;
      --  Arbitration Slot 0 Enable
      ASEN           : ARBPR_ASEN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARBPR_Register use record
      PRIO0          at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CSM0           at 0 range 3 .. 3;
      PRIO1          at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CSM1           at 0 range 7 .. 7;
      PRIO2          at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CSM2           at 0 range 11 .. 11;
      Reserved_12_23 at 0 range 12 .. 23;
      ASEN           at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Assignment for Channel 0
   type CHASS_ASSCH0_Field is
     (
      --  Channel y can be a background channel converted with lowest priority
      VALUE1,
      --  Channel y is a priority channel within group x
      VALUE2)
     with Size => 1;
   for CHASS_ASSCH0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CHASS_ASSCH array
   type CHASS_ASSCH_Field_Array is array (0 .. 7) of CHASS_ASSCH0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for CHASS_ASSCH
   type CHASS_ASSCH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ASSCH as a value
            Val : HAL.UInt8;
         when True =>
            --  ASSCH as an array
            Arr : CHASS_ASSCH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CHASS_ASSCH_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Assignment Register
   type CHASS_Register is record
      --  Assignment for Channel 0
      ASSCH         : CHASS_ASSCH_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHASS_Register use record
      ASSCH         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Assignment for Result Register 0
   type RRASS_ASSRR0_Field is
     (
      --  Result register y can also be written by the background source
      VALUE1,
      --  Result register y can only be written by sources within group x
      VALUE2)
     with Size => 1;
   for RRASS_ASSRR0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  RRASS_ASSRR array
   type RRASS_ASSRR_Field_Array is array (0 .. 15) of RRASS_ASSRR0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for RRASS_ASSRR
   type RRASS_ASSRR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ASSRR as a value
            Val : HAL.UInt16;
         when True =>
            --  ASSRR as an array
            Arr : RRASS_ASSRR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RRASS_ASSRR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Result Assignment Register
   type RRASS_Register is record
      --  Assignment for Result Register 0
      ASSRR          : RRASS_ASSRR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RRASS_Register use record
      ASSRR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ICLASS_STCS_Field is HAL.UInt5;

   --  Conversion Mode for Standard Conversions
   type ICLASS_CMS_Field is
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
   for ICLASS_CMS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE6 => 5);

   subtype ICLASS_STCE_Field is HAL.UInt5;

   --  Conversion Mode for EMUX Conversions
   type ICLASS_CME_Field is
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
   for ICLASS_CME_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE6 => 5);

   --  Input Class Register 0
   type ICLASS_Register is record
      --  Sample Time Control for Standard Conversions
      STCS           : ICLASS_STCS_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Conversion Mode for Standard Conversions
      CMS            : ICLASS_CMS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Sample Time Control for EMUX Conversions
      STCE           : ICLASS_STCE_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Conversion Mode for EMUX Conversions
      CME            : ICLASS_CME_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICLASS_Register use record
      STCS           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMS            at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      STCE           at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CME            at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Input Class Register 0
   type ICLASS_Registers is array (0 .. 1) of ICLASS_Register
     with Volatile;

   subtype ALIAS_ALIAS0_Field is HAL.UInt5;
   subtype ALIAS_ALIAS1_Field is HAL.UInt5;

   --  Alias Register
   type ALIAS_Register is record
      --  Alias Value for CH0 Conversion Requests
      ALIAS0         : ALIAS_ALIAS0_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Alias Value for CH1 Conversion Requests
      ALIAS1         : ALIAS_ALIAS1_Field := 16#1#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALIAS_Register use record
      ALIAS0         at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ALIAS1         at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype BOUND_BOUNDARY0_Field is HAL.UInt12;
   subtype BOUND_BOUNDARY1_Field is HAL.UInt12;

   --  Boundary Select Register
   type BOUND_Register is record
      --  Boundary Value 0 for Limit Checking
      BOUNDARY0      : BOUND_BOUNDARY0_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Boundary Value 1 for Limit Checking
      BOUNDARY1      : BOUND_BOUNDARY1_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOUND_Register use record
      BOUNDARY0      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      BOUNDARY1      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Start Selection
   type SYNCTR_STSEL_Field is
     (
      --  Kernel is synchronization master: Use own bitfield GxARBCFG.ANONC
      VALUE1,
      --  Kernel is synchronization slave: Control information from input CI1
      VALUE2)
     with Size => 2;
   for SYNCTR_STSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Evaluate Ready Input R1
   type SYNCTR_EVALR1_Field is
     (
      --  No ready input control
      VALUE1,
      --  Ready input R1 is considered for the start of a parallel conversion
      --  of this conversion group
      VALUE2)
     with Size => 1;
   for SYNCTR_EVALR1_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Synchronization Control Register
   type SYNCTR_Register is record
      --  Start Selection
      STSEL         : SYNCTR_STSEL_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Evaluate Ready Input R1
      EVALR1        : SYNCTR_EVALR1_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCTR_Register use record
      STSEL         at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      EVALR1        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Boundar0 Flag y
   type BFL_BFL0_Field is
     (
      --  Passive state: result has not yet crossed the activation boundary
      --  (see bitfield BFAy), or selected gate signal is inactive, or this
      --  boundary flag is disabled
      VALUE1,
      --  Active state: result has crossed the activation boundary
      VALUE2)
     with Size => 1;
   for BFL_BFL0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BFL array
   type BFL_Field_Array is array (0 .. 3) of BFL_BFL0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for BFL
   type BFL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BFL as a value
            Val : HAL.UInt4;
         when True =>
            --  BFL as an array
            Arr : BFL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BFL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Boundar0 Flag y Activation Select
   type BFL_BFA0_Field is
     (
      --  Set boundary flag BFLy if result is above the defined band or compare
      --  value, clear if below
      VALUE1,
      --  Set boundary flag BFLy if result is below the defined band or compare
      --  value, clear if above
      VALUE2)
     with Size => 1;
   for BFL_BFA0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BFL_BFA array
   type BFL_BFA_Field_Array is array (0 .. 3) of BFL_BFA0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for BFL_BFA
   type BFL_BFA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BFA as a value
            Val : HAL.UInt4;
         when True =>
            --  BFA as an array
            Arr : BFL_BFA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BFL_BFA_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Boundar0 Flag y Inversion Control
   type BFL_BFI0_Field is
     (
      --  Use BFLy directly
      VALUE1,
      --  Invert value and use BFLy
      VALUE2)
     with Size => 1;
   for BFL_BFI0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BFL_BFI array
   type BFL_BFI_Field_Array is array (0 .. 3) of BFL_BFI0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for BFL_BFI
   type BFL_BFI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BFI as a value
            Val : HAL.UInt4;
         when True =>
            --  BFI as an array
            Arr : BFL_BFI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BFL_BFI_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Boundary Flag Register
   type BFL_Register is record
      --  Read-only. Boundar0 Flag y
      BFL            : BFL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Boundar0 Flag y Activation Select
      BFA            : BFL_BFA_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Boundar0 Flag y Inversion Control
      BFI            : BFL_BFI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFL_Register use record
      BFL            at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      BFA            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      BFI            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Boundar0 Flag y Clear
   type BFLS_BFC0_Field is
     (
      --  No action
      VALUE1,
      --  Clear bit BFLy
      VALUE2)
     with Size => 1;
   for BFLS_BFC0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BFLS_BFC array
   type BFLS_BFC_Field_Array is array (0 .. 3) of BFLS_BFC0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for BFLS_BFC
   type BFLS_BFC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BFC as a value
            Val : HAL.UInt4;
         when True =>
            --  BFC as an array
            Arr : BFLS_BFC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BFLS_BFC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Boundar0 Flag y Set
   type BFLS_BFS0_Field is
     (
      --  No action
      VALUE1,
      --  Set bit BFLy
      VALUE2)
     with Size => 1;
   for BFLS_BFS0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BFLS_BFS array
   type BFLS_BFS_Field_Array is array (0 .. 3) of BFLS_BFS0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for BFLS_BFS
   type BFLS_BFS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BFS as a value
            Val : HAL.UInt4;
         when True =>
            --  BFS as an array
            Arr : BFLS_BFS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for BFLS_BFS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Boundary Flag Software Register
   type BFLS_Register is record
      --  Write-only. Boundar0 Flag y Clear
      BFC            : BFLS_BFC_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Boundar0 Flag y Set
      BFS            : BFLS_BFS_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFLS_Register use record
      BFC            at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      BFS            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Boundary Flag y Mode Control
   type BFLC_BFM0_Field is
     (
      --  Disable boundary flag, BFLy is not changed
      VALUE1,
      --  Always enable boundary flag (follow compare results)
      VALUE2,
      --  Enable boundary flag while gate of source 0 is active, clear BFLy
      --  while gate is inactive
      VALUE3,
      --  Enable boundary flag while gate of source 1 is active, clear BFLy
      --  while gate is inactive
      VALUE4)
     with Size => 4;
   for BFLC_BFM0_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  BFLC_BFM array
   type BFLC_BFM_Field_Array is array (0 .. 3) of BFLC_BFM0_Field
     with Component_Size => 4, Size => 16;

   --  Type definition for BFLC_BFM
   type BFLC_BFM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BFM as a value
            Val : HAL.UInt16;
         when True =>
            --  BFM as an array
            Arr : BFLC_BFM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for BFLC_BFM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Boundary Flag Control Register
   type BFLC_Register is record
      --  Boundary Flag y Mode Control
      BFM            : BFLC_BFM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFLC_Register use record
      BFM            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Boundary Flag y Node Pointer
   type BFLNP_BFL0NP_Field is
     (
      --  Select common bondary flag output 0
      VALUE1,
      --  Select common bondary flag output 3
      VALUE2,
      --  Select common service request line C0SR0
      VALUE3,
      --  Select common service request line C0SR3
      VALUE4,
      --  Disabled, no common output signal
      VALUE5)
     with Size => 4;
   for BFLNP_BFL0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7,
      VALUE5 => 15);

   --  Boundary Flag y Node Pointer
   type BFLNP_BFL1NP_Field is
     (
      --  Select common bondary flag output 0
      VALUE1,
      --  Select common bondary flag output 3
      VALUE2,
      --  Select common service request line C0SR0
      VALUE3,
      --  Select common service request line C0SR3
      VALUE4,
      --  Disabled, no common output signal
      VALUE5)
     with Size => 4;
   for BFLNP_BFL1NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7,
      VALUE5 => 15);

   --  Boundary Flag y Node Pointer
   type BFLNP_BFL2NP_Field is
     (
      --  Select common bondary flag output 0
      VALUE1,
      --  Select common bondary flag output 3
      VALUE2,
      --  Select common service request line C0SR0
      VALUE3,
      --  Select common service request line C0SR3
      VALUE4,
      --  Disabled, no common output signal
      VALUE5)
     with Size => 4;
   for BFLNP_BFL2NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7,
      VALUE5 => 15);

   --  Boundary Flag y Node Pointer
   type BFLNP_BFL3NP_Field is
     (
      --  Select common bondary flag output 0
      VALUE1,
      --  Select common bondary flag output 3
      VALUE2,
      --  Select common service request line C0SR0
      VALUE3,
      --  Select common service request line C0SR3
      VALUE4,
      --  Disabled, no common output signal
      VALUE5)
     with Size => 4;
   for BFLNP_BFL3NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7,
      VALUE5 => 15);

   --  Boundary Flag Node Pointer Register
   type BFLNP_Register is record
      --  Boundary Flag y Node Pointer
      BFL0NP         : BFLNP_BFL0NP_Field := NRF_SVD.VADC.VALUE5;
      --  Boundary Flag y Node Pointer
      BFL1NP         : BFLNP_BFL1NP_Field := NRF_SVD.VADC.VALUE5;
      --  Boundary Flag y Node Pointer
      BFL2NP         : BFLNP_BFL2NP_Field := NRF_SVD.VADC.VALUE5;
      --  Boundary Flag y Node Pointer
      BFL3NP         : BFLNP_BFL3NP_Field := NRF_SVD.VADC.VALUE5;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BFLNP_Register use record
      BFL0NP         at 0 range 0 .. 3;
      BFL1NP         at 0 range 4 .. 7;
      BFL2NP         at 0 range 8 .. 11;
      BFL3NP         at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Source-specific Result Register
   type QCTRL0_SRCRESREG_Field is
     (
      --  Use GxCHCTRy.RESREG to select a group result register
      VALUE1,
      --  Store result in group result register GxRES1
      VALUE2,
      --  Store result in group result register GxRES15
      VALUE3)
     with Size => 4;
   for QCTRL0_SRCRESREG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 15);

   subtype QCTRL0_XTSEL_Field is HAL.UInt4;

   --  Trigger Operating Mode
   type QCTRL0_XTMODE_Field is
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
   for QCTRL0_XTMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Write Control for Trigger Configuration
   type QCTRL0_XTWC_Field is
     (
      --  No write access to trigger configuration
      VALUE1,
      --  Bitfields XTMODE and XTSEL can be written
      VALUE2)
     with Size => 1;
   for QCTRL0_XTWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype QCTRL0_GTSEL_Field is HAL.UInt4;

   --  Write Control for Gate Configuration
   type QCTRL0_GTWC_Field is
     (
      --  No write access to gate configuration
      VALUE1,
      --  Bitfield GTSEL can be written
      VALUE2)
     with Size => 1;
   for QCTRL0_GTWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Timer Mode Enable
   type QCTRL0_TMEN_Field is
     (
      --  No timer mode: standard gating mechanism can be used
      VALUE1,
      --  Timer mode for equidistant sampling enabled: standard gating
      --  mechanism must be disabled
      VALUE2)
     with Size => 1;
   for QCTRL0_TMEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Write Control for Timer Mode
   type QCTRL0_TMWC_Field is
     (
      --  No write access to timer mode
      VALUE1,
      --  Bitfield TMEN can be written
      VALUE2)
     with Size => 1;
   for QCTRL0_TMWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Queue 0 Source Control Register
   type QCTRL0_Register is record
      --  Source-specific Result Register
      SRCRESREG      : QCTRL0_SRCRESREG_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  External Trigger Input Selection
      XTSEL          : QCTRL0_XTSEL_Field := 16#0#;
      --  Read-only. External Trigger Level
      XTLVL          : Boolean := False;
      --  Trigger Operating Mode
      XTMODE         : QCTRL0_XTMODE_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Write Control for Trigger Configuration
      XTWC           : QCTRL0_XTWC_Field := NRF_SVD.VADC.VALUE1;
      --  Gate Input Selection
      GTSEL          : QCTRL0_GTSEL_Field := 16#0#;
      --  Read-only. Gate Input Level
      GTLVL          : Boolean := False;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Write-only. Write Control for Gate Configuration
      GTWC           : QCTRL0_GTWC_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Timer Mode Enable
      TMEN           : QCTRL0_TMEN_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Write-only. Write Control for Timer Mode
      TMWC           : QCTRL0_TMWC_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QCTRL0_Register use record
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
      Reserved_24_27 at 0 range 24 .. 27;
      TMEN           at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      TMWC           at 0 range 31 .. 31;
   end record;

   --  Enable Gate
   type QMR0_ENGT_Field is
     (
      --  No conversion requests are issued
      VALUE1,
      --  Conversion requests are issued if a valid conversion request is
      --  pending in the queue 0 register or in the backup register
      VALUE2,
      --  Conversion requests are issued if a valid conversion request is
      --  pending in the queue 0 register or in the backup register and REQGTx
      --  = 1
      VALUE3,
      --  Conversion requests are issued if a valid conversion request is
      --  pending in the queue 0 register or in the backup register and REQGTx
      --  = 0
      VALUE4)
     with Size => 2;
   for QMR0_ENGT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Enable External Trigger
   type QMR0_ENTR_Field is
     (
      --  External trigger disabled
      VALUE1,
      --  The selected edge at the selected trigger input signal REQTR
      --  generates the trigger event
      VALUE2)
     with Size => 1;
   for QMR0_ENTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Valid Bit
   type QMR0_CLRV_Field is
     (
      --  No action
      VALUE1,
      --  The next pending valid queue entry in the sequence and the event flag
      --  EV are cleared. If there is a valid entry in the queue backup
      --  register (QBUR.V = 1), this entry is cleared, otherwise the entry in
      --  queue register 0 is cleared.
      VALUE2)
     with Size => 1;
   for QMR0_CLRV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Trigger Event
   type QMR0_TREV_Field is
     (
      --  No action
      VALUE1,
      --  Generate a trigger event by software
      VALUE2)
     with Size => 1;
   for QMR0_TREV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Flush Queue
   type QMR0_FLUSH_Field is
     (
      --  No action
      VALUE1,
      --  Clear all queue entries (including backup stage) and the event flag
      --  EV. The queue contains no more valid entry.
      VALUE2)
     with Size => 1;
   for QMR0_FLUSH_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Event Flag
   type QMR0_CEV_Field is
     (
      --  No action
      VALUE1,
      --  Clear bit EV
      VALUE2)
     with Size => 1;
   for QMR0_CEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Repeat Disable
   type QMR0_RPTDIS_Field is
     (
      --  A cancelled conversion is repeated
      VALUE1,
      --  A cancelled conversion is discarded
      VALUE2)
     with Size => 1;
   for QMR0_RPTDIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Queue 0 Mode Register
   type QMR0_Register is record
      --  Enable Gate
      ENGT           : QMR0_ENGT_Field := NRF_SVD.VADC.VALUE1;
      --  Enable External Trigger
      ENTR           : QMR0_ENTR_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Write-only. Clear Valid Bit
      CLRV           : QMR0_CLRV_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Trigger Event
      TREV           : QMR0_TREV_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Flush Queue
      FLUSH          : QMR0_FLUSH_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Clear Event Flag
      CEV            : QMR0_CEV_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Repeat Disable
      RPTDIS         : QMR0_RPTDIS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QMR0_Register use record
      ENGT           at 0 range 0 .. 1;
      ENTR           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CLRV           at 0 range 8 .. 8;
      TREV           at 0 range 9 .. 9;
      FLUSH          at 0 range 10 .. 10;
      CEV            at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      RPTDIS         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Filling Level for Queue 2
   type QSR0_FILL_Field is
     (
      --  There is 1 ( if EMPTY = 0) or no (if EMPTY = 1) valid entry in the
      --  queue
      VALUE1,
      --  There are 2 valid entries in the queue
      VALUE2,
      --  There are 3 valid entries in the queue
      VALUE3,
      --  There are 8 valid entries in the queue
      VALUE4)
     with Size => 4;
   for QSR0_FILL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 7);

   --  Queue Empty
   type QSR0_EMPTY_Field is
     (
      --  There are valid entries in the queue (see FILL)
      VALUE1,
      --  No valid entries (queue is empty)
      VALUE2)
     with Size => 1;
   for QSR0_EMPTY_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Request Gate Level
   type QSR0_REQGT_Field is
     (
      --  The gate input is low
      VALUE1,
      --  The gate input is high
      VALUE2)
     with Size => 1;
   for QSR0_REQGT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Detected
   type QSR0_EV_Field is
     (
      --  No trigger event
      VALUE1,
      --  A trigger event has been detected
      VALUE2)
     with Size => 1;
   for QSR0_EV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Queue 0 Status Register
   type QSR0_Register is record
      --  Read-only. Filling Level for Queue 2
      FILL          : QSR0_FILL_Field;
      --  unspecified
      Reserved_4_4  : HAL.Bit;
      --  Read-only. Queue Empty
      EMPTY         : QSR0_EMPTY_Field;
      --  unspecified
      Reserved_6_6  : HAL.Bit;
      --  Read-only. Request Gate Level
      REQGT         : QSR0_REQGT_Field;
      --  Read-only. Event Detected
      EV            : QSR0_EV_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSR0_Register use record
      FILL          at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      EMPTY         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      REQGT         at 0 range 7 .. 7;
      EV            at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype Q0R0_REQCHNR_Field is HAL.UInt5;

   --  Refill
   type Q0R0_RF_Field is
     (
      --  The request is discarded after the conversion start.
      VALUE1,
      --  The request is automatically refilled into the queue after the
      --  conversion start.
      VALUE2)
     with Size => 1;
   for Q0R0_RF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Source Interrupt
   type Q0R0_ENSI_Field is
     (
      --  No request source interrupt
      VALUE1,
      --  A request source event interrupt is generated upon a request source
      --  event (related conversion is finished)
      VALUE2)
     with Size => 1;
   for Q0R0_ENSI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Trigger
   type Q0R0_EXTR_Field is
     (
      --  A valid queue entry immediately leads to a conversion request
      VALUE1,
      --  The request handler waits for a trigger event
      VALUE2)
     with Size => 1;
   for Q0R0_EXTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Request Channel Number Valid
   type Q0R0_V_Field is
     (
      --  No valid queue entry
      VALUE1,
      --  The queue entry is valid and leads to a conversion request
      VALUE2)
     with Size => 1;
   for Q0R0_V_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Queue 0 Register 0
   type Q0R0_Register is record
      --  Read-only. Request Channel Number
      REQCHNR       : Q0R0_REQCHNR_Field;
      --  Read-only. Refill
      RF            : Q0R0_RF_Field;
      --  Read-only. Enable Source Interrupt
      ENSI          : Q0R0_ENSI_Field;
      --  Read-only. External Trigger
      EXTR          : Q0R0_EXTR_Field;
      --  Read-only. Request Channel Number Valid
      V             : Q0R0_V_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Q0R0_Register use record
      REQCHNR       at 0 range 0 .. 4;
      RF            at 0 range 5 .. 5;
      ENSI          at 0 range 6 .. 6;
      EXTR          at 0 range 7 .. 7;
      V             at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype QINR0_REQCHNR_Field is HAL.UInt5;

   --  Refill
   type QINR0_RF_Field is
     (
      --  No refill: this queue entry is converted once and then invalidated
      VALUE1,
      --  Automatic refill: this queue entry is automatically reloaded into
      --  QINRx when the related conversion is started
      VALUE2)
     with Size => 1;
   for QINR0_RF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Source Interrupt
   type QINR0_ENSI_Field is
     (
      --  No request source interrupt
      VALUE1,
      --  A request source event interrupt is generated upon a request source
      --  event (related conversion is finished)
      VALUE2)
     with Size => 1;
   for QINR0_ENSI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Trigger
   type QINR0_EXTR_Field is
     (
      --  A valid queue entry immediately leads to a conversion request.
      VALUE1,
      --  A valid queue entry waits for a trigger event to occur before issuing
      --  a conversion request.
      VALUE2)
     with Size => 1;
   for QINR0_EXTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Queue 0 Input Register
   type QINR0_Register is record
      --  Write-only. Request Channel Number
      REQCHNR       : QINR0_REQCHNR_Field := 16#0#;
      --  Write-only. Refill
      RF            : QINR0_RF_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Enable Source Interrupt
      ENSI          : QINR0_ENSI_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. External Trigger
      EXTR          : QINR0_EXTR_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QINR0_Register use record
      REQCHNR       at 0 range 0 .. 4;
      RF            at 0 range 5 .. 5;
      ENSI          at 0 range 6 .. 6;
      EXTR          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype QBUR0_REQCHNR_Field is HAL.UInt5;

   --  Request Channel Number Valid
   type QBUR0_V_Field is
     (
      --  Backup register not valid
      VALUE1,
      --  Backup register contains a valid entry. This will be requested before
      --  a valid entry in queue register 0 (stage 0) will be requested.
      VALUE2)
     with Size => 1;
   for QBUR0_V_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Queue 0 Backup Register
   type QBUR0_Register is record
      --  Read-only. Request Channel Number
      REQCHNR       : QBUR0_REQCHNR_Field;
      --  Read-only. Refill
      RF            : Boolean;
      --  Read-only. Enable Source Interrupt
      ENSI          : Boolean;
      --  Read-only. External Trigger
      EXTR          : Boolean;
      --  Read-only. Request Channel Number Valid
      V             : QBUR0_V_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for QBUR0_Register use record
      REQCHNR       at 0 range 0 .. 4;
      RF            at 0 range 5 .. 5;
      ENSI          at 0 range 6 .. 6;
      EXTR          at 0 range 7 .. 7;
      V             at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Source-specific Result Register
   type ASCTRL_SRCRESREG_Field is
     (
      --  Use GxCHCTRy.RESREG to select a group result register
      VALUE1,
      --  Store result in group result register GxRES1
      VALUE2,
      --  Store result in group result register GxRES15
      VALUE3)
     with Size => 4;
   for ASCTRL_SRCRESREG_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 15);

   subtype ASCTRL_XTSEL_Field is HAL.UInt4;

   --  Trigger Operating Mode
   type ASCTRL_XTMODE_Field is
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
   for ASCTRL_XTMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Write Control for Trigger Configuration
   type ASCTRL_XTWC_Field is
     (
      --  No write access to trigger configuration
      VALUE1,
      --  Bitfields XTMODE and XTSEL can be written
      VALUE2)
     with Size => 1;
   for ASCTRL_XTWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype ASCTRL_GTSEL_Field is HAL.UInt4;

   --  Write Control for Gate Configuration
   type ASCTRL_GTWC_Field is
     (
      --  No write access to gate configuration
      VALUE1,
      --  Bitfield GTSEL can be written
      VALUE2)
     with Size => 1;
   for ASCTRL_GTWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Timer Mode Enable
   type ASCTRL_TMEN_Field is
     (
      --  No timer mode: standard gating mechanism can be used
      VALUE1,
      --  Timer mode for equidistant sampling enabled: standard gating
      --  mechanism must be disabled
      VALUE2)
     with Size => 1;
   for ASCTRL_TMEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Write Control for Timer Mode
   type ASCTRL_TMWC_Field is
     (
      --  No write access to timer mode
      VALUE1,
      --  Bitfield TMEN can be written
      VALUE2)
     with Size => 1;
   for ASCTRL_TMWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Autoscan Source Control Register
   type ASCTRL_Register is record
      --  Source-specific Result Register
      SRCRESREG      : ASCTRL_SRCRESREG_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  External Trigger Input Selection
      XTSEL          : ASCTRL_XTSEL_Field := 16#0#;
      --  Read-only. External Trigger Level
      XTLVL          : Boolean := False;
      --  Trigger Operating Mode
      XTMODE         : ASCTRL_XTMODE_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Write Control for Trigger Configuration
      XTWC           : ASCTRL_XTWC_Field := NRF_SVD.VADC.VALUE1;
      --  Gate Input Selection
      GTSEL          : ASCTRL_GTSEL_Field := 16#0#;
      --  Read-only. Gate Input Level
      GTLVL          : Boolean := False;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Write-only. Write Control for Gate Configuration
      GTWC           : ASCTRL_GTWC_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_24_27 : HAL.UInt4 := 16#0#;
      --  Timer Mode Enable
      TMEN           : ASCTRL_TMEN_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Write-only. Write Control for Timer Mode
      TMWC           : ASCTRL_TMWC_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASCTRL_Register use record
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
      Reserved_24_27 at 0 range 24 .. 27;
      TMEN           at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      TMWC           at 0 range 31 .. 31;
   end record;

   --  Enable Gate
   type ASMR_ENGT_Field is
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
   for ASMR_ENGT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Enable External Trigger
   type ASMR_ENTR_Field is
     (
      --  External trigger disabled
      VALUE1,
      --  The selected edge at the selected trigger input signal REQTR
      --  generates the load event
      VALUE2)
     with Size => 1;
   for ASMR_ENTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Source Interrupt
   type ASMR_ENSI_Field is
     (
      --  No request source interrupt
      VALUE1,
      --  A request source interrupt is generated upon a request source event
      --  (last pending conversion is finished)
      VALUE2)
     with Size => 1;
   for ASMR_ENSI_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Autoscan Enable
   type ASMR_SCAN_Field is
     (
      --  No autoscan
      VALUE1,
      --  Autoscan functionality enabled: a request source event automatically
      --  generates a load event
      VALUE2)
     with Size => 1;
   for ASMR_SCAN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Autoscan Source Load Event Mode
   type ASMR_LDM_Field is
     (
      --  Overwrite mode: Copy all bits from the select registers to the
      --  pending registers upon a load event
      VALUE1,
      --  Combine mode: Set all pending bits that are set in the select
      --  registers upon a load event (logic OR)
      VALUE2)
     with Size => 1;
   for ASMR_LDM_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Request Gate Level
   type ASMR_REQGT_Field is
     (
      --  The gate input is low
      VALUE1,
      --  The gate input is high
      VALUE2)
     with Size => 1;
   for ASMR_REQGT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Pending Bits
   type ASMR_CLRPND_Field is
     (
      --  No action
      VALUE1,
      --  The bits in register GxASPNDx are cleared
      VALUE2)
     with Size => 1;
   for ASMR_CLRPND_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Generate Load Event
   type ASMR_LDEV_Field is
     (
      --  No action
      VALUE1,
      --  A load event is generated
      VALUE2)
     with Size => 1;
   for ASMR_LDEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Repeat Disable
   type ASMR_RPTDIS_Field is
     (
      --  A cancelled conversion is repeated
      VALUE1,
      --  A cancelled conversion is discarded
      VALUE2)
     with Size => 1;
   for ASMR_RPTDIS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Autoscan Source Mode Register
   type ASMR_Register is record
      --  Enable Gate
      ENGT           : ASMR_ENGT_Field := NRF_SVD.VADC.VALUE1;
      --  Enable External Trigger
      ENTR           : ASMR_ENTR_Field := NRF_SVD.VADC.VALUE1;
      --  Enable Source Interrupt
      ENSI           : ASMR_ENSI_Field := NRF_SVD.VADC.VALUE1;
      --  Autoscan Enable
      SCAN           : ASMR_SCAN_Field := NRF_SVD.VADC.VALUE1;
      --  Autoscan Source Load Event Mode
      LDM            : ASMR_LDM_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Read-only. Request Gate Level
      REQGT          : ASMR_REQGT_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Clear Pending Bits
      CLRPND         : ASMR_CLRPND_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Generate Load Event
      LDEV           : ASMR_LDEV_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Repeat Disable
      RPTDIS         : ASMR_RPTDIS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASMR_Register use record
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

   --  Channel Selection
   type ASSEL_CHSEL0_Field is
     (
      --  Ignore this channel
      VALUE1,
      --  This channel is part of the scan sequence
      VALUE2)
     with Size => 1;
   for ASSEL_CHSEL0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ASSEL_CHSEL array
   type ASSEL_CHSEL_Field_Array is array (0 .. 7) of ASSEL_CHSEL0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for ASSEL_CHSEL
   type ASSEL_CHSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHSEL as a value
            Val : HAL.UInt8;
         when True =>
            --  CHSEL as an array
            Arr : ASSEL_CHSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ASSEL_CHSEL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Autoscan Source Channel Select Register
   type ASSEL_Register is record
      --  Channel Selection
      CHSEL         : ASSEL_CHSEL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASSEL_Register use record
      CHSEL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Channels Pending
   type ASPND_CHPND0_Field is
     (
      --  Ignore this channel
      VALUE1,
      --  Request conversion of this channel
      VALUE2)
     with Size => 1;
   for ASPND_CHPND0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  ASPND_CHPND array
   type ASPND_CHPND_Field_Array is array (0 .. 7) of ASPND_CHPND0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for ASPND_CHPND
   type ASPND_CHPND_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CHPND as a value
            Val : HAL.UInt8;
         when True =>
            --  CHPND as an array
            Arr : ASPND_CHPND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ASPND_CHPND_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Autoscan Source Pending Register
   type ASPND_Register is record
      --  Channels Pending
      CHPND         : ASPND_CHPND_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ASPND_Register use record
      CHPND         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Channel Event for Channel 0
   type CEFLAG_CEV0_Field is
     (
      --  No channel event
      VALUE1,
      --  A channel event has occurred
      VALUE2)
     with Size => 1;
   for CEFLAG_CEV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CEFLAG_CEV array
   type CEFLAG_CEV_Field_Array is array (0 .. 7) of CEFLAG_CEV0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for CEFLAG_CEV
   type CEFLAG_CEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CEV as a value
            Val : HAL.UInt8;
         when True =>
            --  CEV as an array
            Arr : CEFLAG_CEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CEFLAG_CEV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Event Flag Register
   type CEFLAG_Register is record
      --  Channel Event for Channel 0
      CEV           : CEFLAG_CEV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEFLAG_Register use record
      CEV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Result Event for Result Register 0
   type REFLAG_REV0_Field is
     (
      --  No result event
      VALUE1,
      --  New result was stored in register GxRESy
      VALUE2)
     with Size => 1;
   for REFLAG_REV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  REFLAG_REV array
   type REFLAG_REV_Field_Array is array (0 .. 15) of REFLAG_REV0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for REFLAG_REV
   type REFLAG_REV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REV as a value
            Val : HAL.UInt16;
         when True =>
            --  REV as an array
            Arr : REFLAG_REV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for REFLAG_REV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Result Event Flag Register
   type REFLAG_Register is record
      --  Result Event for Result Register 0
      REV            : REFLAG_REV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REFLAG_Register use record
      REV            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Source Event 0/1
   type SEFLAG_SEV0_Field is
     (
      --  No source event
      VALUE1,
      --  A source event has occurred
      VALUE2)
     with Size => 1;
   for SEFLAG_SEV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SEFLAG_SEV array
   type SEFLAG_SEV_Field_Array is array (0 .. 1) of SEFLAG_SEV0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SEFLAG_SEV
   type SEFLAG_SEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEV as a value
            Val : HAL.UInt2;
         when True =>
            --  SEV as an array
            Arr : SEFLAG_SEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SEFLAG_SEV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Source Event Flag Register
   type SEFLAG_Register is record
      --  Source Event 0/1
      SEV           : SEFLAG_SEV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEFLAG_Register use record
      SEV           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clear Channel Event for Channel 0
   type CEFCLR_CEV0_Field is
     (
      --  No action
      VALUE1,
      --  Clear the channel event flag in GxCEFLAG
      VALUE2)
     with Size => 1;
   for CEFCLR_CEV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  CEFCLR_CEV array
   type CEFCLR_CEV_Field_Array is array (0 .. 7) of CEFCLR_CEV0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for CEFCLR_CEV
   type CEFCLR_CEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CEV as a value
            Val : HAL.UInt8;
         when True =>
            --  CEV as an array
            Arr : CEFCLR_CEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CEFCLR_CEV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Channel Event Flag Clear Register
   type CEFCLR_Register is record
      --  Write-only. Clear Channel Event for Channel 0
      CEV           : CEFCLR_CEV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEFCLR_Register use record
      CEV           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clear Result Event for Result Register 0
   type REFCLR_REV0_Field is
     (
      --  No action
      VALUE1,
      --  Clear the result event flag in GxREFLAG
      VALUE2)
     with Size => 1;
   for REFCLR_REV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  REFCLR_REV array
   type REFCLR_REV_Field_Array is array (0 .. 15) of REFCLR_REV0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for REFCLR_REV
   type REFCLR_REV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REV as a value
            Val : HAL.UInt16;
         when True =>
            --  REV as an array
            Arr : REFCLR_REV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for REFCLR_REV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Result Event Flag Clear Register
   type REFCLR_Register is record
      --  Write-only. Clear Result Event for Result Register 0
      REV            : REFCLR_REV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REFCLR_Register use record
      REV            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Clear Source Event 0/1
   type SEFCLR_SEV0_Field is
     (
      --  No action
      VALUE1,
      --  Clear the source event flag in GxSEFLAG
      VALUE2)
     with Size => 1;
   for SEFCLR_SEV0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SEFCLR_SEV array
   type SEFCLR_SEV_Field_Array is array (0 .. 1) of SEFCLR_SEV0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SEFCLR_SEV
   type SEFCLR_SEV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEV as a value
            Val : HAL.UInt2;
         when True =>
            --  SEV as an array
            Arr : SEFCLR_SEV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SEFCLR_SEV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Source Event Flag Clear Register
   type SEFCLR_Register is record
      --  Write-only. Clear Source Event 0/1
      SEV           : SEFCLR_SEV_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEFCLR_Register use record
      SEV           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV0NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV1NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV1NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV2NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV2NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV3NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV3NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV4NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV4NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV5NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV5NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV6NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV6NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Channel Event i
   type CEVNP0_CEV7NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for CEVNP0_CEV7NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Channel Event Node Pointer Register 0
   type CEVNP0_Register is record
      --  Service Request Node Pointer Channel Event i
      CEV0NP : CEVNP0_CEV0NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV1NP : CEVNP0_CEV1NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV2NP : CEVNP0_CEV2NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV3NP : CEVNP0_CEV3NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV4NP : CEVNP0_CEV4NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV5NP : CEVNP0_CEV5NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV6NP : CEVNP0_CEV6NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Channel Event i
      CEV7NP : CEVNP0_CEV7NP_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEVNP0_Register use record
      CEV0NP at 0 range 0 .. 3;
      CEV1NP at 0 range 4 .. 7;
      CEV2NP at 0 range 8 .. 11;
      CEV3NP at 0 range 12 .. 15;
      CEV4NP at 0 range 16 .. 19;
      CEV5NP at 0 range 20 .. 23;
      CEV6NP at 0 range 24 .. 27;
      CEV7NP at 0 range 28 .. 31;
   end record;

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV0NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV1NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV1NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV2NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV2NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV3NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV3NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV4NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV4NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV5NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV5NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV6NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV6NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP0_REV7NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP0_REV7NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Result Event Node Pointer Register 0
   type REVNP0_Register is record
      --  Service Request Node Pointer Result Event i
      REV0NP : REVNP0_REV0NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV1NP : REVNP0_REV1NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV2NP : REVNP0_REV2NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV3NP : REVNP0_REV3NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV4NP : REVNP0_REV4NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV5NP : REVNP0_REV5NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV6NP : REVNP0_REV6NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV7NP : REVNP0_REV7NP_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REVNP0_Register use record
      REV0NP at 0 range 0 .. 3;
      REV1NP at 0 range 4 .. 7;
      REV2NP at 0 range 8 .. 11;
      REV3NP at 0 range 12 .. 15;
      REV4NP at 0 range 16 .. 19;
      REV5NP at 0 range 20 .. 23;
      REV6NP at 0 range 24 .. 27;
      REV7NP at 0 range 28 .. 31;
   end record;

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV8NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV8NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV9NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV9NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV10NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV10NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV11NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV11NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV12NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV12NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV13NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV13NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV14NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV14NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Result Event i
   type REVNP1_REV15NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for REVNP1_REV15NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Result Event Node Pointer Register 1
   type REVNP1_Register is record
      --  Service Request Node Pointer Result Event i
      REV8NP  : REVNP1_REV8NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV9NP  : REVNP1_REV9NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV10NP : REVNP1_REV10NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV11NP : REVNP1_REV11NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV12NP : REVNP1_REV12NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV13NP : REVNP1_REV13NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV14NP : REVNP1_REV14NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Result Event i
      REV15NP : REVNP1_REV15NP_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REVNP1_Register use record
      REV8NP  at 0 range 0 .. 3;
      REV9NP  at 0 range 4 .. 7;
      REV10NP at 0 range 8 .. 11;
      REV11NP at 0 range 12 .. 15;
      REV12NP at 0 range 16 .. 19;
      REV13NP at 0 range 20 .. 23;
      REV14NP at 0 range 24 .. 27;
      REV15NP at 0 range 28 .. 31;
   end record;

   --  Service Request Node Pointer Source Event i
   type SEVNP_SEV0NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for SEVNP_SEV0NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Service Request Node Pointer Source Event i
   type SEVNP_SEV1NP_Field is
     (
      --  Select service request line 0 of group x
      VALUE1,
      --  Select service request line 3 of group x
      VALUE2,
      --  Select shared service request line 0
      VALUE3,
      --  Select shared service request line 3
      VALUE4)
     with Size => 4;
   for SEVNP_SEV1NP_Field use
     (VALUE1 => 0,
      VALUE2 => 3,
      VALUE3 => 4,
      VALUE4 => 7);

   --  Source Event Node Pointer Register
   type SEVNP_Register is record
      --  Service Request Node Pointer Source Event i
      SEV0NP        : SEVNP_SEV0NP_Field := NRF_SVD.VADC.VALUE1;
      --  Service Request Node Pointer Source Event i
      SEV1NP        : SEVNP_SEV1NP_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEVNP_Register use record
      SEV0NP        at 0 range 0 .. 3;
      SEV1NP        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Activate Group Service Request Node 0
   type SRACT_AGSR0_Field is
     (
      --  No action
      VALUE1,
      --  Activate the associated service request line
      VALUE2)
     with Size => 1;
   for SRACT_AGSR0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SRACT_AGSR array
   type SRACT_AGSR_Field_Array is array (0 .. 1) of SRACT_AGSR0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SRACT_AGSR
   type SRACT_AGSR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AGSR as a value
            Val : HAL.UInt2;
         when True =>
            --  AGSR as an array
            Arr : SRACT_AGSR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SRACT_AGSR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Activate Shared Service Request Node 0
   type SRACT_ASSR0_Field is
     (
      --  No action
      VALUE1,
      --  Activate the associated service request line
      VALUE2)
     with Size => 1;
   for SRACT_ASSR0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  SRACT_ASSR array
   type SRACT_ASSR_Field_Array is array (0 .. 3) of SRACT_ASSR0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for SRACT_ASSR
   type SRACT_ASSR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ASSR as a value
            Val : HAL.UInt4;
         when True =>
            --  ASSR as an array
            Arr : SRACT_ASSR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SRACT_ASSR_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Service Request Software Activation Trigger
   type SRACT_Register is record
      --  Write-only. Activate Group Service Request Node 0
      AGSR           : SRACT_AGSR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Write-only. Activate Shared Service Request Node 0
      ASSR           : SRACT_ASSR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRACT_Register use record
      AGSR           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ASSR           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype EMUXCTR_EMUXSET_Field is HAL.UInt3;
   subtype EMUXCTR_EMUXACT_Field is HAL.UInt3;
   subtype EMUXCTR_EMUXCH_Field is HAL.UInt10;

   --  External Multiplexer Mode
   type EMUXCTR_EMUXMODE_Field is
     (
      --  Software control (no hardware action)
      VALUE1,
      --  Steady mode (use EMUXSET value)
      VALUE2,
      --  Single-step mode
      VALUE3,
      --  Sequence mode
      VALUE4)
     with Size => 2;
   for EMUXCTR_EMUXMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  External Multiplexer Coding Scheme
   type EMUXCTR_EMXCOD_Field is
     (
      --  Output the channel number in binary code
      VALUE1,
      --  Output the channel number in Gray code
      VALUE2)
     with Size => 1;
   for EMUXCTR_EMXCOD_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Multiplexer Sample Time Control
   type EMUXCTR_EMXST_Field is
     (
      --  Use STCE whenever the setting changes
      VALUE1,
      --  Use STCE for each conversion of an external channel
      VALUE2)
     with Size => 1;
   for EMUXCTR_EMXST_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  External Multiplexer Channel Selection Style
   type EMUXCTR_EMXCSS_Field is
     (
      --  Channel number: Bitfield EMUXCH selects an arbitrary channel
      VALUE1,
      --  Channel enable: Each bit of bitfield EMUXCH selects the associated
      --  channel for EMUX control
      VALUE2)
     with Size => 1;
   for EMUXCTR_EMXCSS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Write Control for EMUX Configuration
   type EMUXCTR_EMXWC_Field is
     (
      --  No write access to EMUX cfg.
      VALUE1,
      --  Bitfields EMXMODE, EMXCOD, EMXST, EMXCSS can be written
      VALUE2)
     with Size => 1;
   for EMUXCTR_EMXWC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  E0ternal Multiplexer Control Register, Group x
   type EMUXCTR_Register is record
      --  External Multiplexer Start Selection
      EMUXSET        : EMUXCTR_EMUXSET_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Read-only. External Multiplexer Actual Selection
      EMUXACT        : EMUXCTR_EMUXACT_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  External Multiplexer Channel Select
      EMUXCH         : EMUXCTR_EMUXCH_Field := 16#0#;
      --  External Multiplexer Mode
      EMUXMODE       : EMUXCTR_EMUXMODE_Field := NRF_SVD.VADC.VALUE1;
      --  External Multiplexer Coding Scheme
      EMXCOD         : EMUXCTR_EMXCOD_Field := NRF_SVD.VADC.VALUE1;
      --  External Multiplexer Sample Time Control
      EMXST          : EMUXCTR_EMXST_Field := NRF_SVD.VADC.VALUE1;
      --  External Multiplexer Channel Selection Style
      EMXCSS         : EMUXCTR_EMXCSS_Field := NRF_SVD.VADC.VALUE1;
      --  Write-only. Write Control for EMUX Configuration
      EMXWC          : EMUXCTR_EMXWC_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMUXCTR_Register use record
      EMUXSET        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      EMUXACT        at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      EMUXCH         at 0 range 16 .. 25;
      EMUXMODE       at 0 range 26 .. 27;
      EMXCOD         at 0 range 28 .. 28;
      EMXST          at 0 range 29 .. 29;
      EMXCSS         at 0 range 30 .. 30;
      EMXWC          at 0 range 31 .. 31;
   end record;

   --  Valid Flag of Result Register x
   type VFR_VF0_Field is
     (
      --  Read access: No new valid data available Write access: No effect
      VALUE1,
      --  Read access: Result register x contains valid data and has not yet
      --  been read, or bit FCR has been updated Write access: Clear this valid
      --  flag and bitfield DRC in register GxRESy (overrides a hardware set
      --  action)
      VALUE2)
     with Size => 1;
   for VFR_VF0_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  VFR_VF array
   type VFR_VF_Field_Array is array (0 .. 15) of VFR_VF0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for VFR_VF
   type VFR_VF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VF as a value
            Val : HAL.UInt16;
         when True =>
            --  VF as an array
            Arr : VFR_VF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for VFR_VF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Valid Flag Register, Group 0
   type VFR_Register is record
      --  Valid Flag of Result Register x
      VF             : VFR_VF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VFR_Register use record
      VF             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Input Class Select
   type CHCTR_ICLSEL_Field is
     (
      --  Use group-specific class 0
      VALUE1,
      --  Use group-specific class 1
      VALUE2,
      --  Use global class 0
      VALUE3,
      --  Use global class 1
      VALUE4)
     with Size => 2;
   for CHCTR_ICLSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Lower Boundary Select
   type CHCTR_BNDSELL_Field is
     (
      --  Use group-specific boundary 0
      VALUE1,
      --  Use group-specific boundary 1
      VALUE2,
      --  Use global boundary 0
      VALUE3,
      --  Use global boundary 1
      VALUE4)
     with Size => 2;
   for CHCTR_BNDSELL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Upper Boundary Select
   type CHCTR_BNDSELU_Field is
     (
      --  Use group-specific boundary 0
      VALUE1,
      --  Use group-specific boundary 1
      VALUE2,
      --  Use global boundary 0
      VALUE3,
      --  Use global boundary 1
      VALUE4)
     with Size => 2;
   for CHCTR_BNDSELU_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Channel Event Mode
   type CHCTR_CHEVMODE_Field is
     (
      --  Never
      VALUE1,
      --  NCM: If result is inside the boundary band FCM: If result becomes
      --  high (above cmp. val.)
      VALUE2,
      --  NCM: If result is outside the boundary band FCM: If result becomes
      --  low (below cmp. val.)
      VALUE3,
      --  NCM: Always (ignore band) FCM: If result switches to either level
      VALUE4)
     with Size => 2;
   for CHCTR_CHEVMODE_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Synchronization Request
   type CHCTR_SYNC_Field is
     (
      --  No synchroniz. request, standalone operation
      VALUE1,
      --  Request a synchronized conversion of this channel (only taken into
      --  account for a master)
      VALUE2)
     with Size => 1;
   for CHCTR_SYNC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Reference Input Selection
   type CHCTR_REFSEL_Field is
     (
      --  Standard reference Ground VSS
      VALUE1,
      --  Alternate reference Ground from CH0
      VALUE2)
     with Size => 1;
   for CHCTR_REFSEL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  BoundaryExtension
   type CHCTR_BNDSELX_Field is
     (
      --  Standard mode: select boundaries via BNDSELU/BNDSELL
      VALUE1,
      --  Use result reg. GxRES1 as upper boundary
      VALUE2,
      --  Use result reg. GxRES15 as upper boundary
      VALUE3)
     with Size => 4;
   for CHCTR_BNDSELX_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 15);

   --  Result Register
   type CHCTR_RESREG_Field is
     (
      --  Store result in group result register GxRES0
      VALUE1,
      --  Store result in group result register GxRES15
      VALUE2)
     with Size => 4;
   for CHCTR_RESREG_Field use
     (VALUE1 => 0,
      VALUE2 => 15);

   --  Result Target for Background Source
   type CHCTR_RESTBS_Field is
     (
      --  Store results in the selected group result register
      VALUE1,
      --  Store results in the global result register
      VALUE2)
     with Size => 1;
   for CHCTR_RESTBS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Result Position
   type CHCTR_RESPOS_Field is
     (
      --  Store results left-aligned
      VALUE1,
      --  Store results right-aligned
      VALUE2)
     with Size => 1;
   for CHCTR_RESPOS_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Broken Wire Detection Channel
   type CHCTR_BWDCH_Field is
     (
      --  Select VAREF
      VALUE1,
      --  Select VAGND
      VALUE2)
     with Size => 2;
   for CHCTR_BWDCH_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Broken Wire Detection Enable
   type CHCTR_BWDEN_Field is
     (
      --  Normal operation
      VALUE1,
      --  Additional preparation phase is enabled
      VALUE2)
     with Size => 1;
   for CHCTR_BWDEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Channel Ctrl. Reg.
   type CHCTR_Register is record
      --  Input Class Select
      ICLSEL         : CHCTR_ICLSEL_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Lower Boundary Select
      BNDSELL        : CHCTR_BNDSELL_Field := NRF_SVD.VADC.VALUE1;
      --  Upper Boundary Select
      BNDSELU        : CHCTR_BNDSELU_Field := NRF_SVD.VADC.VALUE1;
      --  Channel Event Mode
      CHEVMODE       : CHCTR_CHEVMODE_Field := NRF_SVD.VADC.VALUE1;
      --  Synchronization Request
      SYNC           : CHCTR_SYNC_Field := NRF_SVD.VADC.VALUE1;
      --  Reference Input Selection
      REFSEL         : CHCTR_REFSEL_Field := NRF_SVD.VADC.VALUE1;
      --  BoundaryExtension
      BNDSELX        : CHCTR_BNDSELX_Field := NRF_SVD.VADC.VALUE1;
      --  Result Register
      RESREG         : CHCTR_RESREG_Field := NRF_SVD.VADC.VALUE1;
      --  Result Target for Background Source
      RESTBS         : CHCTR_RESTBS_Field := NRF_SVD.VADC.VALUE1;
      --  Result Position
      RESPOS         : CHCTR_RESPOS_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_22_27 : HAL.UInt6 := 16#0#;
      --  Broken Wire Detection Channel
      BWDCH          : CHCTR_BWDCH_Field := NRF_SVD.VADC.VALUE1;
      --  Broken Wire Detection Enable
      BWDEN          : CHCTR_BWDEN_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHCTR_Register use record
      ICLSEL         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BNDSELL        at 0 range 4 .. 5;
      BNDSELU        at 0 range 6 .. 7;
      CHEVMODE       at 0 range 8 .. 9;
      SYNC           at 0 range 10 .. 10;
      REFSEL         at 0 range 11 .. 11;
      BNDSELX        at 0 range 12 .. 15;
      RESREG         at 0 range 16 .. 19;
      RESTBS         at 0 range 20 .. 20;
      RESPOS         at 0 range 21 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      BWDCH          at 0 range 28 .. 29;
      BWDEN          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Channel Ctrl. Reg.
   type CHCTR_Registers is array (0 .. 7) of CHCTR_Register
     with Volatile;

   subtype RCR_DRCTR_Field is HAL.UInt4;

   --  Data Modification Mode
   type RCR_DMM_Field is
     (
      --  Standard data reduction (accumulation)
      VALUE1,
      --  Result filtering mode
      VALUE2,
      --  Difference mode
      VALUE3)
     with Size => 2;
   for RCR_DMM_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Wait-for-Read Mode Enable
   type RCR_WFR_Field is
     (
      --  Overwrite mode
      VALUE1,
      --  Wait-for-read mode enabled for this register
      VALUE2)
     with Size => 1;
   for RCR_WFR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  FIFO Mode Enable
   type RCR_FEN_Field is
     (
      --  Separate result register
      VALUE1,
      --  Part of a FIFO structure: copy each new valid result
      VALUE2,
      --  Maximum mode: copy new result if bigger
      VALUE3,
      --  Minimum mode: copy new result if smaller
      VALUE4)
     with Size => 2;
   for RCR_FEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  Service Request Generation Enable
   type RCR_SRGEN_Field is
     (
      --  No service request
      VALUE1,
      --  Service request after a result event
      VALUE2)
     with Size => 1;
   for RCR_SRGEN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Result Control Reg.
   type RCR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Data Reduction Control
      DRCTR          : RCR_DRCTR_Field := 16#0#;
      --  Data Modification Mode
      DMM            : RCR_DMM_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Wait-for-Read Mode Enable
      WFR            : RCR_WFR_Field := NRF_SVD.VADC.VALUE1;
      --  FIFO Mode Enable
      FEN            : RCR_FEN_Field := NRF_SVD.VADC.VALUE1;
      --  unspecified
      Reserved_27_30 : HAL.UInt4 := 16#0#;
      --  Service Request Generation Enable
      SRGEN          : RCR_SRGEN_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      DRCTR          at 0 range 16 .. 19;
      DMM            at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      WFR            at 0 range 24 .. 24;
      FEN            at 0 range 25 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      SRGEN          at 0 range 31 .. 31;
   end record;

   --  Result Control Reg.
   type RCR_Registers is array (0 .. 15) of RCR_Register
     with Volatile;

   subtype RES_RESULT_Field is HAL.UInt16;
   subtype RES_DRC_Field is HAL.UInt4;
   subtype RES_CHNR_Field is HAL.UInt5;
   subtype RES_EMUX_Field is HAL.UInt3;

   --  Converted Request Source
   type RES_CRS_Field is
     (
      --  Request source 0
      VALUE1,
      --  Request source 1
      VALUE2,
      --  Request source 2
      VALUE3)
     with Size => 2;
   for RES_CRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Fast Compare Result
   type RES_FCR_Field is
     (
      --  Signal level was below compare value
      VALUE1,
      --  Signal level was above compare value
      VALUE2)
     with Size => 1;
   for RES_FCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Valid Flag
   type RES_VF_Field is
     (
      --  No new result available
      VALUE1,
      --  Bitfield RESULT has been updated with new result value and has not
      --  yet been read, or bit FCR has been updated
      VALUE2)
     with Size => 1;
   for RES_VF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Result Register
   type RES_Register is record
      --  *** Reading this field has side effects on other resources ***.
      --  Result of Most Recent Conversion
      RESULT : RES_RESULT_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Reduction Counter
      DRC    : RES_DRC_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Channel Number
      CHNR   : RES_CHNR_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. External Multiplexer Setting
      EMUX   : RES_EMUX_Field := 16#0#;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Converted Request Source
      CRS    : RES_CRS_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Fast Compare Result
      FCR    : RES_FCR_Field := NRF_SVD.VADC.VALUE1;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Valid Flag
      VF     : RES_VF_Field := NRF_SVD.VADC.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RES_Register use record
      RESULT at 0 range 0 .. 15;
      DRC    at 0 range 16 .. 19;
      CHNR   at 0 range 20 .. 24;
      EMUX   at 0 range 25 .. 27;
      CRS    at 0 range 28 .. 29;
      FCR    at 0 range 30 .. 30;
      VF     at 0 range 31 .. 31;
   end record;

   --  Result Register
   type RES_Registers is array (0 .. 15) of RES_Register
     with Volatile;

   subtype RESD_RESULT_Field is HAL.UInt16;
   subtype RESD_DRC_Field is HAL.UInt4;
   subtype RESD_CHNR_Field is HAL.UInt5;
   subtype RESD_EMUX_Field is HAL.UInt3;

   --  Converted Request Source
   type RESD_CRS_Field is
     (
      --  Request source 0
      VALUE1,
      --  Request source 1
      VALUE2,
      --  Request source 2
      VALUE3)
     with Size => 2;
   for RESD_CRS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2);

   --  Fast Compare Result
   type RESD_FCR_Field is
     (
      --  Signal level was below compare value
      VALUE1,
      --  Signal level was above compare value
      VALUE2)
     with Size => 1;
   for RESD_FCR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Valid Flag
   type RESD_VF_Field is
     (
      --  No new result available
      VALUE1,
      --  Bitfield RESULT has been updated with new result value and has not
      --  yet been read, or bit FCR has been updated
      VALUE2)
     with Size => 1;
   for RESD_VF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Result Register, Debug
   type RESD_Register is record
      --  Read-only. Result of Most Recent Conversion
      RESULT : RESD_RESULT_Field;
      --  Read-only. Data Reduction Counter
      DRC    : RESD_DRC_Field;
      --  Read-only. Channel Number
      CHNR   : RESD_CHNR_Field;
      --  Read-only. External Multiplexer Setting
      EMUX   : RESD_EMUX_Field;
      --  Read-only. Converted Request Source
      CRS    : RESD_CRS_Field;
      --  Read-only. Fast Compare Result
      FCR    : RESD_FCR_Field;
      --  Read-only. Valid Flag
      VF     : RESD_VF_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESD_Register use record
      RESULT at 0 range 0 .. 15;
      DRC    at 0 range 16 .. 19;
      CHNR   at 0 range 20 .. 24;
      EMUX   at 0 range 25 .. 27;
      CRS    at 0 range 28 .. 29;
      FCR    at 0 range 30 .. 30;
      VF     at 0 range 31 .. 31;
   end record;

   --  Result Register, Debug
   type RESD_Registers is array (0 .. 15) of RESD_Register
     with Volatile;

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
      --  Access Protection Register
      ACCPROT0   : aliased ACCPROT0_Register;
      --  Access Protection Register
      ACCPROT1   : aliased ACCPROT1_Register;
      --  Input Class Register, Global
      GLOBICLASS : aliased GLOBICLASS_Registers;
      --  Global Boundary Select Register
      GLOBBOUND  : aliased GLOBBOUND_Register;
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
      --  External Multiplexer Select Register
      EMUXSEL    : aliased EMUXSEL_Register;
   end record
     with Volatile;

   for VADC_Peripheral use record
      CLC        at 16#0# range 0 .. 31;
      ID         at 16#8# range 0 .. 31;
      OCS        at 16#28# range 0 .. 31;
      GLOBCFG    at 16#80# range 0 .. 31;
      ACCPROT0   at 16#88# range 0 .. 31;
      ACCPROT1   at 16#8C# range 0 .. 31;
      GLOBICLASS at 16#A0# range 0 .. 63;
      GLOBBOUND  at 16#B8# range 0 .. 31;
      GLOBEFLAG  at 16#E0# range 0 .. 31;
      GLOBEVNP   at 16#140# range 0 .. 31;
      BRSSEL     at 16#180# range 0 .. 63;
      BRSPND     at 16#1C0# range 0 .. 63;
      BRSCTRL    at 16#200# range 0 .. 31;
      BRSMR      at 16#204# range 0 .. 31;
      GLOBRCR    at 16#280# range 0 .. 31;
      GLOBRES    at 16#300# range 0 .. 31;
      GLOBRESD   at 16#380# range 0 .. 31;
      EMUXSEL    at 16#3F0# range 0 .. 31;
   end record;

   --  Analog to Digital Converter
   VADC_Periph : aliased VADC_Peripheral
     with Import, Address => System'To_Address (16#48030000#);

   type VADC_G_Disc is
     (
      Inr0,
      Bur0);

   --  Analog to Digital Converter
   type VADC_Peripheral_1
     (Discriminent : VADC_G_Disc := Inr0)
   is record
      --  Arbitration Configuration Register
      ARBCFG  : aliased ARBCFG_Register;
      --  Arbitration Priority Register
      ARBPR   : aliased ARBPR_Register;
      --  Channel Assignment Register
      CHASS   : aliased CHASS_Register;
      --  Result Assignment Register
      RRASS   : aliased RRASS_Register;
      --  Input Class Register 0
      ICLASS  : aliased ICLASS_Registers;
      --  Alias Register
      ALIAS   : aliased ALIAS_Register;
      --  Boundary Select Register
      BOUND   : aliased BOUND_Register;
      --  Synchronization Control Register
      SYNCTR  : aliased SYNCTR_Register;
      --  Boundary Flag Register
      BFL     : aliased BFL_Register;
      --  Boundary Flag Software Register
      BFLS    : aliased BFLS_Register;
      --  Boundary Flag Control Register
      BFLC    : aliased BFLC_Register;
      --  Boundary Flag Node Pointer Register
      BFLNP   : aliased BFLNP_Register;
      --  Queue 0 Source Control Register
      QCTRL0  : aliased QCTRL0_Register;
      --  Queue 0 Mode Register
      QMR0    : aliased QMR0_Register;
      --  Queue 0 Status Register
      QSR0    : aliased QSR0_Register;
      --  Queue 0 Register 0
      Q0R0    : aliased Q0R0_Register;
      --  Autoscan Source Control Register
      ASCTRL  : aliased ASCTRL_Register;
      --  Autoscan Source Mode Register
      ASMR    : aliased ASMR_Register;
      --  Autoscan Source Channel Select Register
      ASSEL   : aliased ASSEL_Register;
      --  Autoscan Source Pending Register
      ASPND   : aliased ASPND_Register;
      --  Channel Event Flag Register
      CEFLAG  : aliased CEFLAG_Register;
      --  Result Event Flag Register
      REFLAG  : aliased REFLAG_Register;
      --  Source Event Flag Register
      SEFLAG  : aliased SEFLAG_Register;
      --  Channel Event Flag Clear Register
      CEFCLR  : aliased CEFCLR_Register;
      --  Result Event Flag Clear Register
      REFCLR  : aliased REFCLR_Register;
      --  Source Event Flag Clear Register
      SEFCLR  : aliased SEFCLR_Register;
      --  Channel Event Node Pointer Register 0
      CEVNP0  : aliased CEVNP0_Register;
      --  Result Event Node Pointer Register 0
      REVNP0  : aliased REVNP0_Register;
      --  Result Event Node Pointer Register 1
      REVNP1  : aliased REVNP1_Register;
      --  Source Event Node Pointer Register
      SEVNP   : aliased SEVNP_Register;
      --  Service Request Software Activation Trigger
      SRACT   : aliased SRACT_Register;
      --  E0ternal Multiplexer Control Register, Group x
      EMUXCTR : aliased EMUXCTR_Register;
      --  Valid Flag Register, Group 0
      VFR     : aliased VFR_Register;
      --  Channel Ctrl. Reg.
      CHCTR   : aliased CHCTR_Registers;
      --  Result Control Reg.
      RCR     : aliased RCR_Registers;
      --  Result Register
      RES     : aliased RES_Registers;
      --  Result Register, Debug
      RESD    : aliased RESD_Registers;
      case Discriminent is
         when Inr0 =>
            --  Queue 0 Input Register
            QINR0 : aliased QINR0_Register;
         when Bur0 =>
            --  Queue 0 Backup Register
            QBUR0 : aliased QBUR0_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for VADC_Peripheral_1 use record
      ARBCFG  at 16#80# range 0 .. 31;
      ARBPR   at 16#84# range 0 .. 31;
      CHASS   at 16#88# range 0 .. 31;
      RRASS   at 16#8C# range 0 .. 31;
      ICLASS  at 16#A0# range 0 .. 63;
      ALIAS   at 16#B0# range 0 .. 31;
      BOUND   at 16#B8# range 0 .. 31;
      SYNCTR  at 16#C0# range 0 .. 31;
      BFL     at 16#C8# range 0 .. 31;
      BFLS    at 16#CC# range 0 .. 31;
      BFLC    at 16#D0# range 0 .. 31;
      BFLNP   at 16#D4# range 0 .. 31;
      QCTRL0  at 16#100# range 0 .. 31;
      QMR0    at 16#104# range 0 .. 31;
      QSR0    at 16#108# range 0 .. 31;
      Q0R0    at 16#10C# range 0 .. 31;
      ASCTRL  at 16#120# range 0 .. 31;
      ASMR    at 16#124# range 0 .. 31;
      ASSEL   at 16#128# range 0 .. 31;
      ASPND   at 16#12C# range 0 .. 31;
      CEFLAG  at 16#180# range 0 .. 31;
      REFLAG  at 16#184# range 0 .. 31;
      SEFLAG  at 16#188# range 0 .. 31;
      CEFCLR  at 16#190# range 0 .. 31;
      REFCLR  at 16#194# range 0 .. 31;
      SEFCLR  at 16#198# range 0 .. 31;
      CEVNP0  at 16#1A0# range 0 .. 31;
      REVNP0  at 16#1B0# range 0 .. 31;
      REVNP1  at 16#1B4# range 0 .. 31;
      SEVNP   at 16#1C0# range 0 .. 31;
      SRACT   at 16#1C8# range 0 .. 31;
      EMUXCTR at 16#1F0# range 0 .. 31;
      VFR     at 16#1F8# range 0 .. 31;
      CHCTR   at 16#200# range 0 .. 255;
      RCR     at 16#280# range 0 .. 511;
      RES     at 16#300# range 0 .. 511;
      RESD    at 16#380# range 0 .. 511;
      QINR0   at 16#110# range 0 .. 31;
      QBUR0   at 16#110# range 0 .. 31;
   end record;

   --  Analog to Digital Converter
   VADC_G0_Periph : aliased VADC_Peripheral
     with Import, Address => System'To_Address (16#48030400#);

   --  Analog to Digital Converter
   VADC_G1_Periph : aliased VADC_Peripheral
     with Import, Address => System'To_Address (16#48030800#);

end NRF_SVD.VADC;
