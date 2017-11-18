--

--  This spec has been automatically generated from CM41x_M4.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.PWM0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Module Enable
   type CTL_GLOBEN_Field is
     (
      --  Disable
      Pwm_Dis,
      --  Enable
      Pwm_En)
     with Size => 1;
   for CTL_GLOBEN_Field use
     (Pwm_Dis => 0,
      Pwm_En => 1);

   --  Output Behavior During Emulation Mode
   type CTL_EMURUN_Field is
     (
      --  Disable Outputs
      Emurun_Dis,
      --  Enable Outputs
      Emurun_En)
     with Size => 1;
   for CTL_EMURUN_Field use
     (Emurun_Dis => 0,
      Emurun_En => 1);

   --  Enable Delay Counter for Channel A
   type CTL_DLYAEN_Field is
     (
      --  Disable
      Dlya_Dis,
      --  Enable
      Dlya_En)
     with Size => 1;
   for CTL_DLYAEN_Field use
     (Dlya_Dis => 0,
      Dlya_En => 1);

   --  Enable Delay Counter for Channel B
   type CTL_DLYBEN_Field is
     (
      --  Disable
      Dlyb_Dis,
      --  Enable
      Dlyb_En)
     with Size => 1;
   for CTL_DLYBEN_Field use
     (Dlyb_Dis => 0,
      Dlyb_En => 1);

   --  Enable Delay Counter for Channel C
   type CTL_DLYCEN_Field is
     (
      --  Disable
      Dlyc_Dis,
      --  Enable
      Dlyc_En)
     with Size => 1;
   for CTL_DLYCEN_Field use
     (Dlyc_Dis => 0,
      Dlyc_En => 1);

   --  Enable Delay Counter for Channel D
   type CTL_DLYDEN_Field is
     (
      --  Disable
      Dlyd_Dis,
      --  Enable
      Dlyd_En)
     with Size => 1;
   for CTL_DLYDEN_Field use
     (Dlyd_Dis => 0,
      Dlyd_En => 1);

   --  External Sync
   type CTL_EXTSYNC_Field is
     (
      --  Internal sync used
      Intsync,
      --  External sync used
      Extsync)
     with Size => 1;
   for CTL_EXTSYNC_Field use
     (Intsync => 0,
      Extsync => 1);

   --  External Sync Select
   type CTL_EXTSYNCSEL_Field is
     (
      --  Asynchronous External Sync
      Extsync_Async,
      --  Synchronous External Sync
      Extsync_Sync)
     with Size => 1;
   for CTL_EXTSYNCSEL_Field use
     (Extsync_Async => 0,
      Extsync_Sync => 1);

   --  Timer reference for Internal Sync
   type CTL_INTSYNCREF_Field is
     (
      --  PWMTMR0 provides sync reference
      Intsync_0,
      --  PWMTMR1 provides sync reference
      Intsync_1,
      --  PWMTMR2 provides sync reference
      Intsync_2,
      --  PWMTMR3 provides sync reference
      Intsync_3,
      --  PWMTMR4 provides sync reference
      Intsync_4)
     with Size => 3;
   for CTL_INTSYNCREF_Field use
     (Intsync_0 => 0,
      Intsync_1 => 1,
      Intsync_2 => 2,
      Intsync_3 => 3,
      Intsync_4 => 4);

   --  Control Register
   type CTL_Register is record
      --  Module Enable
      GLOBEN         : CTL_GLOBEN_Field := NRF_SVD.PWM0.Pwm_Dis;
      --  Output Behavior During Emulation Mode
      EMURUN         : CTL_EMURUN_Field := NRF_SVD.PWM0.Emurun_Dis;
      --  Software Trip
      SWTRIP         : Boolean := False;
      --  Double Update Mode Enable
      DUEN           : Boolean := False;
      --  Enable Delay Counter for Channel A
      DLYAEN         : CTL_DLYAEN_Field := NRF_SVD.PWM0.Dlya_Dis;
      --  Enable Delay Counter for Channel B
      DLYBEN         : CTL_DLYBEN_Field := NRF_SVD.PWM0.Dlyb_Dis;
      --  Enable Delay Counter for Channel C
      DLYCEN         : CTL_DLYCEN_Field := NRF_SVD.PWM0.Dlyc_Dis;
      --  Enable Delay Counter for Channel D
      DLYDEN         : CTL_DLYDEN_Field := NRF_SVD.PWM0.Dlyd_Dis;
      --  Asymmetric Dead-time Enable
      ADEN           : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  External Sync
      EXTSYNC        : CTL_EXTSYNC_Field := NRF_SVD.PWM0.Intsync;
      --  External Sync Select
      EXTSYNCSEL     : CTL_EXTSYNCSEL_Field := NRF_SVD.PWM0.Extsync_Sync;
      --  Timer reference for Internal Sync
      INTSYNCREF     : CTL_INTSYNCREF_Field := NRF_SVD.PWM0.Intsync_0;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      GLOBEN         at 0 range 0 .. 0;
      EMURUN         at 0 range 1 .. 1;
      SWTRIP         at 0 range 2 .. 2;
      DUEN           at 0 range 3 .. 3;
      DLYAEN         at 0 range 4 .. 4;
      DLYBEN         at 0 range 5 .. 5;
      DLYCEN         at 0 range 6 .. 6;
      DLYDEN         at 0 range 7 .. 7;
      ADEN           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      EXTSYNC        at 0 range 16 .. 16;
      EXTSYNCSEL     at 0 range 17 .. 17;
      INTSYNCREF     at 0 range 18 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Channel A Timer Reference
   type CHANCFG_REFTMRA_Field is
     (
      --  PWMTMR0 is Channel A reference
      Reftmra_0,
      --  PWMTMR1 is Channel A reference
      Reftmra_1)
     with Size => 1;
   for CHANCFG_REFTMRA_Field use
     (Reftmra_0 => 0,
      Reftmra_1 => 1);

   --  Channel A Mode of low Side Output
   type CHANCFG_MODELSA_Field is
     (
      --  Invert of high output
      Loa_Invhi,
      --  Independent control
      Loa_Ind)
     with Size => 1;
   for CHANCFG_MODELSA_Field use
     (Loa_Invhi => 0,
      Loa_Ind => 1);

   --  Channel A High side Polarity
   type CHANCFG_POLAH_Field is
     (
      --  Active Low
      Ah_Actlo,
      --  Active High
      Ah_Acthi)
     with Size => 1;
   for CHANCFG_POLAH_Field use
     (Ah_Actlo => 0,
      Ah_Acthi => 1);

   --  Channel A Gate Chopping Enable High Side
   type CHANCFG_ENCHOPAH_Field is
     (
      --  Disable Chopping Channel A High Side
      Chopah_Dis,
      --  Enable Chopping Channel A High Side
      Chopah_En)
     with Size => 1;
   for CHANCFG_ENCHOPAH_Field use
     (Chopah_Dis => 0,
      Chopah_En => 1);

   --  Channel A heightened-precision enable for high side Output
   type CHANCFG_ENHPAH_Field is
     (
      --  Disable HP Output Channel A High
      Hpah_Dis,
      --  Enable HP Output Channel A High
      Hpah_En)
     with Size => 1;
   for CHANCFG_ENHPAH_Field use
     (Hpah_Dis => 0,
      Hpah_En => 1);

   --  Channel A low side Polarity
   type CHANCFG_POLAL_Field is
     (
      --  Active Low
      Al_Actlo,
      --  Active High
      Al_Acthi)
     with Size => 1;
   for CHANCFG_POLAL_Field use
     (Al_Actlo => 0,
      Al_Acthi => 1);

   --  Channel A Gate Chopping Enable Low Side
   type CHANCFG_ENCHOPAL_Field is
     (
      --  Disable Chopping Channel A Low Side
      Chopal_Dis,
      --  Enable Chopping Channel A Low Side
      Chopal_En)
     with Size => 1;
   for CHANCFG_ENCHOPAL_Field use
     (Chopal_Dis => 0,
      Chopal_En => 1);

   --  Channel B Timer Reference
   type CHANCFG_REFTMRB_Field is
     (
      --  PWMTMR0 is Channel B reference
      Reftmrb_0,
      --  PWMTMR1 is Channel B reference
      Reftmrb_1)
     with Size => 1;
   for CHANCFG_REFTMRB_Field use
     (Reftmrb_0 => 0,
      Reftmrb_1 => 1);

   --  Channel B Mode of low Side Output
   type CHANCFG_MODELSB_Field is
     (
      --  Invert of high output
      Lob_Inv,
      --  Independent control
      Lob_Ind)
     with Size => 1;
   for CHANCFG_MODELSB_Field use
     (Lob_Inv => 0,
      Lob_Ind => 1);

   --  Channel B High side Polarity
   type CHANCFG_POLBH_Field is
     (
      --  Active Low
      Bh_Actlo,
      --  Active High
      Bh_Acthi)
     with Size => 1;
   for CHANCFG_POLBH_Field use
     (Bh_Actlo => 0,
      Bh_Acthi => 1);

   --  Channel B Gate Chopping Enable High Side
   type CHANCFG_ENCHOPBH_Field is
     (
      --  Disable Chopping Channel B High Side
      Chopbh_Dis,
      --  Enable Chopping Channel B High Side
      Chopbh_En)
     with Size => 1;
   for CHANCFG_ENCHOPBH_Field use
     (Chopbh_Dis => 0,
      Chopbh_En => 1);

   --  Channel B heightened-precision enable for high side Output
   type CHANCFG_ENHPBH_Field is
     (
      --  Disable HP Output Channel B High
      Hpbh_Dis,
      --  Enable HP Output Channel B High
      Hpbh_En)
     with Size => 1;
   for CHANCFG_ENHPBH_Field use
     (Hpbh_Dis => 0,
      Hpbh_En => 1);

   --  Channel B low side Polarity
   type CHANCFG_POLBL_Field is
     (
      --  Active Low
      Bl_Actlo,
      --  Active High
      Bl_Acthi)
     with Size => 1;
   for CHANCFG_POLBL_Field use
     (Bl_Actlo => 0,
      Bl_Acthi => 1);

   --  Channel B Gate Chopping Enable Low Side
   type CHANCFG_ENCHOPBL_Field is
     (
      --  Disable Chopping Channel B Low Side
      Chopbl_Dis,
      --  Enable Chopping Channel B Low Side
      Chopbl_En)
     with Size => 1;
   for CHANCFG_ENCHOPBL_Field use
     (Chopbl_Dis => 0,
      Chopbl_En => 1);

   --  Channel C Timer Reference
   type CHANCFG_REFTMRC_Field is
     (
      --  PWMTMR0 is Channel C reference
      Reftmrc_0,
      --  PWMTMR1 is Channel C reference
      Reftmrc_1)
     with Size => 1;
   for CHANCFG_REFTMRC_Field use
     (Reftmrc_0 => 0,
      Reftmrc_1 => 1);

   --  Channel C Mode of low Side Output
   type CHANCFG_MODELSC_Field is
     (
      --  Invert of high output
      Loc_Invhi,
      --  Independent control
      Loc_Ind)
     with Size => 1;
   for CHANCFG_MODELSC_Field use
     (Loc_Invhi => 0,
      Loc_Ind => 1);

   --  Channel C High side Polarity
   type CHANCFG_POLCH_Field is
     (
      --  Active Low
      Ch_Actlo,
      --  Active High
      Ch_Acthi)
     with Size => 1;
   for CHANCFG_POLCH_Field use
     (Ch_Actlo => 0,
      Ch_Acthi => 1);

   --  Channel C Gate Chopping Enable High Side
   type CHANCFG_ENCHOPCH_Field is
     (
      --  Disable Chopping Channel C High Side
      Chopch_Dis,
      --  Enable Chopping Channel C High Side
      Chopch_En)
     with Size => 1;
   for CHANCFG_ENCHOPCH_Field use
     (Chopch_Dis => 0,
      Chopch_En => 1);

   --  Channel C heightened-precision enable for high side Output
   type CHANCFG_ENHPCH_Field is
     (
      --  Disable HP Output Channel C High
      Hpch_Dis,
      --  Enable HP Output Channel C High
      Hpch_En)
     with Size => 1;
   for CHANCFG_ENHPCH_Field use
     (Hpch_Dis => 0,
      Hpch_En => 1);

   --  Channel C low side Polarity
   type CHANCFG_POLCL_Field is
     (
      --  Active Low
      Cl_Actlo,
      --  Active High
      Cl_Acthi)
     with Size => 1;
   for CHANCFG_POLCL_Field use
     (Cl_Actlo => 0,
      Cl_Acthi => 1);

   --  Channel C Gate Chopping Enable Low Side
   type CHANCFG_ENCHOPCL_Field is
     (
      --  Disable Chopping Channel C Low Side
      Chopcl_Dis,
      --  Enable Chopping Channel C Low Side
      Chopcl_En)
     with Size => 1;
   for CHANCFG_ENCHOPCL_Field use
     (Chopcl_Dis => 0,
      Chopcl_En => 1);

   --  Channel D Timer Reference
   type CHANCFG_REFTMRD_Field is
     (
      --  PWMTMR0 is Channel D reference
      Reftmrd_0,
      --  PWMTMR1 is Channel D reference
      Reftmrd_1)
     with Size => 1;
   for CHANCFG_REFTMRD_Field use
     (Reftmrd_0 => 0,
      Reftmrd_1 => 1);

   --  Channel D Mode of low Side Output
   type CHANCFG_MODELSD_Field is
     (
      --  Invert of high output
      Lod_Invhi,
      --  Independent control
      Lod_Ind)
     with Size => 1;
   for CHANCFG_MODELSD_Field use
     (Lod_Invhi => 0,
      Lod_Ind => 1);

   --  Channel D High side Polarity
   type CHANCFG_POLDH_Field is
     (
      --  Active Low
      Dh_Actlo,
      --  Active High
      Dh_Acthi)
     with Size => 1;
   for CHANCFG_POLDH_Field use
     (Dh_Actlo => 0,
      Dh_Acthi => 1);

   --  Channel D Gate Chopping Enable High Side
   type CHANCFG_ENCHOPDH_Field is
     (
      --  Disable Chopping Channel D High Side
      Chopdh_Dis,
      --  Enable Chopping Channel D High Side
      Chopdh_En)
     with Size => 1;
   for CHANCFG_ENCHOPDH_Field use
     (Chopdh_Dis => 0,
      Chopdh_En => 1);

   --  Channel D heightened-precision enable for high side Output
   type CHANCFG_ENHPDH_Field is
     (
      --  Disable HP Output Channel D High
      Hpdh_Dis,
      --  Enable HP Output Channel D High
      Hpdh_En)
     with Size => 1;
   for CHANCFG_ENHPDH_Field use
     (Hpdh_Dis => 0,
      Hpdh_En => 1);

   --  Channel D low side Polarity
   type CHANCFG_POLDL_Field is
     (
      --  Active Low
      Dl_Actlo,
      --  Active High
      Dl_Acthi)
     with Size => 1;
   for CHANCFG_POLDL_Field use
     (Dl_Actlo => 0,
      Dl_Acthi => 1);

   --  Channel D Gate Chopping Enable Low Side
   type CHANCFG_ENCHOPDL_Field is
     (
      --  Disable Chopping Channel D Low Side
      Chopdl_Dis,
      --  Enable Chopping Channel D Low Side
      Chopdl_En)
     with Size => 1;
   for CHANCFG_ENCHOPDL_Field use
     (Chopdl_Dis => 0,
      Chopdl_En => 1);

   --  Channel Configuration Register
   type CHANCFG_Register is record
      --  Channel A Timer Reference
      REFTMRA        : CHANCFG_REFTMRA_Field := NRF_SVD.PWM0.Reftmra_0;
      --  Channel A Mode of low Side Output
      MODELSA        : CHANCFG_MODELSA_Field := NRF_SVD.PWM0.Loa_Invhi;
      --  Channel A High side Polarity
      POLAH          : CHANCFG_POLAH_Field := NRF_SVD.PWM0.Ah_Actlo;
      --  Channel A Gate Chopping Enable High Side
      ENCHOPAH       : CHANCFG_ENCHOPAH_Field := NRF_SVD.PWM0.Chopah_Dis;
      --  Channel A heightened-precision enable for high side Output
      ENHPAH         : CHANCFG_ENHPAH_Field := NRF_SVD.PWM0.Hpah_Dis;
      --  Channel A low side Polarity
      POLAL          : CHANCFG_POLAL_Field := NRF_SVD.PWM0.Al_Actlo;
      --  Channel A Gate Chopping Enable Low Side
      ENCHOPAL       : CHANCFG_ENCHOPAL_Field := NRF_SVD.PWM0.Chopal_Dis;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Channel B Timer Reference
      REFTMRB        : CHANCFG_REFTMRB_Field := NRF_SVD.PWM0.Reftmrb_0;
      --  Channel B Mode of low Side Output
      MODELSB        : CHANCFG_MODELSB_Field := NRF_SVD.PWM0.Lob_Inv;
      --  Channel B High side Polarity
      POLBH          : CHANCFG_POLBH_Field := NRF_SVD.PWM0.Bh_Actlo;
      --  Channel B Gate Chopping Enable High Side
      ENCHOPBH       : CHANCFG_ENCHOPBH_Field := NRF_SVD.PWM0.Chopbh_Dis;
      --  Channel B heightened-precision enable for high side Output
      ENHPBH         : CHANCFG_ENHPBH_Field := NRF_SVD.PWM0.Hpbh_Dis;
      --  Channel B low side Polarity
      POLBL          : CHANCFG_POLBL_Field := NRF_SVD.PWM0.Bl_Actlo;
      --  Channel B Gate Chopping Enable Low Side
      ENCHOPBL       : CHANCFG_ENCHOPBL_Field := NRF_SVD.PWM0.Chopbl_Dis;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Channel C Timer Reference
      REFTMRC        : CHANCFG_REFTMRC_Field := NRF_SVD.PWM0.Reftmrc_0;
      --  Channel C Mode of low Side Output
      MODELSC        : CHANCFG_MODELSC_Field := NRF_SVD.PWM0.Loc_Invhi;
      --  Channel C High side Polarity
      POLCH          : CHANCFG_POLCH_Field := NRF_SVD.PWM0.Ch_Actlo;
      --  Channel C Gate Chopping Enable High Side
      ENCHOPCH       : CHANCFG_ENCHOPCH_Field := NRF_SVD.PWM0.Chopch_Dis;
      --  Channel C heightened-precision enable for high side Output
      ENHPCH         : CHANCFG_ENHPCH_Field := NRF_SVD.PWM0.Hpch_Dis;
      --  Channel C low side Polarity
      POLCL          : CHANCFG_POLCL_Field := NRF_SVD.PWM0.Cl_Actlo;
      --  Channel C Gate Chopping Enable Low Side
      ENCHOPCL       : CHANCFG_ENCHOPCL_Field := NRF_SVD.PWM0.Chopcl_Dis;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Channel D Timer Reference
      REFTMRD        : CHANCFG_REFTMRD_Field := NRF_SVD.PWM0.Reftmrd_0;
      --  Channel D Mode of low Side Output
      MODELSD        : CHANCFG_MODELSD_Field := NRF_SVD.PWM0.Lod_Invhi;
      --  Channel D High side Polarity
      POLDH          : CHANCFG_POLDH_Field := NRF_SVD.PWM0.Dh_Actlo;
      --  Channel D Gate Chopping Enable High Side
      ENCHOPDH       : CHANCFG_ENCHOPDH_Field := NRF_SVD.PWM0.Chopdh_Dis;
      --  Channel D heightened-precision enable for high side Output
      ENHPDH         : CHANCFG_ENHPDH_Field := NRF_SVD.PWM0.Hpdh_Dis;
      --  Channel D low side Polarity
      POLDL          : CHANCFG_POLDL_Field := NRF_SVD.PWM0.Dl_Actlo;
      --  Channel D Gate Chopping Enable Low Side
      ENCHOPDL       : CHANCFG_ENCHOPDL_Field := NRF_SVD.PWM0.Chopdl_Dis;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHANCFG_Register use record
      REFTMRA        at 0 range 0 .. 0;
      MODELSA        at 0 range 1 .. 1;
      POLAH          at 0 range 2 .. 2;
      ENCHOPAH       at 0 range 3 .. 3;
      ENHPAH         at 0 range 4 .. 4;
      POLAL          at 0 range 5 .. 5;
      ENCHOPAL       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      REFTMRB        at 0 range 8 .. 8;
      MODELSB        at 0 range 9 .. 9;
      POLBH          at 0 range 10 .. 10;
      ENCHOPBH       at 0 range 11 .. 11;
      ENHPBH         at 0 range 12 .. 12;
      POLBL          at 0 range 13 .. 13;
      ENCHOPBL       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      REFTMRC        at 0 range 16 .. 16;
      MODELSC        at 0 range 17 .. 17;
      POLCH          at 0 range 18 .. 18;
      ENCHOPCH       at 0 range 19 .. 19;
      ENHPCH         at 0 range 20 .. 20;
      POLCL          at 0 range 21 .. 21;
      ENCHOPCL       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      REFTMRD        at 0 range 24 .. 24;
      MODELSD        at 0 range 25 .. 25;
      POLDH          at 0 range 26 .. 26;
      ENCHOPDH       at 0 range 27 .. 27;
      ENHPDH         at 0 range 28 .. 28;
      POLDL          at 0 range 29 .. 29;
      ENCHOPDL       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Enable TRIP0 as a trip source for Channel A
   type TRIPCFG_EN0A_Field is
     (
      --  Disable TRIP0 for Channel A
      Trip0A_Dis,
      --  Enable TRIP0 for Channel A
      Trip0A_En)
     with Size => 1;
   for TRIPCFG_EN0A_Field use
     (Trip0A_Dis => 0,
      Trip0A_En => 1);

   --  Mode of TRIP0 for Channel A
   type TRIPCFG_MODE0A_Field is
     (
      --  Fault Trip on TRIP0 Input
      Trip0A_Flt,
      --  Self Restart on TRIP0 Input
      Trip0A_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE0A_Field use
     (Trip0A_Flt => 0,
      Trip0A_Rstrt => 1);

   --  Enable TRIP1 as a trip source for Channel A
   type TRIPCFG_EN1A_Field is
     (
      --  Disable TRIP1 for Channel A
      Trip1A_Dis,
      --  Enable TRIP1 for Channel A
      Trip1A_En)
     with Size => 1;
   for TRIPCFG_EN1A_Field use
     (Trip1A_Dis => 0,
      Trip1A_En => 1);

   --  Mode of TRIP1 for Channel A
   type TRIPCFG_MODE1A_Field is
     (
      --  Fault Trip on TRIP1 Input
      Trip1A_Flt,
      --  Self Restart on TRIP1 Input
      Trip1A_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE1A_Field use
     (Trip1A_Flt => 0,
      Trip1A_Rstrt => 1);

   --  Enable TRIP0 for Channel A Low Side
   type TRIPCFG_EN0AL_Field is
     (
      --  Disable Trip0 for Channel A Low Side
      Trip0Al_Dis,
      --  Enable Trip0 for Channel A Low Side
      Trip0Al_En)
     with Size => 1;
   for TRIPCFG_EN0AL_Field use
     (Trip0Al_Dis => 0,
      Trip0Al_En => 1);

   --  TRIP0 Enable Select for Channel A Low Side
   type TRIPCFG_EN0SELA_Field is
     (
      --  Select EN0A for Channel A Low Side Trip0 Enable
      Trip0Sel_En0A,
      --  Select EN0AL for Channel A Low Side Trip0 Enable
      Trip0Sel_En0Al)
     with Size => 1;
   for TRIPCFG_EN0SELA_Field use
     (Trip0Sel_En0A => 0,
      Trip0Sel_En0Al => 1);

   --  Enable TRIP1 for Channel A Low Side
   type TRIPCFG_EN1AL_Field is
     (
      --  Disable Trip1 for Channel A Low Side
      Trip1Al_Dis,
      --  Enable Trip1 for Channel A Low Side
      Trip1Al_En)
     with Size => 1;
   for TRIPCFG_EN1AL_Field use
     (Trip1Al_Dis => 0,
      Trip1Al_En => 1);

   --  TRIP1 Enable Select for Channel A Low Side
   type TRIPCFG_EN1SELA_Field is
     (
      --  Select EN0A for Channel A Low Side Trip1 Enable
      Trip1Sel_En0A,
      --  Select EN0AL for Channel A Low Side Trip1 Enable
      Trip1Sel_En0Al)
     with Size => 1;
   for TRIPCFG_EN1SELA_Field use
     (Trip1Sel_En0A => 0,
      Trip1Sel_En0Al => 1);

   --  Enable TRIP0 as a trip source for Channel B
   type TRIPCFG_EN0B_Field is
     (
      --  Disable TRIP0 for Channel B
      Trip0B_Dis,
      --  Enable TRIP0 for Channel B
      Trip0B_En)
     with Size => 1;
   for TRIPCFG_EN0B_Field use
     (Trip0B_Dis => 0,
      Trip0B_En => 1);

   --  Mode of TRIP0 for Channel B
   type TRIPCFG_MODE0B_Field is
     (
      --  Fault Trip on TRIP0 Input
      Trip0B_Flt,
      --  Self Restart on TRIP0 Input
      Trip0B_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE0B_Field use
     (Trip0B_Flt => 0,
      Trip0B_Rstrt => 1);

   --  Enable TRIP1 for Channel B
   type TRIPCFG_EN1B_Field is
     (
      --  Disable TRIP1 for Channel B
      Trip1B_Dis,
      --  Enable TRIP1 for Channel B
      Trip1B_En)
     with Size => 1;
   for TRIPCFG_EN1B_Field use
     (Trip1B_Dis => 0,
      Trip1B_En => 1);

   --  Mode of TRIP1 for Channel B
   type TRIPCFG_MODE1B_Field is
     (
      --  Fault Trip on TRIP1 Input
      Trip1B_Flt,
      --  Self Restart on TRIP1 Input
      Trip1B_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE1B_Field use
     (Trip1B_Flt => 0,
      Trip1B_Rstrt => 1);

   --  Enable TRIP0 for Channel B Low Side
   type TRIPCFG_EN0BL_Field is
     (
      --  Disable Trip0 for Channel B Low Side
      Trip0Bl_Dis,
      --  Enable Trip0 for Channel B Low Side
      Trip0Bl_En)
     with Size => 1;
   for TRIPCFG_EN0BL_Field use
     (Trip0Bl_Dis => 0,
      Trip0Bl_En => 1);

   --  TRIP0 Enable Select for Channel B Low Side
   type TRIPCFG_EN0SELB_Field is
     (
      --  Select EN0B for Channel B Low Side Trip0 Enable
      Trip0Sel_En0B,
      --  Select EN0BL for Channel B Low Side Trip0 Enable
      Trip0Sel_En0Bl)
     with Size => 1;
   for TRIPCFG_EN0SELB_Field use
     (Trip0Sel_En0B => 0,
      Trip0Sel_En0Bl => 1);

   --  Enable TRIP1 as a trip source for Channel B Low Side
   type TRIPCFG_EN1BL_Field is
     (
      --  Disable Trip1 for Channel B Low Side
      Trip1Bl_Dis,
      --  Enable Trip1 for Channel B Low Side
      Trip1Bl_En)
     with Size => 1;
   for TRIPCFG_EN1BL_Field use
     (Trip1Bl_Dis => 0,
      Trip1Bl_En => 1);

   --  TRIP1 Enable Select for Channel B Low Side
   type TRIPCFG_EN1SELB_Field is
     (
      --  Select EN0B for Channel B Low Side Trip1 Enable
      Trip1Sel_En0B,
      --  Select EN0BL for Channel B Low Side Trip1 Enable
      Trip1Sel_En0Bl)
     with Size => 1;
   for TRIPCFG_EN1SELB_Field use
     (Trip1Sel_En0B => 0,
      Trip1Sel_En0Bl => 1);

   --  Enable TRIP0 for Channel C
   type TRIPCFG_EN0C_Field is
     (
      --  Disable TRIP0 for Channel C
      Trip0C_Dis,
      --  Enable TRIP0 for Channel C
      Trip0C_En)
     with Size => 1;
   for TRIPCFG_EN0C_Field use
     (Trip0C_Dis => 0,
      Trip0C_En => 1);

   --  Mode of TRIP0 for Channel C
   type TRIPCFG_MODE0C_Field is
     (
      --  Fault Trip on TRIP0 Input
      Trip0C_Flt,
      --  Self Restart on TRIP0 Input
      Trip0C_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE0C_Field use
     (Trip0C_Flt => 0,
      Trip0C_Rstrt => 1);

   --  Enable TRIP1 as a trip source for Channel C
   type TRIPCFG_EN1C_Field is
     (
      --  Disable TRIP1 for Channel C
      Trip1C_Dis,
      --  Enable TRIP1 for Channel C
      Trip1C_En)
     with Size => 1;
   for TRIPCFG_EN1C_Field use
     (Trip1C_Dis => 0,
      Trip1C_En => 1);

   --  Mode of TRIP1 for Channel C
   type TRIPCFG_MODE1C_Field is
     (
      --  Fault Trip on TRIP1 Input
      Trip1C_Flt,
      --  Self Restart on TRIP1 Input
      Trip1C_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE1C_Field use
     (Trip1C_Flt => 0,
      Trip1C_Rstrt => 1);

   --  Enable TRIP0 for Channel C Low Side
   type TRIPCFG_EN0CL_Field is
     (
      --  Disable Trip0 for Channel C Low Side
      Trip0Cl_Dis,
      --  Enable Trip0 for Channel C Low Side
      Trip0Cl_En)
     with Size => 1;
   for TRIPCFG_EN0CL_Field use
     (Trip0Cl_Dis => 0,
      Trip0Cl_En => 1);

   --  TRIP0 Enable Select for Channel C Low Side
   type TRIPCFG_EN0SELC_Field is
     (
      --  Select EN0C for Channel C Low Side Trip0 Enable
      Trip0Sel_En0C,
      --  Select EN0CL for Channel C Low Side Trip0 Enable
      Trip0Sel_En0Cl)
     with Size => 1;
   for TRIPCFG_EN0SELC_Field use
     (Trip0Sel_En0C => 0,
      Trip0Sel_En0Cl => 1);

   --  Enable TRIP1 for Channel C Low Side
   type TRIPCFG_EN1CL_Field is
     (
      --  Disable Trip1 for Channel C Low Side
      Trip1Cl_Dis,
      --  Enable Trip1 for Channel C Low Side
      Trip1Cl_En)
     with Size => 1;
   for TRIPCFG_EN1CL_Field use
     (Trip1Cl_Dis => 0,
      Trip1Cl_En => 1);

   --  TRIP1 Enable Select for Channel C Low Side
   type TRIPCFG_EN1SELC_Field is
     (
      --  Select EN0C for Channel C Low Side Trip1 Enable
      Trip1Sel_En0C,
      --  Select EN0CL for Channel C Low Side Trip1 Enable
      Trip1Sel_En0Cl)
     with Size => 1;
   for TRIPCFG_EN1SELC_Field use
     (Trip1Sel_En0C => 0,
      Trip1Sel_En0Cl => 1);

   --  Enable TRIP0 for Channel D
   type TRIPCFG_EN0D_Field is
     (
      --  Disable TRIP0 for Channel D
      Trip0D_Dis,
      --  Enable TRIP0 for Channel D
      Trip0D_En)
     with Size => 1;
   for TRIPCFG_EN0D_Field use
     (Trip0D_Dis => 0,
      Trip0D_En => 1);

   --  Mode of TRIP0 for Channel D
   type TRIPCFG_MODE0D_Field is
     (
      --  Fault Trip on TRIP0 Input
      Trip0D_Flt,
      --  Self Restart on TRIP0 Input
      Trip0D_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE0D_Field use
     (Trip0D_Flt => 0,
      Trip0D_Rstrt => 1);

   --  Enable TRIP1 for Channel D
   type TRIPCFG_EN1D_Field is
     (
      --  Disable TRIP1 for Channel D
      Trip1D_Dis,
      --  Enable TRIP1 for Channel D
      Trip1D_En)
     with Size => 1;
   for TRIPCFG_EN1D_Field use
     (Trip1D_Dis => 0,
      Trip1D_En => 1);

   --  Mode of TRIP1 for Channel D
   type TRIPCFG_MODE1D_Field is
     (
      --  Fault Trip on TRIP1 Input
      Trip1D_Flt,
      --  Self Restart on TRIP1 Input
      Trip1D_Rstrt)
     with Size => 1;
   for TRIPCFG_MODE1D_Field use
     (Trip1D_Flt => 0,
      Trip1D_Rstrt => 1);

   --  Enable TRIP0 for Channel D Low Side
   type TRIPCFG_EN0DL_Field is
     (
      --  Disable Trip0 for Channel D Low Side
      Trip0Dl_Dis,
      --  Enable Trip0 for Channel D Low Side
      Trip0Dl_En)
     with Size => 1;
   for TRIPCFG_EN0DL_Field use
     (Trip0Dl_Dis => 0,
      Trip0Dl_En => 1);

   --  TRIP0 Enable Select for Channel D Low Side
   type TRIPCFG_EN0SELD_Field is
     (
      --  Select EN0D for Channel D Low Side Trip0 Enable
      Trip0Sel_En0D,
      --  Select EN0DL for Channel D Low Side Trip0 Enable
      Trip0Sel_En0Dl)
     with Size => 1;
   for TRIPCFG_EN0SELD_Field use
     (Trip0Sel_En0D => 0,
      Trip0Sel_En0Dl => 1);

   --  Enable TRIP1 for Channel D Low Side
   type TRIPCFG_EN1DL_Field is
     (
      --  Disable Trip1 for Channel D Low Side
      Trip1Dl_Dis,
      --  Enable Trip1 for Channel D Low Side
      Trip1Dl_En)
     with Size => 1;
   for TRIPCFG_EN1DL_Field use
     (Trip1Dl_Dis => 0,
      Trip1Dl_En => 1);

   --  TRIP1 Enable Select for Channel D Low Side
   type TRIPCFG_EN1SELD_Field is
     (
      --  Select EN0D for Channel D Low Side Trip1 Enable
      Trip1Sel_En0D,
      --  Select EN0DL for Channel D Low Side Trip1 Enable
      Trip1Sel_En0Dl)
     with Size => 1;
   for TRIPCFG_EN1SELD_Field use
     (Trip1Sel_En0D => 0,
      Trip1Sel_En0Dl => 1);

   --  Trip Configuration Register
   type TRIPCFG_Register is record
      --  Enable TRIP0 as a trip source for Channel A
      EN0A    : TRIPCFG_EN0A_Field := NRF_SVD.PWM0.Trip0A_Dis;
      --  Mode of TRIP0 for Channel A
      MODE0A  : TRIPCFG_MODE0A_Field := NRF_SVD.PWM0.Trip0A_Flt;
      --  Enable TRIP1 as a trip source for Channel A
      EN1A    : TRIPCFG_EN1A_Field := NRF_SVD.PWM0.Trip1A_Dis;
      --  Mode of TRIP1 for Channel A
      MODE1A  : TRIPCFG_MODE1A_Field := NRF_SVD.PWM0.Trip1A_Flt;
      --  Enable TRIP0 for Channel A Low Side
      EN0AL   : TRIPCFG_EN0AL_Field := NRF_SVD.PWM0.Trip0Al_Dis;
      --  TRIP0 Enable Select for Channel A Low Side
      EN0SELA : TRIPCFG_EN0SELA_Field := NRF_SVD.PWM0.Trip0Sel_En0A;
      --  Enable TRIP1 for Channel A Low Side
      EN1AL   : TRIPCFG_EN1AL_Field := NRF_SVD.PWM0.Trip1Al_Dis;
      --  TRIP1 Enable Select for Channel A Low Side
      EN1SELA : TRIPCFG_EN1SELA_Field := NRF_SVD.PWM0.Trip1Sel_En0A;
      --  Enable TRIP0 as a trip source for Channel B
      EN0B    : TRIPCFG_EN0B_Field := NRF_SVD.PWM0.Trip0B_Dis;
      --  Mode of TRIP0 for Channel B
      MODE0B  : TRIPCFG_MODE0B_Field := NRF_SVD.PWM0.Trip0B_Flt;
      --  Enable TRIP1 for Channel B
      EN1B    : TRIPCFG_EN1B_Field := NRF_SVD.PWM0.Trip1B_Dis;
      --  Mode of TRIP1 for Channel B
      MODE1B  : TRIPCFG_MODE1B_Field := NRF_SVD.PWM0.Trip1B_Flt;
      --  Enable TRIP0 for Channel B Low Side
      EN0BL   : TRIPCFG_EN0BL_Field := NRF_SVD.PWM0.Trip0Bl_Dis;
      --  TRIP0 Enable Select for Channel B Low Side
      EN0SELB : TRIPCFG_EN0SELB_Field := NRF_SVD.PWM0.Trip0Sel_En0B;
      --  Enable TRIP1 as a trip source for Channel B Low Side
      EN1BL   : TRIPCFG_EN1BL_Field := NRF_SVD.PWM0.Trip1Bl_Dis;
      --  TRIP1 Enable Select for Channel B Low Side
      EN1SELB : TRIPCFG_EN1SELB_Field := NRF_SVD.PWM0.Trip1Sel_En0B;
      --  Enable TRIP0 for Channel C
      EN0C    : TRIPCFG_EN0C_Field := NRF_SVD.PWM0.Trip0C_Dis;
      --  Mode of TRIP0 for Channel C
      MODE0C  : TRIPCFG_MODE0C_Field := NRF_SVD.PWM0.Trip0C_Flt;
      --  Enable TRIP1 as a trip source for Channel C
      EN1C    : TRIPCFG_EN1C_Field := NRF_SVD.PWM0.Trip1C_Dis;
      --  Mode of TRIP1 for Channel C
      MODE1C  : TRIPCFG_MODE1C_Field := NRF_SVD.PWM0.Trip1C_Flt;
      --  Enable TRIP0 for Channel C Low Side
      EN0CL   : TRIPCFG_EN0CL_Field := NRF_SVD.PWM0.Trip0Cl_Dis;
      --  TRIP0 Enable Select for Channel C Low Side
      EN0SELC : TRIPCFG_EN0SELC_Field := NRF_SVD.PWM0.Trip0Sel_En0C;
      --  Enable TRIP1 for Channel C Low Side
      EN1CL   : TRIPCFG_EN1CL_Field := NRF_SVD.PWM0.Trip1Cl_Dis;
      --  TRIP1 Enable Select for Channel C Low Side
      EN1SELC : TRIPCFG_EN1SELC_Field := NRF_SVD.PWM0.Trip1Sel_En0C;
      --  Enable TRIP0 for Channel D
      EN0D    : TRIPCFG_EN0D_Field := NRF_SVD.PWM0.Trip0D_Dis;
      --  Mode of TRIP0 for Channel D
      MODE0D  : TRIPCFG_MODE0D_Field := NRF_SVD.PWM0.Trip0D_Flt;
      --  Enable TRIP1 for Channel D
      EN1D    : TRIPCFG_EN1D_Field := NRF_SVD.PWM0.Trip1D_Dis;
      --  Mode of TRIP1 for Channel D
      MODE1D  : TRIPCFG_MODE1D_Field := NRF_SVD.PWM0.Trip1D_Flt;
      --  Enable TRIP0 for Channel D Low Side
      EN0DL   : TRIPCFG_EN0DL_Field := NRF_SVD.PWM0.Trip0Dl_Dis;
      --  TRIP0 Enable Select for Channel D Low Side
      EN0SELD : TRIPCFG_EN0SELD_Field := NRF_SVD.PWM0.Trip0Sel_En0D;
      --  Enable TRIP1 for Channel D Low Side
      EN1DL   : TRIPCFG_EN1DL_Field := NRF_SVD.PWM0.Trip1Dl_Dis;
      --  TRIP1 Enable Select for Channel D Low Side
      EN1SELD : TRIPCFG_EN1SELD_Field := NRF_SVD.PWM0.Trip1Sel_En0D;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIPCFG_Register use record
      EN0A    at 0 range 0 .. 0;
      MODE0A  at 0 range 1 .. 1;
      EN1A    at 0 range 2 .. 2;
      MODE1A  at 0 range 3 .. 3;
      EN0AL   at 0 range 4 .. 4;
      EN0SELA at 0 range 5 .. 5;
      EN1AL   at 0 range 6 .. 6;
      EN1SELA at 0 range 7 .. 7;
      EN0B    at 0 range 8 .. 8;
      MODE0B  at 0 range 9 .. 9;
      EN1B    at 0 range 10 .. 10;
      MODE1B  at 0 range 11 .. 11;
      EN0BL   at 0 range 12 .. 12;
      EN0SELB at 0 range 13 .. 13;
      EN1BL   at 0 range 14 .. 14;
      EN1SELB at 0 range 15 .. 15;
      EN0C    at 0 range 16 .. 16;
      MODE0C  at 0 range 17 .. 17;
      EN1C    at 0 range 18 .. 18;
      MODE1C  at 0 range 19 .. 19;
      EN0CL   at 0 range 20 .. 20;
      EN0SELC at 0 range 21 .. 21;
      EN1CL   at 0 range 22 .. 22;
      EN1SELC at 0 range 23 .. 23;
      EN0D    at 0 range 24 .. 24;
      MODE0D  at 0 range 25 .. 25;
      EN1D    at 0 range 26 .. 26;
      MODE1D  at 0 range 27 .. 27;
      EN0DL   at 0 range 28 .. 28;
      EN0SELD at 0 range 29 .. 29;
      EN1DL   at 0 range 30 .. 30;
      EN1SELD at 0 range 31 .. 31;
   end record;

   --  Status bit set when TRIP0 is active low
   type STAT_TRIP0_Field is
     (
      --  TRIP0 status is "not tripped"
      No_Trip0,
      --  TRIP0 status is "tripped" (active low)
      Trip0)
     with Size => 1;
   for STAT_TRIP0_Field use
     (No_Trip0 => 0,
      Trip0 => 1);

   --  Status bit set when TRIP1 is active low
   type STAT_TRIP1_Field is
     (
      --  TRIP1 status is "not tripped"
      No_Trip1,
      --  TRIP1 status is "tripped" (active low)
      Trip1)
     with Size => 1;
   for STAT_TRIP1_Field use
     (No_Trip1 => 0,
      Trip1 => 1);

   --  Raw Trip 0 Status
   type STAT_RAWTRIP0_Field is
     (
      --  TRIP0 Level is Low
      Trip0Lvl_Lo,
      --  TRIP0 Level is High
      Trip0Lvl_Hi)
     with Size => 1;
   for STAT_RAWTRIP0_Field use
     (Trip0Lvl_Lo => 0,
      Trip0Lvl_Hi => 1);

   --  Raw Trip 1 Status
   type STAT_RAWTRIP1_Field is
     (
      --  TRIP1 Level is Low
      Trip1Lvl_Lo,
      --  TRIP1 Level is High
      Trip1Lvl_Hi)
     with Size => 1;
   for STAT_RAWTRIP1_Field use
     (Trip1Lvl_Lo => 0,
      Trip1Lvl_Hi => 1);

   --  Fault Trip Status for Channel A
   type STAT_FLTTRIPA_Field is
     (
      --  Channel A Fault Trip Status is "not tripped"
      Flta_Notrip,
      --  Channel A Fault Trip Status is "tripped"
      Flta_Trip)
     with Size => 1;
   for STAT_FLTTRIPA_Field use
     (Flta_Notrip => 0,
      Flta_Trip => 1);

   --  Self-Restart Trip Status for Channel A
   type STAT_SRTRIPA_Field is
     (
      --  Channel A Self-Restart Trip Status is "not tripped"
      Sra_Notrip,
      --  Channel A Self-Restart Trip Status is "tripped"
      Sra_Trip)
     with Size => 1;
   for STAT_SRTRIPA_Field use
     (Sra_Notrip => 0,
      Sra_Trip => 1);

   --  Fault Trip Status for Channel B
   type STAT_FLTTRIPB_Field is
     (
      --  Channel B Fault Trip Status is "not tripped"
      Fltb_Notrip,
      --  Channel A Fault Trip Status is "tripped"
      Fltb_Trip)
     with Size => 1;
   for STAT_FLTTRIPB_Field use
     (Fltb_Notrip => 0,
      Fltb_Trip => 1);

   --  Self-Restart Trip Status for Channel B
   type STAT_SRTRIPB_Field is
     (
      --  Channel B Self-Restart Trip Status is "not tripped"
      Srb_Notrip,
      --  Channel B Self-Restart Trip Status is "tripped"
      Srb_Trip)
     with Size => 1;
   for STAT_SRTRIPB_Field use
     (Srb_Notrip => 0,
      Srb_Trip => 1);

   --  Fault Trip Status for Channel C
   type STAT_FLTTRIPC_Field is
     (
      --  Channel C Fault Trip Status is "not tripped"
      Fltc_Notrip,
      --  Channel C Fault Trip Status is "tripped"
      Fltc_Trip)
     with Size => 1;
   for STAT_FLTTRIPC_Field use
     (Fltc_Notrip => 0,
      Fltc_Trip => 1);

   --  Self-Restart Trip Status for Channel C
   type STAT_SRTRIPC_Field is
     (
      --  Channel C Self-Restart Trip Status is "not tripped"
      Src_Notrip,
      --  Channel C Self-Restart Trip Status is "tripped"
      Src_Trip)
     with Size => 1;
   for STAT_SRTRIPC_Field use
     (Src_Notrip => 0,
      Src_Trip => 1);

   --  Fault Trip Status for Channel D
   type STAT_FLTTRIPD_Field is
     (
      --  Channel D Fault Trip Status is "not tripped"
      Fltd_Notrip,
      --  Channel D Fault Trip Status is "tripped"
      Fltd_Trip)
     with Size => 1;
   for STAT_FLTTRIPD_Field use
     (Fltd_Notrip => 0,
      Fltd_Trip => 1);

   --  Self-Restart Trip Status for Channel D
   type STAT_SRTRIPD_Field is
     (
      --  Channel D Self-Restart Trip Status is "not tripped"
      Srd_Notrip,
      --  Channel D Self-Restart Trip Status is "tripped"
      Srd_Trip)
     with Size => 1;
   for STAT_SRTRIPD_Field use
     (Srd_Notrip => 0,
      Srd_Trip => 1);

   --  PWMTMR0 Period Boundary Status
   type STAT_TMR0PER_Field is
     (
      --  PWMTMR0 period boundary not reached
      Not_Per0,
      --  PWMTMR0 period boundary reached
      Per0)
     with Size => 1;
   for STAT_TMR0PER_Field use
     (Not_Per0 => 0,
      Per0 => 1);

   --  PWMTMR1 Period Boundary Status
   type STAT_TMR1PER_Field is
     (
      --  PWMTMR1 period boundary not reached
      Not_Per1,
      --  PWMTMR1 period boundary reached
      Per1)
     with Size => 1;
   for STAT_TMR1PER_Field use
     (Not_Per1 => 0,
      Per1 => 1);

   --  PWMTMR2 Period Boundary Status
   type STAT_TMR2PER_Field is
     (
      --  PWMTMR2 period boundary not reached
      Not_Per2,
      --  PWMTMR2 period boundary reached
      Per2)
     with Size => 1;
   for STAT_TMR2PER_Field use
     (Not_Per2 => 0,
      Per2 => 1);

   --  PWMTMR3 Period Boundary Status
   type STAT_TMR3PER_Field is
     (
      --  PWMTMR3 period boundary not reached
      Not_Per3,
      --  PWMTMR3 period boundary reached
      Per3)
     with Size => 1;
   for STAT_TMR3PER_Field use
     (Not_Per3 => 0,
      Per3 => 1);

   --  PWMTMR4 Period Boundary Status
   type STAT_TMR4PER_Field is
     (
      --  PWMTMR4 period boundary not reached
      Not_Per4,
      --  PWMTMR4 period boundary reached
      Per4)
     with Size => 1;
   for STAT_TMR4PER_Field use
     (Not_Per4 => 0,
      Per4 => 1);

   --  PWMTMR0 Phase Status
   type STAT_TMR0PHASE_Field is
     (
      --  1st Half Phase
      Tmr0Ph1,
      --  2nd Half Phase
      Tmr0Ph2)
     with Size => 1;
   for STAT_TMR0PHASE_Field use
     (Tmr0Ph1 => 0,
      Tmr0Ph2 => 1);

   --  PWMTMR1 Phase Status
   type STAT_TMR1PHASE_Field is
     (
      --  1st Half Phase
      Tmr1Ph1,
      --  2nd Half Phase
      Tmr1Ph2)
     with Size => 1;
   for STAT_TMR1PHASE_Field use
     (Tmr1Ph1 => 0,
      Tmr1Ph2 => 1);

   --  PWMTMR2 Phase Status
   type STAT_TMR2PHASE_Field is
     (
      --  1st Half Phase
      Tmr2Ph1,
      --  2nd Half Phase
      Tmr2Ph2)
     with Size => 1;
   for STAT_TMR2PHASE_Field use
     (Tmr2Ph1 => 0,
      Tmr2Ph2 => 1);

   --  PWMTMR3 Phase Status
   type STAT_TMR3PHASE_Field is
     (
      --  1st Half Phase
      Tmr3Ph1,
      --  2nd Half Phase
      Tmr3Ph2)
     with Size => 1;
   for STAT_TMR3PHASE_Field use
     (Tmr3Ph1 => 0,
      Tmr3Ph2 => 1);

   --  PWMTMR4 Phase Status
   type STAT_TMR4PHASE_Field is
     (
      --  1st Half Phase
      Tmr4Ph1,
      --  2nd Half Phase
      Tmr4Ph2)
     with Size => 1;
   for STAT_TMR4PHASE_Field use
     (Tmr4Ph1 => 0,
      Tmr4Ph2 => 1);

   --  Heightened-Precision Ready Status
   type STAT_HPRDY_Field is
     (
      --  HPPWM Not Ready For Operation
      Not_Hprdy,
      --  HPPWM Ready For Operation
      Hprdy)
     with Size => 1;
   for STAT_HPRDY_Field use
     (Not_Hprdy => 0,
      Hprdy => 1);

   --  Status Register
   type STAT_Register is record
      --  Status bit set when TRIP0 is active low
      TRIP0          : STAT_TRIP0_Field := NRF_SVD.PWM0.No_Trip0;
      --  Status bit set when TRIP1 is active low
      TRIP1          : STAT_TRIP1_Field := NRF_SVD.PWM0.No_Trip1;
      --  Read-only. Raw Trip 0 Status
      RAWTRIP0       : STAT_RAWTRIP0_Field := NRF_SVD.PWM0.Trip0Lvl_Lo;
      --  Read-only. Raw Trip 1 Status
      RAWTRIP1       : STAT_RAWTRIP1_Field := NRF_SVD.PWM0.Trip1Lvl_Lo;
      --  Fault Trip Status for Channel A
      FLTTRIPA       : STAT_FLTTRIPA_Field := NRF_SVD.PWM0.Flta_Notrip;
      --  Read-only. Self-Restart Trip Status for Channel A
      SRTRIPA        : STAT_SRTRIPA_Field := NRF_SVD.PWM0.Sra_Notrip;
      --  Fault Trip Status for Channel B
      FLTTRIPB       : STAT_FLTTRIPB_Field := NRF_SVD.PWM0.Fltb_Notrip;
      --  Read-only. Self-Restart Trip Status for Channel B
      SRTRIPB        : STAT_SRTRIPB_Field := NRF_SVD.PWM0.Srb_Notrip;
      --  Fault Trip Status for Channel C
      FLTTRIPC       : STAT_FLTTRIPC_Field := NRF_SVD.PWM0.Fltc_Notrip;
      --  Read-only. Self-Restart Trip Status for Channel C
      SRTRIPC        : STAT_SRTRIPC_Field := NRF_SVD.PWM0.Src_Notrip;
      --  Fault Trip Status for Channel D
      FLTTRIPD       : STAT_FLTTRIPD_Field := NRF_SVD.PWM0.Fltd_Notrip;
      --  Read-only. Self-Restart Trip Status for Channel D
      SRTRIPD        : STAT_SRTRIPD_Field := NRF_SVD.PWM0.Srd_Notrip;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  PWMTMR0 Period Boundary Status
      TMR0PER        : STAT_TMR0PER_Field := NRF_SVD.PWM0.Not_Per0;
      --  PWMTMR1 Period Boundary Status
      TMR1PER        : STAT_TMR1PER_Field := NRF_SVD.PWM0.Not_Per1;
      --  PWMTMR2 Period Boundary Status
      TMR2PER        : STAT_TMR2PER_Field := NRF_SVD.PWM0.Not_Per2;
      --  PWMTMR3 Period Boundary Status
      TMR3PER        : STAT_TMR3PER_Field := NRF_SVD.PWM0.Not_Per3;
      --  PWMTMR4 Period Boundary Status
      TMR4PER        : STAT_TMR4PER_Field := NRF_SVD.PWM0.Not_Per4;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  PWMTMR0 Phase Status
      TMR0PHASE      : STAT_TMR0PHASE_Field := NRF_SVD.PWM0.Tmr0Ph1;
      --  PWMTMR1 Phase Status
      TMR1PHASE      : STAT_TMR1PHASE_Field := NRF_SVD.PWM0.Tmr1Ph1;
      --  PWMTMR2 Phase Status
      TMR2PHASE      : STAT_TMR2PHASE_Field := NRF_SVD.PWM0.Tmr2Ph1;
      --  PWMTMR3 Phase Status
      TMR3PHASE      : STAT_TMR3PHASE_Field := NRF_SVD.PWM0.Tmr3Ph1;
      --  PWMTMR4 Phase Status
      TMR4PHASE      : STAT_TMR4PHASE_Field := NRF_SVD.PWM0.Tmr4Ph1;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Emulator Status
      EMU            : Boolean := False;
      --  Read-only. Heightened-Precision Ready Status
      HPRDY          : STAT_HPRDY_Field := NRF_SVD.PWM0.Not_Hprdy;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STAT_Register use record
      TRIP0          at 0 range 0 .. 0;
      TRIP1          at 0 range 1 .. 1;
      RAWTRIP0       at 0 range 2 .. 2;
      RAWTRIP1       at 0 range 3 .. 3;
      FLTTRIPA       at 0 range 4 .. 4;
      SRTRIPA        at 0 range 5 .. 5;
      FLTTRIPB       at 0 range 6 .. 6;
      SRTRIPB        at 0 range 7 .. 7;
      FLTTRIPC       at 0 range 8 .. 8;
      SRTRIPC        at 0 range 9 .. 9;
      FLTTRIPD       at 0 range 10 .. 10;
      SRTRIPD        at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TMR0PER        at 0 range 16 .. 16;
      TMR1PER        at 0 range 17 .. 17;
      TMR2PER        at 0 range 18 .. 18;
      TMR3PER        at 0 range 19 .. 19;
      TMR4PER        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TMR0PHASE      at 0 range 24 .. 24;
      TMR1PHASE      at 0 range 25 .. 25;
      TMR2PHASE      at 0 range 26 .. 26;
      TMR3PHASE      at 0 range 27 .. 27;
      TMR4PHASE      at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      EMU            at 0 range 30 .. 30;
      HPRDY          at 0 range 31 .. 31;
   end record;

   --  TRIP0 Interrupt Enable
   type IMSK_TRIP0_Field is
     (
      --  Mask TRIP0 Interrupt
      Trip0_Msk,
      --  Unmask TRIP0 Interrupt
      Trip0_Umsk)
     with Size => 1;
   for IMSK_TRIP0_Field use
     (Trip0_Msk => 0,
      Trip0_Umsk => 1);

   --  TRIP1 Interrupt Enable
   type IMSK_TRIP1_Field is
     (
      --  Mask TRIP1 Interrupt
      Trip1_Msk,
      --  Unmask TRIP1 Interrupt
      Trip1_Umsk)
     with Size => 1;
   for IMSK_TRIP1_Field use
     (Trip1_Msk => 0,
      Trip1_Umsk => 1);

   --  PWMTMR0 Period Boundary Interrupt Enable
   type IMSK_TMR0PER_Field is
     (
      --  Mask PWMTMR0 Period Interrupt
      Per0_Msk,
      --  Unmask PWMTMR0 Period Interrupt
      Per0_Umsk)
     with Size => 1;
   for IMSK_TMR0PER_Field use
     (Per0_Msk => 0,
      Per0_Umsk => 1);

   --  PWMTMR1 Period Boundary Interrupt Enable
   type IMSK_TMR1PER_Field is
     (
      --  Mask PWMTMR1 Period Interrupt
      Per1_Msk,
      --  Unmask PWMTMR1 Period Interrupt
      Per1_Umsk)
     with Size => 1;
   for IMSK_TMR1PER_Field use
     (Per1_Msk => 0,
      Per1_Umsk => 1);

   --  PWMTMR2 Period Boundary Interrupt Enable
   type IMSK_TMR2PER_Field is
     (
      --  Mask PWMTMR2 Period Interrupt
      Per2_Msk,
      --  Unmask PWMTMR2 Period Interrupt
      Per2_Umsk)
     with Size => 1;
   for IMSK_TMR2PER_Field use
     (Per2_Msk => 0,
      Per2_Umsk => 1);

   --  PWMTMR3 Period Boundary Interrupt Enable
   type IMSK_TMR3PER_Field is
     (
      --  Mask PWMTMR3 Period Interrupt
      Per3_Msk,
      --  Unmask PWMTMR3 Period Interrupt
      Per3_Umsk)
     with Size => 1;
   for IMSK_TMR3PER_Field use
     (Per3_Msk => 0,
      Per3_Umsk => 1);

   --  PWMTMR4 Period Boundary Interrupt Enable
   type IMSK_TMR4PER_Field is
     (
      --  Mask PWMTMR4 Period Interrupt
      Per4_Msk,
      --  Unmask PWMTMR4 Period Interrupt
      Per4_Umsk)
     with Size => 1;
   for IMSK_TMR4PER_Field use
     (Per4_Msk => 0,
      Per4_Umsk => 1);

   --  Interrupt Mask Register
   type IMSK_Register is record
      --  TRIP0 Interrupt Enable
      TRIP0          : IMSK_TRIP0_Field := NRF_SVD.PWM0.Trip0_Msk;
      --  TRIP1 Interrupt Enable
      TRIP1          : IMSK_TRIP1_Field := NRF_SVD.PWM0.Trip1_Msk;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  PWMTMR0 Period Boundary Interrupt Enable
      TMR0PER        : IMSK_TMR0PER_Field := NRF_SVD.PWM0.Per0_Msk;
      --  PWMTMR1 Period Boundary Interrupt Enable
      TMR1PER        : IMSK_TMR1PER_Field := NRF_SVD.PWM0.Per1_Msk;
      --  PWMTMR2 Period Boundary Interrupt Enable
      TMR2PER        : IMSK_TMR2PER_Field := NRF_SVD.PWM0.Per2_Msk;
      --  PWMTMR3 Period Boundary Interrupt Enable
      TMR3PER        : IMSK_TMR3PER_Field := NRF_SVD.PWM0.Per3_Msk;
      --  PWMTMR4 Period Boundary Interrupt Enable
      TMR4PER        : IMSK_TMR4PER_Field := NRF_SVD.PWM0.Per4_Msk;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMSK_Register use record
      TRIP0          at 0 range 0 .. 0;
      TRIP1          at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TMR0PER        at 0 range 16 .. 16;
      TMR1PER        at 0 range 17 .. 17;
      TMR2PER        at 0 range 18 .. 18;
      TMR3PER        at 0 range 19 .. 19;
      TMR4PER        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  TRIP0 Interrupt Latched Status
   type ILAT_TRIP0_Field is
     (
      --  No Interrupt Latched
      Trip0_Intlo,
      --  Interrupt Latched
      Trip0_Inthi)
     with Size => 1;
   for ILAT_TRIP0_Field use
     (Trip0_Intlo => 0,
      Trip0_Inthi => 1);

   --  TRIP1 Interrupt Latched Status
   type ILAT_TRIP1_Field is
     (
      --  No Interrupt Latched
      Trip1_Intlo,
      --  Interrupt Latched
      Trip1_Inthi)
     with Size => 1;
   for ILAT_TRIP1_Field use
     (Trip1_Intlo => 0,
      Trip1_Inthi => 1);

   --  PWMTMR0 Period Boundary Interrupt Latched Status
   type ILAT_TMR0PER_Field is
     (
      --  No Interrupt Latched
      Per0_Intlo,
      --  Interrupt Latched
      Per0_Inthi)
     with Size => 1;
   for ILAT_TMR0PER_Field use
     (Per0_Intlo => 0,
      Per0_Inthi => 1);

   --  PWMTMR1 Period Latched Interrupt Status
   type ILAT_TMR1PER_Field is
     (
      --  No Interrupt Latched
      Per1_Intlo,
      --  Interrupt Latched
      Per1_Inthi)
     with Size => 1;
   for ILAT_TMR1PER_Field use
     (Per1_Intlo => 0,
      Per1_Inthi => 1);

   --  PWMTMR2 Period Latched Interrupt Status
   type ILAT_TMR2PER_Field is
     (
      --  No Interrupt Latched
      Per2_Intlo,
      --  Interrupt Latched
      Per2_Inthi)
     with Size => 1;
   for ILAT_TMR2PER_Field use
     (Per2_Intlo => 0,
      Per2_Inthi => 1);

   --  PWMTMR3 Period Latched Interrupt Status
   type ILAT_TMR3PER_Field is
     (
      --  No Interrupt Latched
      Per3_Intlo,
      --  Interrupt Latched
      Per3_Inthi)
     with Size => 1;
   for ILAT_TMR3PER_Field use
     (Per3_Intlo => 0,
      Per3_Inthi => 1);

   --  PWMTMR4 Period Latched Interrupt Status
   type ILAT_TMR4PER_Field is
     (
      --  No Interrupt Latched
      Per4_Intlo,
      --  Interrupt Latched
      Per4_Inthi)
     with Size => 1;
   for ILAT_TMR4PER_Field use
     (Per4_Intlo => 0,
      Per4_Inthi => 1);

   --  Interrupt Latch Register
   type ILAT_Register is record
      --  TRIP0 Interrupt Latched Status
      TRIP0          : ILAT_TRIP0_Field := NRF_SVD.PWM0.Trip0_Intlo;
      --  TRIP1 Interrupt Latched Status
      TRIP1          : ILAT_TRIP1_Field := NRF_SVD.PWM0.Trip1_Intlo;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  PWMTMR0 Period Boundary Interrupt Latched Status
      TMR0PER        : ILAT_TMR0PER_Field := NRF_SVD.PWM0.Per0_Intlo;
      --  PWMTMR1 Period Latched Interrupt Status
      TMR1PER        : ILAT_TMR1PER_Field := NRF_SVD.PWM0.Per1_Intlo;
      --  PWMTMR2 Period Latched Interrupt Status
      TMR2PER        : ILAT_TMR2PER_Field := NRF_SVD.PWM0.Per2_Intlo;
      --  PWMTMR3 Period Latched Interrupt Status
      TMR3PER        : ILAT_TMR3PER_Field := NRF_SVD.PWM0.Per3_Intlo;
      --  PWMTMR4 Period Latched Interrupt Status
      TMR4PER        : ILAT_TMR4PER_Field := NRF_SVD.PWM0.Per4_Intlo;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ILAT_Register use record
      TRIP0          at 0 range 0 .. 0;
      TRIP1          at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TMR0PER        at 0 range 16 .. 16;
      TMR1PER        at 0 range 17 .. 17;
      TMR2PER        at 0 range 18 .. 18;
      TMR3PER        at 0 range 19 .. 19;
      TMR4PER        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype CHOPCFG_VALUE_Field is HAL.UInt8;

   --  Chop Configuration Register
   type CHOPCFG_Register is record
      --  Gate Chopping Divisor
      VALUE         : CHOPCFG_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHOPCFG_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SYNC_WID_VALUE_Field is HAL.UInt10;

   --  Sync Pulse Width Register
   type SYNC_WID_Register is record
      --  Sync Pulse Width
      VALUE          : SYNC_WID_VALUE_Field := 16#3FF#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNC_WID_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TM_VALUE_Field is HAL.UInt16;

   --  Timer 0 Period Register
   type TM_Register is record
      --  Timer PWMTMR0 Period Value
      VALUE          : TM_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TM_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DLYA_VALUE_Field is HAL.UInt16;

   --  Channel A Delay Register
   type DLYA_Register is record
      --  Channel A Delay Value
      VALUE          : DLYA_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYA_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DLYB_VALUE_Field is HAL.UInt16;

   --  Channel B Delay Register
   type DLYB_Register is record
      --  Channel B Delay Value
      VALUE          : DLYB_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYB_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DLYC_VALUE_Field is HAL.UInt16;

   --  Channel C Delay Register
   type DLYC_Register is record
      --  Channel C Delay Value
      VALUE          : DLYC_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYC_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DLYD_VALUE_Field is HAL.UInt16;

   --  Channel D Delay Register
   type DLYD_Register is record
      --  Channel D Delay Value
      VALUE          : DLYD_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYD_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Channel High Side Output Disable
   type ACTL_DISHI_Field is
     (
      --  Enable High Side Output
      Hi_Dis,
      --  Disable High Side Output
      Hi_En)
     with Size => 1;
   for ACTL_DISHI_Field use
     (Hi_Dis => 0,
      Hi_En => 1);

   --  Channel Low Side Output Disable
   type ACTL_DISLO_Field is
     (
      --  Enable Low Side Output
      Lo_Dis,
      --  Disable Low Side Output
      Lo_En)
     with Size => 1;
   for ACTL_DISLO_Field use
     (Lo_Dis => 0,
      Lo_En => 1);

   --  high-low Crossover Enable
   type ACTL_XOVR_Field is
     (
      --  Disable Crossover
      Xovr_Dis,
      --  Enable Crossover
      Xovr_En)
     with Size => 1;
   for ACTL_XOVR_Field use
     (Xovr_Dis => 0,
      Xovr_En => 1);

   --  High Side Output Pulse Position
   type ACTL_PULSEMODEHI_Field is
     (
      --  Symmetrical
      Sym_Hi,
      --  Asymmetrical
      Asym_Hi,
      --  Left Half
      Left_Hi,
      --  Right Half
      Right_Hi)
     with Size => 2;
   for ACTL_PULSEMODEHI_Field use
     (Sym_Hi => 0,
      Asym_Hi => 1,
      Left_Hi => 2,
      Right_Hi => 3);

   --  Low Side Output Pulse Position
   type ACTL_PULSEMODELO_Field is
     (
      --  Symmetrical
      Sym_Lo,
      --  Asymmetrical
      Asym_Lo,
      --  Left Half
      Left_Lo,
      --  Right Half
      Right_Lo)
     with Size => 2;
   for ACTL_PULSEMODELO_Field use
     (Sym_Lo => 0,
      Asym_Lo => 1,
      Left_Lo => 2,
      Right_Lo => 3);

   --  Channel A Control Register
   type ACTL_Register is record
      --  Channel High Side Output Disable
      DISHI          : ACTL_DISHI_Field := NRF_SVD.PWM0.Hi_Dis;
      --  Channel Low Side Output Disable
      DISLO          : ACTL_DISLO_Field := NRF_SVD.PWM0.Lo_Dis;
      --  high-low Crossover Enable
      XOVR           : ACTL_XOVR_Field := NRF_SVD.PWM0.Xovr_Dis;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  High Side Output Pulse Position
      PULSEMODEHI    : ACTL_PULSEMODEHI_Field := NRF_SVD.PWM0.Sym_Hi;
      --  Low Side Output Pulse Position
      PULSEMODELO    : ACTL_PULSEMODELO_Field := NRF_SVD.PWM0.Sym_Lo;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACTL_Register use record
      DISHI          at 0 range 0 .. 0;
      DISLO          at 0 range 1 .. 1;
      XOVR           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PULSEMODEHI    at 0 range 8 .. 9;
      PULSEMODELO    at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype AH_DUTY_Field is HAL.UInt16;

   --  Channel A-High Duty-0 Register
   type AH_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : AH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AH0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel A-High Heightened-Precision Duty-0 Register
   type AH0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : AH0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AH0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AH1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel A-High Heightened-Precision Duty-1 Register
   type AH1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : AH1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AH1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AL_DUTY_Field is HAL.UInt16;

   --  Channel A-Low Duty-0 Register
   type AL_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : AL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AL0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel A-Low Heightened-Precision Duty-0 Register
   type AL0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : AL0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AL0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AL1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel A-Low Heightened-Precision Duty-1 Register
   type AL1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : AL1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AL1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BCTL_PULSEMODEHI_Field is HAL.UInt2;
   subtype BCTL_PULSEMODELO_Field is HAL.UInt2;

   --  Channel B Control Register
   type BCTL_Register is record
      --  Channel High Side Output Disable
      DISHI          : Boolean := False;
      --  Channel Low Side Output Disable
      DISLO          : Boolean := False;
      --  high-low Crossover Enable
      XOVR           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  High Side Output Pulse Position
      PULSEMODEHI    : BCTL_PULSEMODEHI_Field := 16#0#;
      --  Low Side Output Pulse Position
      PULSEMODELO    : BCTL_PULSEMODELO_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BCTL_Register use record
      DISHI          at 0 range 0 .. 0;
      DISLO          at 0 range 1 .. 1;
      XOVR           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PULSEMODEHI    at 0 range 8 .. 9;
      PULSEMODELO    at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype BH_DUTY_Field is HAL.UInt16;

   --  Channel B-High Duty-0 Register
   type BH_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : BH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BH0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel B-High Heightened-Precision Duty-0 Register
   type BH0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : BH0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BH0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BH1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel B-High Heightened-Precision Duty-1 Register
   type BH1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : BH1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BH1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BL_DUTY_Field is HAL.UInt16;

   --  Channel B-Low Duty-0 Register
   type BL_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : BL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BL0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel B-Low Heightened-Precision Duty-0 Register
   type BL0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : BL0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BL0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BL1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel B-Low Heightened-Precision Duty-1 Register
   type BL1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : BL1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BL1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CCTL_PULSEMODEHI_Field is HAL.UInt2;
   subtype CCTL_PULSEMODELO_Field is HAL.UInt2;

   --  Channel C Control Register
   type CCTL_Register is record
      --  Channel High Side Output Disable
      DISHI          : Boolean := False;
      --  Channel Low Side Output Disable
      DISLO          : Boolean := False;
      --  high-low Crossover Enable
      XOVR           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  High Side Output Pulse Position
      PULSEMODEHI    : CCTL_PULSEMODEHI_Field := 16#0#;
      --  Low Side Output Pulse Position
      PULSEMODELO    : CCTL_PULSEMODELO_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCTL_Register use record
      DISHI          at 0 range 0 .. 0;
      DISLO          at 0 range 1 .. 1;
      XOVR           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PULSEMODEHI    at 0 range 8 .. 9;
      PULSEMODELO    at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CH_DUTY_Field is HAL.UInt16;

   --  Channel C-High Pulse Duty Register 0
   type CH_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : CH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CH0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel C-High Pulse Heightened-Precision Duty Register 0
   type CH0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : CH0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CH1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel C-High Pulse Heightened-Precision Duty Register 1
   type CH1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : CH1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CL_DUTY_Field is HAL.UInt16;

   --  Channel C-Low Pulse Duty Register 0
   type CL_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : CL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CL0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel C-Low Pulse Duty Register 1
   type CL0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : CL0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CL0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CL1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel C-Low Heightened-Precision Duty-1 Register
   type CL1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : CL1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CL1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DCTL_PULSEMODEHI_Field is HAL.UInt2;
   subtype DCTL_PULSEMODELO_Field is HAL.UInt2;

   --  Channel D Control Register
   type DCTL_Register is record
      --  Channel High Side Output Disable
      DISHI          : Boolean := False;
      --  Channel Low Side Output Disable
      DISLO          : Boolean := False;
      --  high-low Crossover Enable
      XOVR           : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  High Side Output Pulse Position
      PULSEMODEHI    : DCTL_PULSEMODEHI_Field := 16#0#;
      --  Low Side Output Pulse Position
      PULSEMODELO    : DCTL_PULSEMODELO_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCTL_Register use record
      DISHI          at 0 range 0 .. 0;
      DISLO          at 0 range 1 .. 1;
      XOVR           at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PULSEMODEHI    at 0 range 8 .. 9;
      PULSEMODELO    at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DH_DUTY_Field is HAL.UInt16;

   --  Channel D-High Duty-0 Register
   type DH_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : DH_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DH_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DH0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel D-High Pulse Heightened-Precision Duty Register 0
   type DH0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : DH0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DH0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DH1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel D High Pulse Heightened-Precision Duty Register 1
   type DH1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : DH1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DH1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DL_DUTY_Field is HAL.UInt16;

   --  Channel D-Low Pulse Duty Register 0
   type DL_Register is record
      --  Duty Cycle Asserted Count
      DUTY           : DL_DUTY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DL_Register use record
      DUTY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DL0_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel D-Low Heightened-Precision Duty-0 Register
   type DL0_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : DL0_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DL0_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DL1_HP_ENHDIV_Field is HAL.UInt2;

   --  Channel D-Low Heightened-Precision Duty-1 Register
   type DL1_HP_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : DL1_HP_ENHDIV_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DL1_HP_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      ENHDIV        at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AH_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype AH_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel A-High Full Duty0 Register
   type AH_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : AH_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : AH_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AH_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype AL_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype AL_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel A-Low Full Duty0 Register
   type AL_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : AL_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : AL_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AL_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype BH_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype BH_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel B-High Full Duty0 Register
   type BH_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : BH_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : BH_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BH_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype BL_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype BL_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel B-Low Full Duty0 Register
   type BL_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : BL_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : BL_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BL_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype CH_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype CH_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel C-High Full Duty0 Register
   type CH_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : CH_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : CH_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype CL_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype CL_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel C-Low Full Duty0 Register
   type CL_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : CL_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : CL_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CL_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype DH_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype DH_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel D-High Full Duty0 Register
   type DH_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : DH_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : DH_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DH_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype DL_DUTY_ENHDIV_Field is HAL.UInt2;
   subtype DL_DUTY_DUTY_Field is HAL.UInt16;

   --  Channel D-Low Full Duty0 Register
   type DL_DUTY_Register is record
      --  unspecified
      Reserved_0_13 : HAL.UInt14 := 16#0#;
      --  Enhanced Precision Divider Bits
      ENHDIV        : DL_DUTY_ENHDIV_Field := 16#0#;
      --  Coarse Duty Value
      DUTY          : DL_DUTY_DUTY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DL_DUTY_Register use record
      Reserved_0_13 at 0 range 0 .. 13;
      ENHDIV        at 0 range 14 .. 15;
      DUTY          at 0 range 16 .. 31;
   end record;

   subtype CHA_DT_VALUE_Field is HAL.UInt10;

   --  Channel A Dead-time Register
   type CHA_DT_Register is record
      --  Dead-time value
      VALUE          : CHA_DT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHA_DT_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CHB_DT_VALUE_Field is HAL.UInt10;

   --  Channel B Dead-time Register
   type CHB_DT_Register is record
      --  Dead-time value
      VALUE          : CHB_DT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHB_DT_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CHC_DT_VALUE_Field is HAL.UInt10;

   --  Channel C Dead-time Register
   type CHC_DT_Register is record
      --  Dead-time value
      VALUE          : CHC_DT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHC_DT_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CHD_DT_VALUE_Field is HAL.UInt10;

   --  Channel D Dead-time Register
   type CHD_DT_Register is record
      --  Dead-time value
      VALUE          : CHD_DT_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHD_DT_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Software Trip Register
   type SWTRIP_Register is record
      --  Software Trip Bit for Channel A Low Side
      SWTRIPAL       : Boolean := False;
      --  Software Trip Bit for Channel B Low Side
      SWTRIPBL       : Boolean := False;
      --  Software Trip Bit for Channel C Low Side
      SWTRIPCL       : Boolean := False;
      --  Software Trip Bit for Channel D Low Side
      SWTRIPDL       : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Software Trip Bit for Channel A High Side
      SWTRIPAH       : Boolean := False;
      --  Software Trip Bit for Channel B High Side
      SWTRIPBH       : Boolean := False;
      --  Software Trip Bit for Channel C High Side
      SWTRIPCH       : Boolean := False;
      --  Software Trip Bit for Channel D High Side
      SWTRIPDH       : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWTRIP_Register use record
      SWTRIPAL       at 0 range 0 .. 0;
      SWTRIPBL       at 0 range 1 .. 1;
      SWTRIPCL       at 0 range 2 .. 2;
      SWTRIPDL       at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SWTRIPAH       at 0 range 16 .. 16;
      SWTRIPBH       at 0 range 17 .. 17;
      SWTRIPCH       at 0 range 18 .. 18;
      SWTRIPDH       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Channel A Low Side Trip Polarity
   type TRIP_POL_TPOLAL_Field is
     (
      --  Set Channel A Low Side to Inactive Polarity upon Trip
      Tpolal_Dis,
      --  Set Channel A Low Side to Active Polarity upon Trip
      Tpolal_En,
      --  Set Channel A Low Side to High Impedance upon Trip
      Tpolal_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLAL_Field use
     (Tpolal_Dis => 0,
      Tpolal_En => 1,
      Tpolal_Hiz => 2);

   --  Channel B Low Side Trip Polarity
   type TRIP_POL_TPOLBL_Field is
     (
      --  Set Channel B Low Side to Inactive Polarity upon Trip
      Tpolbl_Dis,
      --  Set Channel B Low Side to Active Polarity upon Trip
      Tpolbl_En,
      --  Set Channel B Low Side to High Impedance upon Trip
      Tpolbl_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLBL_Field use
     (Tpolbl_Dis => 0,
      Tpolbl_En => 1,
      Tpolbl_Hiz => 2);

   --  Channel C Low Side Trip Polarity
   type TRIP_POL_TPOLCL_Field is
     (
      --  Set Channel C Low Side to Inactive Polarity upon Trip
      Tpolcl_Dis,
      --  Set Channel C Low Side to Active Polarity upon Trip
      Tpolcl_En,
      --  Set Channel C Low Side to High Impedance upon Trip
      Tpolcl_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLCL_Field use
     (Tpolcl_Dis => 0,
      Tpolcl_En => 1,
      Tpolcl_Hiz => 2);

   --  Channel D Low Side Trip Polarity
   type TRIP_POL_TPOLDL_Field is
     (
      --  Set Channel D Low Side to Inactive Polarity upon Trip
      Tpoldl_Dis,
      --  Set Channel D Low Side to Active Polarity upon Trip
      Tpoldl_En,
      --  Set Channel D Low Side to High Impedance upon Trip
      Tpoldl_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLDL_Field use
     (Tpoldl_Dis => 0,
      Tpoldl_En => 1,
      Tpoldl_Hiz => 2);

   --  Channel A High Side Trip Polarity
   type TRIP_POL_TPOLAH_Field is
     (
      --  Set Channel A High Side to Inactive Polarity upon Trip
      Tpolah_Dis,
      --  Set Channel A High Side to Active Polarity upon Trip
      Tpolah_En,
      --  Set Channel A High Side to High Impedance upon Trip
      Tpolah_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLAH_Field use
     (Tpolah_Dis => 0,
      Tpolah_En => 1,
      Tpolah_Hiz => 2);

   --  Channel B High Side Trip Polarity
   type TRIP_POL_TPOLBH_Field is
     (
      --  Set Channel B High Side to Inactive Polarity upon Trip
      Tpolbh_Dis,
      --  Set Channel B High Side to Active Polarity upon Trip
      Tpolbh_En,
      --  Set Channel B High Side to High Impedance upon Trip
      Tpolbh_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLBH_Field use
     (Tpolbh_Dis => 0,
      Tpolbh_En => 1,
      Tpolbh_Hiz => 2);

   --  Channel C High Side Trip Polarity
   type TRIP_POL_TPOLCH_Field is
     (
      --  Set Channel C High Side to Inactive Polarity upon Trip
      Tpolch_Dis,
      --  Set Channel C High Side to Active Polarity upon Trip
      Tpolch_En,
      --  Set Channel C High Side to High Impedance upon Trip
      Tpolch_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLCH_Field use
     (Tpolch_Dis => 0,
      Tpolch_En => 1,
      Tpolch_Hiz => 2);

   --  Channel D High Side Trip Polarity
   type TRIP_POL_TPOLDH_Field is
     (
      --  Set Channel D High Side to Inactive Polarity upon Trip
      Tpoldh_Dis,
      --  Set Channel D High Side to Active Polarity upon Trip
      Tpoldh_En,
      --  Set Channel D High Side to High Impedance upon Trip
      Tpoldh_Hiz)
     with Size => 2;
   for TRIP_POL_TPOLDH_Field use
     (Tpoldh_Dis => 0,
      Tpoldh_En => 1,
      Tpoldh_Hiz => 2);

   --  Trip Polarity Register
   type TRIP_POL_Register is record
      --  Channel A Low Side Trip Polarity
      TPOLAL         : TRIP_POL_TPOLAL_Field := NRF_SVD.PWM0.Tpolal_Dis;
      --  Channel B Low Side Trip Polarity
      TPOLBL         : TRIP_POL_TPOLBL_Field := NRF_SVD.PWM0.Tpolbl_Dis;
      --  Channel C Low Side Trip Polarity
      TPOLCL         : TRIP_POL_TPOLCL_Field := NRF_SVD.PWM0.Tpolcl_Dis;
      --  Channel D Low Side Trip Polarity
      TPOLDL         : TRIP_POL_TPOLDL_Field := NRF_SVD.PWM0.Tpoldl_Dis;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Channel A High Side Trip Polarity
      TPOLAH         : TRIP_POL_TPOLAH_Field := NRF_SVD.PWM0.Tpolah_Dis;
      --  Channel B High Side Trip Polarity
      TPOLBH         : TRIP_POL_TPOLBH_Field := NRF_SVD.PWM0.Tpolbh_Dis;
      --  Channel C High Side Trip Polarity
      TPOLCH         : TRIP_POL_TPOLCH_Field := NRF_SVD.PWM0.Tpolch_Dis;
      --  Channel D High Side Trip Polarity
      TPOLDH         : TRIP_POL_TPOLDH_Field := NRF_SVD.PWM0.Tpoldh_Dis;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIP_POL_Register use record
      TPOLAL         at 0 range 0 .. 1;
      TPOLBL         at 0 range 2 .. 3;
      TPOLCL         at 0 range 4 .. 5;
      TPOLDL         at 0 range 6 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TPOLAH         at 0 range 16 .. 17;
      TPOLBH         at 0 range 18 .. 19;
      TPOLCH         at 0 range 20 .. 21;
      TPOLDH         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse-Width Modulator
   type PWM0_Peripheral is record
      --  Control Register
      CTL      : aliased CTL_Register;
      --  Channel Configuration Register
      CHANCFG  : aliased CHANCFG_Register;
      --  Trip Configuration Register
      TRIPCFG  : aliased TRIPCFG_Register;
      --  Status Register
      STAT     : aliased STAT_Register;
      --  Interrupt Mask Register
      IMSK     : aliased IMSK_Register;
      --  Interrupt Latch Register
      ILAT     : aliased ILAT_Register;
      --  Chop Configuration Register
      CHOPCFG  : aliased CHOPCFG_Register;
      --  Sync Pulse Width Register
      SYNC_WID : aliased SYNC_WID_Register;
      --  Timer 0 Period Register
      TM0      : aliased TM_Register;
      --  Timer 1 Period Register
      TM1      : aliased TM_Register;
      --  Timer 2 Period Register
      TM2      : aliased TM_Register;
      --  Timer 3 Period Register
      TM3      : aliased TM_Register;
      --  Timer 4 Period Register
      TM4      : aliased TM_Register;
      --  Channel A Delay Register
      DLYA     : aliased DLYA_Register;
      --  Channel B Delay Register
      DLYB     : aliased DLYB_Register;
      --  Channel C Delay Register
      DLYC     : aliased DLYC_Register;
      --  Channel D Delay Register
      DLYD     : aliased DLYD_Register;
      --  Channel A Control Register
      ACTL     : aliased ACTL_Register;
      --  Channel A-High Duty-0 Register
      AH0      : aliased AH_Register;
      --  Channel A-High Duty-1 Register
      AH1      : aliased AH_Register;
      --  Channel A-High Heightened-Precision Duty-0 Register
      AH0_HP   : aliased AH0_HP_Register;
      --  Channel A-High Heightened-Precision Duty-1 Register
      AH1_HP   : aliased AH1_HP_Register;
      --  Channel A-Low Duty-0 Register
      AL0      : aliased AL_Register;
      --  Channel A-Low Duty-1 Register
      AL1      : aliased AL_Register;
      --  Channel A-Low Heightened-Precision Duty-0 Register
      AL0_HP   : aliased AL0_HP_Register;
      --  Channel A-Low Heightened-Precision Duty-1 Register
      AL1_HP   : aliased AL1_HP_Register;
      --  Channel B Control Register
      BCTL     : aliased BCTL_Register;
      --  Channel B-High Duty-0 Register
      BH0      : aliased BH_Register;
      --  Channel B-High Duty-1 Register
      BH1      : aliased BH_Register;
      --  Channel B-High Heightened-Precision Duty-0 Register
      BH0_HP   : aliased BH0_HP_Register;
      --  Channel B-High Heightened-Precision Duty-1 Register
      BH1_HP   : aliased BH1_HP_Register;
      --  Channel B-Low Duty-0 Register
      BL0      : aliased BL_Register;
      --  Channel B-Low Duty-1 Register
      BL1      : aliased BL_Register;
      --  Channel B-Low Heightened-Precision Duty-0 Register
      BL0_HP   : aliased BL0_HP_Register;
      --  Channel B-Low Heightened-Precision Duty-1 Register
      BL1_HP   : aliased BL1_HP_Register;
      --  Channel C Control Register
      CCTL     : aliased CCTL_Register;
      --  Channel C-High Pulse Duty Register 0
      CH0      : aliased CH_Register;
      --  Channel C-High Pulse Duty Register 1
      CH1      : aliased CH_Register;
      --  Channel C-High Pulse Heightened-Precision Duty Register 0
      CH0_HP   : aliased CH0_HP_Register;
      --  Channel C-High Pulse Heightened-Precision Duty Register 1
      CH1_HP   : aliased CH1_HP_Register;
      --  Channel C-Low Pulse Duty Register 0
      CL0      : aliased CL_Register;
      --  Channel C-Low Duty-1 Register
      CL1      : aliased CL_Register;
      --  Channel C-Low Pulse Duty Register 1
      CL0_HP   : aliased CL0_HP_Register;
      --  Channel C-Low Heightened-Precision Duty-1 Register
      CL1_HP   : aliased CL1_HP_Register;
      --  Channel D Control Register
      DCTL     : aliased DCTL_Register;
      --  Channel D-High Duty-0 Register
      DH0      : aliased DH_Register;
      --  Channel D-High Pulse Duty Register 1
      DH1      : aliased DH_Register;
      --  Channel D-High Pulse Heightened-Precision Duty Register 0
      DH0_HP   : aliased DH0_HP_Register;
      --  Channel D High Pulse Heightened-Precision Duty Register 1
      DH1_HP   : aliased DH1_HP_Register;
      --  Channel D-Low Pulse Duty Register 0
      DL0      : aliased DL_Register;
      --  Channel D-Low Pulse Duty Register 1
      DL1      : aliased DL_Register;
      --  Channel D-Low Heightened-Precision Duty-0 Register
      DL0_HP   : aliased DL0_HP_Register;
      --  Channel D-Low Heightened-Precision Duty-1 Register
      DL1_HP   : aliased DL1_HP_Register;
      --  Channel A-High Full Duty0 Register
      AH_DUTY0 : aliased AH_DUTY_Register;
      --  Channel A-High Full Duty1 Register
      AH_DUTY1 : aliased AH_DUTY_Register;
      --  Channel A-Low Full Duty0 Register
      AL_DUTY0 : aliased AL_DUTY_Register;
      --  Channel A-Low Full Duty1 Register
      AL_DUTY1 : aliased AL_DUTY_Register;
      --  Channel B-High Full Duty0 Register
      BH_DUTY0 : aliased BH_DUTY_Register;
      --  Channel B-High Full Duty1 Register
      BH_DUTY1 : aliased BH_DUTY_Register;
      --  Channel B-Low Full Duty0 Register
      BL_DUTY0 : aliased BL_DUTY_Register;
      --  Channel B-Low Full Duty1 Register
      BL_DUTY1 : aliased BL_DUTY_Register;
      --  Channel C-High Full Duty0 Register
      CH_DUTY0 : aliased CH_DUTY_Register;
      --  Channel C-High Full Duty1 Register
      CH_DUTY1 : aliased CH_DUTY_Register;
      --  Channel C-Low Full Duty0 Register
      CL_DUTY0 : aliased CL_DUTY_Register;
      --  Channel C-Low Full Duty1 Register
      CL_DUTY1 : aliased CL_DUTY_Register;
      --  Channel D-High Full Duty0 Register
      DH_DUTY0 : aliased DH_DUTY_Register;
      --  Channel D-High Full Duty1 Register
      DH_DUTY1 : aliased DH_DUTY_Register;
      --  Channel D-Low Full Duty0 Register
      DL_DUTY0 : aliased DL_DUTY_Register;
      --  Channel D-Low Full Duty1 Register
      DL_DUTY1 : aliased DL_DUTY_Register;
      --  Channel A Dead-time Register
      CHA_DT   : aliased CHA_DT_Register;
      --  Channel B Dead-time Register
      CHB_DT   : aliased CHB_DT_Register;
      --  Channel C Dead-time Register
      CHC_DT   : aliased CHC_DT_Register;
      --  Channel D Dead-time Register
      CHD_DT   : aliased CHD_DT_Register;
      --  Software Trip Register
      SWTRIP   : aliased SWTRIP_Register;
      --  Trip Polarity Register
      TRIP_POL : aliased TRIP_POL_Register;
   end record
     with Volatile;

   for PWM0_Peripheral use record
      CTL      at 16#0# range 0 .. 31;
      CHANCFG  at 16#4# range 0 .. 31;
      TRIPCFG  at 16#8# range 0 .. 31;
      STAT     at 16#C# range 0 .. 31;
      IMSK     at 16#10# range 0 .. 31;
      ILAT     at 16#14# range 0 .. 31;
      CHOPCFG  at 16#18# range 0 .. 31;
      SYNC_WID at 16#20# range 0 .. 31;
      TM0      at 16#24# range 0 .. 31;
      TM1      at 16#28# range 0 .. 31;
      TM2      at 16#2C# range 0 .. 31;
      TM3      at 16#30# range 0 .. 31;
      TM4      at 16#34# range 0 .. 31;
      DLYA     at 16#38# range 0 .. 31;
      DLYB     at 16#3C# range 0 .. 31;
      DLYC     at 16#40# range 0 .. 31;
      DLYD     at 16#44# range 0 .. 31;
      ACTL     at 16#48# range 0 .. 31;
      AH0      at 16#4C# range 0 .. 31;
      AH1      at 16#50# range 0 .. 31;
      AH0_HP   at 16#54# range 0 .. 31;
      AH1_HP   at 16#58# range 0 .. 31;
      AL0      at 16#5C# range 0 .. 31;
      AL1      at 16#60# range 0 .. 31;
      AL0_HP   at 16#64# range 0 .. 31;
      AL1_HP   at 16#68# range 0 .. 31;
      BCTL     at 16#6C# range 0 .. 31;
      BH0      at 16#70# range 0 .. 31;
      BH1      at 16#74# range 0 .. 31;
      BH0_HP   at 16#78# range 0 .. 31;
      BH1_HP   at 16#7C# range 0 .. 31;
      BL0      at 16#80# range 0 .. 31;
      BL1      at 16#84# range 0 .. 31;
      BL0_HP   at 16#88# range 0 .. 31;
      BL1_HP   at 16#8C# range 0 .. 31;
      CCTL     at 16#90# range 0 .. 31;
      CH0      at 16#94# range 0 .. 31;
      CH1      at 16#98# range 0 .. 31;
      CH0_HP   at 16#9C# range 0 .. 31;
      CH1_HP   at 16#A0# range 0 .. 31;
      CL0      at 16#A4# range 0 .. 31;
      CL1      at 16#A8# range 0 .. 31;
      CL0_HP   at 16#AC# range 0 .. 31;
      CL1_HP   at 16#B0# range 0 .. 31;
      DCTL     at 16#B4# range 0 .. 31;
      DH0      at 16#B8# range 0 .. 31;
      DH1      at 16#BC# range 0 .. 31;
      DH0_HP   at 16#C0# range 0 .. 31;
      DH1_HP   at 16#C4# range 0 .. 31;
      DL0      at 16#C8# range 0 .. 31;
      DL1      at 16#CC# range 0 .. 31;
      DL0_HP   at 16#D0# range 0 .. 31;
      DL1_HP   at 16#D4# range 0 .. 31;
      AH_DUTY0 at 16#D8# range 0 .. 31;
      AH_DUTY1 at 16#DC# range 0 .. 31;
      AL_DUTY0 at 16#E0# range 0 .. 31;
      AL_DUTY1 at 16#E4# range 0 .. 31;
      BH_DUTY0 at 16#E8# range 0 .. 31;
      BH_DUTY1 at 16#EC# range 0 .. 31;
      BL_DUTY0 at 16#F0# range 0 .. 31;
      BL_DUTY1 at 16#F4# range 0 .. 31;
      CH_DUTY0 at 16#F8# range 0 .. 31;
      CH_DUTY1 at 16#FC# range 0 .. 31;
      CL_DUTY0 at 16#100# range 0 .. 31;
      CL_DUTY1 at 16#104# range 0 .. 31;
      DH_DUTY0 at 16#108# range 0 .. 31;
      DH_DUTY1 at 16#10C# range 0 .. 31;
      DL_DUTY0 at 16#110# range 0 .. 31;
      DL_DUTY1 at 16#114# range 0 .. 31;
      CHA_DT   at 16#118# range 0 .. 31;
      CHB_DT   at 16#11C# range 0 .. 31;
      CHC_DT   at 16#120# range 0 .. 31;
      CHD_DT   at 16#124# range 0 .. 31;
      SWTRIP   at 16#130# range 0 .. 31;
      TRIP_POL at 16#134# range 0 .. 31;
   end record;

   --  Pulse-Width Modulator
   PWM0_Periph : aliased PWM0_Peripheral
     with Import, Address => System'To_Address (16#40028000#);

   --  Pulse-Width Modulator
   PWM1_Periph : aliased PWM0_Peripheral
     with Import, Address => System'To_Address (16#40029000#);

   --  Pulse-Width Modulator
   PWM2_Periph : aliased PWM0_Peripheral
     with Import, Address => System'To_Address (16#4002A000#);

end NRF_SVD.PWM0;
