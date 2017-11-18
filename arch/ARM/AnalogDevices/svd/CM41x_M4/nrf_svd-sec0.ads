--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SEC0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable
   type GCTL_EN_Field is
     (
      --  Disable
      Dis,
      --  Enable
      En)
     with Size => 1;
   for GCTL_EN_Field use
     (Dis => 0,
      En => 1);

   --  Reset
   type GCTL_RESET_Field is
     (
      --  No Action
      No_Reset,
      --  Reset
      Reset)
     with Size => 1;
   for GCTL_RESET_Field use
     (No_Reset => 0,
      Reset => 1);

   --  Lock
   type GCTL_LOCK_Field is
     (
      --  Unlock
      Unlock,
      --  Lock
      Lock)
     with Size => 1;
   for GCTL_LOCK_Field use
     (Unlock => 0,
      Lock => 1);

   --  Global Control Register
   type GCTL_Register is record
      --  Enable
      EN            : GCTL_EN_Field := NRF_SVD.SEC0.Dis;
      --  Reset
      RESET         : GCTL_RESET_Field := NRF_SVD.SEC0.No_Reset;
      --  unspecified
      Reserved_2_30 : HAL.UInt29 := 16#0#;
      --  Lock
      LOCK          : GCTL_LOCK_Field := NRF_SVD.SEC0.Unlock;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GCTL_Register use record
      EN            at 0 range 0 .. 0;
      RESET         at 0 range 1 .. 1;
      Reserved_2_30 at 0 range 2 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Error
   type GSTAT_ERR_Field is
     (
      --  No Error
      No_Err,
      --  Error Occurred
      Err)
     with Size => 1;
   for GSTAT_ERR_Field use
     (No_Err => 0,
      Err => 1);

   --  Error Cause
   type GSTAT_ERRC_Field is
     (
      --  SFI Error
      Sfierr,
      --  SSI Error
      Ssierr)
     with Size => 2;
   for GSTAT_ERRC_Field use
     (Sfierr => 0,
      Ssierr => 2);

   --  Address Error
   type GSTAT_ADRERR_Field is
     (
      --  No Error
      No_Adrerr,
      --  Error Occurred
      Adrerr)
     with Size => 1;
   for GSTAT_ADRERR_Field use
     (No_Adrerr => 0,
      Adrerr => 1);

   --  Lock Write Error
   type GSTAT_LWERR_Field is
     (
      --  No Error
      No_Lwerr,
      --  Error Occurred
      Lwerr)
     with Size => 1;
   for GSTAT_LWERR_Field use
     (No_Lwerr => 0,
      Lwerr => 1);

   --  Global Status Register
   type GSTAT_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Error
      ERR           : GSTAT_ERR_Field := NRF_SVD.SEC0.No_Err;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Read-only. Error Cause
      ERRC          : GSTAT_ERRC_Field := NRF_SVD.SEC0.Sfierr;
      --  unspecified
      Reserved_6_29 : HAL.UInt24 := 16#0#;
      --  Address Error
      ADRERR        : GSTAT_ADRERR_Field := NRF_SVD.SEC0.No_Adrerr;
      --  Lock Write Error
      LWERR         : GSTAT_LWERR_Field := NRF_SVD.SEC0.No_Lwerr;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GSTAT_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      ERRC          at 0 range 4 .. 5;
      Reserved_6_29 at 0 range 6 .. 29;
      ADRERR        at 0 range 30 .. 30;
      LWERR         at 0 range 31 .. 31;
   end record;

   subtype RAISE_SID_Field is HAL.UInt8;

   --  Global Raise Register
   type RAISE_Register is record
      --  Source ID
      SID           : RAISE_SID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAISE_Register use record
      SID           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enable
   type FCTL_EN_Field is
     (
      --  Disable
      Dis,
      --  Enable
      En)
     with Size => 1;
   for FCTL_EN_Field use
     (Dis => 0,
      En => 1);

   --  Reset
   type FCTL_RESET_Field is
     (
      --  No Action
      No_Reset,
      --  Reset
      Reset)
     with Size => 1;
   for FCTL_RESET_Field use
     (No_Reset => 0,
      Reset => 1);

   --  Fault Output Enable
   type FCTL_FOEN_Field is
     (
      --  Disable
      Fltout_Dis,
      --  Enable
      Fltout_En)
     with Size => 1;
   for FCTL_FOEN_Field use
     (Fltout_Dis => 0,
      Fltout_En => 1);

   --  Trigger Output Enable
   type FCTL_TOEN_Field is
     (
      --  Disable
      Trgout_Dis,
      --  Enable
      Trgout_En)
     with Size => 1;
   for FCTL_TOEN_Field use
     (Trgout_Dis => 0,
      Trgout_En => 1);

   --  System Reset Enable
   type FCTL_SREN_Field is
     (
      --  Disable
      Sysrst_Dis,
      --  Enable
      Sysrst_En)
     with Size => 1;
   for FCTL_SREN_Field use
     (Sysrst_Dis => 0,
      Sysrst_En => 1);

   --  Fault Input Enable
   type FCTL_FIEN_Field is
     (
      --  Disable
      Fltin_Dis,
      --  Enable
      Fltin_En)
     with Size => 1;
   for FCTL_FIEN_Field use
     (Fltin_Dis => 0,
      Fltin_En => 1);

   --  COP Mode Select
   type FCTL_CMS_Field is
     (
      --  Fault Mode
      Flt_Mode,
      --  COP Mode
      Cop_Mode)
     with Size => 1;
   for FCTL_CMS_Field use
     (Flt_Mode => 0,
      Cop_Mode => 1);

   --  Trigger Event Select
   type FCTL_TES_Field is
     (
      --  Fault Active Mode
      Fltact_Mode,
      --  Fault Pending Mode
      Fltpnd_Mode)
     with Size => 1;
   for FCTL_TES_Field use
     (Fltact_Mode => 0,
      Fltpnd_Mode => 1);

   --  Lock
   type FCTL_LOCK_Field is
     (
      --  UnLock
      Unlock,
      --  Lock
      Lock)
     with Size => 1;
   for FCTL_LOCK_Field use
     (Unlock => 0,
      Lock => 1);

   --  Fault Control Register
   type FCTL_Register is record
      --  Enable
      EN             : FCTL_EN_Field := NRF_SVD.SEC0.Dis;
      --  Reset
      RESET          : FCTL_RESET_Field := NRF_SVD.SEC0.No_Reset;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Fault Output Enable
      FOEN           : FCTL_FOEN_Field := NRF_SVD.SEC0.Fltout_Dis;
      --  Trigger Output Enable
      TOEN           : FCTL_TOEN_Field := NRF_SVD.SEC0.Trgout_Dis;
      --  System Reset Enable
      SREN           : FCTL_SREN_Field := NRF_SVD.SEC0.Sysrst_Dis;
      --  Fault Input Enable
      FIEN           : FCTL_FIEN_Field := NRF_SVD.SEC0.Fltin_Dis;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  COP Mode Select
      CMS            : FCTL_CMS_Field := NRF_SVD.SEC0.Flt_Mode;
      --  Trigger Event Select
      TES            : FCTL_TES_Field := NRF_SVD.SEC0.Fltact_Mode;
      --  unspecified
      Reserved_14_30 : HAL.UInt17 := 16#0#;
      --  Lock
      LOCK           : FCTL_LOCK_Field := NRF_SVD.SEC0.Unlock;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCTL_Register use record
      EN             at 0 range 0 .. 0;
      RESET          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      FOEN           at 0 range 4 .. 4;
      TOEN           at 0 range 5 .. 5;
      SREN           at 0 range 6 .. 6;
      FIEN           at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CMS            at 0 range 12 .. 12;
      TES            at 0 range 13 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  Error
   type FSTAT_ERR_Field is
     (
      --  No Error
      No_Err,
      --  Error Occurred
      Err)
     with Size => 1;
   for FSTAT_ERR_Field use
     (No_Err => 0,
      Err => 1);

   --  Error Cause
   type FSTAT_ERRC_Field is
     (
      --  Source Overflow Error
      Sovferr,
      --  End Error
      Enderr)
     with Size => 2;
   for FSTAT_ERRC_Field use
     (Sovferr => 0,
      Enderr => 2);

   --  Pending Fault
   type FSTAT_PND_Field is
     (
      --  Not Pending
      No_Fltpnd,
      --  Pending
      Fltpnd)
     with Size => 1;
   for FSTAT_PND_Field use
     (No_Fltpnd => 0,
      Fltpnd => 1);

   --  Fault Active
   type FSTAT_ACT_Field is
     (
      --  No Fault
      No_Fltact,
      --  Active Fault
      Fltact)
     with Size => 1;
   for FSTAT_ACT_Field use
     (No_Fltact => 0,
      Fltact => 1);

   --  Next Pending Fault
   type FSTAT_NPND_Field is
     (
      --  Not Pending
      No_Nxtflt,
      --  Pending
      Nxtflt)
     with Size => 1;
   for FSTAT_NPND_Field use
     (No_Nxtflt => 0,
      Nxtflt => 1);

   --  Fault Status Register
   type FSTAT_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Error
      ERR            : FSTAT_ERR_Field := NRF_SVD.SEC0.No_Err;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Read-only. Error Cause
      ERRC           : FSTAT_ERRC_Field := NRF_SVD.SEC0.Sovferr;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. Pending Fault
      PND            : FSTAT_PND_Field := NRF_SVD.SEC0.No_Fltpnd;
      --  Read-only. Fault Active
      ACT            : FSTAT_ACT_Field := NRF_SVD.SEC0.No_Fltact;
      --  Read-only. Next Pending Fault
      NPND           : FSTAT_NPND_Field := NRF_SVD.SEC0.No_Nxtflt;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FSTAT_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      ERR            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ERRC           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      PND            at 0 range 8 .. 8;
      ACT            at 0 range 9 .. 9;
      NPND           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype FSID_SID_Field is HAL.UInt8;

   --  Fault External
   type FSID_FEXT_Field is
     (
      --  Fault Internal
      Src_Intflt,
      --  Fault External
      Src_Extflt)
     with Size => 1;
   for FSID_FEXT_Field use
     (Src_Intflt => 0,
      Src_Extflt => 1);

   --  Fault Source ID Register
   type FSID_Register is record
      --  Read-only. Source ID
      SID            : FSID_SID_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Fault External
      FEXT           : FSID_FEXT_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FSID_Register use record
      SID            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FEXT           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype FEND_SID_Field is HAL.UInt8;

   --  Fault External
   type FEND_FEXT_Field is
     (
      --  Fault Internal
      End_Intflt,
      --  Fault External
      End_Extflt)
     with Size => 1;
   for FEND_FEXT_Field use
     (End_Intflt => 0,
      End_Extflt => 1);

   --  Fault End Register
   type FEND_Register is record
      --  Source ID
      SID            : FEND_SID_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Fault External
      FEXT           : FEND_FEXT_Field := NRF_SVD.SEC0.End_Intflt;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FEND_Register use record
      SID            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      FEXT           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   ---------------------------------
   -- SEC0_SB cluster's Registers --
   ---------------------------------

   --  Fault Enable
   type SCTL_FEN_Field is
     (
      --  Disable
      Fault_Dis,
      --  Enable
      Fault_En)
     with Size => 1;
   for SCTL_FEN_Field use
     (Fault_Dis => 0,
      Fault_En => 1);

   --  Source (signal) Enable
   type SCTL_SEN_Field is
     (
      --  Disable
      Src_Dis,
      --  Enable
      Src_En)
     with Size => 1;
   for SCTL_SEN_Field use
     (Src_Dis => 0,
      Src_En => 1);

   --  Edge Select
   type SCTL_ES_Field is
     (
      --  Level Sensitive
      Level,
      --  Edge Sensitive
      Edge)
     with Size => 1;
   for SCTL_ES_Field use
     (Level => 0,
      Edge => 1);

   --  Error Enable
   type SCTL_ERREN_Field is
     (
      --  Disable
      Err_Dis,
      --  Enable
      Err_En)
     with Size => 1;
   for SCTL_ERREN_Field use
     (Err_Dis => 0,
      Err_En => 1);

   --  Lock
   type SCTL_LOCK_Field is
     (
      --  Unlock
      Unlock,
      --  Lock
      Lock)
     with Size => 1;
   for SCTL_LOCK_Field use
     (Unlock => 0,
      Lock => 1);

   --  Source Control Register n
   type SCTL_SEC0_SB_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Fault Enable
      FEN           : SCTL_FEN_Field := NRF_SVD.SEC0.Fault_Dis;
      --  Source (signal) Enable
      SEN           : SCTL_SEN_Field := NRF_SVD.SEC0.Src_Dis;
      --  Edge Select
      ES            : SCTL_ES_Field := NRF_SVD.SEC0.Level;
      --  Error Enable
      ERREN         : SCTL_ERREN_Field := NRF_SVD.SEC0.Err_Dis;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Lock
      LOCK          : SCTL_LOCK_Field := NRF_SVD.SEC0.Unlock;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCTL_SEC0_SB_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      FEN           at 0 range 1 .. 1;
      SEN           at 0 range 2 .. 2;
      ES            at 0 range 3 .. 3;
      ERREN         at 0 range 4 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      LOCK          at 0 range 31 .. 31;
   end record;

   --  Error
   type SSTAT_ERR_Field is
     (
      --  No Error
      No_Err,
      --  Error Occurred
      Err)
     with Size => 1;
   for SSTAT_ERR_Field use
     (No_Err => 0,
      Err => 1);

   --  Error Cause
   type SSTAT_ERRC_Field is
     (
      --  Source Overflow Error
      Sovferr,
      --  End Error
      Enderr)
     with Size => 2;
   for SSTAT_ERRC_Field use
     (Sovferr => 0,
      Enderr => 2);

   --  Pending Source
   type SSTAT_PND_Field is
     (
      --  Not Pending
      Notpending,
      --  Pending
      Pending)
     with Size => 1;
   for SSTAT_PND_Field use
     (Notpending => 0,
      Pending => 1);

   --  Source Status Register n
   type SSTAT_SEC0_SB_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Error
      ERR           : SSTAT_ERR_Field := NRF_SVD.SEC0.No_Err;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Read-only. Error Cause
      ERRC          : SSTAT_ERRC_Field := NRF_SVD.SEC0.Sovferr;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Pending Source
      PND           : SSTAT_PND_Field := NRF_SVD.SEC0.Notpending;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSTAT_SEC0_SB_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ERR           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      ERRC          at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      PND           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  SSI Registers
   type SEC0_SB_Cluster is record
      --  Source Control Register n
      SCTL  : aliased SCTL_SEC0_SB_Register;
      --  Source Status Register n
      SSTAT : aliased SSTAT_SEC0_SB_Register;
   end record
     with Volatile, Size => 64;

   for SEC0_SB_Cluster use record
      SCTL  at 16#0# range 0 .. 31;
      SSTAT at 16#4# range 0 .. 31;
   end record;

   --  SSI Registers
   type SEC0_SB_Clusters is array (0 .. 75) of SEC0_SB_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  System Event Controller
   type SEC0_Peripheral is record
      --  Global Control Register
      GCTL       : aliased GCTL_Register;
      --  Global Status Register
      GSTAT      : aliased GSTAT_Register;
      --  Global Raise Register
      RAISE_k    : aliased RAISE_Register;
      --  Fault Control Register
      FCTL       : aliased FCTL_Register;
      --  Fault Status Register
      FSTAT      : aliased FSTAT_Register;
      --  Fault Source ID Register
      FSID       : aliased FSID_Register;
      --  Fault End Register
      FEND       : aliased FEND_Register;
      --  Fault Delay Register
      FDLY       : aliased HAL.UInt32;
      --  Fault Delay Current Register
      FDLY_CUR   : aliased HAL.UInt32;
      --  Fault System Reset Delay Register
      FSRDLY     : aliased HAL.UInt32;
      --  Fault System Reset Delay Current Register
      FSRDLY_CUR : aliased HAL.UInt32;
      --  Fault COP Period Register
      FCOPP      : aliased HAL.UInt32;
      --  Fault COP Period Current Register
      FCOPP_CUR  : aliased HAL.UInt32;
      --  SSI Registers
      SEC0_SB    : aliased SEC0_SB_Clusters;
   end record
     with Volatile;

   for SEC0_Peripheral use record
      GCTL       at 16#0# range 0 .. 31;
      GSTAT      at 16#4# range 0 .. 31;
      RAISE_k    at 16#8# range 0 .. 31;
      FCTL       at 16#10# range 0 .. 31;
      FSTAT      at 16#14# range 0 .. 31;
      FSID       at 16#18# range 0 .. 31;
      FEND       at 16#1C# range 0 .. 31;
      FDLY       at 16#20# range 0 .. 31;
      FDLY_CUR   at 16#24# range 0 .. 31;
      FSRDLY     at 16#28# range 0 .. 31;
      FSRDLY_CUR at 16#2C# range 0 .. 31;
      FCOPP      at 16#30# range 0 .. 31;
      FCOPP_CUR  at 16#34# range 0 .. 31;
      SEC0_SB    at 16#800# range 0 .. 4863;
   end record;

   --  System Event Controller
   SEC0_Periph : aliased SEC0_Peripheral
     with Import, Address => System'To_Address (16#41004000#);

end NRF_SVD.SEC0;
