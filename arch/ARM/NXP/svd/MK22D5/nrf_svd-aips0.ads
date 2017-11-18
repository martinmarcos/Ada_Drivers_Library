--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK22D5.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  AIPS-Lite Bridge
package NRF_SVD.AIPS0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Trusted Protect
   type PACRA_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP7_Field_1)
     with Size => 1;
   for PACRA_TP7_Field use
     (PACRA_TP7_Field_0 => 0,
      PACRA_TP7_Field_1 => 1);

   --  Write Protect
   type PACRA_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP7_Field_0,
      --  This peripheral is write protected.
      PACRA_WP7_Field_1)
     with Size => 1;
   for PACRA_WP7_Field use
     (PACRA_WP7_Field_0 => 0,
      PACRA_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP7_Field_1)
     with Size => 1;
   for PACRA_SP7_Field use
     (PACRA_SP7_Field_0 => 0,
      PACRA_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRA_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP6_Field_1)
     with Size => 1;
   for PACRA_TP6_Field use
     (PACRA_TP6_Field_0 => 0,
      PACRA_TP6_Field_1 => 1);

   --  Write Protect
   type PACRA_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP6_Field_0,
      --  This peripheral is write protected.
      PACRA_WP6_Field_1)
     with Size => 1;
   for PACRA_WP6_Field use
     (PACRA_WP6_Field_0 => 0,
      PACRA_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP6_Field_1)
     with Size => 1;
   for PACRA_SP6_Field use
     (PACRA_SP6_Field_0 => 0,
      PACRA_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRA_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP5_Field_1)
     with Size => 1;
   for PACRA_TP5_Field use
     (PACRA_TP5_Field_0 => 0,
      PACRA_TP5_Field_1 => 1);

   --  Write Protect
   type PACRA_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP5_Field_0,
      --  This peripheral is write protected.
      PACRA_WP5_Field_1)
     with Size => 1;
   for PACRA_WP5_Field use
     (PACRA_WP5_Field_0 => 0,
      PACRA_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP5_Field_1)
     with Size => 1;
   for PACRA_SP5_Field use
     (PACRA_SP5_Field_0 => 0,
      PACRA_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRA_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP4_Field_1)
     with Size => 1;
   for PACRA_TP4_Field use
     (PACRA_TP4_Field_0 => 0,
      PACRA_TP4_Field_1 => 1);

   --  Write protect
   type PACRA_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP4_Field_0,
      --  This peripheral is write protected.
      PACRA_WP4_Field_1)
     with Size => 1;
   for PACRA_WP4_Field use
     (PACRA_WP4_Field_0 => 0,
      PACRA_WP4_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP4_Field_1)
     with Size => 1;
   for PACRA_SP4_Field use
     (PACRA_SP4_Field_0 => 0,
      PACRA_SP4_Field_1 => 1);

   --  Trusted protect
   type PACRA_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP3_Field_1)
     with Size => 1;
   for PACRA_TP3_Field use
     (PACRA_TP3_Field_0 => 0,
      PACRA_TP3_Field_1 => 1);

   --  Write Protect
   type PACRA_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP3_Field_0,
      --  This peripheral is write protected.
      PACRA_WP3_Field_1)
     with Size => 1;
   for PACRA_WP3_Field use
     (PACRA_WP3_Field_0 => 0,
      PACRA_WP3_Field_1 => 1);

   --  Supervisor protect
   type PACRA_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP3_Field_1)
     with Size => 1;
   for PACRA_SP3_Field use
     (PACRA_SP3_Field_0 => 0,
      PACRA_SP3_Field_1 => 1);

   --  Trusted Protect
   type PACRA_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP2_Field_1)
     with Size => 1;
   for PACRA_TP2_Field use
     (PACRA_TP2_Field_0 => 0,
      PACRA_TP2_Field_1 => 1);

   --  Write protect
   type PACRA_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP2_Field_0,
      --  This peripheral is write protected.
      PACRA_WP2_Field_1)
     with Size => 1;
   for PACRA_WP2_Field use
     (PACRA_WP2_Field_0 => 0,
      PACRA_WP2_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP2_Field_1)
     with Size => 1;
   for PACRA_SP2_Field use
     (PACRA_SP2_Field_0 => 0,
      PACRA_SP2_Field_1 => 1);

   --  Trusted protect
   type PACRA_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP1_Field_1)
     with Size => 1;
   for PACRA_TP1_Field use
     (PACRA_TP1_Field_0 => 0,
      PACRA_TP1_Field_1 => 1);

   --  Write Protect
   type PACRA_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP1_Field_0,
      --  This peripheral is write protected.
      PACRA_WP1_Field_1)
     with Size => 1;
   for PACRA_WP1_Field use
     (PACRA_WP1_Field_0 => 0,
      PACRA_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP1_Field_1)
     with Size => 1;
   for PACRA_SP1_Field use
     (PACRA_SP1_Field_0 => 0,
      PACRA_SP1_Field_1 => 1);

   --  Trusted Protect
   type PACRA_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRA_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRA_TP0_Field_1)
     with Size => 1;
   for PACRA_TP0_Field use
     (PACRA_TP0_Field_0 => 0,
      PACRA_TP0_Field_1 => 1);

   --  Write protect
   type PACRA_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRA_WP0_Field_0,
      --  This peripheral is write protected.
      PACRA_WP0_Field_1)
     with Size => 1;
   for PACRA_WP0_Field use
     (PACRA_WP0_Field_0 => 0,
      PACRA_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRA_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRA_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRA_SP0_Field_1)
     with Size => 1;
   for PACRA_SP0_Field use
     (PACRA_SP0_Field_0 => 0,
      PACRA_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRA_Register is record
      --  Trusted Protect
      TP7            : PACRA_TP7_Field := NRF_SVD.AIPS0.PACRA_TP7_Field_0;
      --  Write Protect
      WP7            : PACRA_WP7_Field := NRF_SVD.AIPS0.PACRA_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRA_SP7_Field := NRF_SVD.AIPS0.PACRA_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRA_TP6_Field := NRF_SVD.AIPS0.PACRA_TP6_Field_0;
      --  Write Protect
      WP6            : PACRA_WP6_Field := NRF_SVD.AIPS0.PACRA_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRA_SP6_Field := NRF_SVD.AIPS0.PACRA_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRA_TP5_Field := NRF_SVD.AIPS0.PACRA_TP5_Field_0;
      --  Write Protect
      WP5            : PACRA_WP5_Field := NRF_SVD.AIPS0.PACRA_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRA_SP5_Field := NRF_SVD.AIPS0.PACRA_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRA_TP4_Field := NRF_SVD.AIPS0.PACRA_TP4_Field_0;
      --  Write protect
      WP4            : PACRA_WP4_Field := NRF_SVD.AIPS0.PACRA_WP4_Field_0;
      --  Supervisor Protect
      SP4            : PACRA_SP4_Field := NRF_SVD.AIPS0.PACRA_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP3            : PACRA_TP3_Field := NRF_SVD.AIPS0.PACRA_TP3_Field_0;
      --  Write Protect
      WP3            : PACRA_WP3_Field := NRF_SVD.AIPS0.PACRA_WP3_Field_0;
      --  Supervisor protect
      SP3            : PACRA_SP3_Field := NRF_SVD.AIPS0.PACRA_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP2            : PACRA_TP2_Field := NRF_SVD.AIPS0.PACRA_TP2_Field_0;
      --  Write protect
      WP2            : PACRA_WP2_Field := NRF_SVD.AIPS0.PACRA_WP2_Field_0;
      --  Supervisor Protect
      SP2            : PACRA_SP2_Field := NRF_SVD.AIPS0.PACRA_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP1            : PACRA_TP1_Field := NRF_SVD.AIPS0.PACRA_TP1_Field_0;
      --  Write Protect
      WP1            : PACRA_WP1_Field := NRF_SVD.AIPS0.PACRA_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRA_SP1_Field := NRF_SVD.AIPS0.PACRA_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : PACRA_TP0_Field := NRF_SVD.AIPS0.PACRA_TP0_Field_0;
      --  Write protect
      WP0            : PACRA_WP0_Field := NRF_SVD.AIPS0.PACRA_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRA_SP0_Field := NRF_SVD.AIPS0.PACRA_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRA_Register use record
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

   --  Trusted Protect
   type PACRB_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP7_Field_1)
     with Size => 1;
   for PACRB_TP7_Field use
     (PACRB_TP7_Field_0 => 0,
      PACRB_TP7_Field_1 => 1);

   --  Write Protect
   type PACRB_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP7_Field_0,
      --  This peripheral is write protected.
      PACRB_WP7_Field_1)
     with Size => 1;
   for PACRB_WP7_Field use
     (PACRB_WP7_Field_0 => 0,
      PACRB_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP7_Field_1)
     with Size => 1;
   for PACRB_SP7_Field use
     (PACRB_SP7_Field_0 => 0,
      PACRB_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRB_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP6_Field_1)
     with Size => 1;
   for PACRB_TP6_Field use
     (PACRB_TP6_Field_0 => 0,
      PACRB_TP6_Field_1 => 1);

   --  Write Protect
   type PACRB_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP6_Field_0,
      --  This peripheral is write protected.
      PACRB_WP6_Field_1)
     with Size => 1;
   for PACRB_WP6_Field use
     (PACRB_WP6_Field_0 => 0,
      PACRB_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP6_Field_1)
     with Size => 1;
   for PACRB_SP6_Field use
     (PACRB_SP6_Field_0 => 0,
      PACRB_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRB_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP5_Field_1)
     with Size => 1;
   for PACRB_TP5_Field use
     (PACRB_TP5_Field_0 => 0,
      PACRB_TP5_Field_1 => 1);

   --  Write Protect
   type PACRB_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP5_Field_0,
      --  This peripheral is write protected.
      PACRB_WP5_Field_1)
     with Size => 1;
   for PACRB_WP5_Field use
     (PACRB_WP5_Field_0 => 0,
      PACRB_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP5_Field_1)
     with Size => 1;
   for PACRB_SP5_Field use
     (PACRB_SP5_Field_0 => 0,
      PACRB_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRB_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP4_Field_1)
     with Size => 1;
   for PACRB_TP4_Field use
     (PACRB_TP4_Field_0 => 0,
      PACRB_TP4_Field_1 => 1);

   --  Write protect
   type PACRB_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP4_Field_0,
      --  This peripheral is write protected.
      PACRB_WP4_Field_1)
     with Size => 1;
   for PACRB_WP4_Field use
     (PACRB_WP4_Field_0 => 0,
      PACRB_WP4_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP4_Field_1)
     with Size => 1;
   for PACRB_SP4_Field use
     (PACRB_SP4_Field_0 => 0,
      PACRB_SP4_Field_1 => 1);

   --  Trusted protect
   type PACRB_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP3_Field_1)
     with Size => 1;
   for PACRB_TP3_Field use
     (PACRB_TP3_Field_0 => 0,
      PACRB_TP3_Field_1 => 1);

   --  Write Protect
   type PACRB_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP3_Field_0,
      --  This peripheral is write protected.
      PACRB_WP3_Field_1)
     with Size => 1;
   for PACRB_WP3_Field use
     (PACRB_WP3_Field_0 => 0,
      PACRB_WP3_Field_1 => 1);

   --  Supervisor protect
   type PACRB_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP3_Field_1)
     with Size => 1;
   for PACRB_SP3_Field use
     (PACRB_SP3_Field_0 => 0,
      PACRB_SP3_Field_1 => 1);

   --  Trusted Protect
   type PACRB_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP2_Field_1)
     with Size => 1;
   for PACRB_TP2_Field use
     (PACRB_TP2_Field_0 => 0,
      PACRB_TP2_Field_1 => 1);

   --  Write protect
   type PACRB_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP2_Field_0,
      --  This peripheral is write protected.
      PACRB_WP2_Field_1)
     with Size => 1;
   for PACRB_WP2_Field use
     (PACRB_WP2_Field_0 => 0,
      PACRB_WP2_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP2_Field_1)
     with Size => 1;
   for PACRB_SP2_Field use
     (PACRB_SP2_Field_0 => 0,
      PACRB_SP2_Field_1 => 1);

   --  Trusted protect
   type PACRB_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP1_Field_1)
     with Size => 1;
   for PACRB_TP1_Field use
     (PACRB_TP1_Field_0 => 0,
      PACRB_TP1_Field_1 => 1);

   --  Write Protect
   type PACRB_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP1_Field_0,
      --  This peripheral is write protected.
      PACRB_WP1_Field_1)
     with Size => 1;
   for PACRB_WP1_Field use
     (PACRB_WP1_Field_0 => 0,
      PACRB_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP1_Field_1)
     with Size => 1;
   for PACRB_SP1_Field use
     (PACRB_SP1_Field_0 => 0,
      PACRB_SP1_Field_1 => 1);

   --  Trusted Protect
   type PACRB_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRB_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRB_TP0_Field_1)
     with Size => 1;
   for PACRB_TP0_Field use
     (PACRB_TP0_Field_0 => 0,
      PACRB_TP0_Field_1 => 1);

   --  Write protect
   type PACRB_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRB_WP0_Field_0,
      --  This peripheral is write protected.
      PACRB_WP0_Field_1)
     with Size => 1;
   for PACRB_WP0_Field use
     (PACRB_WP0_Field_0 => 0,
      PACRB_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRB_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRB_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRB_SP0_Field_1)
     with Size => 1;
   for PACRB_SP0_Field use
     (PACRB_SP0_Field_0 => 0,
      PACRB_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRB_Register is record
      --  Trusted Protect
      TP7            : PACRB_TP7_Field := NRF_SVD.AIPS0.PACRB_TP7_Field_0;
      --  Write Protect
      WP7            : PACRB_WP7_Field := NRF_SVD.AIPS0.PACRB_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRB_SP7_Field := NRF_SVD.AIPS0.PACRB_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRB_TP6_Field := NRF_SVD.AIPS0.PACRB_TP6_Field_0;
      --  Write Protect
      WP6            : PACRB_WP6_Field := NRF_SVD.AIPS0.PACRB_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRB_SP6_Field := NRF_SVD.AIPS0.PACRB_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRB_TP5_Field := NRF_SVD.AIPS0.PACRB_TP5_Field_0;
      --  Write Protect
      WP5            : PACRB_WP5_Field := NRF_SVD.AIPS0.PACRB_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRB_SP5_Field := NRF_SVD.AIPS0.PACRB_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRB_TP4_Field := NRF_SVD.AIPS0.PACRB_TP4_Field_0;
      --  Write protect
      WP4            : PACRB_WP4_Field := NRF_SVD.AIPS0.PACRB_WP4_Field_0;
      --  Supervisor Protect
      SP4            : PACRB_SP4_Field := NRF_SVD.AIPS0.PACRB_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP3            : PACRB_TP3_Field := NRF_SVD.AIPS0.PACRB_TP3_Field_0;
      --  Write Protect
      WP3            : PACRB_WP3_Field := NRF_SVD.AIPS0.PACRB_WP3_Field_0;
      --  Supervisor protect
      SP3            : PACRB_SP3_Field := NRF_SVD.AIPS0.PACRB_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP2            : PACRB_TP2_Field := NRF_SVD.AIPS0.PACRB_TP2_Field_0;
      --  Write protect
      WP2            : PACRB_WP2_Field := NRF_SVD.AIPS0.PACRB_WP2_Field_0;
      --  Supervisor Protect
      SP2            : PACRB_SP2_Field := NRF_SVD.AIPS0.PACRB_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP1            : PACRB_TP1_Field := NRF_SVD.AIPS0.PACRB_TP1_Field_0;
      --  Write Protect
      WP1            : PACRB_WP1_Field := NRF_SVD.AIPS0.PACRB_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRB_SP1_Field := NRF_SVD.AIPS0.PACRB_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : PACRB_TP0_Field := NRF_SVD.AIPS0.PACRB_TP0_Field_0;
      --  Write protect
      WP0            : PACRB_WP0_Field := NRF_SVD.AIPS0.PACRB_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRB_SP0_Field := NRF_SVD.AIPS0.PACRB_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRB_Register use record
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

   --  Trusted Protect
   type PACRC_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP7_Field_1)
     with Size => 1;
   for PACRC_TP7_Field use
     (PACRC_TP7_Field_0 => 0,
      PACRC_TP7_Field_1 => 1);

   --  Write Protect
   type PACRC_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP7_Field_0,
      --  This peripheral is write protected.
      PACRC_WP7_Field_1)
     with Size => 1;
   for PACRC_WP7_Field use
     (PACRC_WP7_Field_0 => 0,
      PACRC_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP7_Field_1)
     with Size => 1;
   for PACRC_SP7_Field use
     (PACRC_SP7_Field_0 => 0,
      PACRC_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRC_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP6_Field_1)
     with Size => 1;
   for PACRC_TP6_Field use
     (PACRC_TP6_Field_0 => 0,
      PACRC_TP6_Field_1 => 1);

   --  Write Protect
   type PACRC_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP6_Field_0,
      --  This peripheral is write protected.
      PACRC_WP6_Field_1)
     with Size => 1;
   for PACRC_WP6_Field use
     (PACRC_WP6_Field_0 => 0,
      PACRC_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP6_Field_1)
     with Size => 1;
   for PACRC_SP6_Field use
     (PACRC_SP6_Field_0 => 0,
      PACRC_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRC_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP5_Field_1)
     with Size => 1;
   for PACRC_TP5_Field use
     (PACRC_TP5_Field_0 => 0,
      PACRC_TP5_Field_1 => 1);

   --  Write Protect
   type PACRC_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP5_Field_0,
      --  This peripheral is write protected.
      PACRC_WP5_Field_1)
     with Size => 1;
   for PACRC_WP5_Field use
     (PACRC_WP5_Field_0 => 0,
      PACRC_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP5_Field_1)
     with Size => 1;
   for PACRC_SP5_Field use
     (PACRC_SP5_Field_0 => 0,
      PACRC_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRC_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP4_Field_1)
     with Size => 1;
   for PACRC_TP4_Field use
     (PACRC_TP4_Field_0 => 0,
      PACRC_TP4_Field_1 => 1);

   --  Write protect
   type PACRC_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP4_Field_0,
      --  This peripheral is write protected.
      PACRC_WP4_Field_1)
     with Size => 1;
   for PACRC_WP4_Field use
     (PACRC_WP4_Field_0 => 0,
      PACRC_WP4_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP4_Field_1)
     with Size => 1;
   for PACRC_SP4_Field use
     (PACRC_SP4_Field_0 => 0,
      PACRC_SP4_Field_1 => 1);

   --  Trusted protect
   type PACRC_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP3_Field_1)
     with Size => 1;
   for PACRC_TP3_Field use
     (PACRC_TP3_Field_0 => 0,
      PACRC_TP3_Field_1 => 1);

   --  Write Protect
   type PACRC_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP3_Field_0,
      --  This peripheral is write protected.
      PACRC_WP3_Field_1)
     with Size => 1;
   for PACRC_WP3_Field use
     (PACRC_WP3_Field_0 => 0,
      PACRC_WP3_Field_1 => 1);

   --  Supervisor protect
   type PACRC_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP3_Field_1)
     with Size => 1;
   for PACRC_SP3_Field use
     (PACRC_SP3_Field_0 => 0,
      PACRC_SP3_Field_1 => 1);

   --  Trusted Protect
   type PACRC_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP2_Field_1)
     with Size => 1;
   for PACRC_TP2_Field use
     (PACRC_TP2_Field_0 => 0,
      PACRC_TP2_Field_1 => 1);

   --  Write protect
   type PACRC_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP2_Field_0,
      --  This peripheral is write protected.
      PACRC_WP2_Field_1)
     with Size => 1;
   for PACRC_WP2_Field use
     (PACRC_WP2_Field_0 => 0,
      PACRC_WP2_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP2_Field_1)
     with Size => 1;
   for PACRC_SP2_Field use
     (PACRC_SP2_Field_0 => 0,
      PACRC_SP2_Field_1 => 1);

   --  Trusted protect
   type PACRC_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP1_Field_1)
     with Size => 1;
   for PACRC_TP1_Field use
     (PACRC_TP1_Field_0 => 0,
      PACRC_TP1_Field_1 => 1);

   --  Write Protect
   type PACRC_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP1_Field_0,
      --  This peripheral is write protected.
      PACRC_WP1_Field_1)
     with Size => 1;
   for PACRC_WP1_Field use
     (PACRC_WP1_Field_0 => 0,
      PACRC_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP1_Field_1)
     with Size => 1;
   for PACRC_SP1_Field use
     (PACRC_SP1_Field_0 => 0,
      PACRC_SP1_Field_1 => 1);

   --  Trusted Protect
   type PACRC_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRC_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRC_TP0_Field_1)
     with Size => 1;
   for PACRC_TP0_Field use
     (PACRC_TP0_Field_0 => 0,
      PACRC_TP0_Field_1 => 1);

   --  Write protect
   type PACRC_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRC_WP0_Field_0,
      --  This peripheral is write protected.
      PACRC_WP0_Field_1)
     with Size => 1;
   for PACRC_WP0_Field use
     (PACRC_WP0_Field_0 => 0,
      PACRC_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRC_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRC_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRC_SP0_Field_1)
     with Size => 1;
   for PACRC_SP0_Field use
     (PACRC_SP0_Field_0 => 0,
      PACRC_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRC_Register is record
      --  Trusted Protect
      TP7            : PACRC_TP7_Field := NRF_SVD.AIPS0.PACRC_TP7_Field_0;
      --  Write Protect
      WP7            : PACRC_WP7_Field := NRF_SVD.AIPS0.PACRC_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRC_SP7_Field := NRF_SVD.AIPS0.PACRC_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRC_TP6_Field := NRF_SVD.AIPS0.PACRC_TP6_Field_0;
      --  Write Protect
      WP6            : PACRC_WP6_Field := NRF_SVD.AIPS0.PACRC_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRC_SP6_Field := NRF_SVD.AIPS0.PACRC_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRC_TP5_Field := NRF_SVD.AIPS0.PACRC_TP5_Field_0;
      --  Write Protect
      WP5            : PACRC_WP5_Field := NRF_SVD.AIPS0.PACRC_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRC_SP5_Field := NRF_SVD.AIPS0.PACRC_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRC_TP4_Field := NRF_SVD.AIPS0.PACRC_TP4_Field_0;
      --  Write protect
      WP4            : PACRC_WP4_Field := NRF_SVD.AIPS0.PACRC_WP4_Field_0;
      --  Supervisor Protect
      SP4            : PACRC_SP4_Field := NRF_SVD.AIPS0.PACRC_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP3            : PACRC_TP3_Field := NRF_SVD.AIPS0.PACRC_TP3_Field_0;
      --  Write Protect
      WP3            : PACRC_WP3_Field := NRF_SVD.AIPS0.PACRC_WP3_Field_0;
      --  Supervisor protect
      SP3            : PACRC_SP3_Field := NRF_SVD.AIPS0.PACRC_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP2            : PACRC_TP2_Field := NRF_SVD.AIPS0.PACRC_TP2_Field_0;
      --  Write protect
      WP2            : PACRC_WP2_Field := NRF_SVD.AIPS0.PACRC_WP2_Field_0;
      --  Supervisor Protect
      SP2            : PACRC_SP2_Field := NRF_SVD.AIPS0.PACRC_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP1            : PACRC_TP1_Field := NRF_SVD.AIPS0.PACRC_TP1_Field_0;
      --  Write Protect
      WP1            : PACRC_WP1_Field := NRF_SVD.AIPS0.PACRC_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRC_SP1_Field := NRF_SVD.AIPS0.PACRC_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : PACRC_TP0_Field := NRF_SVD.AIPS0.PACRC_TP0_Field_0;
      --  Write protect
      WP0            : PACRC_WP0_Field := NRF_SVD.AIPS0.PACRC_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRC_SP0_Field := NRF_SVD.AIPS0.PACRC_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRC_Register use record
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

   --  Trusted Protect
   type PACRD_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP7_Field_1)
     with Size => 1;
   for PACRD_TP7_Field use
     (PACRD_TP7_Field_0 => 0,
      PACRD_TP7_Field_1 => 1);

   --  Write Protect
   type PACRD_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP7_Field_0,
      --  This peripheral is write protected.
      PACRD_WP7_Field_1)
     with Size => 1;
   for PACRD_WP7_Field use
     (PACRD_WP7_Field_0 => 0,
      PACRD_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP7_Field_1)
     with Size => 1;
   for PACRD_SP7_Field use
     (PACRD_SP7_Field_0 => 0,
      PACRD_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRD_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP6_Field_1)
     with Size => 1;
   for PACRD_TP6_Field use
     (PACRD_TP6_Field_0 => 0,
      PACRD_TP6_Field_1 => 1);

   --  Write Protect
   type PACRD_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP6_Field_0,
      --  This peripheral is write protected.
      PACRD_WP6_Field_1)
     with Size => 1;
   for PACRD_WP6_Field use
     (PACRD_WP6_Field_0 => 0,
      PACRD_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP6_Field_1)
     with Size => 1;
   for PACRD_SP6_Field use
     (PACRD_SP6_Field_0 => 0,
      PACRD_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRD_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP5_Field_1)
     with Size => 1;
   for PACRD_TP5_Field use
     (PACRD_TP5_Field_0 => 0,
      PACRD_TP5_Field_1 => 1);

   --  Write Protect
   type PACRD_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP5_Field_0,
      --  This peripheral is write protected.
      PACRD_WP5_Field_1)
     with Size => 1;
   for PACRD_WP5_Field use
     (PACRD_WP5_Field_0 => 0,
      PACRD_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP5_Field_1)
     with Size => 1;
   for PACRD_SP5_Field use
     (PACRD_SP5_Field_0 => 0,
      PACRD_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRD_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP4_Field_1)
     with Size => 1;
   for PACRD_TP4_Field use
     (PACRD_TP4_Field_0 => 0,
      PACRD_TP4_Field_1 => 1);

   --  Write protect
   type PACRD_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP4_Field_0,
      --  This peripheral is write protected.
      PACRD_WP4_Field_1)
     with Size => 1;
   for PACRD_WP4_Field use
     (PACRD_WP4_Field_0 => 0,
      PACRD_WP4_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP4_Field_1)
     with Size => 1;
   for PACRD_SP4_Field use
     (PACRD_SP4_Field_0 => 0,
      PACRD_SP4_Field_1 => 1);

   --  Trusted protect
   type PACRD_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP3_Field_1)
     with Size => 1;
   for PACRD_TP3_Field use
     (PACRD_TP3_Field_0 => 0,
      PACRD_TP3_Field_1 => 1);

   --  Write Protect
   type PACRD_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP3_Field_0,
      --  This peripheral is write protected.
      PACRD_WP3_Field_1)
     with Size => 1;
   for PACRD_WP3_Field use
     (PACRD_WP3_Field_0 => 0,
      PACRD_WP3_Field_1 => 1);

   --  Supervisor protect
   type PACRD_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP3_Field_1)
     with Size => 1;
   for PACRD_SP3_Field use
     (PACRD_SP3_Field_0 => 0,
      PACRD_SP3_Field_1 => 1);

   --  Trusted Protect
   type PACRD_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP2_Field_1)
     with Size => 1;
   for PACRD_TP2_Field use
     (PACRD_TP2_Field_0 => 0,
      PACRD_TP2_Field_1 => 1);

   --  Write protect
   type PACRD_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP2_Field_0,
      --  This peripheral is write protected.
      PACRD_WP2_Field_1)
     with Size => 1;
   for PACRD_WP2_Field use
     (PACRD_WP2_Field_0 => 0,
      PACRD_WP2_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP2_Field_1)
     with Size => 1;
   for PACRD_SP2_Field use
     (PACRD_SP2_Field_0 => 0,
      PACRD_SP2_Field_1 => 1);

   --  Trusted protect
   type PACRD_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP1_Field_1)
     with Size => 1;
   for PACRD_TP1_Field use
     (PACRD_TP1_Field_0 => 0,
      PACRD_TP1_Field_1 => 1);

   --  Write Protect
   type PACRD_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP1_Field_0,
      --  This peripheral is write protected.
      PACRD_WP1_Field_1)
     with Size => 1;
   for PACRD_WP1_Field use
     (PACRD_WP1_Field_0 => 0,
      PACRD_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP1_Field_1)
     with Size => 1;
   for PACRD_SP1_Field use
     (PACRD_SP1_Field_0 => 0,
      PACRD_SP1_Field_1 => 1);

   --  Trusted Protect
   type PACRD_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRD_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRD_TP0_Field_1)
     with Size => 1;
   for PACRD_TP0_Field use
     (PACRD_TP0_Field_0 => 0,
      PACRD_TP0_Field_1 => 1);

   --  Write protect
   type PACRD_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRD_WP0_Field_0,
      --  This peripheral is write protected.
      PACRD_WP0_Field_1)
     with Size => 1;
   for PACRD_WP0_Field use
     (PACRD_WP0_Field_0 => 0,
      PACRD_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRD_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRD_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRD_SP0_Field_1)
     with Size => 1;
   for PACRD_SP0_Field use
     (PACRD_SP0_Field_0 => 0,
      PACRD_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRD_Register is record
      --  Trusted Protect
      TP7            : PACRD_TP7_Field := NRF_SVD.AIPS0.PACRD_TP7_Field_0;
      --  Write Protect
      WP7            : PACRD_WP7_Field := NRF_SVD.AIPS0.PACRD_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRD_SP7_Field := NRF_SVD.AIPS0.PACRD_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRD_TP6_Field := NRF_SVD.AIPS0.PACRD_TP6_Field_0;
      --  Write Protect
      WP6            : PACRD_WP6_Field := NRF_SVD.AIPS0.PACRD_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRD_SP6_Field := NRF_SVD.AIPS0.PACRD_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRD_TP5_Field := NRF_SVD.AIPS0.PACRD_TP5_Field_0;
      --  Write Protect
      WP5            : PACRD_WP5_Field := NRF_SVD.AIPS0.PACRD_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRD_SP5_Field := NRF_SVD.AIPS0.PACRD_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRD_TP4_Field := NRF_SVD.AIPS0.PACRD_TP4_Field_0;
      --  Write protect
      WP4            : PACRD_WP4_Field := NRF_SVD.AIPS0.PACRD_WP4_Field_0;
      --  Supervisor Protect
      SP4            : PACRD_SP4_Field := NRF_SVD.AIPS0.PACRD_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP3            : PACRD_TP3_Field := NRF_SVD.AIPS0.PACRD_TP3_Field_0;
      --  Write Protect
      WP3            : PACRD_WP3_Field := NRF_SVD.AIPS0.PACRD_WP3_Field_0;
      --  Supervisor protect
      SP3            : PACRD_SP3_Field := NRF_SVD.AIPS0.PACRD_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP2            : PACRD_TP2_Field := NRF_SVD.AIPS0.PACRD_TP2_Field_0;
      --  Write protect
      WP2            : PACRD_WP2_Field := NRF_SVD.AIPS0.PACRD_WP2_Field_0;
      --  Supervisor Protect
      SP2            : PACRD_SP2_Field := NRF_SVD.AIPS0.PACRD_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP1            : PACRD_TP1_Field := NRF_SVD.AIPS0.PACRD_TP1_Field_0;
      --  Write Protect
      WP1            : PACRD_WP1_Field := NRF_SVD.AIPS0.PACRD_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRD_SP1_Field := NRF_SVD.AIPS0.PACRD_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP0            : PACRD_TP0_Field := NRF_SVD.AIPS0.PACRD_TP0_Field_0;
      --  Write protect
      WP0            : PACRD_WP0_Field := NRF_SVD.AIPS0.PACRD_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRD_SP0_Field := NRF_SVD.AIPS0.PACRD_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRD_Register use record
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

   --  Trusted Protect
   type PACRE_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP7_Field_1)
     with Size => 1;
   for PACRE_TP7_Field use
     (PACRE_TP7_Field_0 => 0,
      PACRE_TP7_Field_1 => 1);

   --  Write Protect
   type PACRE_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP7_Field_0,
      --  This peripheral is write protected.
      PACRE_WP7_Field_1)
     with Size => 1;
   for PACRE_WP7_Field use
     (PACRE_WP7_Field_0 => 0,
      PACRE_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRE_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP7_Field_1)
     with Size => 1;
   for PACRE_SP7_Field use
     (PACRE_SP7_Field_0 => 0,
      PACRE_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRE_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP6_Field_1)
     with Size => 1;
   for PACRE_TP6_Field use
     (PACRE_TP6_Field_0 => 0,
      PACRE_TP6_Field_1 => 1);

   --  Write Protect
   type PACRE_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP6_Field_0,
      --  This peripheral is write protected.
      PACRE_WP6_Field_1)
     with Size => 1;
   for PACRE_WP6_Field use
     (PACRE_WP6_Field_0 => 0,
      PACRE_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRE_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP6_Field_1)
     with Size => 1;
   for PACRE_SP6_Field use
     (PACRE_SP6_Field_0 => 0,
      PACRE_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRE_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP5_Field_1)
     with Size => 1;
   for PACRE_TP5_Field use
     (PACRE_TP5_Field_0 => 0,
      PACRE_TP5_Field_1 => 1);

   --  Write Protect
   type PACRE_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP5_Field_0,
      --  This peripheral is write protected.
      PACRE_WP5_Field_1)
     with Size => 1;
   for PACRE_WP5_Field use
     (PACRE_WP5_Field_0 => 0,
      PACRE_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRE_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP5_Field_1)
     with Size => 1;
   for PACRE_SP5_Field use
     (PACRE_SP5_Field_0 => 0,
      PACRE_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRE_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP4_Field_1)
     with Size => 1;
   for PACRE_TP4_Field use
     (PACRE_TP4_Field_0 => 0,
      PACRE_TP4_Field_1 => 1);

   --  Write Protect
   type PACRE_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP4_Field_0,
      --  This peripheral is write protected.
      PACRE_WP4_Field_1)
     with Size => 1;
   for PACRE_WP4_Field use
     (PACRE_WP4_Field_0 => 0,
      PACRE_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRE_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP4_Field_1)
     with Size => 1;
   for PACRE_SP4_Field use
     (PACRE_SP4_Field_0 => 0,
      PACRE_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRE_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP3_Field_1)
     with Size => 1;
   for PACRE_TP3_Field use
     (PACRE_TP3_Field_0 => 0,
      PACRE_TP3_Field_1 => 1);

   --  Write protect
   type PACRE_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP3_Field_0,
      --  This peripheral is write protected.
      PACRE_WP3_Field_1)
     with Size => 1;
   for PACRE_WP3_Field use
     (PACRE_WP3_Field_0 => 0,
      PACRE_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRE_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP3_Field_1)
     with Size => 1;
   for PACRE_SP3_Field use
     (PACRE_SP3_Field_0 => 0,
      PACRE_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRE_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP2_Field_1)
     with Size => 1;
   for PACRE_TP2_Field use
     (PACRE_TP2_Field_0 => 0,
      PACRE_TP2_Field_1 => 1);

   --  Write Protect
   type PACRE_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP2_Field_0,
      --  This peripheral is write protected.
      PACRE_WP2_Field_1)
     with Size => 1;
   for PACRE_WP2_Field use
     (PACRE_WP2_Field_0 => 0,
      PACRE_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRE_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP2_Field_1)
     with Size => 1;
   for PACRE_SP2_Field use
     (PACRE_SP2_Field_0 => 0,
      PACRE_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRE_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP1_Field_1)
     with Size => 1;
   for PACRE_TP1_Field use
     (PACRE_TP1_Field_0 => 0,
      PACRE_TP1_Field_1 => 1);

   --  Write Protect
   type PACRE_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP1_Field_0,
      --  This peripheral is write protected.
      PACRE_WP1_Field_1)
     with Size => 1;
   for PACRE_WP1_Field use
     (PACRE_WP1_Field_0 => 0,
      PACRE_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRE_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP1_Field_1)
     with Size => 1;
   for PACRE_SP1_Field use
     (PACRE_SP1_Field_0 => 0,
      PACRE_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRE_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRE_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRE_TP0_Field_1)
     with Size => 1;
   for PACRE_TP0_Field use
     (PACRE_TP0_Field_0 => 0,
      PACRE_TP0_Field_1 => 1);

   --  Write Protect
   type PACRE_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRE_WP0_Field_0,
      --  This peripheral is write protected.
      PACRE_WP0_Field_1)
     with Size => 1;
   for PACRE_WP0_Field use
     (PACRE_WP0_Field_0 => 0,
      PACRE_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRE_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRE_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRE_SP0_Field_1)
     with Size => 1;
   for PACRE_SP0_Field use
     (PACRE_SP0_Field_0 => 0,
      PACRE_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRE_Register is record
      --  Trusted Protect
      TP7            : PACRE_TP7_Field := NRF_SVD.AIPS0.PACRE_TP7_Field_0;
      --  Write Protect
      WP7            : PACRE_WP7_Field := NRF_SVD.AIPS0.PACRE_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRE_SP7_Field := NRF_SVD.AIPS0.PACRE_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRE_TP6_Field := NRF_SVD.AIPS0.PACRE_TP6_Field_0;
      --  Write Protect
      WP6            : PACRE_WP6_Field := NRF_SVD.AIPS0.PACRE_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRE_SP6_Field := NRF_SVD.AIPS0.PACRE_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRE_TP5_Field := NRF_SVD.AIPS0.PACRE_TP5_Field_0;
      --  Write Protect
      WP5            : PACRE_WP5_Field := NRF_SVD.AIPS0.PACRE_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRE_SP5_Field := NRF_SVD.AIPS0.PACRE_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRE_TP4_Field := NRF_SVD.AIPS0.PACRE_TP4_Field_0;
      --  Write Protect
      WP4            : PACRE_WP4_Field := NRF_SVD.AIPS0.PACRE_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRE_SP4_Field := NRF_SVD.AIPS0.PACRE_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRE_TP3_Field := NRF_SVD.AIPS0.PACRE_TP3_Field_0;
      --  Write protect
      WP3            : PACRE_WP3_Field := NRF_SVD.AIPS0.PACRE_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRE_SP3_Field := NRF_SVD.AIPS0.PACRE_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRE_TP2_Field := NRF_SVD.AIPS0.PACRE_TP2_Field_0;
      --  Write Protect
      WP2            : PACRE_WP2_Field := NRF_SVD.AIPS0.PACRE_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRE_SP2_Field := NRF_SVD.AIPS0.PACRE_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRE_TP1_Field := NRF_SVD.AIPS0.PACRE_TP1_Field_0;
      --  Write Protect
      WP1            : PACRE_WP1_Field := NRF_SVD.AIPS0.PACRE_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRE_SP1_Field := NRF_SVD.AIPS0.PACRE_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRE_TP0_Field := NRF_SVD.AIPS0.PACRE_TP0_Field_0;
      --  Write Protect
      WP0            : PACRE_WP0_Field := NRF_SVD.AIPS0.PACRE_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRE_SP0_Field := NRF_SVD.AIPS0.PACRE_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRE_Register use record
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

   --  Trusted Protect
   type PACRF_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP7_Field_1)
     with Size => 1;
   for PACRF_TP7_Field use
     (PACRF_TP7_Field_0 => 0,
      PACRF_TP7_Field_1 => 1);

   --  Write Protect
   type PACRF_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP7_Field_0,
      --  This peripheral is write protected.
      PACRF_WP7_Field_1)
     with Size => 1;
   for PACRF_WP7_Field use
     (PACRF_WP7_Field_0 => 0,
      PACRF_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRF_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP7_Field_1)
     with Size => 1;
   for PACRF_SP7_Field use
     (PACRF_SP7_Field_0 => 0,
      PACRF_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRF_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP6_Field_1)
     with Size => 1;
   for PACRF_TP6_Field use
     (PACRF_TP6_Field_0 => 0,
      PACRF_TP6_Field_1 => 1);

   --  Write Protect
   type PACRF_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP6_Field_0,
      --  This peripheral is write protected.
      PACRF_WP6_Field_1)
     with Size => 1;
   for PACRF_WP6_Field use
     (PACRF_WP6_Field_0 => 0,
      PACRF_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRF_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP6_Field_1)
     with Size => 1;
   for PACRF_SP6_Field use
     (PACRF_SP6_Field_0 => 0,
      PACRF_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRF_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP5_Field_1)
     with Size => 1;
   for PACRF_TP5_Field use
     (PACRF_TP5_Field_0 => 0,
      PACRF_TP5_Field_1 => 1);

   --  Write Protect
   type PACRF_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP5_Field_0,
      --  This peripheral is write protected.
      PACRF_WP5_Field_1)
     with Size => 1;
   for PACRF_WP5_Field use
     (PACRF_WP5_Field_0 => 0,
      PACRF_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRF_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP5_Field_1)
     with Size => 1;
   for PACRF_SP5_Field use
     (PACRF_SP5_Field_0 => 0,
      PACRF_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRF_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP4_Field_1)
     with Size => 1;
   for PACRF_TP4_Field use
     (PACRF_TP4_Field_0 => 0,
      PACRF_TP4_Field_1 => 1);

   --  Write Protect
   type PACRF_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP4_Field_0,
      --  This peripheral is write protected.
      PACRF_WP4_Field_1)
     with Size => 1;
   for PACRF_WP4_Field use
     (PACRF_WP4_Field_0 => 0,
      PACRF_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRF_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP4_Field_1)
     with Size => 1;
   for PACRF_SP4_Field use
     (PACRF_SP4_Field_0 => 0,
      PACRF_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRF_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP3_Field_1)
     with Size => 1;
   for PACRF_TP3_Field use
     (PACRF_TP3_Field_0 => 0,
      PACRF_TP3_Field_1 => 1);

   --  Write protect
   type PACRF_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP3_Field_0,
      --  This peripheral is write protected.
      PACRF_WP3_Field_1)
     with Size => 1;
   for PACRF_WP3_Field use
     (PACRF_WP3_Field_0 => 0,
      PACRF_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRF_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP3_Field_1)
     with Size => 1;
   for PACRF_SP3_Field use
     (PACRF_SP3_Field_0 => 0,
      PACRF_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRF_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP2_Field_1)
     with Size => 1;
   for PACRF_TP2_Field use
     (PACRF_TP2_Field_0 => 0,
      PACRF_TP2_Field_1 => 1);

   --  Write Protect
   type PACRF_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP2_Field_0,
      --  This peripheral is write protected.
      PACRF_WP2_Field_1)
     with Size => 1;
   for PACRF_WP2_Field use
     (PACRF_WP2_Field_0 => 0,
      PACRF_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRF_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP2_Field_1)
     with Size => 1;
   for PACRF_SP2_Field use
     (PACRF_SP2_Field_0 => 0,
      PACRF_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRF_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP1_Field_1)
     with Size => 1;
   for PACRF_TP1_Field use
     (PACRF_TP1_Field_0 => 0,
      PACRF_TP1_Field_1 => 1);

   --  Write Protect
   type PACRF_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP1_Field_0,
      --  This peripheral is write protected.
      PACRF_WP1_Field_1)
     with Size => 1;
   for PACRF_WP1_Field use
     (PACRF_WP1_Field_0 => 0,
      PACRF_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRF_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP1_Field_1)
     with Size => 1;
   for PACRF_SP1_Field use
     (PACRF_SP1_Field_0 => 0,
      PACRF_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRF_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRF_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRF_TP0_Field_1)
     with Size => 1;
   for PACRF_TP0_Field use
     (PACRF_TP0_Field_0 => 0,
      PACRF_TP0_Field_1 => 1);

   --  Write Protect
   type PACRF_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRF_WP0_Field_0,
      --  This peripheral is write protected.
      PACRF_WP0_Field_1)
     with Size => 1;
   for PACRF_WP0_Field use
     (PACRF_WP0_Field_0 => 0,
      PACRF_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRF_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRF_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRF_SP0_Field_1)
     with Size => 1;
   for PACRF_SP0_Field use
     (PACRF_SP0_Field_0 => 0,
      PACRF_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRF_Register is record
      --  Trusted Protect
      TP7            : PACRF_TP7_Field := NRF_SVD.AIPS0.PACRF_TP7_Field_0;
      --  Write Protect
      WP7            : PACRF_WP7_Field := NRF_SVD.AIPS0.PACRF_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRF_SP7_Field := NRF_SVD.AIPS0.PACRF_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRF_TP6_Field := NRF_SVD.AIPS0.PACRF_TP6_Field_0;
      --  Write Protect
      WP6            : PACRF_WP6_Field := NRF_SVD.AIPS0.PACRF_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRF_SP6_Field := NRF_SVD.AIPS0.PACRF_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRF_TP5_Field := NRF_SVD.AIPS0.PACRF_TP5_Field_0;
      --  Write Protect
      WP5            : PACRF_WP5_Field := NRF_SVD.AIPS0.PACRF_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRF_SP5_Field := NRF_SVD.AIPS0.PACRF_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRF_TP4_Field := NRF_SVD.AIPS0.PACRF_TP4_Field_0;
      --  Write Protect
      WP4            : PACRF_WP4_Field := NRF_SVD.AIPS0.PACRF_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRF_SP4_Field := NRF_SVD.AIPS0.PACRF_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRF_TP3_Field := NRF_SVD.AIPS0.PACRF_TP3_Field_0;
      --  Write protect
      WP3            : PACRF_WP3_Field := NRF_SVD.AIPS0.PACRF_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRF_SP3_Field := NRF_SVD.AIPS0.PACRF_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRF_TP2_Field := NRF_SVD.AIPS0.PACRF_TP2_Field_0;
      --  Write Protect
      WP2            : PACRF_WP2_Field := NRF_SVD.AIPS0.PACRF_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRF_SP2_Field := NRF_SVD.AIPS0.PACRF_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRF_TP1_Field := NRF_SVD.AIPS0.PACRF_TP1_Field_0;
      --  Write Protect
      WP1            : PACRF_WP1_Field := NRF_SVD.AIPS0.PACRF_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRF_SP1_Field := NRF_SVD.AIPS0.PACRF_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRF_TP0_Field := NRF_SVD.AIPS0.PACRF_TP0_Field_0;
      --  Write Protect
      WP0            : PACRF_WP0_Field := NRF_SVD.AIPS0.PACRF_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRF_SP0_Field := NRF_SVD.AIPS0.PACRF_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRF_Register use record
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

   --  Trusted Protect
   type PACRG_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP7_Field_1)
     with Size => 1;
   for PACRG_TP7_Field use
     (PACRG_TP7_Field_0 => 0,
      PACRG_TP7_Field_1 => 1);

   --  Write Protect
   type PACRG_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP7_Field_0,
      --  This peripheral is write protected.
      PACRG_WP7_Field_1)
     with Size => 1;
   for PACRG_WP7_Field use
     (PACRG_WP7_Field_0 => 0,
      PACRG_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRG_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP7_Field_1)
     with Size => 1;
   for PACRG_SP7_Field use
     (PACRG_SP7_Field_0 => 0,
      PACRG_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRG_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP6_Field_1)
     with Size => 1;
   for PACRG_TP6_Field use
     (PACRG_TP6_Field_0 => 0,
      PACRG_TP6_Field_1 => 1);

   --  Write Protect
   type PACRG_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP6_Field_0,
      --  This peripheral is write protected.
      PACRG_WP6_Field_1)
     with Size => 1;
   for PACRG_WP6_Field use
     (PACRG_WP6_Field_0 => 0,
      PACRG_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRG_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP6_Field_1)
     with Size => 1;
   for PACRG_SP6_Field use
     (PACRG_SP6_Field_0 => 0,
      PACRG_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRG_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP5_Field_1)
     with Size => 1;
   for PACRG_TP5_Field use
     (PACRG_TP5_Field_0 => 0,
      PACRG_TP5_Field_1 => 1);

   --  Write Protect
   type PACRG_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP5_Field_0,
      --  This peripheral is write protected.
      PACRG_WP5_Field_1)
     with Size => 1;
   for PACRG_WP5_Field use
     (PACRG_WP5_Field_0 => 0,
      PACRG_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRG_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP5_Field_1)
     with Size => 1;
   for PACRG_SP5_Field use
     (PACRG_SP5_Field_0 => 0,
      PACRG_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRG_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP4_Field_1)
     with Size => 1;
   for PACRG_TP4_Field use
     (PACRG_TP4_Field_0 => 0,
      PACRG_TP4_Field_1 => 1);

   --  Write Protect
   type PACRG_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP4_Field_0,
      --  This peripheral is write protected.
      PACRG_WP4_Field_1)
     with Size => 1;
   for PACRG_WP4_Field use
     (PACRG_WP4_Field_0 => 0,
      PACRG_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRG_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP4_Field_1)
     with Size => 1;
   for PACRG_SP4_Field use
     (PACRG_SP4_Field_0 => 0,
      PACRG_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRG_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP3_Field_1)
     with Size => 1;
   for PACRG_TP3_Field use
     (PACRG_TP3_Field_0 => 0,
      PACRG_TP3_Field_1 => 1);

   --  Write protect
   type PACRG_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP3_Field_0,
      --  This peripheral is write protected.
      PACRG_WP3_Field_1)
     with Size => 1;
   for PACRG_WP3_Field use
     (PACRG_WP3_Field_0 => 0,
      PACRG_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRG_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP3_Field_1)
     with Size => 1;
   for PACRG_SP3_Field use
     (PACRG_SP3_Field_0 => 0,
      PACRG_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRG_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP2_Field_1)
     with Size => 1;
   for PACRG_TP2_Field use
     (PACRG_TP2_Field_0 => 0,
      PACRG_TP2_Field_1 => 1);

   --  Write Protect
   type PACRG_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP2_Field_0,
      --  This peripheral is write protected.
      PACRG_WP2_Field_1)
     with Size => 1;
   for PACRG_WP2_Field use
     (PACRG_WP2_Field_0 => 0,
      PACRG_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRG_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP2_Field_1)
     with Size => 1;
   for PACRG_SP2_Field use
     (PACRG_SP2_Field_0 => 0,
      PACRG_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRG_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP1_Field_1)
     with Size => 1;
   for PACRG_TP1_Field use
     (PACRG_TP1_Field_0 => 0,
      PACRG_TP1_Field_1 => 1);

   --  Write Protect
   type PACRG_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP1_Field_0,
      --  This peripheral is write protected.
      PACRG_WP1_Field_1)
     with Size => 1;
   for PACRG_WP1_Field use
     (PACRG_WP1_Field_0 => 0,
      PACRG_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRG_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP1_Field_1)
     with Size => 1;
   for PACRG_SP1_Field use
     (PACRG_SP1_Field_0 => 0,
      PACRG_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRG_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRG_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRG_TP0_Field_1)
     with Size => 1;
   for PACRG_TP0_Field use
     (PACRG_TP0_Field_0 => 0,
      PACRG_TP0_Field_1 => 1);

   --  Write Protect
   type PACRG_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRG_WP0_Field_0,
      --  This peripheral is write protected.
      PACRG_WP0_Field_1)
     with Size => 1;
   for PACRG_WP0_Field use
     (PACRG_WP0_Field_0 => 0,
      PACRG_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRG_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRG_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRG_SP0_Field_1)
     with Size => 1;
   for PACRG_SP0_Field use
     (PACRG_SP0_Field_0 => 0,
      PACRG_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRG_Register is record
      --  Trusted Protect
      TP7            : PACRG_TP7_Field := NRF_SVD.AIPS0.PACRG_TP7_Field_0;
      --  Write Protect
      WP7            : PACRG_WP7_Field := NRF_SVD.AIPS0.PACRG_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRG_SP7_Field := NRF_SVD.AIPS0.PACRG_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRG_TP6_Field := NRF_SVD.AIPS0.PACRG_TP6_Field_0;
      --  Write Protect
      WP6            : PACRG_WP6_Field := NRF_SVD.AIPS0.PACRG_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRG_SP6_Field := NRF_SVD.AIPS0.PACRG_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRG_TP5_Field := NRF_SVD.AIPS0.PACRG_TP5_Field_0;
      --  Write Protect
      WP5            : PACRG_WP5_Field := NRF_SVD.AIPS0.PACRG_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRG_SP5_Field := NRF_SVD.AIPS0.PACRG_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRG_TP4_Field := NRF_SVD.AIPS0.PACRG_TP4_Field_0;
      --  Write Protect
      WP4            : PACRG_WP4_Field := NRF_SVD.AIPS0.PACRG_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRG_SP4_Field := NRF_SVD.AIPS0.PACRG_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRG_TP3_Field := NRF_SVD.AIPS0.PACRG_TP3_Field_0;
      --  Write protect
      WP3            : PACRG_WP3_Field := NRF_SVD.AIPS0.PACRG_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRG_SP3_Field := NRF_SVD.AIPS0.PACRG_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRG_TP2_Field := NRF_SVD.AIPS0.PACRG_TP2_Field_0;
      --  Write Protect
      WP2            : PACRG_WP2_Field := NRF_SVD.AIPS0.PACRG_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRG_SP2_Field := NRF_SVD.AIPS0.PACRG_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRG_TP1_Field := NRF_SVD.AIPS0.PACRG_TP1_Field_0;
      --  Write Protect
      WP1            : PACRG_WP1_Field := NRF_SVD.AIPS0.PACRG_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRG_SP1_Field := NRF_SVD.AIPS0.PACRG_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRG_TP0_Field := NRF_SVD.AIPS0.PACRG_TP0_Field_0;
      --  Write Protect
      WP0            : PACRG_WP0_Field := NRF_SVD.AIPS0.PACRG_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRG_SP0_Field := NRF_SVD.AIPS0.PACRG_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRG_Register use record
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

   --  Trusted Protect
   type PACRH_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP7_Field_1)
     with Size => 1;
   for PACRH_TP7_Field use
     (PACRH_TP7_Field_0 => 0,
      PACRH_TP7_Field_1 => 1);

   --  Write Protect
   type PACRH_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP7_Field_0,
      --  This peripheral is write protected.
      PACRH_WP7_Field_1)
     with Size => 1;
   for PACRH_WP7_Field use
     (PACRH_WP7_Field_0 => 0,
      PACRH_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRH_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP7_Field_1)
     with Size => 1;
   for PACRH_SP7_Field use
     (PACRH_SP7_Field_0 => 0,
      PACRH_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRH_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP6_Field_1)
     with Size => 1;
   for PACRH_TP6_Field use
     (PACRH_TP6_Field_0 => 0,
      PACRH_TP6_Field_1 => 1);

   --  Write Protect
   type PACRH_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP6_Field_0,
      --  This peripheral is write protected.
      PACRH_WP6_Field_1)
     with Size => 1;
   for PACRH_WP6_Field use
     (PACRH_WP6_Field_0 => 0,
      PACRH_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRH_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP6_Field_1)
     with Size => 1;
   for PACRH_SP6_Field use
     (PACRH_SP6_Field_0 => 0,
      PACRH_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRH_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP5_Field_1)
     with Size => 1;
   for PACRH_TP5_Field use
     (PACRH_TP5_Field_0 => 0,
      PACRH_TP5_Field_1 => 1);

   --  Write Protect
   type PACRH_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP5_Field_0,
      --  This peripheral is write protected.
      PACRH_WP5_Field_1)
     with Size => 1;
   for PACRH_WP5_Field use
     (PACRH_WP5_Field_0 => 0,
      PACRH_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRH_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP5_Field_1)
     with Size => 1;
   for PACRH_SP5_Field use
     (PACRH_SP5_Field_0 => 0,
      PACRH_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRH_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP4_Field_1)
     with Size => 1;
   for PACRH_TP4_Field use
     (PACRH_TP4_Field_0 => 0,
      PACRH_TP4_Field_1 => 1);

   --  Write Protect
   type PACRH_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP4_Field_0,
      --  This peripheral is write protected.
      PACRH_WP4_Field_1)
     with Size => 1;
   for PACRH_WP4_Field use
     (PACRH_WP4_Field_0 => 0,
      PACRH_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRH_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP4_Field_1)
     with Size => 1;
   for PACRH_SP4_Field use
     (PACRH_SP4_Field_0 => 0,
      PACRH_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRH_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP3_Field_1)
     with Size => 1;
   for PACRH_TP3_Field use
     (PACRH_TP3_Field_0 => 0,
      PACRH_TP3_Field_1 => 1);

   --  Write protect
   type PACRH_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP3_Field_0,
      --  This peripheral is write protected.
      PACRH_WP3_Field_1)
     with Size => 1;
   for PACRH_WP3_Field use
     (PACRH_WP3_Field_0 => 0,
      PACRH_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRH_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP3_Field_1)
     with Size => 1;
   for PACRH_SP3_Field use
     (PACRH_SP3_Field_0 => 0,
      PACRH_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRH_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP2_Field_1)
     with Size => 1;
   for PACRH_TP2_Field use
     (PACRH_TP2_Field_0 => 0,
      PACRH_TP2_Field_1 => 1);

   --  Write Protect
   type PACRH_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP2_Field_0,
      --  This peripheral is write protected.
      PACRH_WP2_Field_1)
     with Size => 1;
   for PACRH_WP2_Field use
     (PACRH_WP2_Field_0 => 0,
      PACRH_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRH_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP2_Field_1)
     with Size => 1;
   for PACRH_SP2_Field use
     (PACRH_SP2_Field_0 => 0,
      PACRH_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRH_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP1_Field_1)
     with Size => 1;
   for PACRH_TP1_Field use
     (PACRH_TP1_Field_0 => 0,
      PACRH_TP1_Field_1 => 1);

   --  Write Protect
   type PACRH_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP1_Field_0,
      --  This peripheral is write protected.
      PACRH_WP1_Field_1)
     with Size => 1;
   for PACRH_WP1_Field use
     (PACRH_WP1_Field_0 => 0,
      PACRH_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRH_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP1_Field_1)
     with Size => 1;
   for PACRH_SP1_Field use
     (PACRH_SP1_Field_0 => 0,
      PACRH_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRH_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRH_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRH_TP0_Field_1)
     with Size => 1;
   for PACRH_TP0_Field use
     (PACRH_TP0_Field_0 => 0,
      PACRH_TP0_Field_1 => 1);

   --  Write Protect
   type PACRH_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRH_WP0_Field_0,
      --  This peripheral is write protected.
      PACRH_WP0_Field_1)
     with Size => 1;
   for PACRH_WP0_Field use
     (PACRH_WP0_Field_0 => 0,
      PACRH_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRH_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRH_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRH_SP0_Field_1)
     with Size => 1;
   for PACRH_SP0_Field use
     (PACRH_SP0_Field_0 => 0,
      PACRH_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRH_Register is record
      --  Trusted Protect
      TP7            : PACRH_TP7_Field := NRF_SVD.AIPS0.PACRH_TP7_Field_0;
      --  Write Protect
      WP7            : PACRH_WP7_Field := NRF_SVD.AIPS0.PACRH_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRH_SP7_Field := NRF_SVD.AIPS0.PACRH_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRH_TP6_Field := NRF_SVD.AIPS0.PACRH_TP6_Field_0;
      --  Write Protect
      WP6            : PACRH_WP6_Field := NRF_SVD.AIPS0.PACRH_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRH_SP6_Field := NRF_SVD.AIPS0.PACRH_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRH_TP5_Field := NRF_SVD.AIPS0.PACRH_TP5_Field_0;
      --  Write Protect
      WP5            : PACRH_WP5_Field := NRF_SVD.AIPS0.PACRH_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRH_SP5_Field := NRF_SVD.AIPS0.PACRH_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRH_TP4_Field := NRF_SVD.AIPS0.PACRH_TP4_Field_0;
      --  Write Protect
      WP4            : PACRH_WP4_Field := NRF_SVD.AIPS0.PACRH_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRH_SP4_Field := NRF_SVD.AIPS0.PACRH_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRH_TP3_Field := NRF_SVD.AIPS0.PACRH_TP3_Field_0;
      --  Write protect
      WP3            : PACRH_WP3_Field := NRF_SVD.AIPS0.PACRH_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRH_SP3_Field := NRF_SVD.AIPS0.PACRH_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRH_TP2_Field := NRF_SVD.AIPS0.PACRH_TP2_Field_0;
      --  Write Protect
      WP2            : PACRH_WP2_Field := NRF_SVD.AIPS0.PACRH_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRH_SP2_Field := NRF_SVD.AIPS0.PACRH_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRH_TP1_Field := NRF_SVD.AIPS0.PACRH_TP1_Field_0;
      --  Write Protect
      WP1            : PACRH_WP1_Field := NRF_SVD.AIPS0.PACRH_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRH_SP1_Field := NRF_SVD.AIPS0.PACRH_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRH_TP0_Field := NRF_SVD.AIPS0.PACRH_TP0_Field_0;
      --  Write Protect
      WP0            : PACRH_WP0_Field := NRF_SVD.AIPS0.PACRH_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRH_SP0_Field := NRF_SVD.AIPS0.PACRH_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRH_Register use record
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

   --  Trusted Protect
   type PACRI_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP7_Field_1)
     with Size => 1;
   for PACRI_TP7_Field use
     (PACRI_TP7_Field_0 => 0,
      PACRI_TP7_Field_1 => 1);

   --  Write Protect
   type PACRI_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP7_Field_0,
      --  This peripheral is write protected.
      PACRI_WP7_Field_1)
     with Size => 1;
   for PACRI_WP7_Field use
     (PACRI_WP7_Field_0 => 0,
      PACRI_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRI_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP7_Field_1)
     with Size => 1;
   for PACRI_SP7_Field use
     (PACRI_SP7_Field_0 => 0,
      PACRI_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRI_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP6_Field_1)
     with Size => 1;
   for PACRI_TP6_Field use
     (PACRI_TP6_Field_0 => 0,
      PACRI_TP6_Field_1 => 1);

   --  Write Protect
   type PACRI_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP6_Field_0,
      --  This peripheral is write protected.
      PACRI_WP6_Field_1)
     with Size => 1;
   for PACRI_WP6_Field use
     (PACRI_WP6_Field_0 => 0,
      PACRI_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRI_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP6_Field_1)
     with Size => 1;
   for PACRI_SP6_Field use
     (PACRI_SP6_Field_0 => 0,
      PACRI_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRI_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP5_Field_1)
     with Size => 1;
   for PACRI_TP5_Field use
     (PACRI_TP5_Field_0 => 0,
      PACRI_TP5_Field_1 => 1);

   --  Write Protect
   type PACRI_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP5_Field_0,
      --  This peripheral is write protected.
      PACRI_WP5_Field_1)
     with Size => 1;
   for PACRI_WP5_Field use
     (PACRI_WP5_Field_0 => 0,
      PACRI_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRI_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP5_Field_1)
     with Size => 1;
   for PACRI_SP5_Field use
     (PACRI_SP5_Field_0 => 0,
      PACRI_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRI_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP4_Field_1)
     with Size => 1;
   for PACRI_TP4_Field use
     (PACRI_TP4_Field_0 => 0,
      PACRI_TP4_Field_1 => 1);

   --  Write Protect
   type PACRI_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP4_Field_0,
      --  This peripheral is write protected.
      PACRI_WP4_Field_1)
     with Size => 1;
   for PACRI_WP4_Field use
     (PACRI_WP4_Field_0 => 0,
      PACRI_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRI_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP4_Field_1)
     with Size => 1;
   for PACRI_SP4_Field use
     (PACRI_SP4_Field_0 => 0,
      PACRI_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRI_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP3_Field_1)
     with Size => 1;
   for PACRI_TP3_Field use
     (PACRI_TP3_Field_0 => 0,
      PACRI_TP3_Field_1 => 1);

   --  Write protect
   type PACRI_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP3_Field_0,
      --  This peripheral is write protected.
      PACRI_WP3_Field_1)
     with Size => 1;
   for PACRI_WP3_Field use
     (PACRI_WP3_Field_0 => 0,
      PACRI_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRI_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP3_Field_1)
     with Size => 1;
   for PACRI_SP3_Field use
     (PACRI_SP3_Field_0 => 0,
      PACRI_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRI_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP2_Field_1)
     with Size => 1;
   for PACRI_TP2_Field use
     (PACRI_TP2_Field_0 => 0,
      PACRI_TP2_Field_1 => 1);

   --  Write Protect
   type PACRI_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP2_Field_0,
      --  This peripheral is write protected.
      PACRI_WP2_Field_1)
     with Size => 1;
   for PACRI_WP2_Field use
     (PACRI_WP2_Field_0 => 0,
      PACRI_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRI_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP2_Field_1)
     with Size => 1;
   for PACRI_SP2_Field use
     (PACRI_SP2_Field_0 => 0,
      PACRI_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRI_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP1_Field_1)
     with Size => 1;
   for PACRI_TP1_Field use
     (PACRI_TP1_Field_0 => 0,
      PACRI_TP1_Field_1 => 1);

   --  Write Protect
   type PACRI_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP1_Field_0,
      --  This peripheral is write protected.
      PACRI_WP1_Field_1)
     with Size => 1;
   for PACRI_WP1_Field use
     (PACRI_WP1_Field_0 => 0,
      PACRI_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRI_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP1_Field_1)
     with Size => 1;
   for PACRI_SP1_Field use
     (PACRI_SP1_Field_0 => 0,
      PACRI_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRI_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRI_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRI_TP0_Field_1)
     with Size => 1;
   for PACRI_TP0_Field use
     (PACRI_TP0_Field_0 => 0,
      PACRI_TP0_Field_1 => 1);

   --  Write Protect
   type PACRI_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRI_WP0_Field_0,
      --  This peripheral is write protected.
      PACRI_WP0_Field_1)
     with Size => 1;
   for PACRI_WP0_Field use
     (PACRI_WP0_Field_0 => 0,
      PACRI_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRI_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRI_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRI_SP0_Field_1)
     with Size => 1;
   for PACRI_SP0_Field use
     (PACRI_SP0_Field_0 => 0,
      PACRI_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRI_Register is record
      --  Trusted Protect
      TP7            : PACRI_TP7_Field := NRF_SVD.AIPS0.PACRI_TP7_Field_0;
      --  Write Protect
      WP7            : PACRI_WP7_Field := NRF_SVD.AIPS0.PACRI_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRI_SP7_Field := NRF_SVD.AIPS0.PACRI_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRI_TP6_Field := NRF_SVD.AIPS0.PACRI_TP6_Field_0;
      --  Write Protect
      WP6            : PACRI_WP6_Field := NRF_SVD.AIPS0.PACRI_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRI_SP6_Field := NRF_SVD.AIPS0.PACRI_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRI_TP5_Field := NRF_SVD.AIPS0.PACRI_TP5_Field_0;
      --  Write Protect
      WP5            : PACRI_WP5_Field := NRF_SVD.AIPS0.PACRI_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRI_SP5_Field := NRF_SVD.AIPS0.PACRI_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRI_TP4_Field := NRF_SVD.AIPS0.PACRI_TP4_Field_0;
      --  Write Protect
      WP4            : PACRI_WP4_Field := NRF_SVD.AIPS0.PACRI_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRI_SP4_Field := NRF_SVD.AIPS0.PACRI_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRI_TP3_Field := NRF_SVD.AIPS0.PACRI_TP3_Field_0;
      --  Write protect
      WP3            : PACRI_WP3_Field := NRF_SVD.AIPS0.PACRI_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRI_SP3_Field := NRF_SVD.AIPS0.PACRI_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRI_TP2_Field := NRF_SVD.AIPS0.PACRI_TP2_Field_0;
      --  Write Protect
      WP2            : PACRI_WP2_Field := NRF_SVD.AIPS0.PACRI_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRI_SP2_Field := NRF_SVD.AIPS0.PACRI_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRI_TP1_Field := NRF_SVD.AIPS0.PACRI_TP1_Field_0;
      --  Write Protect
      WP1            : PACRI_WP1_Field := NRF_SVD.AIPS0.PACRI_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRI_SP1_Field := NRF_SVD.AIPS0.PACRI_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRI_TP0_Field := NRF_SVD.AIPS0.PACRI_TP0_Field_0;
      --  Write Protect
      WP0            : PACRI_WP0_Field := NRF_SVD.AIPS0.PACRI_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRI_SP0_Field := NRF_SVD.AIPS0.PACRI_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRI_Register use record
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

   --  Trusted Protect
   type PACRJ_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP7_Field_1)
     with Size => 1;
   for PACRJ_TP7_Field use
     (PACRJ_TP7_Field_0 => 0,
      PACRJ_TP7_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP7_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP7_Field_1)
     with Size => 1;
   for PACRJ_WP7_Field use
     (PACRJ_WP7_Field_0 => 0,
      PACRJ_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRJ_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP7_Field_1)
     with Size => 1;
   for PACRJ_SP7_Field use
     (PACRJ_SP7_Field_0 => 0,
      PACRJ_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRJ_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP6_Field_1)
     with Size => 1;
   for PACRJ_TP6_Field use
     (PACRJ_TP6_Field_0 => 0,
      PACRJ_TP6_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP6_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP6_Field_1)
     with Size => 1;
   for PACRJ_WP6_Field use
     (PACRJ_WP6_Field_0 => 0,
      PACRJ_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRJ_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP6_Field_1)
     with Size => 1;
   for PACRJ_SP6_Field use
     (PACRJ_SP6_Field_0 => 0,
      PACRJ_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRJ_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP5_Field_1)
     with Size => 1;
   for PACRJ_TP5_Field use
     (PACRJ_TP5_Field_0 => 0,
      PACRJ_TP5_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP5_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP5_Field_1)
     with Size => 1;
   for PACRJ_WP5_Field use
     (PACRJ_WP5_Field_0 => 0,
      PACRJ_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRJ_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP5_Field_1)
     with Size => 1;
   for PACRJ_SP5_Field use
     (PACRJ_SP5_Field_0 => 0,
      PACRJ_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRJ_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP4_Field_1)
     with Size => 1;
   for PACRJ_TP4_Field use
     (PACRJ_TP4_Field_0 => 0,
      PACRJ_TP4_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP4_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP4_Field_1)
     with Size => 1;
   for PACRJ_WP4_Field use
     (PACRJ_WP4_Field_0 => 0,
      PACRJ_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRJ_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP4_Field_1)
     with Size => 1;
   for PACRJ_SP4_Field use
     (PACRJ_SP4_Field_0 => 0,
      PACRJ_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRJ_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP3_Field_1)
     with Size => 1;
   for PACRJ_TP3_Field use
     (PACRJ_TP3_Field_0 => 0,
      PACRJ_TP3_Field_1 => 1);

   --  Write protect
   type PACRJ_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP3_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP3_Field_1)
     with Size => 1;
   for PACRJ_WP3_Field use
     (PACRJ_WP3_Field_0 => 0,
      PACRJ_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRJ_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP3_Field_1)
     with Size => 1;
   for PACRJ_SP3_Field use
     (PACRJ_SP3_Field_0 => 0,
      PACRJ_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRJ_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP2_Field_1)
     with Size => 1;
   for PACRJ_TP2_Field use
     (PACRJ_TP2_Field_0 => 0,
      PACRJ_TP2_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP2_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP2_Field_1)
     with Size => 1;
   for PACRJ_WP2_Field use
     (PACRJ_WP2_Field_0 => 0,
      PACRJ_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRJ_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP2_Field_1)
     with Size => 1;
   for PACRJ_SP2_Field use
     (PACRJ_SP2_Field_0 => 0,
      PACRJ_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRJ_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP1_Field_1)
     with Size => 1;
   for PACRJ_TP1_Field use
     (PACRJ_TP1_Field_0 => 0,
      PACRJ_TP1_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP1_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP1_Field_1)
     with Size => 1;
   for PACRJ_WP1_Field use
     (PACRJ_WP1_Field_0 => 0,
      PACRJ_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRJ_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP1_Field_1)
     with Size => 1;
   for PACRJ_SP1_Field use
     (PACRJ_SP1_Field_0 => 0,
      PACRJ_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRJ_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRJ_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRJ_TP0_Field_1)
     with Size => 1;
   for PACRJ_TP0_Field use
     (PACRJ_TP0_Field_0 => 0,
      PACRJ_TP0_Field_1 => 1);

   --  Write Protect
   type PACRJ_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRJ_WP0_Field_0,
      --  This peripheral is write protected.
      PACRJ_WP0_Field_1)
     with Size => 1;
   for PACRJ_WP0_Field use
     (PACRJ_WP0_Field_0 => 0,
      PACRJ_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRJ_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRJ_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRJ_SP0_Field_1)
     with Size => 1;
   for PACRJ_SP0_Field use
     (PACRJ_SP0_Field_0 => 0,
      PACRJ_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRJ_Register is record
      --  Trusted Protect
      TP7            : PACRJ_TP7_Field := NRF_SVD.AIPS0.PACRJ_TP7_Field_0;
      --  Write Protect
      WP7            : PACRJ_WP7_Field := NRF_SVD.AIPS0.PACRJ_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRJ_SP7_Field := NRF_SVD.AIPS0.PACRJ_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRJ_TP6_Field := NRF_SVD.AIPS0.PACRJ_TP6_Field_0;
      --  Write Protect
      WP6            : PACRJ_WP6_Field := NRF_SVD.AIPS0.PACRJ_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRJ_SP6_Field := NRF_SVD.AIPS0.PACRJ_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRJ_TP5_Field := NRF_SVD.AIPS0.PACRJ_TP5_Field_0;
      --  Write Protect
      WP5            : PACRJ_WP5_Field := NRF_SVD.AIPS0.PACRJ_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRJ_SP5_Field := NRF_SVD.AIPS0.PACRJ_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRJ_TP4_Field := NRF_SVD.AIPS0.PACRJ_TP4_Field_0;
      --  Write Protect
      WP4            : PACRJ_WP4_Field := NRF_SVD.AIPS0.PACRJ_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRJ_SP4_Field := NRF_SVD.AIPS0.PACRJ_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRJ_TP3_Field := NRF_SVD.AIPS0.PACRJ_TP3_Field_0;
      --  Write protect
      WP3            : PACRJ_WP3_Field := NRF_SVD.AIPS0.PACRJ_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRJ_SP3_Field := NRF_SVD.AIPS0.PACRJ_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRJ_TP2_Field := NRF_SVD.AIPS0.PACRJ_TP2_Field_0;
      --  Write Protect
      WP2            : PACRJ_WP2_Field := NRF_SVD.AIPS0.PACRJ_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRJ_SP2_Field := NRF_SVD.AIPS0.PACRJ_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRJ_TP1_Field := NRF_SVD.AIPS0.PACRJ_TP1_Field_0;
      --  Write Protect
      WP1            : PACRJ_WP1_Field := NRF_SVD.AIPS0.PACRJ_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRJ_SP1_Field := NRF_SVD.AIPS0.PACRJ_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRJ_TP0_Field := NRF_SVD.AIPS0.PACRJ_TP0_Field_0;
      --  Write Protect
      WP0            : PACRJ_WP0_Field := NRF_SVD.AIPS0.PACRJ_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRJ_SP0_Field := NRF_SVD.AIPS0.PACRJ_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRJ_Register use record
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

   --  Trusted Protect
   type PACRK_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP7_Field_1)
     with Size => 1;
   for PACRK_TP7_Field use
     (PACRK_TP7_Field_0 => 0,
      PACRK_TP7_Field_1 => 1);

   --  Write Protect
   type PACRK_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP7_Field_0,
      --  This peripheral is write protected.
      PACRK_WP7_Field_1)
     with Size => 1;
   for PACRK_WP7_Field use
     (PACRK_WP7_Field_0 => 0,
      PACRK_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRK_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP7_Field_1)
     with Size => 1;
   for PACRK_SP7_Field use
     (PACRK_SP7_Field_0 => 0,
      PACRK_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRK_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP6_Field_1)
     with Size => 1;
   for PACRK_TP6_Field use
     (PACRK_TP6_Field_0 => 0,
      PACRK_TP6_Field_1 => 1);

   --  Write Protect
   type PACRK_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP6_Field_0,
      --  This peripheral is write protected.
      PACRK_WP6_Field_1)
     with Size => 1;
   for PACRK_WP6_Field use
     (PACRK_WP6_Field_0 => 0,
      PACRK_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRK_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP6_Field_1)
     with Size => 1;
   for PACRK_SP6_Field use
     (PACRK_SP6_Field_0 => 0,
      PACRK_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRK_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP5_Field_1)
     with Size => 1;
   for PACRK_TP5_Field use
     (PACRK_TP5_Field_0 => 0,
      PACRK_TP5_Field_1 => 1);

   --  Write Protect
   type PACRK_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP5_Field_0,
      --  This peripheral is write protected.
      PACRK_WP5_Field_1)
     with Size => 1;
   for PACRK_WP5_Field use
     (PACRK_WP5_Field_0 => 0,
      PACRK_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRK_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP5_Field_1)
     with Size => 1;
   for PACRK_SP5_Field use
     (PACRK_SP5_Field_0 => 0,
      PACRK_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRK_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP4_Field_1)
     with Size => 1;
   for PACRK_TP4_Field use
     (PACRK_TP4_Field_0 => 0,
      PACRK_TP4_Field_1 => 1);

   --  Write Protect
   type PACRK_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP4_Field_0,
      --  This peripheral is write protected.
      PACRK_WP4_Field_1)
     with Size => 1;
   for PACRK_WP4_Field use
     (PACRK_WP4_Field_0 => 0,
      PACRK_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRK_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP4_Field_1)
     with Size => 1;
   for PACRK_SP4_Field use
     (PACRK_SP4_Field_0 => 0,
      PACRK_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRK_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP3_Field_1)
     with Size => 1;
   for PACRK_TP3_Field use
     (PACRK_TP3_Field_0 => 0,
      PACRK_TP3_Field_1 => 1);

   --  Write protect
   type PACRK_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP3_Field_0,
      --  This peripheral is write protected.
      PACRK_WP3_Field_1)
     with Size => 1;
   for PACRK_WP3_Field use
     (PACRK_WP3_Field_0 => 0,
      PACRK_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRK_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP3_Field_1)
     with Size => 1;
   for PACRK_SP3_Field use
     (PACRK_SP3_Field_0 => 0,
      PACRK_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRK_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP2_Field_1)
     with Size => 1;
   for PACRK_TP2_Field use
     (PACRK_TP2_Field_0 => 0,
      PACRK_TP2_Field_1 => 1);

   --  Write Protect
   type PACRK_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP2_Field_0,
      --  This peripheral is write protected.
      PACRK_WP2_Field_1)
     with Size => 1;
   for PACRK_WP2_Field use
     (PACRK_WP2_Field_0 => 0,
      PACRK_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRK_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP2_Field_1)
     with Size => 1;
   for PACRK_SP2_Field use
     (PACRK_SP2_Field_0 => 0,
      PACRK_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRK_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP1_Field_1)
     with Size => 1;
   for PACRK_TP1_Field use
     (PACRK_TP1_Field_0 => 0,
      PACRK_TP1_Field_1 => 1);

   --  Write Protect
   type PACRK_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP1_Field_0,
      --  This peripheral is write protected.
      PACRK_WP1_Field_1)
     with Size => 1;
   for PACRK_WP1_Field use
     (PACRK_WP1_Field_0 => 0,
      PACRK_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRK_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP1_Field_1)
     with Size => 1;
   for PACRK_SP1_Field use
     (PACRK_SP1_Field_0 => 0,
      PACRK_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRK_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRK_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRK_TP0_Field_1)
     with Size => 1;
   for PACRK_TP0_Field use
     (PACRK_TP0_Field_0 => 0,
      PACRK_TP0_Field_1 => 1);

   --  Write Protect
   type PACRK_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRK_WP0_Field_0,
      --  This peripheral is write protected.
      PACRK_WP0_Field_1)
     with Size => 1;
   for PACRK_WP0_Field use
     (PACRK_WP0_Field_0 => 0,
      PACRK_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRK_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRK_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRK_SP0_Field_1)
     with Size => 1;
   for PACRK_SP0_Field use
     (PACRK_SP0_Field_0 => 0,
      PACRK_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRK_Register is record
      --  Trusted Protect
      TP7            : PACRK_TP7_Field := NRF_SVD.AIPS0.PACRK_TP7_Field_0;
      --  Write Protect
      WP7            : PACRK_WP7_Field := NRF_SVD.AIPS0.PACRK_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRK_SP7_Field := NRF_SVD.AIPS0.PACRK_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRK_TP6_Field := NRF_SVD.AIPS0.PACRK_TP6_Field_0;
      --  Write Protect
      WP6            : PACRK_WP6_Field := NRF_SVD.AIPS0.PACRK_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRK_SP6_Field := NRF_SVD.AIPS0.PACRK_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRK_TP5_Field := NRF_SVD.AIPS0.PACRK_TP5_Field_0;
      --  Write Protect
      WP5            : PACRK_WP5_Field := NRF_SVD.AIPS0.PACRK_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRK_SP5_Field := NRF_SVD.AIPS0.PACRK_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRK_TP4_Field := NRF_SVD.AIPS0.PACRK_TP4_Field_0;
      --  Write Protect
      WP4            : PACRK_WP4_Field := NRF_SVD.AIPS0.PACRK_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRK_SP4_Field := NRF_SVD.AIPS0.PACRK_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRK_TP3_Field := NRF_SVD.AIPS0.PACRK_TP3_Field_0;
      --  Write protect
      WP3            : PACRK_WP3_Field := NRF_SVD.AIPS0.PACRK_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRK_SP3_Field := NRF_SVD.AIPS0.PACRK_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRK_TP2_Field := NRF_SVD.AIPS0.PACRK_TP2_Field_0;
      --  Write Protect
      WP2            : PACRK_WP2_Field := NRF_SVD.AIPS0.PACRK_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRK_SP2_Field := NRF_SVD.AIPS0.PACRK_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRK_TP1_Field := NRF_SVD.AIPS0.PACRK_TP1_Field_0;
      --  Write Protect
      WP1            : PACRK_WP1_Field := NRF_SVD.AIPS0.PACRK_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRK_SP1_Field := NRF_SVD.AIPS0.PACRK_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRK_TP0_Field := NRF_SVD.AIPS0.PACRK_TP0_Field_0;
      --  Write Protect
      WP0            : PACRK_WP0_Field := NRF_SVD.AIPS0.PACRK_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRK_SP0_Field := NRF_SVD.AIPS0.PACRK_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRK_Register use record
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

   --  Trusted Protect
   type PACRL_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP7_Field_1)
     with Size => 1;
   for PACRL_TP7_Field use
     (PACRL_TP7_Field_0 => 0,
      PACRL_TP7_Field_1 => 1);

   --  Write Protect
   type PACRL_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP7_Field_0,
      --  This peripheral is write protected.
      PACRL_WP7_Field_1)
     with Size => 1;
   for PACRL_WP7_Field use
     (PACRL_WP7_Field_0 => 0,
      PACRL_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRL_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP7_Field_1)
     with Size => 1;
   for PACRL_SP7_Field use
     (PACRL_SP7_Field_0 => 0,
      PACRL_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRL_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP6_Field_1)
     with Size => 1;
   for PACRL_TP6_Field use
     (PACRL_TP6_Field_0 => 0,
      PACRL_TP6_Field_1 => 1);

   --  Write Protect
   type PACRL_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP6_Field_0,
      --  This peripheral is write protected.
      PACRL_WP6_Field_1)
     with Size => 1;
   for PACRL_WP6_Field use
     (PACRL_WP6_Field_0 => 0,
      PACRL_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRL_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP6_Field_1)
     with Size => 1;
   for PACRL_SP6_Field use
     (PACRL_SP6_Field_0 => 0,
      PACRL_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRL_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP5_Field_1)
     with Size => 1;
   for PACRL_TP5_Field use
     (PACRL_TP5_Field_0 => 0,
      PACRL_TP5_Field_1 => 1);

   --  Write Protect
   type PACRL_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP5_Field_0,
      --  This peripheral is write protected.
      PACRL_WP5_Field_1)
     with Size => 1;
   for PACRL_WP5_Field use
     (PACRL_WP5_Field_0 => 0,
      PACRL_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRL_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP5_Field_1)
     with Size => 1;
   for PACRL_SP5_Field use
     (PACRL_SP5_Field_0 => 0,
      PACRL_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRL_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP4_Field_1)
     with Size => 1;
   for PACRL_TP4_Field use
     (PACRL_TP4_Field_0 => 0,
      PACRL_TP4_Field_1 => 1);

   --  Write Protect
   type PACRL_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP4_Field_0,
      --  This peripheral is write protected.
      PACRL_WP4_Field_1)
     with Size => 1;
   for PACRL_WP4_Field use
     (PACRL_WP4_Field_0 => 0,
      PACRL_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRL_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP4_Field_1)
     with Size => 1;
   for PACRL_SP4_Field use
     (PACRL_SP4_Field_0 => 0,
      PACRL_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRL_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP3_Field_1)
     with Size => 1;
   for PACRL_TP3_Field use
     (PACRL_TP3_Field_0 => 0,
      PACRL_TP3_Field_1 => 1);

   --  Write protect
   type PACRL_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP3_Field_0,
      --  This peripheral is write protected.
      PACRL_WP3_Field_1)
     with Size => 1;
   for PACRL_WP3_Field use
     (PACRL_WP3_Field_0 => 0,
      PACRL_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRL_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP3_Field_1)
     with Size => 1;
   for PACRL_SP3_Field use
     (PACRL_SP3_Field_0 => 0,
      PACRL_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRL_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP2_Field_1)
     with Size => 1;
   for PACRL_TP2_Field use
     (PACRL_TP2_Field_0 => 0,
      PACRL_TP2_Field_1 => 1);

   --  Write Protect
   type PACRL_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP2_Field_0,
      --  This peripheral is write protected.
      PACRL_WP2_Field_1)
     with Size => 1;
   for PACRL_WP2_Field use
     (PACRL_WP2_Field_0 => 0,
      PACRL_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRL_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP2_Field_1)
     with Size => 1;
   for PACRL_SP2_Field use
     (PACRL_SP2_Field_0 => 0,
      PACRL_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRL_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP1_Field_1)
     with Size => 1;
   for PACRL_TP1_Field use
     (PACRL_TP1_Field_0 => 0,
      PACRL_TP1_Field_1 => 1);

   --  Write Protect
   type PACRL_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP1_Field_0,
      --  This peripheral is write protected.
      PACRL_WP1_Field_1)
     with Size => 1;
   for PACRL_WP1_Field use
     (PACRL_WP1_Field_0 => 0,
      PACRL_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRL_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP1_Field_1)
     with Size => 1;
   for PACRL_SP1_Field use
     (PACRL_SP1_Field_0 => 0,
      PACRL_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRL_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRL_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRL_TP0_Field_1)
     with Size => 1;
   for PACRL_TP0_Field use
     (PACRL_TP0_Field_0 => 0,
      PACRL_TP0_Field_1 => 1);

   --  Write Protect
   type PACRL_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRL_WP0_Field_0,
      --  This peripheral is write protected.
      PACRL_WP0_Field_1)
     with Size => 1;
   for PACRL_WP0_Field use
     (PACRL_WP0_Field_0 => 0,
      PACRL_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRL_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRL_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRL_SP0_Field_1)
     with Size => 1;
   for PACRL_SP0_Field use
     (PACRL_SP0_Field_0 => 0,
      PACRL_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRL_Register is record
      --  Trusted Protect
      TP7            : PACRL_TP7_Field := NRF_SVD.AIPS0.PACRL_TP7_Field_0;
      --  Write Protect
      WP7            : PACRL_WP7_Field := NRF_SVD.AIPS0.PACRL_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRL_SP7_Field := NRF_SVD.AIPS0.PACRL_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRL_TP6_Field := NRF_SVD.AIPS0.PACRL_TP6_Field_0;
      --  Write Protect
      WP6            : PACRL_WP6_Field := NRF_SVD.AIPS0.PACRL_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRL_SP6_Field := NRF_SVD.AIPS0.PACRL_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRL_TP5_Field := NRF_SVD.AIPS0.PACRL_TP5_Field_0;
      --  Write Protect
      WP5            : PACRL_WP5_Field := NRF_SVD.AIPS0.PACRL_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRL_SP5_Field := NRF_SVD.AIPS0.PACRL_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRL_TP4_Field := NRF_SVD.AIPS0.PACRL_TP4_Field_0;
      --  Write Protect
      WP4            : PACRL_WP4_Field := NRF_SVD.AIPS0.PACRL_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRL_SP4_Field := NRF_SVD.AIPS0.PACRL_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRL_TP3_Field := NRF_SVD.AIPS0.PACRL_TP3_Field_0;
      --  Write protect
      WP3            : PACRL_WP3_Field := NRF_SVD.AIPS0.PACRL_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRL_SP3_Field := NRF_SVD.AIPS0.PACRL_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRL_TP2_Field := NRF_SVD.AIPS0.PACRL_TP2_Field_0;
      --  Write Protect
      WP2            : PACRL_WP2_Field := NRF_SVD.AIPS0.PACRL_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRL_SP2_Field := NRF_SVD.AIPS0.PACRL_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRL_TP1_Field := NRF_SVD.AIPS0.PACRL_TP1_Field_0;
      --  Write Protect
      WP1            : PACRL_WP1_Field := NRF_SVD.AIPS0.PACRL_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRL_SP1_Field := NRF_SVD.AIPS0.PACRL_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRL_TP0_Field := NRF_SVD.AIPS0.PACRL_TP0_Field_0;
      --  Write Protect
      WP0            : PACRL_WP0_Field := NRF_SVD.AIPS0.PACRL_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRL_SP0_Field := NRF_SVD.AIPS0.PACRL_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRL_Register use record
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

   --  Trusted Protect
   type PACRM_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP7_Field_1)
     with Size => 1;
   for PACRM_TP7_Field use
     (PACRM_TP7_Field_0 => 0,
      PACRM_TP7_Field_1 => 1);

   --  Write Protect
   type PACRM_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP7_Field_0,
      --  This peripheral is write protected.
      PACRM_WP7_Field_1)
     with Size => 1;
   for PACRM_WP7_Field use
     (PACRM_WP7_Field_0 => 0,
      PACRM_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRM_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP7_Field_1)
     with Size => 1;
   for PACRM_SP7_Field use
     (PACRM_SP7_Field_0 => 0,
      PACRM_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRM_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP6_Field_1)
     with Size => 1;
   for PACRM_TP6_Field use
     (PACRM_TP6_Field_0 => 0,
      PACRM_TP6_Field_1 => 1);

   --  Write Protect
   type PACRM_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP6_Field_0,
      --  This peripheral is write protected.
      PACRM_WP6_Field_1)
     with Size => 1;
   for PACRM_WP6_Field use
     (PACRM_WP6_Field_0 => 0,
      PACRM_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRM_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP6_Field_1)
     with Size => 1;
   for PACRM_SP6_Field use
     (PACRM_SP6_Field_0 => 0,
      PACRM_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRM_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP5_Field_1)
     with Size => 1;
   for PACRM_TP5_Field use
     (PACRM_TP5_Field_0 => 0,
      PACRM_TP5_Field_1 => 1);

   --  Write Protect
   type PACRM_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP5_Field_0,
      --  This peripheral is write protected.
      PACRM_WP5_Field_1)
     with Size => 1;
   for PACRM_WP5_Field use
     (PACRM_WP5_Field_0 => 0,
      PACRM_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRM_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP5_Field_1)
     with Size => 1;
   for PACRM_SP5_Field use
     (PACRM_SP5_Field_0 => 0,
      PACRM_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRM_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP4_Field_1)
     with Size => 1;
   for PACRM_TP4_Field use
     (PACRM_TP4_Field_0 => 0,
      PACRM_TP4_Field_1 => 1);

   --  Write Protect
   type PACRM_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP4_Field_0,
      --  This peripheral is write protected.
      PACRM_WP4_Field_1)
     with Size => 1;
   for PACRM_WP4_Field use
     (PACRM_WP4_Field_0 => 0,
      PACRM_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRM_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP4_Field_1)
     with Size => 1;
   for PACRM_SP4_Field use
     (PACRM_SP4_Field_0 => 0,
      PACRM_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRM_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP3_Field_1)
     with Size => 1;
   for PACRM_TP3_Field use
     (PACRM_TP3_Field_0 => 0,
      PACRM_TP3_Field_1 => 1);

   --  Write protect
   type PACRM_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP3_Field_0,
      --  This peripheral is write protected.
      PACRM_WP3_Field_1)
     with Size => 1;
   for PACRM_WP3_Field use
     (PACRM_WP3_Field_0 => 0,
      PACRM_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRM_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP3_Field_1)
     with Size => 1;
   for PACRM_SP3_Field use
     (PACRM_SP3_Field_0 => 0,
      PACRM_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRM_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP2_Field_1)
     with Size => 1;
   for PACRM_TP2_Field use
     (PACRM_TP2_Field_0 => 0,
      PACRM_TP2_Field_1 => 1);

   --  Write Protect
   type PACRM_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP2_Field_0,
      --  This peripheral is write protected.
      PACRM_WP2_Field_1)
     with Size => 1;
   for PACRM_WP2_Field use
     (PACRM_WP2_Field_0 => 0,
      PACRM_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRM_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP2_Field_1)
     with Size => 1;
   for PACRM_SP2_Field use
     (PACRM_SP2_Field_0 => 0,
      PACRM_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRM_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP1_Field_1)
     with Size => 1;
   for PACRM_TP1_Field use
     (PACRM_TP1_Field_0 => 0,
      PACRM_TP1_Field_1 => 1);

   --  Write Protect
   type PACRM_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP1_Field_0,
      --  This peripheral is write protected.
      PACRM_WP1_Field_1)
     with Size => 1;
   for PACRM_WP1_Field use
     (PACRM_WP1_Field_0 => 0,
      PACRM_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRM_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP1_Field_1)
     with Size => 1;
   for PACRM_SP1_Field use
     (PACRM_SP1_Field_0 => 0,
      PACRM_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRM_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRM_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRM_TP0_Field_1)
     with Size => 1;
   for PACRM_TP0_Field use
     (PACRM_TP0_Field_0 => 0,
      PACRM_TP0_Field_1 => 1);

   --  Write Protect
   type PACRM_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRM_WP0_Field_0,
      --  This peripheral is write protected.
      PACRM_WP0_Field_1)
     with Size => 1;
   for PACRM_WP0_Field use
     (PACRM_WP0_Field_0 => 0,
      PACRM_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRM_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRM_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRM_SP0_Field_1)
     with Size => 1;
   for PACRM_SP0_Field use
     (PACRM_SP0_Field_0 => 0,
      PACRM_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRM_Register is record
      --  Trusted Protect
      TP7            : PACRM_TP7_Field := NRF_SVD.AIPS0.PACRM_TP7_Field_0;
      --  Write Protect
      WP7            : PACRM_WP7_Field := NRF_SVD.AIPS0.PACRM_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRM_SP7_Field := NRF_SVD.AIPS0.PACRM_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRM_TP6_Field := NRF_SVD.AIPS0.PACRM_TP6_Field_0;
      --  Write Protect
      WP6            : PACRM_WP6_Field := NRF_SVD.AIPS0.PACRM_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRM_SP6_Field := NRF_SVD.AIPS0.PACRM_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRM_TP5_Field := NRF_SVD.AIPS0.PACRM_TP5_Field_0;
      --  Write Protect
      WP5            : PACRM_WP5_Field := NRF_SVD.AIPS0.PACRM_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRM_SP5_Field := NRF_SVD.AIPS0.PACRM_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRM_TP4_Field := NRF_SVD.AIPS0.PACRM_TP4_Field_0;
      --  Write Protect
      WP4            : PACRM_WP4_Field := NRF_SVD.AIPS0.PACRM_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRM_SP4_Field := NRF_SVD.AIPS0.PACRM_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRM_TP3_Field := NRF_SVD.AIPS0.PACRM_TP3_Field_0;
      --  Write protect
      WP3            : PACRM_WP3_Field := NRF_SVD.AIPS0.PACRM_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRM_SP3_Field := NRF_SVD.AIPS0.PACRM_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRM_TP2_Field := NRF_SVD.AIPS0.PACRM_TP2_Field_0;
      --  Write Protect
      WP2            : PACRM_WP2_Field := NRF_SVD.AIPS0.PACRM_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRM_SP2_Field := NRF_SVD.AIPS0.PACRM_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRM_TP1_Field := NRF_SVD.AIPS0.PACRM_TP1_Field_0;
      --  Write Protect
      WP1            : PACRM_WP1_Field := NRF_SVD.AIPS0.PACRM_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRM_SP1_Field := NRF_SVD.AIPS0.PACRM_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRM_TP0_Field := NRF_SVD.AIPS0.PACRM_TP0_Field_0;
      --  Write Protect
      WP0            : PACRM_WP0_Field := NRF_SVD.AIPS0.PACRM_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRM_SP0_Field := NRF_SVD.AIPS0.PACRM_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRM_Register use record
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

   --  Trusted Protect
   type PACRN_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP7_Field_1)
     with Size => 1;
   for PACRN_TP7_Field use
     (PACRN_TP7_Field_0 => 0,
      PACRN_TP7_Field_1 => 1);

   --  Write Protect
   type PACRN_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP7_Field_0,
      --  This peripheral is write protected.
      PACRN_WP7_Field_1)
     with Size => 1;
   for PACRN_WP7_Field use
     (PACRN_WP7_Field_0 => 0,
      PACRN_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRN_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP7_Field_1)
     with Size => 1;
   for PACRN_SP7_Field use
     (PACRN_SP7_Field_0 => 0,
      PACRN_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRN_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP6_Field_1)
     with Size => 1;
   for PACRN_TP6_Field use
     (PACRN_TP6_Field_0 => 0,
      PACRN_TP6_Field_1 => 1);

   --  Write Protect
   type PACRN_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP6_Field_0,
      --  This peripheral is write protected.
      PACRN_WP6_Field_1)
     with Size => 1;
   for PACRN_WP6_Field use
     (PACRN_WP6_Field_0 => 0,
      PACRN_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRN_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP6_Field_1)
     with Size => 1;
   for PACRN_SP6_Field use
     (PACRN_SP6_Field_0 => 0,
      PACRN_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRN_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP5_Field_1)
     with Size => 1;
   for PACRN_TP5_Field use
     (PACRN_TP5_Field_0 => 0,
      PACRN_TP5_Field_1 => 1);

   --  Write Protect
   type PACRN_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP5_Field_0,
      --  This peripheral is write protected.
      PACRN_WP5_Field_1)
     with Size => 1;
   for PACRN_WP5_Field use
     (PACRN_WP5_Field_0 => 0,
      PACRN_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRN_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP5_Field_1)
     with Size => 1;
   for PACRN_SP5_Field use
     (PACRN_SP5_Field_0 => 0,
      PACRN_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRN_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP4_Field_1)
     with Size => 1;
   for PACRN_TP4_Field use
     (PACRN_TP4_Field_0 => 0,
      PACRN_TP4_Field_1 => 1);

   --  Write Protect
   type PACRN_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP4_Field_0,
      --  This peripheral is write protected.
      PACRN_WP4_Field_1)
     with Size => 1;
   for PACRN_WP4_Field use
     (PACRN_WP4_Field_0 => 0,
      PACRN_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRN_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP4_Field_1)
     with Size => 1;
   for PACRN_SP4_Field use
     (PACRN_SP4_Field_0 => 0,
      PACRN_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRN_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP3_Field_1)
     with Size => 1;
   for PACRN_TP3_Field use
     (PACRN_TP3_Field_0 => 0,
      PACRN_TP3_Field_1 => 1);

   --  Write protect
   type PACRN_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP3_Field_0,
      --  This peripheral is write protected.
      PACRN_WP3_Field_1)
     with Size => 1;
   for PACRN_WP3_Field use
     (PACRN_WP3_Field_0 => 0,
      PACRN_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRN_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP3_Field_1)
     with Size => 1;
   for PACRN_SP3_Field use
     (PACRN_SP3_Field_0 => 0,
      PACRN_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRN_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP2_Field_1)
     with Size => 1;
   for PACRN_TP2_Field use
     (PACRN_TP2_Field_0 => 0,
      PACRN_TP2_Field_1 => 1);

   --  Write Protect
   type PACRN_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP2_Field_0,
      --  This peripheral is write protected.
      PACRN_WP2_Field_1)
     with Size => 1;
   for PACRN_WP2_Field use
     (PACRN_WP2_Field_0 => 0,
      PACRN_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRN_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP2_Field_1)
     with Size => 1;
   for PACRN_SP2_Field use
     (PACRN_SP2_Field_0 => 0,
      PACRN_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRN_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP1_Field_1)
     with Size => 1;
   for PACRN_TP1_Field use
     (PACRN_TP1_Field_0 => 0,
      PACRN_TP1_Field_1 => 1);

   --  Write Protect
   type PACRN_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP1_Field_0,
      --  This peripheral is write protected.
      PACRN_WP1_Field_1)
     with Size => 1;
   for PACRN_WP1_Field use
     (PACRN_WP1_Field_0 => 0,
      PACRN_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRN_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP1_Field_1)
     with Size => 1;
   for PACRN_SP1_Field use
     (PACRN_SP1_Field_0 => 0,
      PACRN_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRN_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRN_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRN_TP0_Field_1)
     with Size => 1;
   for PACRN_TP0_Field use
     (PACRN_TP0_Field_0 => 0,
      PACRN_TP0_Field_1 => 1);

   --  Write Protect
   type PACRN_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRN_WP0_Field_0,
      --  This peripheral is write protected.
      PACRN_WP0_Field_1)
     with Size => 1;
   for PACRN_WP0_Field use
     (PACRN_WP0_Field_0 => 0,
      PACRN_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRN_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRN_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRN_SP0_Field_1)
     with Size => 1;
   for PACRN_SP0_Field use
     (PACRN_SP0_Field_0 => 0,
      PACRN_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRN_Register is record
      --  Trusted Protect
      TP7            : PACRN_TP7_Field := NRF_SVD.AIPS0.PACRN_TP7_Field_0;
      --  Write Protect
      WP7            : PACRN_WP7_Field := NRF_SVD.AIPS0.PACRN_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRN_SP7_Field := NRF_SVD.AIPS0.PACRN_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRN_TP6_Field := NRF_SVD.AIPS0.PACRN_TP6_Field_0;
      --  Write Protect
      WP6            : PACRN_WP6_Field := NRF_SVD.AIPS0.PACRN_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRN_SP6_Field := NRF_SVD.AIPS0.PACRN_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRN_TP5_Field := NRF_SVD.AIPS0.PACRN_TP5_Field_0;
      --  Write Protect
      WP5            : PACRN_WP5_Field := NRF_SVD.AIPS0.PACRN_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRN_SP5_Field := NRF_SVD.AIPS0.PACRN_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRN_TP4_Field := NRF_SVD.AIPS0.PACRN_TP4_Field_0;
      --  Write Protect
      WP4            : PACRN_WP4_Field := NRF_SVD.AIPS0.PACRN_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRN_SP4_Field := NRF_SVD.AIPS0.PACRN_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRN_TP3_Field := NRF_SVD.AIPS0.PACRN_TP3_Field_0;
      --  Write protect
      WP3            : PACRN_WP3_Field := NRF_SVD.AIPS0.PACRN_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRN_SP3_Field := NRF_SVD.AIPS0.PACRN_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRN_TP2_Field := NRF_SVD.AIPS0.PACRN_TP2_Field_0;
      --  Write Protect
      WP2            : PACRN_WP2_Field := NRF_SVD.AIPS0.PACRN_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRN_SP2_Field := NRF_SVD.AIPS0.PACRN_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRN_TP1_Field := NRF_SVD.AIPS0.PACRN_TP1_Field_0;
      --  Write Protect
      WP1            : PACRN_WP1_Field := NRF_SVD.AIPS0.PACRN_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRN_SP1_Field := NRF_SVD.AIPS0.PACRN_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRN_TP0_Field := NRF_SVD.AIPS0.PACRN_TP0_Field_0;
      --  Write Protect
      WP0            : PACRN_WP0_Field := NRF_SVD.AIPS0.PACRN_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRN_SP0_Field := NRF_SVD.AIPS0.PACRN_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRN_Register use record
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

   --  Trusted Protect
   type PACRO_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP7_Field_1)
     with Size => 1;
   for PACRO_TP7_Field use
     (PACRO_TP7_Field_0 => 0,
      PACRO_TP7_Field_1 => 1);

   --  Write Protect
   type PACRO_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP7_Field_0,
      --  This peripheral is write protected.
      PACRO_WP7_Field_1)
     with Size => 1;
   for PACRO_WP7_Field use
     (PACRO_WP7_Field_0 => 0,
      PACRO_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRO_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP7_Field_1)
     with Size => 1;
   for PACRO_SP7_Field use
     (PACRO_SP7_Field_0 => 0,
      PACRO_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRO_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP6_Field_1)
     with Size => 1;
   for PACRO_TP6_Field use
     (PACRO_TP6_Field_0 => 0,
      PACRO_TP6_Field_1 => 1);

   --  Write Protect
   type PACRO_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP6_Field_0,
      --  This peripheral is write protected.
      PACRO_WP6_Field_1)
     with Size => 1;
   for PACRO_WP6_Field use
     (PACRO_WP6_Field_0 => 0,
      PACRO_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRO_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP6_Field_1)
     with Size => 1;
   for PACRO_SP6_Field use
     (PACRO_SP6_Field_0 => 0,
      PACRO_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRO_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP5_Field_1)
     with Size => 1;
   for PACRO_TP5_Field use
     (PACRO_TP5_Field_0 => 0,
      PACRO_TP5_Field_1 => 1);

   --  Write Protect
   type PACRO_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP5_Field_0,
      --  This peripheral is write protected.
      PACRO_WP5_Field_1)
     with Size => 1;
   for PACRO_WP5_Field use
     (PACRO_WP5_Field_0 => 0,
      PACRO_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRO_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP5_Field_1)
     with Size => 1;
   for PACRO_SP5_Field use
     (PACRO_SP5_Field_0 => 0,
      PACRO_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRO_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP4_Field_1)
     with Size => 1;
   for PACRO_TP4_Field use
     (PACRO_TP4_Field_0 => 0,
      PACRO_TP4_Field_1 => 1);

   --  Write Protect
   type PACRO_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP4_Field_0,
      --  This peripheral is write protected.
      PACRO_WP4_Field_1)
     with Size => 1;
   for PACRO_WP4_Field use
     (PACRO_WP4_Field_0 => 0,
      PACRO_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRO_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP4_Field_1)
     with Size => 1;
   for PACRO_SP4_Field use
     (PACRO_SP4_Field_0 => 0,
      PACRO_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRO_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP3_Field_1)
     with Size => 1;
   for PACRO_TP3_Field use
     (PACRO_TP3_Field_0 => 0,
      PACRO_TP3_Field_1 => 1);

   --  Write protect
   type PACRO_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP3_Field_0,
      --  This peripheral is write protected.
      PACRO_WP3_Field_1)
     with Size => 1;
   for PACRO_WP3_Field use
     (PACRO_WP3_Field_0 => 0,
      PACRO_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRO_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP3_Field_1)
     with Size => 1;
   for PACRO_SP3_Field use
     (PACRO_SP3_Field_0 => 0,
      PACRO_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRO_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP2_Field_1)
     with Size => 1;
   for PACRO_TP2_Field use
     (PACRO_TP2_Field_0 => 0,
      PACRO_TP2_Field_1 => 1);

   --  Write Protect
   type PACRO_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP2_Field_0,
      --  This peripheral is write protected.
      PACRO_WP2_Field_1)
     with Size => 1;
   for PACRO_WP2_Field use
     (PACRO_WP2_Field_0 => 0,
      PACRO_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRO_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP2_Field_1)
     with Size => 1;
   for PACRO_SP2_Field use
     (PACRO_SP2_Field_0 => 0,
      PACRO_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRO_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP1_Field_1)
     with Size => 1;
   for PACRO_TP1_Field use
     (PACRO_TP1_Field_0 => 0,
      PACRO_TP1_Field_1 => 1);

   --  Write Protect
   type PACRO_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP1_Field_0,
      --  This peripheral is write protected.
      PACRO_WP1_Field_1)
     with Size => 1;
   for PACRO_WP1_Field use
     (PACRO_WP1_Field_0 => 0,
      PACRO_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRO_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP1_Field_1)
     with Size => 1;
   for PACRO_SP1_Field use
     (PACRO_SP1_Field_0 => 0,
      PACRO_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRO_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRO_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRO_TP0_Field_1)
     with Size => 1;
   for PACRO_TP0_Field use
     (PACRO_TP0_Field_0 => 0,
      PACRO_TP0_Field_1 => 1);

   --  Write Protect
   type PACRO_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRO_WP0_Field_0,
      --  This peripheral is write protected.
      PACRO_WP0_Field_1)
     with Size => 1;
   for PACRO_WP0_Field use
     (PACRO_WP0_Field_0 => 0,
      PACRO_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRO_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRO_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRO_SP0_Field_1)
     with Size => 1;
   for PACRO_SP0_Field use
     (PACRO_SP0_Field_0 => 0,
      PACRO_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRO_Register is record
      --  Trusted Protect
      TP7            : PACRO_TP7_Field := NRF_SVD.AIPS0.PACRO_TP7_Field_0;
      --  Write Protect
      WP7            : PACRO_WP7_Field := NRF_SVD.AIPS0.PACRO_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRO_SP7_Field := NRF_SVD.AIPS0.PACRO_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRO_TP6_Field := NRF_SVD.AIPS0.PACRO_TP6_Field_0;
      --  Write Protect
      WP6            : PACRO_WP6_Field := NRF_SVD.AIPS0.PACRO_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRO_SP6_Field := NRF_SVD.AIPS0.PACRO_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRO_TP5_Field := NRF_SVD.AIPS0.PACRO_TP5_Field_0;
      --  Write Protect
      WP5            : PACRO_WP5_Field := NRF_SVD.AIPS0.PACRO_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRO_SP5_Field := NRF_SVD.AIPS0.PACRO_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRO_TP4_Field := NRF_SVD.AIPS0.PACRO_TP4_Field_0;
      --  Write Protect
      WP4            : PACRO_WP4_Field := NRF_SVD.AIPS0.PACRO_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRO_SP4_Field := NRF_SVD.AIPS0.PACRO_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRO_TP3_Field := NRF_SVD.AIPS0.PACRO_TP3_Field_0;
      --  Write protect
      WP3            : PACRO_WP3_Field := NRF_SVD.AIPS0.PACRO_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRO_SP3_Field := NRF_SVD.AIPS0.PACRO_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRO_TP2_Field := NRF_SVD.AIPS0.PACRO_TP2_Field_0;
      --  Write Protect
      WP2            : PACRO_WP2_Field := NRF_SVD.AIPS0.PACRO_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRO_SP2_Field := NRF_SVD.AIPS0.PACRO_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRO_TP1_Field := NRF_SVD.AIPS0.PACRO_TP1_Field_0;
      --  Write Protect
      WP1            : PACRO_WP1_Field := NRF_SVD.AIPS0.PACRO_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRO_SP1_Field := NRF_SVD.AIPS0.PACRO_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRO_TP0_Field := NRF_SVD.AIPS0.PACRO_TP0_Field_0;
      --  Write Protect
      WP0            : PACRO_WP0_Field := NRF_SVD.AIPS0.PACRO_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRO_SP0_Field := NRF_SVD.AIPS0.PACRO_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRO_Register use record
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

   --  Trusted Protect
   type PACRP_TP7_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP7_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP7_Field_1)
     with Size => 1;
   for PACRP_TP7_Field use
     (PACRP_TP7_Field_0 => 0,
      PACRP_TP7_Field_1 => 1);

   --  Write Protect
   type PACRP_WP7_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP7_Field_0,
      --  This peripheral is write protected.
      PACRP_WP7_Field_1)
     with Size => 1;
   for PACRP_WP7_Field use
     (PACRP_WP7_Field_0 => 0,
      PACRP_WP7_Field_1 => 1);

   --  Supervisor Protect
   type PACRP_SP7_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP7_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP7_Field_1)
     with Size => 1;
   for PACRP_SP7_Field use
     (PACRP_SP7_Field_0 => 0,
      PACRP_SP7_Field_1 => 1);

   --  Trusted Protect
   type PACRP_TP6_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP6_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP6_Field_1)
     with Size => 1;
   for PACRP_TP6_Field use
     (PACRP_TP6_Field_0 => 0,
      PACRP_TP6_Field_1 => 1);

   --  Write Protect
   type PACRP_WP6_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP6_Field_0,
      --  This peripheral is write protected.
      PACRP_WP6_Field_1)
     with Size => 1;
   for PACRP_WP6_Field use
     (PACRP_WP6_Field_0 => 0,
      PACRP_WP6_Field_1 => 1);

   --  Supervisor Protect
   type PACRP_SP6_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP6_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP6_Field_1)
     with Size => 1;
   for PACRP_SP6_Field use
     (PACRP_SP6_Field_0 => 0,
      PACRP_SP6_Field_1 => 1);

   --  Trusted Protect
   type PACRP_TP5_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP5_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP5_Field_1)
     with Size => 1;
   for PACRP_TP5_Field use
     (PACRP_TP5_Field_0 => 0,
      PACRP_TP5_Field_1 => 1);

   --  Write Protect
   type PACRP_WP5_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP5_Field_0,
      --  This peripheral is write protected.
      PACRP_WP5_Field_1)
     with Size => 1;
   for PACRP_WP5_Field use
     (PACRP_WP5_Field_0 => 0,
      PACRP_WP5_Field_1 => 1);

   --  Supervisor Protect
   type PACRP_SP5_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP5_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP5_Field_1)
     with Size => 1;
   for PACRP_SP5_Field use
     (PACRP_SP5_Field_0 => 0,
      PACRP_SP5_Field_1 => 1);

   --  Trusted protect
   type PACRP_TP4_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP4_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP4_Field_1)
     with Size => 1;
   for PACRP_TP4_Field use
     (PACRP_TP4_Field_0 => 0,
      PACRP_TP4_Field_1 => 1);

   --  Write Protect
   type PACRP_WP4_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP4_Field_0,
      --  This peripheral is write protected.
      PACRP_WP4_Field_1)
     with Size => 1;
   for PACRP_WP4_Field use
     (PACRP_WP4_Field_0 => 0,
      PACRP_WP4_Field_1 => 1);

   --  Supervisor protect
   type PACRP_SP4_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP4_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP4_Field_1)
     with Size => 1;
   for PACRP_SP4_Field use
     (PACRP_SP4_Field_0 => 0,
      PACRP_SP4_Field_1 => 1);

   --  Trusted Protect
   type PACRP_TP3_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP3_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP3_Field_1)
     with Size => 1;
   for PACRP_TP3_Field use
     (PACRP_TP3_Field_0 => 0,
      PACRP_TP3_Field_1 => 1);

   --  Write protect
   type PACRP_WP3_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP3_Field_0,
      --  This peripheral is write protected.
      PACRP_WP3_Field_1)
     with Size => 1;
   for PACRP_WP3_Field use
     (PACRP_WP3_Field_0 => 0,
      PACRP_WP3_Field_1 => 1);

   --  Supervisor Protect
   type PACRP_SP3_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP3_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP3_Field_1)
     with Size => 1;
   for PACRP_SP3_Field use
     (PACRP_SP3_Field_0 => 0,
      PACRP_SP3_Field_1 => 1);

   --  Trusted protect
   type PACRP_TP2_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP2_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP2_Field_1)
     with Size => 1;
   for PACRP_TP2_Field use
     (PACRP_TP2_Field_0 => 0,
      PACRP_TP2_Field_1 => 1);

   --  Write Protect
   type PACRP_WP2_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP2_Field_0,
      --  This peripheral is write protected.
      PACRP_WP2_Field_1)
     with Size => 1;
   for PACRP_WP2_Field use
     (PACRP_WP2_Field_0 => 0,
      PACRP_WP2_Field_1 => 1);

   --  Supervisor protect
   type PACRP_SP2_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP2_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP2_Field_1)
     with Size => 1;
   for PACRP_SP2_Field use
     (PACRP_SP2_Field_0 => 0,
      PACRP_SP2_Field_1 => 1);

   --  Trusted Protect
   type PACRP_TP1_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP1_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP1_Field_1)
     with Size => 1;
   for PACRP_TP1_Field use
     (PACRP_TP1_Field_0 => 0,
      PACRP_TP1_Field_1 => 1);

   --  Write Protect
   type PACRP_WP1_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP1_Field_0,
      --  This peripheral is write protected.
      PACRP_WP1_Field_1)
     with Size => 1;
   for PACRP_WP1_Field use
     (PACRP_WP1_Field_0 => 0,
      PACRP_WP1_Field_1 => 1);

   --  Supervisor Protect
   type PACRP_SP1_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP1_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP1_Field_1)
     with Size => 1;
   for PACRP_SP1_Field use
     (PACRP_SP1_Field_0 => 0,
      PACRP_SP1_Field_1 => 1);

   --  Trusted protect
   type PACRP_TP0_Field is
     (
      --  Accesses from an untrusted master are allowed.
      PACRP_TP0_Field_0,
      --  Accesses from an untrusted master are not allowed.
      PACRP_TP0_Field_1)
     with Size => 1;
   for PACRP_TP0_Field use
     (PACRP_TP0_Field_0 => 0,
      PACRP_TP0_Field_1 => 1);

   --  Write Protect
   type PACRP_WP0_Field is
     (
      --  This peripheral allows write accesses.
      PACRP_WP0_Field_0,
      --  This peripheral is write protected.
      PACRP_WP0_Field_1)
     with Size => 1;
   for PACRP_WP0_Field use
     (PACRP_WP0_Field_0 => 0,
      PACRP_WP0_Field_1 => 1);

   --  Supervisor Protect
   type PACRP_SP0_Field is
     (
      --  This peripheral does not require supervisor privilege level for
      --  accesses.
      PACRP_SP0_Field_0,
      --  This peripheral requires supervisor privilege level for accesses.
      PACRP_SP0_Field_1)
     with Size => 1;
   for PACRP_SP0_Field use
     (PACRP_SP0_Field_0 => 0,
      PACRP_SP0_Field_1 => 1);

   --  Peripheral Access Control Register
   type AIPS0_PACRP_Register is record
      --  Trusted Protect
      TP7            : PACRP_TP7_Field := NRF_SVD.AIPS0.PACRP_TP7_Field_0;
      --  Write Protect
      WP7            : PACRP_WP7_Field := NRF_SVD.AIPS0.PACRP_WP7_Field_0;
      --  Supervisor Protect
      SP7            : PACRP_SP7_Field := NRF_SVD.AIPS0.PACRP_SP7_Field_0;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP6            : PACRP_TP6_Field := NRF_SVD.AIPS0.PACRP_TP6_Field_0;
      --  Write Protect
      WP6            : PACRP_WP6_Field := NRF_SVD.AIPS0.PACRP_WP6_Field_0;
      --  Supervisor Protect
      SP6            : PACRP_SP6_Field := NRF_SVD.AIPS0.PACRP_SP6_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP5            : PACRP_TP5_Field := NRF_SVD.AIPS0.PACRP_TP5_Field_0;
      --  Write Protect
      WP5            : PACRP_WP5_Field := NRF_SVD.AIPS0.PACRP_WP5_Field_0;
      --  Supervisor Protect
      SP5            : PACRP_SP5_Field := NRF_SVD.AIPS0.PACRP_SP5_Field_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP4            : PACRP_TP4_Field := NRF_SVD.AIPS0.PACRP_TP4_Field_0;
      --  Write Protect
      WP4            : PACRP_WP4_Field := NRF_SVD.AIPS0.PACRP_WP4_Field_0;
      --  Supervisor protect
      SP4            : PACRP_SP4_Field := NRF_SVD.AIPS0.PACRP_SP4_Field_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP3            : PACRP_TP3_Field := NRF_SVD.AIPS0.PACRP_TP3_Field_0;
      --  Write protect
      WP3            : PACRP_WP3_Field := NRF_SVD.AIPS0.PACRP_WP3_Field_0;
      --  Supervisor Protect
      SP3            : PACRP_SP3_Field := NRF_SVD.AIPS0.PACRP_SP3_Field_0;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP2            : PACRP_TP2_Field := NRF_SVD.AIPS0.PACRP_TP2_Field_0;
      --  Write Protect
      WP2            : PACRP_WP2_Field := NRF_SVD.AIPS0.PACRP_WP2_Field_0;
      --  Supervisor protect
      SP2            : PACRP_SP2_Field := NRF_SVD.AIPS0.PACRP_SP2_Field_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Trusted Protect
      TP1            : PACRP_TP1_Field := NRF_SVD.AIPS0.PACRP_TP1_Field_0;
      --  Write Protect
      WP1            : PACRP_WP1_Field := NRF_SVD.AIPS0.PACRP_WP1_Field_0;
      --  Supervisor Protect
      SP1            : PACRP_SP1_Field := NRF_SVD.AIPS0.PACRP_SP1_Field_0;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Trusted protect
      TP0            : PACRP_TP0_Field := NRF_SVD.AIPS0.PACRP_TP0_Field_0;
      --  Write Protect
      WP0            : PACRP_WP0_Field := NRF_SVD.AIPS0.PACRP_WP0_Field_0;
      --  Supervisor Protect
      SP0            : PACRP_SP0_Field := NRF_SVD.AIPS0.PACRP_SP0_Field_0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AIPS0_PACRP_Register use record
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

   -----------------
   -- Peripherals --
   -----------------

   --  AIPS-Lite Bridge
   type AIPS0_Peripheral is record
      --  Master Privilege Register A
      MPRA  : aliased HAL.UInt32;
      --  Peripheral Access Control Register
      PACRA : aliased AIPS0_PACRA_Register;
      --  Peripheral Access Control Register
      PACRB : aliased AIPS0_PACRB_Register;
      --  Peripheral Access Control Register
      PACRC : aliased AIPS0_PACRC_Register;
      --  Peripheral Access Control Register
      PACRD : aliased AIPS0_PACRD_Register;
      --  Peripheral Access Control Register
      PACRE : aliased AIPS0_PACRE_Register;
      --  Peripheral Access Control Register
      PACRF : aliased AIPS0_PACRF_Register;
      --  Peripheral Access Control Register
      PACRG : aliased AIPS0_PACRG_Register;
      --  Peripheral Access Control Register
      PACRH : aliased AIPS0_PACRH_Register;
      --  Peripheral Access Control Register
      PACRI : aliased AIPS0_PACRI_Register;
      --  Peripheral Access Control Register
      PACRJ : aliased AIPS0_PACRJ_Register;
      --  Peripheral Access Control Register
      PACRK : aliased AIPS0_PACRK_Register;
      --  Peripheral Access Control Register
      PACRL : aliased AIPS0_PACRL_Register;
      --  Peripheral Access Control Register
      PACRM : aliased AIPS0_PACRM_Register;
      --  Peripheral Access Control Register
      PACRN : aliased AIPS0_PACRN_Register;
      --  Peripheral Access Control Register
      PACRO : aliased AIPS0_PACRO_Register;
      --  Peripheral Access Control Register
      PACRP : aliased AIPS0_PACRP_Register;
   end record
     with Volatile;

   for AIPS0_Peripheral use record
      MPRA  at 16#0# range 0 .. 31;
      PACRA at 16#20# range 0 .. 31;
      PACRB at 16#24# range 0 .. 31;
      PACRC at 16#28# range 0 .. 31;
      PACRD at 16#2C# range 0 .. 31;
      PACRE at 16#40# range 0 .. 31;
      PACRF at 16#44# range 0 .. 31;
      PACRG at 16#48# range 0 .. 31;
      PACRH at 16#4C# range 0 .. 31;
      PACRI at 16#50# range 0 .. 31;
      PACRJ at 16#54# range 0 .. 31;
      PACRK at 16#58# range 0 .. 31;
      PACRL at 16#5C# range 0 .. 31;
      PACRM at 16#60# range 0 .. 31;
      PACRN at 16#64# range 0 .. 31;
      PACRO at 16#68# range 0 .. 31;
      PACRP at 16#6C# range 0 .. 31;
   end record;

   --  AIPS-Lite Bridge
   AIPS0_Periph : aliased AIPS0_Peripheral
     with Import, Address => AIPS0_Base;

end NRF_SVD.AIPS0;
