--  This spec has been automatically generated from MKE14F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.APIS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Master 2 Privilege Level
   type MPRA_MPL2_Field is
     (
      --  Accesses from this master are forced to user-mode.
      Mpl2_0,
      --  Accesses from this master are not forced to user-mode.
      Mpl2_1)
     with Size => 1;
   for MPRA_MPL2_Field use
     (Mpl2_0 => 0,
      Mpl2_1 => 1);

   --  Master 2 Trusted For Writes
   type MPRA_MTW2_Field is
     (
      --  This master is not trusted for write accesses.
      Mtw2_0,
      --  This master is trusted for write accesses.
      Mtw2_1)
     with Size => 1;
   for MPRA_MTW2_Field use
     (Mtw2_0 => 0,
      Mtw2_1 => 1);

   --  Master 2 Trusted For Read
   type MPRA_MTR2_Field is
     (
      --  This master is not trusted for read accesses.
      Mtr2_0,
      --  This master is trusted for read accesses.
      Mtr2_1)
     with Size => 1;
   for MPRA_MTR2_Field use
     (Mtr2_0 => 0,
      Mtr2_1 => 1);

   --  Master 1 Privilege Level
   type MPRA_MPL1_Field is
     (
      --  Accesses from this master are forced to user-mode.
      Mpl1_0,
      --  Accesses from this master are not forced to user-mode.
      Mpl1_1)
     with Size => 1;
   for MPRA_MPL1_Field use
     (Mpl1_0 => 0,
      Mpl1_1 => 1);

   --  Master 1 Trusted for Writes
   type MPRA_MTW1_Field is
     (
      --  This master is not trusted for write accesses.
      Mtw1_0,
      --  This master is trusted for write accesses.
      Mtw1_1)
     with Size => 1;
   for MPRA_MTW1_Field use
     (Mtw1_0 => 0,
      Mtw1_1 => 1);

   --  Master 1 Trusted for Read
   type MPRA_MTR1_Field is
     (
      --  This master is not trusted for read accesses.
      Mtr1_0,
      --  This master is trusted for read accesses.
      Mtr1_1)
     with Size => 1;
   for MPRA_MTR1_Field use
     (Mtr1_0 => 0,
      Mtr1_1 => 1);

   --  Master 0 Privilege Level
   type MPRA_MPL0_Field is
     (
      --  Accesses from this master are forced to user-mode.
      Mpl0_0,
      --  Accesses from this master are not forced to user-mode.
      Mpl0_1)
     with Size => 1;
   for MPRA_MPL0_Field use
     (Mpl0_0 => 0,
      Mpl0_1 => 1);

   --  Master 0 Trusted For Writes
   type MPRA_MTW0_Field is
     (
      --  This master is not trusted for write accesses.
      Mtw0_0,
      --  This master is trusted for write accesses.
      Mtw0_1)
     with Size => 1;
   for MPRA_MTW0_Field use
     (Mtw0_0 => 0,
      Mtw0_1 => 1);

   --  Master 0 Trusted For Read
   type MPRA_MTR0_Field is
     (
      --  This master is not trusted for read accesses.
      Mtr0_0,
      --  This master is trusted for read accesses.
      Mtr0_1)
     with Size => 1;
   for MPRA_MTR0_Field use
     (Mtr0_0 => 0,
      Mtr0_1 => 1);

   --  Master Privilege Register A
   type AIPS_MPRA_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  Master 2 Privilege Level
      MPL2           : MPRA_MPL2_Field := NRF_SVD.APIS.Mpl2_0;
      --  Master 2 Trusted For Writes
      MTW2           : MPRA_MTW2_Field := NRF_SVD.APIS.Mtw2_0;
      --  Master 2 Trusted For Read
      MTR2           : MPRA_MTR2_Field := NRF_SVD.APIS.Mtr2_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Master 1 Privilege Level
      MPL1           : MPRA_MPL1_Field := NRF_SVD.APIS.Mpl1_0;
      --  Master 1 Trusted for Writes
      MTW1           : MPRA_MTW1_Field := NRF_SVD.APIS.Mtw1_0;
      --  Master 1 Trusted for Read
      MTR1           : MPRA_MTR1_Field := NRF_SVD.APIS.Mtr1_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Master 0 Privilege Level
      MPL0           : MPRA_MPL0_Field := NRF_SVD.APIS.Mpl0_0;
      --  Master 0 Trusted For Writes
      MTW0           : MPRA_MTW0_Field := NRF_SVD.APIS.Mtw0_0;
      --  Master 0 Trusted For Read
      MTR0           : MPRA_MTR0_Field := NRF_SVD.APIS.Mtr0_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS_MPRA_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      MPL2           at 0 range 20 .. 20;
      MTW2           at 0 range 21 .. 21;
      MTR2           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MPL1           at 0 range 24 .. 24;
      MTW1           at 0 range 25 .. 25;
      MTR1           at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MPL0           at 0 range 28 .. 28;
      MTW0           at 0 range 29 .. 29;
      MTR0           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Trusted Protect
   type PACR_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp7_0,
      --  Accesses from an untrusted master are not allowed.
      Tp7_1)
     with Size => 1;
   for PACR_TP7_Field use
     (Tp7_0 => 0,
      Tp7_1 => 1);

   --  Write Protect
   type PACR_WP7_Field is
     (
      --  This peripheral allows write accesses.
      Wp7_0,
      --  This peripheral is write protected.
      Wp7_1)
     with Size => 1;
   for PACR_WP7_Field use
     (Wp7_0 => 0,
      Wp7_1 => 1);

   --  Supervisor Protect
   type PACR_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp7_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp7_1)
     with Size => 1;
   for PACR_SP7_Field use
     (Sp7_0 => 0,
      Sp7_1 => 1);

   --  Trusted Protect
   type PACR_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp6_0,
      --  Accesses from an untrusted master are not allowed.
      Tp6_1)
     with Size => 1;
   for PACR_TP6_Field use
     (Tp6_0 => 0,
      Tp6_1 => 1);

   --  Write Protect
   type PACR_WP6_Field is
     (
      --  This peripheral allows write accesses.
      Wp6_0,
      --  This peripheral is write protected.
      Wp6_1)
     with Size => 1;
   for PACR_WP6_Field use
     (Wp6_0 => 0,
      Wp6_1 => 1);

   --  Supervisor Protect
   type PACR_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp6_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp6_1)
     with Size => 1;
   for PACR_SP6_Field use
     (Sp6_0 => 0,
      Sp6_1 => 1);

   --  Trusted Protect
   type PACR_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp5_0,
      --  Accesses from an untrusted master are not allowed.
      Tp5_1)
     with Size => 1;
   for PACR_TP5_Field use
     (Tp5_0 => 0,
      Tp5_1 => 1);

   --  Write Protect
   type PACR_WP5_Field is
     (
      --  This peripheral allows write accesses.
      Wp5_0,
      --  This peripheral is write protected.
      Wp5_1)
     with Size => 1;
   for PACR_WP5_Field use
     (Wp5_0 => 0,
      Wp5_1 => 1);

   --  Supervisor Protect
   type PACR_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp5_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp5_1)
     with Size => 1;
   for PACR_SP5_Field use
     (Sp5_0 => 0,
      Sp5_1 => 1);

   --  Trusted Protect
   type PACR_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp4_0,
      --  Accesses from an untrusted master are not allowed.
      Tp4_1)
     with Size => 1;
   for PACR_TP4_Field use
     (Tp4_0 => 0,
      Tp4_1 => 1);

   --  Write Protect
   type PACR_WP4_Field is
     (
      --  This peripheral allows write accesses.
      Wp4_0,
      --  This peripheral is write protected.
      Wp4_1)
     with Size => 1;
   for PACR_WP4_Field use
     (Wp4_0 => 0,
      Wp4_1 => 1);

   --  Supervisor Protect
   type PACR_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp4_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp4_1)
     with Size => 1;
   for PACR_SP4_Field use
     (Sp4_0 => 0,
      Sp4_1 => 1);

   --  Trusted Protect
   type PACR_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp3_0,
      --  Accesses from an untrusted master are not allowed.
      Tp3_1)
     with Size => 1;
   for PACR_TP3_Field use
     (Tp3_0 => 0,
      Tp3_1 => 1);

   --  Write Protect
   type PACR_WP3_Field is
     (
      --  This peripheral allows write accesses.
      Wp3_0,
      --  This peripheral is write protected.
      Wp3_1)
     with Size => 1;
   for PACR_WP3_Field use
     (Wp3_0 => 0,
      Wp3_1 => 1);

   --  Supervisor Protect
   type PACR_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp3_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp3_1)
     with Size => 1;
   for PACR_SP3_Field use
     (Sp3_0 => 0,
      Sp3_1 => 1);

   --  Trusted Protect
   type PACR_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp2_0,
      --  Accesses from an untrusted master are not allowed.
      Tp2_1)
     with Size => 1;
   for PACR_TP2_Field use
     (Tp2_0 => 0,
      Tp2_1 => 1);

   --  Write Protect
   type PACR_WP2_Field is
     (
      --  This peripheral allows write accesses.
      Wp2_0,
      --  This peripheral is write protected.
      Wp2_1)
     with Size => 1;
   for PACR_WP2_Field use
     (Wp2_0 => 0,
      Wp2_1 => 1);

   --  Supervisor Protect
   type PACR_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp2_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp2_1)
     with Size => 1;
   for PACR_SP2_Field use
     (Sp2_0 => 0,
      Sp2_1 => 1);

   --  Trusted Protect
   type PACR_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp1_0,
      --  Accesses from an untrusted master are not allowed.
      Tp1_1)
     with Size => 1;
   for PACR_TP1_Field use
     (Tp1_0 => 0,
      Tp1_1 => 1);

   --  Write Protect
   type PACR_WP1_Field is
     (
      --  This peripheral allows write accesses.
      Wp1_0,
      --  This peripheral is write protected.
      Wp1_1)
     with Size => 1;
   for PACR_WP1_Field use
     (Wp1_0 => 0,
      Wp1_1 => 1);

   --  Supervisor Protect
   type PACR_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp1_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp1_1)
     with Size => 1;
   for PACR_SP1_Field use
     (Sp1_0 => 0,
      Sp1_1 => 1);

   --  Trusted Protect
   type PACR_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0_0,
      --  Accesses from an untrusted master are not allowed.
      Tp0_1)
     with Size => 1;
   for PACR_TP0_Field use
     (Tp0_0 => 0,
      Tp0_1 => 1);

   --  Write Protect
   type PACR_WP0_Field is
     (
      --  This peripheral allows write accesses.
      Wp0_0,
      --  This peripheral is write protected.
      Wp0_1)
     with Size => 1;
   for PACR_WP0_Field use
     (Wp0_0 => 0,
      Wp0_1 => 1);

   --  Supervisor Protect
   type PACR_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp0_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp0_1)
     with Size => 1;
   for PACR_SP0_Field use
     (Sp0_0 => 0,
      Sp0_1 => 1);

   --  Peripheral Access Control Register
   type AIPS_PACR_Register is record
      --  Trusted Protect
      TP7            : PACR_TP7_Field := NRF_SVD.APIS.Tp7_0;
      --  Write Protect
      WP7            : PACR_WP7_Field := NRF_SVD.APIS.Wp7_0;
      --  Supervisor Protect
      SP7            : PACR_SP7_Field := NRF_SVD.APIS.Sp7_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACR_TP6_Field := NRF_SVD.APIS.Tp6_0;
      --  Write Protect
      WP6            : PACR_WP6_Field := NRF_SVD.APIS.Wp6_0;
      --  Supervisor Protect
      SP6            : PACR_SP6_Field := NRF_SVD.APIS.Sp6_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACR_TP5_Field := NRF_SVD.APIS.Tp5_0;
      --  Write Protect
      WP5            : PACR_WP5_Field := NRF_SVD.APIS.Wp5_0;
      --  Supervisor Protect
      SP5            : PACR_SP5_Field := NRF_SVD.APIS.Sp5_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP4            : PACR_TP4_Field := NRF_SVD.APIS.Tp4_0;
      --  Write Protect
      WP4            : PACR_WP4_Field := NRF_SVD.APIS.Wp4_0;
      --  Supervisor Protect
      SP4            : PACR_SP4_Field := NRF_SVD.APIS.Sp4_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACR_TP3_Field := NRF_SVD.APIS.Tp3_0;
      --  Write Protect
      WP3            : PACR_WP3_Field := NRF_SVD.APIS.Wp3_0;
      --  Supervisor Protect
      SP3            : PACR_SP3_Field := NRF_SVD.APIS.Sp3_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP2            : PACR_TP2_Field := NRF_SVD.APIS.Tp2_0;
      --  Write Protect
      WP2            : PACR_WP2_Field := NRF_SVD.APIS.Wp2_0;
      --  Supervisor Protect
      SP2            : PACR_SP2_Field := NRF_SVD.APIS.Sp2_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACR_TP1_Field := NRF_SVD.APIS.Tp1_0;
      --  Write Protect
      WP1            : PACR_WP1_Field := NRF_SVD.APIS.Wp1_0;
      --  Supervisor Protect
      SP1            : PACR_SP1_Field := NRF_SVD.APIS.Sp1_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : PACR_TP0_Field := NRF_SVD.APIS.Tp0_0;
      --  Write Protect
      WP0            : PACR_WP0_Field := NRF_SVD.APIS.Wp0_0;
      --  Supervisor Protect
      SP0            : PACR_SP0_Field := NRF_SVD.APIS.Sp0_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS_PACR_Register use record
      TP7            at 0 range 0 .. 0;
      WP7            at 0 range 1 .. 1;
      SP7            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TP6            at 0 range 4 .. 4;
      WP6            at 0 range 5 .. 5;
      SP6            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TP5            at 0 range 8 .. 8;
      WP5            at 0 range 9 .. 9;
      SP5            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TP4            at 0 range 12 .. 12;
      WP4            at 0 range 13 .. 13;
      SP4            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TP3            at 0 range 16 .. 16;
      WP3            at 0 range 17 .. 17;
      SP3            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TP2            at 0 range 20 .. 20;
      WP2            at 0 range 21 .. 21;
      SP2            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TP1            at 0 range 24 .. 24;
      WP1            at 0 range 25 .. 25;
      SP1            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TP0            at 0 range 28 .. 28;
      WP0            at 0 range 29 .. 29;
      SP0            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Peripheral Access Control Register
   type AIPS_PACR_Registers is array (0 .. 3) of AIPS_PACR_Register
     with Volatile;

   --  Trusted Protect
   type OPACR_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp7_0,
      --  Accesses from an untrusted master are not allowed.
      Tp7_1)
     with Size => 1;
   for OPACR_TP7_Field use
     (Tp7_0 => 0,
      Tp7_1 => 1);

   --  Write Protect
   type OPACR_WP7_Field is
     (
      --  This peripheral allows write accesses.
      Wp7_0,
      --  This peripheral is write protected.
      Wp7_1)
     with Size => 1;
   for OPACR_WP7_Field use
     (Wp7_0 => 0,
      Wp7_1 => 1);

   --  Supervisor Protect
   type OPACR_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp7_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp7_1)
     with Size => 1;
   for OPACR_SP7_Field use
     (Sp7_0 => 0,
      Sp7_1 => 1);

   --  Trusted Protect
   type OPACR_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp6_0,
      --  Accesses from an untrusted master are not allowed.
      Tp6_1)
     with Size => 1;
   for OPACR_TP6_Field use
     (Tp6_0 => 0,
      Tp6_1 => 1);

   --  Write Protect
   type OPACR_WP6_Field is
     (
      --  This peripheral allows write accesses.
      Wp6_0,
      --  This peripheral is write protected.
      Wp6_1)
     with Size => 1;
   for OPACR_WP6_Field use
     (Wp6_0 => 0,
      Wp6_1 => 1);

   --  Supervisor Protect
   type OPACR_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp6_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp6_1)
     with Size => 1;
   for OPACR_SP6_Field use
     (Sp6_0 => 0,
      Sp6_1 => 1);

   --  Trusted Protect
   type OPACR_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp5_0,
      --  Accesses from an untrusted master are not allowed.
      Tp5_1)
     with Size => 1;
   for OPACR_TP5_Field use
     (Tp5_0 => 0,
      Tp5_1 => 1);

   --  Write Protect
   type OPACR_WP5_Field is
     (
      --  This peripheral allows write accesses.
      Wp5_0,
      --  This peripheral is write protected.
      Wp5_1)
     with Size => 1;
   for OPACR_WP5_Field use
     (Wp5_0 => 0,
      Wp5_1 => 1);

   --  Supervisor Protect
   type OPACR_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp5_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp5_1)
     with Size => 1;
   for OPACR_SP5_Field use
     (Sp5_0 => 0,
      Sp5_1 => 1);

   --  Trusted Protect
   type OPACR_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp4_0,
      --  Accesses from an untrusted master are not allowed.
      Tp4_1)
     with Size => 1;
   for OPACR_TP4_Field use
     (Tp4_0 => 0,
      Tp4_1 => 1);

   --  Write Protect
   type OPACR_WP4_Field is
     (
      --  This peripheral allows write accesses.
      Wp4_0,
      --  This peripheral is write protected.
      Wp4_1)
     with Size => 1;
   for OPACR_WP4_Field use
     (Wp4_0 => 0,
      Wp4_1 => 1);

   --  Supervisor Protect
   type OPACR_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp4_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp4_1)
     with Size => 1;
   for OPACR_SP4_Field use
     (Sp4_0 => 0,
      Sp4_1 => 1);

   --  Trusted Protect
   type OPACR_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp3_0,
      --  Accesses from an untrusted master are not allowed.
      Tp3_1)
     with Size => 1;
   for OPACR_TP3_Field use
     (Tp3_0 => 0,
      Tp3_1 => 1);

   --  Write Protect
   type OPACR_WP3_Field is
     (
      --  This peripheral allows write accesses.
      Wp3_0,
      --  This peripheral is write protected.
      Wp3_1)
     with Size => 1;
   for OPACR_WP3_Field use
     (Wp3_0 => 0,
      Wp3_1 => 1);

   --  Supervisor Protect
   type OPACR_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp3_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp3_1)
     with Size => 1;
   for OPACR_SP3_Field use
     (Sp3_0 => 0,
      Sp3_1 => 1);

   --  Trusted Protect
   type OPACR_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp2_0,
      --  Accesses from an untrusted master are not allowed.
      Tp2_1)
     with Size => 1;
   for OPACR_TP2_Field use
     (Tp2_0 => 0,
      Tp2_1 => 1);

   --  Write Protect
   type OPACR_WP2_Field is
     (
      --  This peripheral allows write accesses.
      Wp2_0,
      --  This peripheral is write protected.
      Wp2_1)
     with Size => 1;
   for OPACR_WP2_Field use
     (Wp2_0 => 0,
      Wp2_1 => 1);

   --  Supervisor Protect
   type OPACR_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp2_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp2_1)
     with Size => 1;
   for OPACR_SP2_Field use
     (Sp2_0 => 0,
      Sp2_1 => 1);

   --  Trusted Protect
   type OPACR_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp1_0,
      --  Accesses from an untrusted master are not allowed.
      Tp1_1)
     with Size => 1;
   for OPACR_TP1_Field use
     (Tp1_0 => 0,
      Tp1_1 => 1);

   --  Write Protect
   type OPACR_WP1_Field is
     (
      --  This peripheral allows write accesses.
      Wp1_0,
      --  This peripheral is write protected.
      Wp1_1)
     with Size => 1;
   for OPACR_WP1_Field use
     (Wp1_0 => 0,
      Wp1_1 => 1);

   --  Supervisor Protect
   type OPACR_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp1_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp1_1)
     with Size => 1;
   for OPACR_SP1_Field use
     (Sp1_0 => 0,
      Sp1_1 => 1);

   --  Trusted Protect
   type OPACR_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0_0,
      --  Accesses from an untrusted master are not allowed.
      Tp0_1)
     with Size => 1;
   for OPACR_TP0_Field use
     (Tp0_0 => 0,
      Tp0_1 => 1);

   --  Write Protect
   type OPACR_WP0_Field is
     (
      --  This peripheral allows write accesses.
      Wp0_0,
      --  This peripheral is write protected.
      Wp0_1)
     with Size => 1;
   for OPACR_WP0_Field use
     (Wp0_0 => 0,
      Wp0_1 => 1);

   --  Supervisor Protect
   type OPACR_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp0_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp0_1)
     with Size => 1;
   for OPACR_SP0_Field use
     (Sp0_0 => 0,
      Sp0_1 => 1);

   --  Off-Platform Peripheral Access Control Register
   type AIPS_OPACR_Register is record
      --  Trusted Protect
      TP7            : OPACR_TP7_Field := NRF_SVD.APIS.Tp7_0;
      --  Write Protect
      WP7            : OPACR_WP7_Field := NRF_SVD.APIS.Wp7_0;
      --  Supervisor Protect
      SP7            : OPACR_SP7_Field := NRF_SVD.APIS.Sp7_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : OPACR_TP6_Field := NRF_SVD.APIS.Tp6_0;
      --  Write Protect
      WP6            : OPACR_WP6_Field := NRF_SVD.APIS.Wp6_0;
      --  Supervisor Protect
      SP6            : OPACR_SP6_Field := NRF_SVD.APIS.Sp6_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : OPACR_TP5_Field := NRF_SVD.APIS.Tp5_0;
      --  Write Protect
      WP5            : OPACR_WP5_Field := NRF_SVD.APIS.Wp5_0;
      --  Supervisor Protect
      SP5            : OPACR_SP5_Field := NRF_SVD.APIS.Sp5_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP4            : OPACR_TP4_Field := NRF_SVD.APIS.Tp4_0;
      --  Write Protect
      WP4            : OPACR_WP4_Field := NRF_SVD.APIS.Wp4_0;
      --  Supervisor Protect
      SP4            : OPACR_SP4_Field := NRF_SVD.APIS.Sp4_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : OPACR_TP3_Field := NRF_SVD.APIS.Tp3_0;
      --  Write Protect
      WP3            : OPACR_WP3_Field := NRF_SVD.APIS.Wp3_0;
      --  Supervisor Protect
      SP3            : OPACR_SP3_Field := NRF_SVD.APIS.Sp3_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP2            : OPACR_TP2_Field := NRF_SVD.APIS.Tp2_0;
      --  Write Protect
      WP2            : OPACR_WP2_Field := NRF_SVD.APIS.Wp2_0;
      --  Supervisor Protect
      SP2            : OPACR_SP2_Field := NRF_SVD.APIS.Sp2_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : OPACR_TP1_Field := NRF_SVD.APIS.Tp1_0;
      --  Write Protect
      WP1            : OPACR_WP1_Field := NRF_SVD.APIS.Wp1_0;
      --  Supervisor Protect
      SP1            : OPACR_SP1_Field := NRF_SVD.APIS.Sp1_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : OPACR_TP0_Field := NRF_SVD.APIS.Tp0_0;
      --  Write Protect
      WP0            : OPACR_WP0_Field := NRF_SVD.APIS.Wp0_0;
      --  Supervisor Protect
      SP0            : OPACR_SP0_Field := NRF_SVD.APIS.Sp0_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS_OPACR_Register use record
      TP7            at 0 range 0 .. 0;
      WP7            at 0 range 1 .. 1;
      SP7            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TP6            at 0 range 4 .. 4;
      WP6            at 0 range 5 .. 5;
      SP6            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TP5            at 0 range 8 .. 8;
      WP5            at 0 range 9 .. 9;
      SP5            at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TP4            at 0 range 12 .. 12;
      WP4            at 0 range 13 .. 13;
      SP4            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TP3            at 0 range 16 .. 16;
      WP3            at 0 range 17 .. 17;
      SP3            at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TP2            at 0 range 20 .. 20;
      WP2            at 0 range 21 .. 21;
      SP2            at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TP1            at 0 range 24 .. 24;
      WP1            at 0 range 25 .. 25;
      SP1            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TP0            at 0 range 28 .. 28;
      WP0            at 0 range 29 .. 29;
      SP0            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Off-Platform Peripheral Access Control Register
   type AIPS_OPACR_Registers is array (0 .. 15) of AIPS_OPACR_Register
     with Volatile;

   --  Trusted Protect
   type PACRU_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp1_0,
      --  Accesses from an untrusted master are not allowed.
      Tp1_1)
     with Size => 1;
   for PACRU_TP1_Field use
     (Tp1_0 => 0,
      Tp1_1 => 1);

   --  Write Protect
   type PACRU_WP1_Field is
     (
      --  This peripheral allows write accesses.
      Wp1_0,
      --  This peripheral is write protected.
      Wp1_1)
     with Size => 1;
   for PACRU_WP1_Field use
     (Wp1_0 => 0,
      Wp1_1 => 1);

   --  Supervisor Protect
   type PACRU_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp1_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp1_1)
     with Size => 1;
   for PACRU_SP1_Field use
     (Sp1_0 => 0,
      Sp1_1 => 1);

   --  Trusted Protect
   type PACRU_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      Tp0_0,
      --  Accesses from an untrusted master are not allowed.
      Tp0_1)
     with Size => 1;
   for PACRU_TP0_Field use
     (Tp0_0 => 0,
      Tp0_1 => 1);

   --  Write Protect
   type PACRU_WP0_Field is
     (
      --  This peripheral allows write accesses.
      Wp0_0,
      --  This peripheral is write protected.
      Wp0_1)
     with Size => 1;
   for PACRU_WP0_Field use
     (Wp0_0 => 0,
      Wp0_1 => 1);

   --  Supervisor Protect
   type PACRU_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      Sp0_0,
      --  This peripheral requires supervisor privilege level for accesses.
      Sp0_1)
     with Size => 1;
   for PACRU_SP0_Field use
     (Sp0_0 => 0,
      Sp0_1 => 1);

   --  Peripheral Access Control Register
   type AIPS_PACRU_Register is record
      --  unspecified
      Reserved_0_23  : HAL.UInt24 := 16#0#;
      --  Trusted Protect
      TP1            : PACRU_TP1_Field := NRF_SVD.APIS.Tp1_0;
      --  Write Protect
      WP1            : PACRU_WP1_Field := NRF_SVD.APIS.Wp1_0;
      --  Supervisor Protect
      SP1            : PACRU_SP1_Field := NRF_SVD.APIS.Sp1_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : PACRU_TP0_Field := NRF_SVD.APIS.Tp0_0;
      --  Write Protect
      WP0            : PACRU_WP0_Field := NRF_SVD.APIS.Wp0_0;
      --  Supervisor Protect
      SP0            : PACRU_SP0_Field := NRF_SVD.APIS.Sp0_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS_PACRU_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      TP1            at 0 range 24 .. 24;
      WP1            at 0 range 25 .. 25;
      SP1            at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TP0            at 0 range 28 .. 28;
      WP0            at 0 range 29 .. 29;
      SP0            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AIPS-Lite Bridge
   type AIPS_Peripheral is record
      --  Master Privilege Register A
      MPRA  : aliased AIPS_MPRA_Register;
      --  Peripheral Access Control Register
      PACR  : aliased AIPS_PACR_Registers;
      --  Off-Platform Peripheral Access Control Register
      OPACR : aliased AIPS_OPACR_Registers;
      --  Peripheral Access Control Register
      PACRU : aliased AIPS_PACRU_Register;
   end record
     with Volatile;

   for AIPS_Peripheral use record
      MPRA  at 16#0# range 0 .. 31;
      PACR  at 16#20# range 0 .. 127;
      OPACR at 16#40# range 0 .. 511;
      PACRU at 16#80# range 0 .. 31;
   end record;

   --  AIPS-Lite Bridge
   AIPS_Periph : aliased AIPS_Peripheral
     with Import, Address => System'To_Address (16#40000000#);

end NRF_SVD.APIS;
