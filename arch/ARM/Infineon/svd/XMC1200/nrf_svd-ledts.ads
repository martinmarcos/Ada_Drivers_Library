--  This spec has been automatically generated from XMC1200.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.LEDTS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ID_MOD_REV_Field is HAL.UInt8;
   subtype ID_MOD_TYPE_Field is HAL.UInt8;
   subtype ID_MOD_NUMBER_Field is HAL.UInt16;

   --  Module Identification Register
   type ID_Register is record
      --  Read-only. Module Revision Number
      MOD_REV    : ID_MOD_REV_Field;
      --  Read-only. Module Type
      MOD_TYPE   : ID_MOD_TYPE_Field;
      --  Read-only. Module Number Value
      MOD_NUMBER : ID_MOD_NUMBER_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      MOD_REV    at 0 range 0 .. 7;
      MOD_TYPE   at 0 range 8 .. 15;
      MOD_NUMBER at 0 range 16 .. 31;
   end record;

   --  Clock Master Disable
   type GLOBCTL_CMTR_Field is
     (
      --  Kernel generates its own clock for LEDTS-counter based on SFR setting
      VALUE1,
      --  LEDTS-counter takes its clock from another master kernel
      VALUE2)
     with Size => 1;
   for GLOBCTL_CMTR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Autoscan Time Period Synchronization
   type GLOBCTL_ENSYNC_Field is
     (
      --  No synchronization
      VALUE1,
      --  Synchronization enabled on Kernel0 autoscan time period
      VALUE2)
     with Size => 1;
   for GLOBCTL_ENSYNC_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Suspend Request Configuration
   type GLOBCTL_SUSCFG_Field is
     (
      --  Ignore suspend request
      VALUE1,
      --  Enable suspend according to request
      VALUE2)
     with Size => 1;
   for GLOBCTL_SUSCFG_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Mask Number of LSB Bits for Event Validation
   type GLOBCTL_MASKVAL_Field is
     (
      --  Mask LSB bit
      VALUE1,
      --  Mask 2 LSB bits
      VALUE2,
      --  Mask 8 LSB bits
      VALUE3)
     with Size => 3;
   for GLOBCTL_MASKVAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 7);

   --  Enable (Extended) Time Frame Validation
   type GLOBCTL_FENVAL_Field is
     (
      --  Disable
      VALUE1,
      --  Enable
      VALUE2)
     with Size => 1;
   for GLOBCTL_FENVAL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Time Slice Interrupt
   type GLOBCTL_ITS_EN_Field is
     (
      --  Disable
      VALUE1,
      --  Enable
      VALUE2)
     with Size => 1;
   for GLOBCTL_ITS_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable (Extended) Time Frame Interrupt
   type GLOBCTL_ITF_EN_Field is
     (
      --  Disable
      VALUE1,
      --  Enable
      VALUE2)
     with Size => 1;
   for GLOBCTL_ITF_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable Autoscan Time Period Interrupt
   type GLOBCTL_ITP_EN_Field is
     (
      --  Disable
      VALUE1,
      --  Enable (valid only for case of hardware-enabled pad turn control)
      VALUE2)
     with Size => 1;
   for GLOBCTL_ITP_EN_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  LEDTS-Counter Clock Pre-Scale Factor
   type GLOBCTL_CLK_PS_Field is
     (
      --  No clock
      VALUE1,
      --  Divide by 1
      VALUE2,
      --  Divide by 65535
      VALUE3)
     with Size => 16;
   for GLOBCTL_CLK_PS_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 65535);

   --  Global Control Register
   type GLOBCTL_Register is record
      --  Touch-Sense Function Enable
      TS_EN        : Boolean := False;
      --  LED Function Enable
      LD_EN        : Boolean := False;
      --  Clock Master Disable
      CMTR         : GLOBCTL_CMTR_Field := NRF_SVD.LEDTS.VALUE1;
      --  Enable Autoscan Time Period Synchronization
      ENSYNC       : GLOBCTL_ENSYNC_Field := NRF_SVD.LEDTS.VALUE1;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
      --  Suspend Request Configuration
      SUSCFG       : GLOBCTL_SUSCFG_Field := NRF_SVD.LEDTS.VALUE1;
      --  Mask Number of LSB Bits for Event Validation
      MASKVAL      : GLOBCTL_MASKVAL_Field := NRF_SVD.LEDTS.VALUE1;
      --  Enable (Extended) Time Frame Validation
      FENVAL       : GLOBCTL_FENVAL_Field := NRF_SVD.LEDTS.VALUE1;
      --  Enable Time Slice Interrupt
      ITS_EN       : GLOBCTL_ITS_EN_Field := NRF_SVD.LEDTS.VALUE1;
      --  Enable (Extended) Time Frame Interrupt
      ITF_EN       : GLOBCTL_ITF_EN_Field := NRF_SVD.LEDTS.VALUE1;
      --  Enable Autoscan Time Period Interrupt
      ITP_EN       : GLOBCTL_ITP_EN_Field := NRF_SVD.LEDTS.VALUE1;
      --  LEDTS-Counter Clock Pre-Scale Factor
      CLK_PS       : GLOBCTL_CLK_PS_Field := NRF_SVD.LEDTS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GLOBCTL_Register use record
      TS_EN        at 0 range 0 .. 0;
      LD_EN        at 0 range 1 .. 1;
      CMTR         at 0 range 2 .. 2;
      ENSYNC       at 0 range 3 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
      SUSCFG       at 0 range 8 .. 8;
      MASKVAL      at 0 range 9 .. 11;
      FENVAL       at 0 range 12 .. 12;
      ITS_EN       at 0 range 13 .. 13;
      ITF_EN       at 0 range 14 .. 14;
      ITP_EN       at 0 range 15 .. 15;
      CLK_PS       at 0 range 16 .. 31;
   end record;

   --  Touch-Sense TSIN Pad Turn
   type FNCTL_PADT_Field is
     (
      --  TSIN0
      VALUE1,
      --  TSIN7
      VALUE2)
     with Size => 3;
   for FNCTL_PADT_Field use
     (VALUE1 => 0,
      VALUE2 => 7);

   --  Software Control for Touch-Sense Pad Turn
   type FNCTL_PADTSW_Field is
     (
      --  The hardware automatically enables the touch-sense inputs in sequence
      --  round-robin, starting from TSIN0.
      VALUE1,
      --  Disable hardware control for software control only. The touch-sense
      --  input is configured in bit PADT.
      VALUE2)
     with Size => 1;
   for FNCTL_PADTSW_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Enable External Pull-up Configuration on Pin COLA
   type FNCTL_EPULL_Field is
     (
      --  HW over-rule to enable internal pull-up is active on TSIN[x] for set
      --  duration in touch-sense time slice. With this setting, it is not
      --  specified to assign the COLA to any pin.
      VALUE1,
      --  Enable external pull-up: Output 1 on pin COLA for whole duration of
      --  touch-sense time slice.
      VALUE2)
     with Size => 1;
   for FNCTL_EPULL_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   subtype FNCTL_FNCOL_Field is HAL.UInt3;

   --  Accumulate Count on Touch-Sense Input
   type FNCTL_ACCCNT_Field is
     (
      --  1 time
      VALUE1,
      --  2 times
      VALUE2,
      --  16 times
      VALUE3)
     with Size => 4;
   for FNCTL_ACCCNT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 15);

   --  Common Compare Enable for Touch-Sense
   type FNCTL_TSCCMP_Field is
     (
      --  Disable common compare for touch-sense
      VALUE1,
      --  Enable common compare for touch-sense
      VALUE2)
     with Size => 1;
   for FNCTL_TSCCMP_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Extension for Touch-Sense Output for Pin-Low-Level
   type FNCTL_TSOEXT_Field is
     (
      --  Extend by 1 ledts_clk
      VALUE1,
      --  Extend by 4 ledts_clk
      VALUE2,
      --  Extend by 8 ledts_clk
      VALUE3,
      --  Extend by 16 ledts_clk
      VALUE4)
     with Size => 2;
   for FNCTL_TSOEXT_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3);

   --  TS-Counter Auto Reset
   type FNCTL_TSCTRR_Field is
     (
      --  Disable TS-counter automatic reset
      VALUE1,
      --  Enable TS-counter automatic reset to 00H on the first pad turn of a
      --  new TSIN[x]. Triggered on compare match in time slice.
      VALUE2)
     with Size => 1;
   for FNCTL_TSCTRR_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Saturation of TS-Counter
   type FNCTL_TSCTRSAT_Field is
     (
      --  Disable
      VALUE1,
      --  Enable. TS-counter stops counting in the touch-sense time slice(s) of
      --  the same (extended) frame when it reaches FFH. Counter starts to
      --  count again on the first pad turn of a new TSIN[x], triggered on
      --  compare match.
      VALUE2)
     with Size => 1;
   for FNCTL_TSCTRSAT_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Number of Touch-Sense Input
   type FNCTL_NR_TSIN_Field is
     (
      --  1
      VALUE1,
      --  8
      VALUE2)
     with Size => 3;
   for FNCTL_NR_TSIN_Field use
     (VALUE1 => 0,
      VALUE2 => 7);

   --  Active Level of LED Column
   type FNCTL_COLLEV_Field is
     (
      --  Active low
      VALUE1,
      --  Active high
      VALUE2)
     with Size => 1;
   for FNCTL_COLLEV_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Number of LED Columns
   type FNCTL_NR_LEDCOL_Field is
     (
      --  1 LED column
      VALUE1,
      --  2 LED columns
      VALUE2,
      --  3 LED columns
      VALUE3,
      --  4 LED columns
      VALUE4,
      --  5 LED columns
      VALUE5,
      --  6 LED columns
      VALUE6,
      --  7 LED columns
      VALUE7,
      --  8 LED columns (max. LED columns = 7 if bit TS_EN = 1)
      VALUE8)
     with Size => 3;
   for FNCTL_NR_LEDCOL_Field use
     (VALUE1 => 0,
      VALUE2 => 1,
      VALUE3 => 2,
      VALUE4 => 3,
      VALUE5 => 4,
      VALUE6 => 5,
      VALUE7 => 6,
      VALUE8 => 7);

   --  Function Control Register
   type FNCTL_Register is record
      --  Touch-Sense TSIN Pad Turn
      PADT          : FNCTL_PADT_Field := NRF_SVD.LEDTS.VALUE1;
      --  Software Control for Touch-Sense Pad Turn
      PADTSW        : FNCTL_PADTSW_Field := NRF_SVD.LEDTS.VALUE1;
      --  Enable External Pull-up Configuration on Pin COLA
      EPULL         : FNCTL_EPULL_Field := NRF_SVD.LEDTS.VALUE1;
      --  Read-only. Previous Active Function/LED Column Status
      FNCOL         : FNCTL_FNCOL_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Accumulate Count on Touch-Sense Input
      ACCCNT        : FNCTL_ACCCNT_Field := NRF_SVD.LEDTS.VALUE1;
      --  Common Compare Enable for Touch-Sense
      TSCCMP        : FNCTL_TSCCMP_Field := NRF_SVD.LEDTS.VALUE1;
      --  Extension for Touch-Sense Output for Pin-Low-Level
      TSOEXT        : FNCTL_TSOEXT_Field := NRF_SVD.LEDTS.VALUE1;
      --  TS-Counter Auto Reset
      TSCTRR        : FNCTL_TSCTRR_Field := NRF_SVD.LEDTS.VALUE1;
      --  Saturation of TS-Counter
      TSCTRSAT      : FNCTL_TSCTRSAT_Field := NRF_SVD.LEDTS.VALUE1;
      --  Number of Touch-Sense Input
      NR_TSIN       : FNCTL_NR_TSIN_Field := NRF_SVD.LEDTS.VALUE1;
      --  Active Level of LED Column
      COLLEV        : FNCTL_COLLEV_Field := NRF_SVD.LEDTS.VALUE1;
      --  Number of LED Columns
      NR_LEDCOL     : FNCTL_NR_LEDCOL_Field := NRF_SVD.LEDTS.VALUE1;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FNCTL_Register use record
      PADT          at 0 range 0 .. 2;
      PADTSW        at 0 range 3 .. 3;
      EPULL         at 0 range 4 .. 4;
      FNCOL         at 0 range 5 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      ACCCNT        at 0 range 16 .. 19;
      TSCCMP        at 0 range 20 .. 20;
      TSOEXT        at 0 range 21 .. 22;
      TSCTRR        at 0 range 23 .. 23;
      TSCTRSAT      at 0 range 24 .. 24;
      NR_TSIN       at 0 range 25 .. 27;
      COLLEV        at 0 range 28 .. 28;
      NR_LEDCOL     at 0 range 29 .. 31;
   end record;

   --  TS-Counter Overflow Indication
   type EVFR_TSCTROVF_Field is
     (
      --  No overflow has occurred.
      VALUE1,
      --  The TS-counter has overflowed at least once.
      VALUE2)
     with Size => 1;
   for EVFR_TSCTROVF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Time Slice Interrupt Flag
   type EVFR_CTSF_Field is
     (
      --  No action.
      VALUE1,
      --  Bit TSF is cleared.
      VALUE2)
     with Size => 1;
   for EVFR_CTSF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear (Extended) Time Frame Interrupt Flag
   type EVFR_CTFF_Field is
     (
      --  No action.
      VALUE1,
      --  Bit TFF is cleared.
      VALUE2)
     with Size => 1;
   for EVFR_CTFF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Clear Autoscan Time Period Interrupt Flag
   type EVFR_CTPF_Field is
     (
      --  No action.
      VALUE1,
      --  Bit TPF is cleared.
      VALUE2)
     with Size => 1;
   for EVFR_CTPF_Field use
     (VALUE1 => 0,
      VALUE2 => 1);

   --  Event Flag Register
   type EVFR_Register is record
      --  Read-only. Time Slice Interrupt Flag
      TSF            : Boolean := False;
      --  Read-only. (Extended) Time Frame Interrupt Flag
      TFF            : Boolean := False;
      --  Read-only. Autoscan Time Period Interrupt Flag
      TPF            : Boolean := False;
      --  Read-only. TS-Counter Overflow Indication
      TSCTROVF       : EVFR_TSCTROVF_Field := NRF_SVD.LEDTS.VALUE1;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Write-only. Clear Time Slice Interrupt Flag
      CTSF           : EVFR_CTSF_Field := NRF_SVD.LEDTS.VALUE1;
      --  Write-only. Clear (Extended) Time Frame Interrupt Flag
      CTFF           : EVFR_CTFF_Field := NRF_SVD.LEDTS.VALUE1;
      --  Write-only. Clear Autoscan Time Period Interrupt Flag
      CTPF           : EVFR_CTPF_Field := NRF_SVD.LEDTS.VALUE1;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVFR_Register use record
      TSF            at 0 range 0 .. 0;
      TFF            at 0 range 1 .. 1;
      TPF            at 0 range 2 .. 2;
      TSCTROVF       at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      CTSF           at 0 range 16 .. 16;
      CTFF           at 0 range 17 .. 17;
      CTPF           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype TSVAL_TSCTRVALR_Field is HAL.UInt16;
   subtype TSVAL_TSCTRVAL_Field is HAL.UInt16;

   --  Touch-sense TS-Counter Value
   type TSVAL_Register is record
      --  Read-only. Shadow TS-Counter Value (Read)
      TSCTRVALR : TSVAL_TSCTRVALR_Field := 16#0#;
      --  TS-Counter Value
      TSCTRVAL  : TSVAL_TSCTRVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TSVAL_Register use record
      TSCTRVALR at 0 range 0 .. 15;
      TSCTRVAL  at 0 range 16 .. 31;
   end record;

   subtype LINE0_LINE_0_Field is HAL.UInt8;
   subtype LINE0_LINE_1_Field is HAL.UInt8;
   subtype LINE0_LINE_2_Field is HAL.UInt8;
   subtype LINE0_LINE_3_Field is HAL.UInt8;

   --  Line Pattern Register 0
   type LINE0_Register is record
      --  Output on LINE[x]
      LINE_0 : LINE0_LINE_0_Field := 16#0#;
      --  Output on LINE[x]
      LINE_1 : LINE0_LINE_1_Field := 16#0#;
      --  Output on LINE[x]
      LINE_2 : LINE0_LINE_2_Field := 16#0#;
      --  Output on LINE[x]
      LINE_3 : LINE0_LINE_3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINE0_Register use record
      LINE_0 at 0 range 0 .. 7;
      LINE_1 at 0 range 8 .. 15;
      LINE_2 at 0 range 16 .. 23;
      LINE_3 at 0 range 24 .. 31;
   end record;

   subtype LINE1_LINE_4_Field is HAL.UInt8;
   subtype LINE1_LINE_5_Field is HAL.UInt8;
   subtype LINE1_LINE_6_Field is HAL.UInt8;
   subtype LINE1_LINE_A_Field is HAL.UInt8;

   --  Line Pattern Register 1
   type LINE1_Register is record
      --  Output on LINE[x]
      LINE_4 : LINE1_LINE_4_Field := 16#0#;
      --  Output on LINE[x]
      LINE_5 : LINE1_LINE_5_Field := 16#0#;
      --  Output on LINE[x]
      LINE_6 : LINE1_LINE_6_Field := 16#0#;
      --  Output on LINE[x]
      LINE_A : LINE1_LINE_A_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINE1_Register use record
      LINE_4 at 0 range 0 .. 7;
      LINE_5 at 0 range 8 .. 15;
      LINE_6 at 0 range 16 .. 23;
      LINE_A at 0 range 24 .. 31;
   end record;

   --  LDCMP0_CMP_LD array element
   subtype LDCMP0_CMP_LD_Element is HAL.UInt8;

   --  LDCMP0_CMP_LD array
   type LDCMP0_CMP_LD_Field_Array is array (0 .. 3) of LDCMP0_CMP_LD_Element
     with Component_Size => 8, Size => 32;

   --  LED Compare Register 0
   type LDCMP0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP_LD as a value
            Val : HAL.UInt32;
         when True =>
            --  CMP_LD as an array
            Arr : LDCMP0_CMP_LD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for LDCMP0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  LDCMP1_CMP_LD array element
   subtype LDCMP1_CMP_LD_Element is HAL.UInt8;

   --  LDCMP1_CMP_LD array
   type LDCMP1_CMP_LD_Field_Array is array (4 .. 6) of LDCMP1_CMP_LD_Element
     with Component_Size => 8, Size => 24;

   --  Type definition for LDCMP1_CMP_LD
   type LDCMP1_CMP_LD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP_LD as a value
            Val : HAL.UInt24;
         when True =>
            --  CMP_LD as an array
            Arr : LDCMP1_CMP_LD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for LDCMP1_CMP_LD_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   subtype LDCMP1_CMP_LDA_TSCOM_Field is HAL.UInt8;

   --  LED Compare Register 1
   type LDCMP1_Register is record
      --  Compare Value for LED COL[x]
      CMP_LD        : LDCMP1_CMP_LD_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Compare Value for LED COLA / Common Compare Value for Touch-sense Pad
      --  Turns
      CMP_LDA_TSCOM : LDCMP1_CMP_LDA_TSCOM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LDCMP1_Register use record
      CMP_LD        at 0 range 0 .. 23;
      CMP_LDA_TSCOM at 0 range 24 .. 31;
   end record;

   --  TSCMP0_CMP_TS array element
   subtype TSCMP0_CMP_TS_Element is HAL.UInt8;

   --  TSCMP0_CMP_TS array
   type TSCMP0_CMP_TS_Field_Array is array (0 .. 3) of TSCMP0_CMP_TS_Element
     with Component_Size => 8, Size => 32;

   --  Touch-sense Compare Register 0
   type TSCMP0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP_TS as a value
            Val : HAL.UInt32;
         when True =>
            --  CMP_TS as an array
            Arr : TSCMP0_CMP_TS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TSCMP0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  TSCMP1_CMP_TS array element
   subtype TSCMP1_CMP_TS_Element is HAL.UInt8;

   --  TSCMP1_CMP_TS array
   type TSCMP1_CMP_TS_Field_Array is array (4 .. 7) of TSCMP1_CMP_TS_Element
     with Component_Size => 8, Size => 32;

   --  Touch-sense Compare Register 1
   type TSCMP1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMP_TS as a value
            Val : HAL.UInt32;
         when True =>
            --  CMP_TS as an array
            Arr : TSCMP1_CMP_TS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TSCMP1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LED and Touch Sense Unit 0
   type LEDTS_Peripheral is record
      --  Module Identification Register
      ID      : aliased ID_Register;
      --  Global Control Register
      GLOBCTL : aliased GLOBCTL_Register;
      --  Function Control Register
      FNCTL   : aliased FNCTL_Register;
      --  Event Flag Register
      EVFR    : aliased EVFR_Register;
      --  Touch-sense TS-Counter Value
      TSVAL   : aliased TSVAL_Register;
      --  Line Pattern Register 0
      LINE0   : aliased LINE0_Register;
      --  Line Pattern Register 1
      LINE1   : aliased LINE1_Register;
      --  LED Compare Register 0
      LDCMP0  : aliased LDCMP0_Register;
      --  LED Compare Register 1
      LDCMP1  : aliased LDCMP1_Register;
      --  Touch-sense Compare Register 0
      TSCMP0  : aliased TSCMP0_Register;
      --  Touch-sense Compare Register 1
      TSCMP1  : aliased TSCMP1_Register;
   end record
     with Volatile;

   for LEDTS_Peripheral use record
      ID      at 16#0# range 0 .. 31;
      GLOBCTL at 16#4# range 0 .. 31;
      FNCTL   at 16#8# range 0 .. 31;
      EVFR    at 16#C# range 0 .. 31;
      TSVAL   at 16#10# range 0 .. 31;
      LINE0   at 16#14# range 0 .. 31;
      LINE1   at 16#18# range 0 .. 31;
      LDCMP0  at 16#1C# range 0 .. 31;
      LDCMP1  at 16#20# range 0 .. 31;
      TSCMP0  at 16#24# range 0 .. 31;
      TSCMP1  at 16#28# range 0 .. 31;
   end record;

   --  LED and Touch Sense Unit 0
   LEDTS0_Periph : aliased LEDTS_Peripheral
     with Import, Address => System'To_Address (16#50020000#);

   --  LED and Touch Sense Unit 1
   LEDTS1_Periph : aliased LEDTS_Peripheral
     with Import, Address => System'To_Address (16#50020400#);

end NRF_SVD.LEDTS;
