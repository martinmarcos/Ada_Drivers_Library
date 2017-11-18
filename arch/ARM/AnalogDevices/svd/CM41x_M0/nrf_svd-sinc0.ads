--

--  This spec has been automatically generated from CM41x_M0.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SINC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable Filter Pair 0
   type CTL_EN0_Field is
     (
      --  Disable
      C0Dis,
      --  Enable and Assign to Group 0
      C0Engrp0)
     with Size => 2;
   for CTL_EN0_Field use
     (C0Dis => 0,
      C0Engrp0 => 2);

   --  Enable Filter Pair 1
   type CTL_EN1_Field is
     (
      --  Disable
      C1Dis,
      --  Enable and Assign to Group 0
      C1Engrp0)
     with Size => 2;
   for CTL_EN1_Field use
     (C1Dis => 0,
      C1Engrp0 => 2);

   --  Enable Filter Pair 2
   type CTL_EN2_Field is
     (
      --  Disable
      C2Dis,
      --  Enable and Assign to Group 0
      C2Engrp0)
     with Size => 2;
   for CTL_EN2_Field use
     (C2Dis => 0,
      C2Engrp0 => 2);

   --  Enable Filter Pair 3
   type CTL_EN3_Field is
     (
      --  Disable
      C3Dis,
      --  Enable and Assign to Group 0
      C3Engrp0)
     with Size => 2;
   for CTL_EN3_Field use
     (C3Dis => 0,
      C3Engrp0 => 2);

   --  Control Register
   type CTL_Register is record
      --  Enable Filter Pair 0
      EN0            : CTL_EN0_Field := NRF_SVD.SINC0.C0Dis;
      --  Enable Filter Pair 1
      EN1            : CTL_EN1_Field := NRF_SVD.SINC0.C1Dis;
      --  Enable Filter Pair 2
      EN2            : CTL_EN2_Field := NRF_SVD.SINC0.C2Dis;
      --  Enable Filter Pair 3
      EN3            : CTL_EN3_Field := NRF_SVD.SINC0.C3Dis;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Enable FIFO Overflow for Group 0
      EFOVF0         : Boolean := False;
      --  Enable Primary Count for Group 0
      EPCNT0         : Boolean := False;
      --  Enable Saturation for Group 0
      ESAT0          : Boolean := False;
      --  Enable Limit for Group 0
      ELIM0          : Boolean := False;
      --  unspecified
      Reserved_16_27 : HAL.UInt12 := 16#0#;
      --  Enable FIFO Overflow for Group 1
      EFOVF1         : Boolean := False;
      --  Enable Primary Count for Group 1
      EPCNT1         : Boolean := False;
      --  Enable Saturation for Group 1
      ESAT1          : Boolean := False;
      --  Enable Limit for Group 1
      ELIM1          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      EN0            at 0 range 0 .. 1;
      EN1            at 0 range 2 .. 3;
      EN2            at 0 range 4 .. 5;
      EN3            at 0 range 6 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      EFOVF0         at 0 range 12 .. 12;
      EPCNT0         at 0 range 13 .. 13;
      ESAT0          at 0 range 14 .. 14;
      ELIM0          at 0 range 15 .. 15;
      Reserved_16_27 at 0 range 16 .. 27;
      EFOVF1         at 0 range 28 .. 28;
      EPCNT1         at 0 range 29 .. 29;
      ESAT1          at 0 range 30 .. 30;
      ELIM1          at 0 range 31 .. 31;
   end record;

   --  STAT_MIN array
   type STAT_MIN_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STAT_MIN
   type STAT_MIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MIN as a value
            Val : HAL.UInt4;
         when True =>
            --  MIN as an array
            Arr : STAT_MIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STAT_MIN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STAT_MAX array
   type STAT_MAX_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STAT_MAX
   type STAT_MAX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MAX as a value
            Val : HAL.UInt4;
         when True =>
            --  MAX as an array
            Arr : STAT_MAX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STAT_MAX_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STAT_PSAT array
   type STAT_PSAT_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for STAT_PSAT
   type STAT_PSAT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSAT as a value
            Val : HAL.UInt4;
         when True =>
            --  PSAT as an array
            Arr : STAT_PSAT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STAT_PSAT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Status Register
   type STAT_Register is record
      --  Minimum for Secondary Filter 0 Status
      MIN            : STAT_MIN_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_10  : HAL.UInt7 := 16#0#;
      --  Primary (Filter) Fabric Error for Group 0 Status
      PFAB0          : Boolean := False;
      --  FIFO Overflow for Group 0 Status
      FOVF0          : Boolean := False;
      --  Primary (Filter) Count for Group 0 Status
      PCNT0          : Boolean := False;
      --  Read-only. Group 0 Saturation Status
      GSAT0          : Boolean := False;
      --  Read-only. Group 0 Limit Status
      GLIM0          : Boolean := False;
      --  Maximum for Secondary Filter 0 Status
      MAX            : STAT_MAX_Field := (As_Array => False, Val => 16#0#);
      --  Primary (Filter) 0 Saturation Status
      PSAT           : STAT_PSAT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  Primary (Filter) Fabric Error for Group 1 Status
      PFAB1          : Boolean := False;
      --  FIFO Overflow for Group 1 Status
      FOVF1          : Boolean := False;
      --  Primary (Filter) Count for Group 1 Status
      PCNT1          : Boolean := False;
      --  Read-only. Group 1 Saturation Status
      GSAT1          : Boolean := False;
      --  Read-only. Group 1 Limit Status
      GLIM1          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      MIN            at 0 range 0 .. 3;
      Reserved_4_10  at 0 range 4 .. 10;
      PFAB0          at 0 range 11 .. 11;
      FOVF0          at 0 range 12 .. 12;
      PCNT0          at 0 range 13 .. 13;
      GSAT0          at 0 range 14 .. 14;
      GLIM0          at 0 range 15 .. 15;
      MAX            at 0 range 16 .. 19;
      PSAT           at 0 range 20 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      PFAB1          at 0 range 27 .. 27;
      FOVF1          at 0 range 28 .. 28;
      PCNT1          at 0 range 29 .. 29;
      GSAT1          at 0 range 30 .. 30;
      GLIM1          at 0 range 31 .. 31;
   end record;

   subtype CLK_MCEN0_Field is HAL.UInt2;
   subtype CLK_MADJ0_Field is HAL.UInt6;
   subtype CLK_MDIV0_Field is HAL.UInt6;
   subtype CLK_MCEN1_Field is HAL.UInt2;
   subtype CLK_MADJ1_Field is HAL.UInt6;
   subtype CLK_MDIV1_Field is HAL.UInt6;

   --  Clock Control Register
   type CLK_Register is record
      --  Modulator (Clock) Enable for Group 0
      MCEN0          : CLK_MCEN0_Field := 16#0#;
      --  Modulator (Clock) Adjustment for Group 0
      MADJ0          : CLK_MADJ0_Field := 16#0#;
      --  Modulator (Clock) Request for Group 0 Status
      MREQ0          : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Modulator (Clock) Divider for Group 0
      MDIV0          : CLK_MDIV0_Field := 16#4#;
      --  Modulator (Clock) Enable for Group 1
      MCEN1          : CLK_MCEN1_Field := 16#0#;
      --  Modulator (Clock) Adjustment for Group 1
      MADJ1          : CLK_MADJ1_Field := 16#0#;
      --  Modulator (Clock) Request for Group 1 Status
      MREQ1          : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Modulator (Clock) Divider for Group 1
      MDIV1          : CLK_MDIV1_Field := 16#4#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      MCEN0          at 0 range 0 .. 1;
      MADJ0          at 0 range 2 .. 7;
      MREQ0          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      MDIV0          at 0 range 10 .. 15;
      MCEN1          at 0 range 16 .. 17;
      MADJ1          at 0 range 18 .. 23;
      MREQ1          at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      MDIV1          at 0 range 26 .. 31;
   end record;

   subtype RATE_PDEC_Field is HAL.UInt9;
   subtype RATE_SDEC_Field is HAL.UInt6;
   subtype RATE_PADJ_Field is HAL.UInt9;
   subtype RATE_SADJ_Field is HAL.UInt6;

   --  Rate Control for Group 0 Register
   type RATE_Register is record
      --  Primary (Filter) Decimation Rate
      PDEC           : RATE_PDEC_Field := 16#4#;
      --  Secondary (Filter) Decimation Rate
      SDEC           : RATE_SDEC_Field := 16#4#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Primary (Filter) Adjustment
      PADJ           : RATE_PADJ_Field := 16#0#;
      --  Secondary (Filter) Adjustment
      SADJ           : RATE_SADJ_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RATE_Register use record
      PDEC           at 0 range 0 .. 8;
      SDEC           at 0 range 9 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PADJ           at 0 range 16 .. 24;
      SADJ           at 0 range 25 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LEVEL_LWIN_Field is HAL.UInt3;
   subtype LEVEL_LCNT_Field is HAL.UInt3;
   subtype LEVEL_PCNT_Field is HAL.UInt8;
   subtype LEVEL_PSCALE_Field is HAL.UInt6;

   --  Level Control for Group 0 Register
   type LEVEL_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  (Excursion) Limit Window
      LWIN           : LEVEL_LWIN_Field := 16#0#;
      --  (Excursion) Limit Count
      LCNT           : LEVEL_LCNT_Field := 16#0#;
      --  Secondary (Filter) Order Select
      SORD           : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Primary (Filter) Count
      PCNT           : LEVEL_PCNT_Field := 16#0#;
      --  Primary (Filter) Scaling
      PSCALE         : LEVEL_PSCALE_Field := 16#4#;
      --  Primary (Filter) Order
      PORD           : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEVEL_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      LWIN           at 0 range 8 .. 10;
      LCNT           at 0 range 11 .. 13;
      SORD           at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PCNT           at 0 range 16 .. 23;
      PSCALE         at 0 range 24 .. 29;
      PORD           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype LIMIT_LMIN_Field is HAL.UInt16;
   subtype LIMIT_LMAX_Field is HAL.UInt16;

   --  (Amplitude) Limits for Secondary Filter 0 Register
   type LIMIT_Register is record
      --  Limit Minimum for Secondary Filter 0
      LMIN : LIMIT_LMIN_Field := 16#0#;
      --  Limit Maximum for Secondary Filter 0
      LMAX : LIMIT_LMAX_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIMIT_Register use record
      LMIN at 0 range 0 .. 15;
      LMAX at 0 range 16 .. 31;
   end record;

   subtype PHEAD_PHEAD_Field is HAL.UInt31;

   --  Primary (Filters) Head for Group 0 Register
   type PHEAD_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Primary (Filter) Head Pointer
      PHEAD        : PHEAD_PHEAD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHEAD_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      PHEAD        at 0 range 1 .. 31;
   end record;

   subtype PTAIL_PTAIL_Field is HAL.UInt31;

   --  Primary (Filters) Tail for Group 0 Register
   type PTAIL_Register is record
      --  unspecified
      Reserved_0_0 : HAL.Bit := 16#0#;
      --  Primary (Filter) Tail Pointer
      PTAIL        : PTAIL_PTAIL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTAIL_Register use record
      Reserved_0_0 at 0 range 0 .. 0;
      PTAIL        at 0 range 1 .. 31;
   end record;

   --  Pair 0 History Pointer
   type HIS_STAT_P0HISPTR_Field is
     (
      --  History Register 3, MS
      P0His0_H,
      --  History Register 0, LS
      P0His1_L,
      --  History Register 0, MS
      P0His1_H,
      --  History Register 1, LS
      P0His2_L,
      --  History Register 1, MS
      P0His2_H,
      --  History Register 2, LS
      P0His3_L,
      --  History Register 2, MS
      P0His3_H,
      --  History Register 3, LS
      P0His0_L)
     with Size => 3;
   for HIS_STAT_P0HISPTR_Field use
     (P0His0_H => 0,
      P0His1_L => 1,
      P0His1_H => 2,
      P0His2_L => 3,
      P0His2_H => 4,
      P0His3_L => 5,
      P0His3_H => 6,
      P0His0_L => 7);

   --  Pair 1 History Pointer
   type HIS_STAT_P1HISPTR_Field is
     (
      --  History Register 3, MS
      P1His0_H,
      --  History Register, LS
      P1His1_L,
      --  History Register 0, MS
      P1His1_H,
      --  History Register 1, LS
      P1His2_L,
      --  History Register 1, MS
      P1His2_H,
      --  History Register 2, LS
      P1His3_L,
      --  History Register 2, MS
      P1His3_H,
      --  History Register 3, LS
      P1His0_L)
     with Size => 3;
   for HIS_STAT_P1HISPTR_Field use
     (P1His0_H => 0,
      P1His1_L => 1,
      P1His1_H => 2,
      P1His2_L => 3,
      P1His2_H => 4,
      P1His3_L => 5,
      P1His3_H => 6,
      P1His0_L => 7);

   --  Pair 2 History Pointer
   type HIS_STAT_P2HISPTR_Field is
     (
      --  History Register 3, MS
      P2His0_H,
      --  History Register 0, LS
      P2His1_L,
      --  History Register 0, MS
      P2His1_H,
      --  History Register 1, LS
      P2His2_L,
      --  History Register 1, MS
      P2His2_H,
      --  History Register 2, LS
      P2His3_L,
      --  History Register 2, MS
      P2His3_H,
      --  History Register 3, LS
      P2His0_L)
     with Size => 3;
   for HIS_STAT_P2HISPTR_Field use
     (P2His0_H => 0,
      P2His1_L => 1,
      P2His1_H => 2,
      P2His2_L => 3,
      P2His2_H => 4,
      P2His3_L => 5,
      P2His3_H => 6,
      P2His0_L => 7);

   --  Pair 3 History Pointer
   type HIS_STAT_P3HISPTR_Field is
     (
      --  History Register 3, MS
      P3His0_H,
      --  History Register 0, LS
      P3His1_L,
      --  History Register 0, MS
      P3His1_H,
      --  History Register 1, LS
      P3His2_L,
      --  History Register 1, MS
      P3His2_H,
      --  History Register 2, LS
      P3His3_L,
      --  History Register 2, MS
      P3His3_H,
      --  History Register 3, LS
      P3His0_L)
     with Size => 3;
   for HIS_STAT_P3HISPTR_Field use
     (P3His0_H => 0,
      P3His1_L => 1,
      P3His1_H => 2,
      P3His2_L => 3,
      P3His2_H => 4,
      P3His3_L => 5,
      P3His3_H => 6,
      P3His0_L => 7);

   --  History Status Register
   type HIS_STAT_Register is record
      --  Read-only. Pair 0 History Pointer
      P0HISPTR       : HIS_STAT_P0HISPTR_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Pair 1 History Pointer
      P1HISPTR       : HIS_STAT_P1HISPTR_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Pair 2 History Pointer
      P2HISPTR       : HIS_STAT_P2HISPTR_Field;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. Pair 3 History Pointer
      P3HISPTR       : HIS_STAT_P3HISPTR_Field;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HIS_STAT_Register use record
      P0HISPTR       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      P1HISPTR       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      P2HISPTR       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      P3HISPTR       at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype P0SEC_HIST_LO_Field is HAL.UInt16;
   subtype P0SEC_HIST_HI_Field is HAL.UInt16;

   --  Pair 0 Secondary (Filter) History n Register
   type P0SEC_HIST_Register is record
      --  Read-only. Low Data Word
      LO : P0SEC_HIST_LO_Field;
      --  Read-only. High Data Word
      HI : P0SEC_HIST_HI_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P0SEC_HIST_Register use record
      LO at 0 range 0 .. 15;
      HI at 0 range 16 .. 31;
   end record;

   --  Pair 0 Secondary (Filter) History n Register
   type P0SEC_HIST_Registers is array (0 .. 3) of P0SEC_HIST_Register
     with Volatile;

   subtype P1SEC_HIST_LO_Field is HAL.UInt16;
   subtype P1SEC_HIST_HI_Field is HAL.UInt16;

   --  Pair 1 Secondary (Filter) History n Register
   type P1SEC_HIST_Register is record
      --  Read-only. Low Data Word
      LO : P1SEC_HIST_LO_Field;
      --  Read-only. High Data Word
      HI : P1SEC_HIST_HI_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P1SEC_HIST_Register use record
      LO at 0 range 0 .. 15;
      HI at 0 range 16 .. 31;
   end record;

   --  Pair 1 Secondary (Filter) History n Register
   type P1SEC_HIST_Registers is array (0 .. 3) of P1SEC_HIST_Register
     with Volatile;

   subtype P2SEC_HIST_LO_Field is HAL.UInt16;
   subtype P2SEC_HIST_HI_Field is HAL.UInt16;

   --  Pair 2 Secondary (Filter) History n Register
   type P2SEC_HIST_Register is record
      --  Read-only. Low Data Word
      LO : P2SEC_HIST_LO_Field;
      --  Read-only. High Data Word
      HI : P2SEC_HIST_HI_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P2SEC_HIST_Register use record
      LO at 0 range 0 .. 15;
      HI at 0 range 16 .. 31;
   end record;

   --  Pair 2 Secondary (Filter) History n Register
   type P2SEC_HIST_Registers is array (0 .. 3) of P2SEC_HIST_Register
     with Volatile;

   subtype P3SEC_HIST_LO_Field is HAL.UInt16;
   subtype P3SEC_HIST_HI_Field is HAL.UInt16;

   --  Pair 3 Secondary (Filter) History n Register
   type P3SEC_HIST_Register is record
      --  Read-only. Low Data Word
      LO : P3SEC_HIST_LO_Field;
      --  Read-only. High Data Word
      HI : P3SEC_HIST_HI_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for P3SEC_HIST_Register use record
      LO at 0 range 0 .. 15;
      HI at 0 range 16 .. 31;
   end record;

   --  Pair 3 Secondary (Filter) History n Register
   type P3SEC_HIST_Registers is array (0 .. 3) of P3SEC_HIST_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  SINC
   type SINC0_Peripheral is record
      --  Control Register
      CTL        : aliased CTL_Register;
      --  Status Register
      STAT       : aliased STAT_Register;
      --  Clock Control Register
      CLK        : aliased CLK_Register;
      --  Rate Control for Group 0 Register
      RATE0      : aliased RATE_Register;
      --  Rate Control for Group 1 Register
      RATE1      : aliased RATE_Register;
      --  Level Control for Group 0 Register
      LEVEL0     : aliased LEVEL_Register;
      --  Level Control for Group 1 Register
      LEVEL1     : aliased LEVEL_Register;
      --  (Amplitude) Limits for Secondary Filter 0 Register
      LIMIT0     : aliased LIMIT_Register;
      --  (Amplitude) Limits for Secondary Filter 1 Register
      LIMIT1     : aliased LIMIT_Register;
      --  (Amplitude) Limits for Secondary Filter 2 Register
      LIMIT2     : aliased LIMIT_Register;
      --  (Amplitude) Limits for Secondary Filter 3 Register
      LIMIT3     : aliased LIMIT_Register;
      --  Bias for Group 0 Register
      BIAS0      : aliased HAL.UInt32;
      --  Bias for Group 1 Register
      BIAS1      : aliased HAL.UInt32;
      --  Primary (Filters) Pointer for Group 0 Register
      PPTR0      : aliased HAL.UInt32;
      --  Primary (Filters) Pointer for Group 1 Register
      PPTR1      : aliased HAL.UInt32;
      --  Primary (Filters) Head for Group 0 Register
      PHEAD0     : aliased PHEAD_Register;
      --  Primary (Filters) Head for Group 1 Register
      PHEAD1     : aliased PHEAD_Register;
      --  Primary (Filters) Tail for Group 0 Register
      PTAIL0     : aliased PTAIL_Register;
      --  Primary (Filters) Tail for Group 1 Register
      PTAIL1     : aliased PTAIL_Register;
      --  History Status Register
      HIS_STAT   : aliased HIS_STAT_Register;
      --  Pair 0 Secondary (Filter) History n Register
      P0SEC_HIST : aliased P0SEC_HIST_Registers;
      --  Pair 1 Secondary (Filter) History n Register
      P1SEC_HIST : aliased P1SEC_HIST_Registers;
      --  Pair 2 Secondary (Filter) History n Register
      P2SEC_HIST : aliased P2SEC_HIST_Registers;
      --  Pair 3 Secondary (Filter) History n Register
      P3SEC_HIST : aliased P3SEC_HIST_Registers;
   end record
     with Volatile;

   for SINC0_Peripheral use record
      CTL        at 16#0# range 0 .. 31;
      STAT       at 16#4# range 0 .. 31;
      CLK        at 16#8# range 0 .. 31;
      RATE0      at 16#10# range 0 .. 31;
      RATE1      at 16#14# range 0 .. 31;
      LEVEL0     at 16#18# range 0 .. 31;
      LEVEL1     at 16#1C# range 0 .. 31;
      LIMIT0     at 16#20# range 0 .. 31;
      LIMIT1     at 16#24# range 0 .. 31;
      LIMIT2     at 16#28# range 0 .. 31;
      LIMIT3     at 16#2C# range 0 .. 31;
      BIAS0      at 16#30# range 0 .. 31;
      BIAS1      at 16#34# range 0 .. 31;
      PPTR0      at 16#38# range 0 .. 31;
      PPTR1      at 16#3C# range 0 .. 31;
      PHEAD0     at 16#40# range 0 .. 31;
      PHEAD1     at 16#44# range 0 .. 31;
      PTAIL0     at 16#48# range 0 .. 31;
      PTAIL1     at 16#4C# range 0 .. 31;
      HIS_STAT   at 16#50# range 0 .. 31;
      P0SEC_HIST at 16#80# range 0 .. 127;
      P1SEC_HIST at 16#90# range 0 .. 127;
      P2SEC_HIST at 16#A0# range 0 .. 127;
      P3SEC_HIST at 16#B0# range 0 .. 127;
   end record;

   --  SINC
   SINC0_Periph : aliased SINC0_Peripheral
     with Import, Address => System'To_Address (16#40049000#);

end NRF_SVD.SINC0;
