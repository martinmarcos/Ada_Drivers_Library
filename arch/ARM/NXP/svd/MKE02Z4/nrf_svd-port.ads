--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  1. Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  2. Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  3. Neither the name of the copyright holder nor the names of its
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

--  This spec has been automatically generated from MKE02Z4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Port control and interrupts
package NRF_SVD.PORT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Filter Selection for Input from PTA
   type IOFLT_FLTA_Field is
     (
      --  BUSCLK
      IOFLT_FLTA_Field_00,
      --  FLTDIV1
      IOFLT_FLTA_Field_01,
      --  FLTDIV2
      IOFLT_FLTA_Field_10,
      --  FLTDIV3
      IOFLT_FLTA_Field_11)
     with Size => 2;
   for IOFLT_FLTA_Field use
     (IOFLT_FLTA_Field_00 => 0,
      IOFLT_FLTA_Field_01 => 1,
      IOFLT_FLTA_Field_10 => 2,
      IOFLT_FLTA_Field_11 => 3);

   --  Filter Selection for Input from PTB
   type IOFLT_FLTB_Field is
     (
      --  BUSCLK
      IOFLT_FLTB_Field_00,
      --  FLTDIV1
      IOFLT_FLTB_Field_01,
      --  FLTDIV2
      IOFLT_FLTB_Field_10,
      --  FLTDIV3
      IOFLT_FLTB_Field_11)
     with Size => 2;
   for IOFLT_FLTB_Field use
     (IOFLT_FLTB_Field_00 => 0,
      IOFLT_FLTB_Field_01 => 1,
      IOFLT_FLTB_Field_10 => 2,
      IOFLT_FLTB_Field_11 => 3);

   --  Filter Selection for Input from PTC
   type IOFLT_FLTC_Field is
     (
      --  BUSCLK
      IOFLT_FLTC_Field_00,
      --  FLTDIV1
      IOFLT_FLTC_Field_01,
      --  FLTDIV2
      IOFLT_FLTC_Field_10,
      --  FLTDIV3
      IOFLT_FLTC_Field_11)
     with Size => 2;
   for IOFLT_FLTC_Field use
     (IOFLT_FLTC_Field_00 => 0,
      IOFLT_FLTC_Field_01 => 1,
      IOFLT_FLTC_Field_10 => 2,
      IOFLT_FLTC_Field_11 => 3);

   --  Filter Selection for Input from PTD
   type IOFLT_FLTD_Field is
     (
      --  BUSCLK
      IOFLT_FLTD_Field_00,
      --  FLTDIV1
      IOFLT_FLTD_Field_01,
      --  FLTDIV2
      IOFLT_FLTD_Field_10,
      --  FLTDIV3
      IOFLT_FLTD_Field_11)
     with Size => 2;
   for IOFLT_FLTD_Field use
     (IOFLT_FLTD_Field_00 => 0,
      IOFLT_FLTD_Field_01 => 1,
      IOFLT_FLTD_Field_10 => 2,
      IOFLT_FLTD_Field_11 => 3);

   --  Filter Selection for Input from PTD
   type IOFLT_FLTE_Field is
     (
      --  BUSCLK
      IOFLT_FLTE_Field_00,
      --  FLTDIV1
      IOFLT_FLTE_Field_01,
      --  FLTDIV2
      IOFLT_FLTE_Field_10,
      --  FLTDIV3
      IOFLT_FLTE_Field_11)
     with Size => 2;
   for IOFLT_FLTE_Field use
     (IOFLT_FLTE_Field_00 => 0,
      IOFLT_FLTE_Field_01 => 1,
      IOFLT_FLTE_Field_10 => 2,
      IOFLT_FLTE_Field_11 => 3);

   --  Filter Selection for Input from PTF
   type IOFLT_FLTF_Field is
     (
      --  BUSCLK
      IOFLT_FLTF_Field_00,
      --  FLTDIV1
      IOFLT_FLTF_Field_01,
      --  FLTDIV2
      IOFLT_FLTF_Field_10,
      --  FLTDIV3
      IOFLT_FLTF_Field_11)
     with Size => 2;
   for IOFLT_FLTF_Field use
     (IOFLT_FLTF_Field_00 => 0,
      IOFLT_FLTF_Field_01 => 1,
      IOFLT_FLTF_Field_10 => 2,
      IOFLT_FLTF_Field_11 => 3);

   --  Filter Selection for Input from PTG
   type IOFLT_FLTG_Field is
     (
      --  BUSCLK
      IOFLT_FLTG_Field_00,
      --  FLTDIV1
      IOFLT_FLTG_Field_01,
      --  FLTDIV2
      IOFLT_FLTG_Field_10,
      --  FLTDIV3
      IOFLT_FLTG_Field_11)
     with Size => 2;
   for IOFLT_FLTG_Field use
     (IOFLT_FLTG_Field_00 => 0,
      IOFLT_FLTG_Field_01 => 1,
      IOFLT_FLTG_Field_10 => 2,
      IOFLT_FLTG_Field_11 => 3);

   --  Filter Selection for Input from PTH
   type IOFLT_FLTH_Field is
     (
      --  BUSCLK
      IOFLT_FLTH_Field_00,
      --  FLTDIV1
      IOFLT_FLTH_Field_01,
      --  FLTDIV2
      IOFLT_FLTH_Field_10,
      --  FLTDIV3
      IOFLT_FLTH_Field_11)
     with Size => 2;
   for IOFLT_FLTH_Field use
     (IOFLT_FLTH_Field_00 => 0,
      IOFLT_FLTH_Field_01 => 1,
      IOFLT_FLTH_Field_10 => 2,
      IOFLT_FLTH_Field_11 => 3);

   --  Filter Selection for Input from RESET/IRQ
   type IOFLT_FLTRST_Field is
     (
      --  No filter.
      IOFLT_FLTRST_Field_00,
      --  Selects FLTDIV1, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTRST_Field_01,
      --  Selects FLTDIV2, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTRST_Field_10,
      --  FLTDIV3
      IOFLT_FLTRST_Field_11)
     with Size => 2;
   for IOFLT_FLTRST_Field use
     (IOFLT_FLTRST_Field_00 => 0,
      IOFLT_FLTRST_Field_01 => 1,
      IOFLT_FLTRST_Field_10 => 2,
      IOFLT_FLTRST_Field_11 => 3);

   --  Filter selection for Input from KBI0
   type IOFLT_FLTKBI0_Field is
     (
      --  No filter.
      IOFLT_FLTKBI0_Field_00,
      --  Selects FLTDIV1, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTKBI0_Field_01,
      --  Selects FLTDIV2, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTKBI0_Field_10,
      --  FLTDIV3
      IOFLT_FLTKBI0_Field_11)
     with Size => 2;
   for IOFLT_FLTKBI0_Field use
     (IOFLT_FLTKBI0_Field_00 => 0,
      IOFLT_FLTKBI0_Field_01 => 1,
      IOFLT_FLTKBI0_Field_10 => 2,
      IOFLT_FLTKBI0_Field_11 => 3);

   --  Filter Selection for Input from KBI1
   type IOFLT_FLTKBI1_Field is
     (
      --  No filter
      IOFLT_FLTKBI1_Field_00,
      --  Selects FLTDIV1, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTKBI1_Field_01,
      --  Selects FLTDIV2, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTKBI1_Field_10,
      --  FLTDIV3
      IOFLT_FLTKBI1_Field_11)
     with Size => 2;
   for IOFLT_FLTKBI1_Field use
     (IOFLT_FLTKBI1_Field_00 => 0,
      IOFLT_FLTKBI1_Field_01 => 1,
      IOFLT_FLTKBI1_Field_10 => 2,
      IOFLT_FLTKBI1_Field_11 => 3);

   --  Filter Selection for Input from NMI
   type IOFLT_FLTNMI_Field is
     (
      --  No filter.
      IOFLT_FLTNMI_Field_00,
      --  Selects FLTDIV1, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTNMI_Field_01,
      --  Selects FLTDIV2, and will switch to FLTDIV3 in Stop mode
      --  automatically.
      IOFLT_FLTNMI_Field_10,
      --  FLTDIV3
      IOFLT_FLTNMI_Field_11)
     with Size => 2;
   for IOFLT_FLTNMI_Field use
     (IOFLT_FLTNMI_Field_00 => 0,
      IOFLT_FLTNMI_Field_01 => 1,
      IOFLT_FLTNMI_Field_10 => 2,
      IOFLT_FLTNMI_Field_11 => 3);

   --  Filter Division Set 1
   type IOFLT_FLTDIV1_Field is
     (
      --  BUSCLK/2
      IOFLT_FLTDIV1_Field_00,
      --  BUSCLK/4
      IOFLT_FLTDIV1_Field_01,
      --  BUSCLK/8
      IOFLT_FLTDIV1_Field_10,
      --  BUSCLK/16
      IOFLT_FLTDIV1_Field_11)
     with Size => 2;
   for IOFLT_FLTDIV1_Field use
     (IOFLT_FLTDIV1_Field_00 => 0,
      IOFLT_FLTDIV1_Field_01 => 1,
      IOFLT_FLTDIV1_Field_10 => 2,
      IOFLT_FLTDIV1_Field_11 => 3);

   --  Filter Division Set 2
   type IOFLT_FLTDIV2_Field is
     (
      --  BUSCLK/32
      IOFLT_FLTDIV2_Field_000,
      --  BUSCLK/64
      IOFLT_FLTDIV2_Field_001,
      --  BUSCLK/128
      IOFLT_FLTDIV2_Field_010,
      --  BUSCLK/256
      IOFLT_FLTDIV2_Field_011,
      --  BUSCLK/512
      IOFLT_FLTDIV2_Field_100,
      --  BUSCLK/1024
      IOFLT_FLTDIV2_Field_101,
      --  BUSCLK/2048
      IOFLT_FLTDIV2_Field_110,
      --  BUSCLK/4096
      IOFLT_FLTDIV2_Field_111)
     with Size => 3;
   for IOFLT_FLTDIV2_Field use
     (IOFLT_FLTDIV2_Field_000 => 0,
      IOFLT_FLTDIV2_Field_001 => 1,
      IOFLT_FLTDIV2_Field_010 => 2,
      IOFLT_FLTDIV2_Field_011 => 3,
      IOFLT_FLTDIV2_Field_100 => 4,
      IOFLT_FLTDIV2_Field_101 => 5,
      IOFLT_FLTDIV2_Field_110 => 6,
      IOFLT_FLTDIV2_Field_111 => 7);

   --  Filter Division Set 3
   type IOFLT_FLTDIV3_Field is
     (
      --  LPOCLK
      IOFLT_FLTDIV3_Field_000,
      --  LPOCLK/2
      IOFLT_FLTDIV3_Field_001,
      --  LPOCLK/4
      IOFLT_FLTDIV3_Field_010,
      --  LPOCLK/8
      IOFLT_FLTDIV3_Field_011,
      --  LPOCLK/16
      IOFLT_FLTDIV3_Field_100,
      --  LPOCLK/32
      IOFLT_FLTDIV3_Field_101,
      --  LPOCLK/64
      IOFLT_FLTDIV3_Field_110,
      --  LPOCLK/128
      IOFLT_FLTDIV3_Field_111)
     with Size => 3;
   for IOFLT_FLTDIV3_Field use
     (IOFLT_FLTDIV3_Field_000 => 0,
      IOFLT_FLTDIV3_Field_001 => 1,
      IOFLT_FLTDIV3_Field_010 => 2,
      IOFLT_FLTDIV3_Field_011 => 3,
      IOFLT_FLTDIV3_Field_100 => 4,
      IOFLT_FLTDIV3_Field_101 => 5,
      IOFLT_FLTDIV3_Field_110 => 6,
      IOFLT_FLTDIV3_Field_111 => 7);

   --  Port Filter Register
   type PORT_IOFLT_Register is record
      --  Filter Selection for Input from PTA
      FLTA    : IOFLT_FLTA_Field := NRF_SVD.PORT.IOFLT_FLTA_Field_00;
      --  Filter Selection for Input from PTB
      FLTB    : IOFLT_FLTB_Field := NRF_SVD.PORT.IOFLT_FLTB_Field_00;
      --  Filter Selection for Input from PTC
      FLTC    : IOFLT_FLTC_Field := NRF_SVD.PORT.IOFLT_FLTC_Field_00;
      --  Filter Selection for Input from PTD
      FLTD    : IOFLT_FLTD_Field := NRF_SVD.PORT.IOFLT_FLTD_Field_00;
      --  Filter Selection for Input from PTD
      FLTE    : IOFLT_FLTE_Field := NRF_SVD.PORT.IOFLT_FLTE_Field_00;
      --  Filter Selection for Input from PTF
      FLTF    : IOFLT_FLTF_Field := NRF_SVD.PORT.IOFLT_FLTF_Field_00;
      --  Filter Selection for Input from PTG
      FLTG    : IOFLT_FLTG_Field := NRF_SVD.PORT.IOFLT_FLTG_Field_00;
      --  Filter Selection for Input from PTH
      FLTH    : IOFLT_FLTH_Field := NRF_SVD.PORT.IOFLT_FLTH_Field_00;
      --  Filter Selection for Input from RESET/IRQ
      FLTRST  : IOFLT_FLTRST_Field := NRF_SVD.PORT.IOFLT_FLTRST_Field_00;
      --  Filter selection for Input from KBI0
      FLTKBI0 : IOFLT_FLTKBI0_Field := NRF_SVD.PORT.IOFLT_FLTKBI0_Field_00;
      --  Filter Selection for Input from KBI1
      FLTKBI1 : IOFLT_FLTKBI1_Field := NRF_SVD.PORT.IOFLT_FLTKBI1_Field_00;
      --  Filter Selection for Input from NMI
      FLTNMI  : IOFLT_FLTNMI_Field := NRF_SVD.PORT.IOFLT_FLTNMI_Field_11;
      --  Filter Division Set 1
      FLTDIV1 : IOFLT_FLTDIV1_Field := NRF_SVD.PORT.IOFLT_FLTDIV1_Field_00;
      --  Filter Division Set 2
      FLTDIV2 : IOFLT_FLTDIV2_Field := NRF_SVD.PORT.IOFLT_FLTDIV2_Field_000;
      --  Filter Division Set 3
      FLTDIV3 : IOFLT_FLTDIV3_Field := NRF_SVD.PORT.IOFLT_FLTDIV3_Field_000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_IOFLT_Register use record
      FLTA    at 0 range 0 .. 1;
      FLTB    at 0 range 2 .. 3;
      FLTC    at 0 range 4 .. 5;
      FLTD    at 0 range 6 .. 7;
      FLTE    at 0 range 8 .. 9;
      FLTF    at 0 range 10 .. 11;
      FLTG    at 0 range 12 .. 13;
      FLTH    at 0 range 14 .. 15;
      FLTRST  at 0 range 16 .. 17;
      FLTKBI0 at 0 range 18 .. 19;
      FLTKBI1 at 0 range 20 .. 21;
      FLTNMI  at 0 range 22 .. 23;
      FLTDIV1 at 0 range 24 .. 25;
      FLTDIV2 at 0 range 26 .. 28;
      FLTDIV3 at 0 range 29 .. 31;
   end record;

   --  Pull Enable for Port A Bit 0
   type PUEL_PTAPE0_Field is
     (
      --  Pullup is disabled for port A bit 0.
      PUEL_PTAPE0_Field_0,
      --  Pullup is enabled for port A bit 0.
      PUEL_PTAPE0_Field_1)
     with Size => 1;
   for PUEL_PTAPE0_Field use
     (PUEL_PTAPE0_Field_0 => 0,
      PUEL_PTAPE0_Field_1 => 1);

   --  Pull Enable for Port A Bit 1
   type PUEL_PTAPE1_Field is
     (
      --  Pullup is disabled for port A bit 1.
      PUEL_PTAPE1_Field_0,
      --  Pullup is enabled for port A bit 1.
      PUEL_PTAPE1_Field_1)
     with Size => 1;
   for PUEL_PTAPE1_Field use
     (PUEL_PTAPE1_Field_0 => 0,
      PUEL_PTAPE1_Field_1 => 1);

   --  Pull Enable for Port A Bit 2
   type PUEL_PTAPE2_Field is
     (
      --  Pullup is disabled for port A bit 2.
      PUEL_PTAPE2_Field_0,
      --  Pullup is enabled for port A bit 2.
      PUEL_PTAPE2_Field_1)
     with Size => 1;
   for PUEL_PTAPE2_Field use
     (PUEL_PTAPE2_Field_0 => 0,
      PUEL_PTAPE2_Field_1 => 1);

   --  Pull Enable for Port A Bit 3
   type PUEL_PTAPE3_Field is
     (
      --  Pullup is disabled for port A bit 3.
      PUEL_PTAPE3_Field_0,
      --  Pullup is enabled for port A bit 3.
      PUEL_PTAPE3_Field_1)
     with Size => 1;
   for PUEL_PTAPE3_Field use
     (PUEL_PTAPE3_Field_0 => 0,
      PUEL_PTAPE3_Field_1 => 1);

   --  Pull Enable for Port A Bit 4
   type PUEL_PTAPE4_Field is
     (
      --  Pullup is disabled for port A bit 4.
      PUEL_PTAPE4_Field_0,
      --  Pullup is enabled for port A bit 4.
      PUEL_PTAPE4_Field_1)
     with Size => 1;
   for PUEL_PTAPE4_Field use
     (PUEL_PTAPE4_Field_0 => 0,
      PUEL_PTAPE4_Field_1 => 1);

   --  Pull Enable for Port A Bit 5
   type PUEL_PTAPE5_Field is
     (
      --  Pullup is disabled for port A bit 5.
      PUEL_PTAPE5_Field_0,
      --  Pullup is enabled for port A bit 5.
      PUEL_PTAPE5_Field_1)
     with Size => 1;
   for PUEL_PTAPE5_Field use
     (PUEL_PTAPE5_Field_0 => 0,
      PUEL_PTAPE5_Field_1 => 1);

   --  Pull Enable for Port A Bit 6
   type PUEL_PTAPE6_Field is
     (
      --  Pullup is disabled for port A bit 6.
      PUEL_PTAPE6_Field_0,
      --  Pullup is enabled for port A bit 6.
      PUEL_PTAPE6_Field_1)
     with Size => 1;
   for PUEL_PTAPE6_Field use
     (PUEL_PTAPE6_Field_0 => 0,
      PUEL_PTAPE6_Field_1 => 1);

   --  Pull Enable for Port A Bit 7
   type PUEL_PTAPE7_Field is
     (
      --  Pullup is disabled for port A bit 7.
      PUEL_PTAPE7_Field_0,
      --  Pullup is enabled for port A bit 7.
      PUEL_PTAPE7_Field_1)
     with Size => 1;
   for PUEL_PTAPE7_Field use
     (PUEL_PTAPE7_Field_0 => 0,
      PUEL_PTAPE7_Field_1 => 1);

   --  Pull Enable for Port B Bit 0
   type PUEL_PTBPE0_Field is
     (
      --  Pullup is disabled for port B bit 0.
      PUEL_PTBPE0_Field_0,
      --  Pullup is enabled for port B bit 0.
      PUEL_PTBPE0_Field_1)
     with Size => 1;
   for PUEL_PTBPE0_Field use
     (PUEL_PTBPE0_Field_0 => 0,
      PUEL_PTBPE0_Field_1 => 1);

   --  Pull Enable for Port B Bit 1
   type PUEL_PTBPE1_Field is
     (
      --  Pullup is disabled for port B bit 1.
      PUEL_PTBPE1_Field_0,
      --  Pullup is enabled for port B bit 1.
      PUEL_PTBPE1_Field_1)
     with Size => 1;
   for PUEL_PTBPE1_Field use
     (PUEL_PTBPE1_Field_0 => 0,
      PUEL_PTBPE1_Field_1 => 1);

   --  Pull Enable for Port B Bit 2
   type PUEL_PTBPE2_Field is
     (
      --  Pullup is disabled for port B bit 2.
      PUEL_PTBPE2_Field_0,
      --  Pullup is enabled for port B bit 2.
      PUEL_PTBPE2_Field_1)
     with Size => 1;
   for PUEL_PTBPE2_Field use
     (PUEL_PTBPE2_Field_0 => 0,
      PUEL_PTBPE2_Field_1 => 1);

   --  Pull Enable for Port B Bit 3
   type PUEL_PTBPE3_Field is
     (
      --  Pullup is disabled for port B bit 3.
      PUEL_PTBPE3_Field_0,
      --  Pullup is enabled for port B bit 3.
      PUEL_PTBPE3_Field_1)
     with Size => 1;
   for PUEL_PTBPE3_Field use
     (PUEL_PTBPE3_Field_0 => 0,
      PUEL_PTBPE3_Field_1 => 1);

   --  Pull Enable for Port B Bit 4
   type PUEL_PTBPE4_Field is
     (
      --  Pullup is disabled for port B bit 4.
      PUEL_PTBPE4_Field_0,
      --  Pullup is enabled for port B bit 4.
      PUEL_PTBPE4_Field_1)
     with Size => 1;
   for PUEL_PTBPE4_Field use
     (PUEL_PTBPE4_Field_0 => 0,
      PUEL_PTBPE4_Field_1 => 1);

   --  Pull Enable for Port B Bit 5
   type PUEL_PTBPE5_Field is
     (
      --  Pullup is disabled for port B bit 5.
      PUEL_PTBPE5_Field_0,
      --  Pullup is enabled for port B bit 5.
      PUEL_PTBPE5_Field_1)
     with Size => 1;
   for PUEL_PTBPE5_Field use
     (PUEL_PTBPE5_Field_0 => 0,
      PUEL_PTBPE5_Field_1 => 1);

   --  Pull Enable for Port B Bit 6
   type PUEL_PTBPE6_Field is
     (
      --  Pullup is disabled for port B bit 6.
      PUEL_PTBPE6_Field_0,
      --  Pullup is enabled for port B bit 6.
      PUEL_PTBPE6_Field_1)
     with Size => 1;
   for PUEL_PTBPE6_Field use
     (PUEL_PTBPE6_Field_0 => 0,
      PUEL_PTBPE6_Field_1 => 1);

   --  Pull Enable for Port B Bit 7
   type PUEL_PTBPE7_Field is
     (
      --  Pullup is disabled for port B bit 7.
      PUEL_PTBPE7_Field_0,
      --  Pullup is enabled for port B bit 7.
      PUEL_PTBPE7_Field_1)
     with Size => 1;
   for PUEL_PTBPE7_Field use
     (PUEL_PTBPE7_Field_0 => 0,
      PUEL_PTBPE7_Field_1 => 1);

   --  Pull Enable for Port C Bit 0
   type PUEL_PTCPE0_Field is
     (
      --  Pullup is disabled for port C bit 0.
      PUEL_PTCPE0_Field_0,
      --  Pullup is enabled for port C bit 0.
      PUEL_PTCPE0_Field_1)
     with Size => 1;
   for PUEL_PTCPE0_Field use
     (PUEL_PTCPE0_Field_0 => 0,
      PUEL_PTCPE0_Field_1 => 1);

   --  Pull Enable for Port C Bit 1
   type PUEL_PTCPE1_Field is
     (
      --  Pullup is disabled for port C bit 1.
      PUEL_PTCPE1_Field_0,
      --  Pullup is enabled for port C bit 1.
      PUEL_PTCPE1_Field_1)
     with Size => 1;
   for PUEL_PTCPE1_Field use
     (PUEL_PTCPE1_Field_0 => 0,
      PUEL_PTCPE1_Field_1 => 1);

   --  Pull Enable for Port C Bit 2
   type PUEL_PTCPE2_Field is
     (
      --  Pullup is disabled for port C bit 2.
      PUEL_PTCPE2_Field_0,
      --  Pullup is enabled for port C bit 2.
      PUEL_PTCPE2_Field_1)
     with Size => 1;
   for PUEL_PTCPE2_Field use
     (PUEL_PTCPE2_Field_0 => 0,
      PUEL_PTCPE2_Field_1 => 1);

   --  Pull Enable for Port C Bit 3
   type PUEL_PTCPE3_Field is
     (
      --  Pullup is disabled for port C bit 3.
      PUEL_PTCPE3_Field_0,
      --  Pullup is enabled for port C bit 3.
      PUEL_PTCPE3_Field_1)
     with Size => 1;
   for PUEL_PTCPE3_Field use
     (PUEL_PTCPE3_Field_0 => 0,
      PUEL_PTCPE3_Field_1 => 1);

   --  Pull Enable for Port C Bit 4
   type PUEL_PTCPE4_Field is
     (
      --  Pullup is disabled for port C bit 4.
      PUEL_PTCPE4_Field_0,
      --  Pullup is enabled for port C bit 4.
      PUEL_PTCPE4_Field_1)
     with Size => 1;
   for PUEL_PTCPE4_Field use
     (PUEL_PTCPE4_Field_0 => 0,
      PUEL_PTCPE4_Field_1 => 1);

   --  Pull Enable for Port C Bit 5
   type PUEL_PTCPE5_Field is
     (
      --  Pullup is disabled for port C bit 5.
      PUEL_PTCPE5_Field_0,
      --  Pullup is enabled for port C bit 5.
      PUEL_PTCPE5_Field_1)
     with Size => 1;
   for PUEL_PTCPE5_Field use
     (PUEL_PTCPE5_Field_0 => 0,
      PUEL_PTCPE5_Field_1 => 1);

   --  Pull Enable for Port C Bit 6
   type PUEL_PTCPE6_Field is
     (
      --  Pullup is disabled for port C bit 6.
      PUEL_PTCPE6_Field_0,
      --  Pullup is enabled for port C bit 6.
      PUEL_PTCPE6_Field_1)
     with Size => 1;
   for PUEL_PTCPE6_Field use
     (PUEL_PTCPE6_Field_0 => 0,
      PUEL_PTCPE6_Field_1 => 1);

   --  Pull Enable for Port C Bit 7
   type PUEL_PTCPE7_Field is
     (
      --  Pullup is disabled for port C bit 7.
      PUEL_PTCPE7_Field_0,
      --  Pullup is enabled for port C bit 7.
      PUEL_PTCPE7_Field_1)
     with Size => 1;
   for PUEL_PTCPE7_Field use
     (PUEL_PTCPE7_Field_0 => 0,
      PUEL_PTCPE7_Field_1 => 1);

   --  Pull Enable for Port D Bit 0
   type PUEL_PTDPE0_Field is
     (
      --  Pullup is disabled for port D bit 0.
      PUEL_PTDPE0_Field_0,
      --  Pullup is enabled for port D bit 0.
      PUEL_PTDPE0_Field_1)
     with Size => 1;
   for PUEL_PTDPE0_Field use
     (PUEL_PTDPE0_Field_0 => 0,
      PUEL_PTDPE0_Field_1 => 1);

   --  Pull Enable for Port D Bit 1
   type PUEL_PTDPE1_Field is
     (
      --  Pullup is disabled for port D bit 1.
      PUEL_PTDPE1_Field_0,
      --  Pullup is enabled for port D bit 1.
      PUEL_PTDPE1_Field_1)
     with Size => 1;
   for PUEL_PTDPE1_Field use
     (PUEL_PTDPE1_Field_0 => 0,
      PUEL_PTDPE1_Field_1 => 1);

   --  Pull Enable for Port D Bit 2
   type PUEL_PTDPE2_Field is
     (
      --  Pullup is disabled for port D bit 2.
      PUEL_PTDPE2_Field_0,
      --  Pullup is enabled for port D bit 2.
      PUEL_PTDPE2_Field_1)
     with Size => 1;
   for PUEL_PTDPE2_Field use
     (PUEL_PTDPE2_Field_0 => 0,
      PUEL_PTDPE2_Field_1 => 1);

   --  Pull Enable for Port D Bit 3
   type PUEL_PTDPE3_Field is
     (
      --  Pullup is disabled for port D bit 3.
      PUEL_PTDPE3_Field_0,
      --  Pullup is enabled for port D bit 3.
      PUEL_PTDPE3_Field_1)
     with Size => 1;
   for PUEL_PTDPE3_Field use
     (PUEL_PTDPE3_Field_0 => 0,
      PUEL_PTDPE3_Field_1 => 1);

   --  Pull Enable for Port D Bit 4
   type PUEL_PTDPE4_Field is
     (
      --  Pullup is disabled for port D bit 4.
      PUEL_PTDPE4_Field_0,
      --  Pullup is enabled for port D bit 4.
      PUEL_PTDPE4_Field_1)
     with Size => 1;
   for PUEL_PTDPE4_Field use
     (PUEL_PTDPE4_Field_0 => 0,
      PUEL_PTDPE4_Field_1 => 1);

   --  Pull Enable for Port D Bit 5
   type PUEL_PTDPE5_Field is
     (
      --  Pullup is disabled for port D bit 5.
      PUEL_PTDPE5_Field_0,
      --  Pullup is enabled for port D bit 5.
      PUEL_PTDPE5_Field_1)
     with Size => 1;
   for PUEL_PTDPE5_Field use
     (PUEL_PTDPE5_Field_0 => 0,
      PUEL_PTDPE5_Field_1 => 1);

   --  Pull Enable for Port D Bit 6
   type PUEL_PTDPE6_Field is
     (
      --  Pullup is disabled for port D bit 6.
      PUEL_PTDPE6_Field_0,
      --  Pullup is enabled for port D bit 6.
      PUEL_PTDPE6_Field_1)
     with Size => 1;
   for PUEL_PTDPE6_Field use
     (PUEL_PTDPE6_Field_0 => 0,
      PUEL_PTDPE6_Field_1 => 1);

   --  Pull Enable for Port D Bit 7
   type PUEL_PTDPE7_Field is
     (
      --  Pullup is disabled for port D bit 7.
      PUEL_PTDPE7_Field_0,
      --  Pullup is enabled for port D bit 7.
      PUEL_PTDPE7_Field_1)
     with Size => 1;
   for PUEL_PTDPE7_Field use
     (PUEL_PTDPE7_Field_0 => 0,
      PUEL_PTDPE7_Field_1 => 1);

   --  Port Pullup Enable Low Register
   type PORT_PUEL_Register is record
      --  Pull Enable for Port A Bit 0
      PTAPE0 : PUEL_PTAPE0_Field := NRF_SVD.PORT.PUEL_PTAPE0_Field_0;
      --  Pull Enable for Port A Bit 1
      PTAPE1 : PUEL_PTAPE1_Field := NRF_SVD.PORT.PUEL_PTAPE1_Field_0;
      --  Pull Enable for Port A Bit 2
      PTAPE2 : PUEL_PTAPE2_Field := NRF_SVD.PORT.PUEL_PTAPE2_Field_0;
      --  Pull Enable for Port A Bit 3
      PTAPE3 : PUEL_PTAPE3_Field := NRF_SVD.PORT.PUEL_PTAPE3_Field_0;
      --  Pull Enable for Port A Bit 4
      PTAPE4 : PUEL_PTAPE4_Field := NRF_SVD.PORT.PUEL_PTAPE4_Field_0;
      --  Pull Enable for Port A Bit 5
      PTAPE5 : PUEL_PTAPE5_Field := NRF_SVD.PORT.PUEL_PTAPE5_Field_0;
      --  Pull Enable for Port A Bit 6
      PTAPE6 : PUEL_PTAPE6_Field := NRF_SVD.PORT.PUEL_PTAPE6_Field_0;
      --  Pull Enable for Port A Bit 7
      PTAPE7 : PUEL_PTAPE7_Field := NRF_SVD.PORT.PUEL_PTAPE7_Field_0;
      --  Pull Enable for Port B Bit 0
      PTBPE0 : PUEL_PTBPE0_Field := NRF_SVD.PORT.PUEL_PTBPE0_Field_0;
      --  Pull Enable for Port B Bit 1
      PTBPE1 : PUEL_PTBPE1_Field := NRF_SVD.PORT.PUEL_PTBPE1_Field_0;
      --  Pull Enable for Port B Bit 2
      PTBPE2 : PUEL_PTBPE2_Field := NRF_SVD.PORT.PUEL_PTBPE2_Field_0;
      --  Pull Enable for Port B Bit 3
      PTBPE3 : PUEL_PTBPE3_Field := NRF_SVD.PORT.PUEL_PTBPE3_Field_0;
      --  Pull Enable for Port B Bit 4
      PTBPE4 : PUEL_PTBPE4_Field := NRF_SVD.PORT.PUEL_PTBPE4_Field_0;
      --  Pull Enable for Port B Bit 5
      PTBPE5 : PUEL_PTBPE5_Field := NRF_SVD.PORT.PUEL_PTBPE5_Field_0;
      --  Pull Enable for Port B Bit 6
      PTBPE6 : PUEL_PTBPE6_Field := NRF_SVD.PORT.PUEL_PTBPE6_Field_0;
      --  Pull Enable for Port B Bit 7
      PTBPE7 : PUEL_PTBPE7_Field := NRF_SVD.PORT.PUEL_PTBPE7_Field_0;
      --  Pull Enable for Port C Bit 0
      PTCPE0 : PUEL_PTCPE0_Field := NRF_SVD.PORT.PUEL_PTCPE0_Field_0;
      --  Pull Enable for Port C Bit 1
      PTCPE1 : PUEL_PTCPE1_Field := NRF_SVD.PORT.PUEL_PTCPE1_Field_0;
      --  Pull Enable for Port C Bit 2
      PTCPE2 : PUEL_PTCPE2_Field := NRF_SVD.PORT.PUEL_PTCPE2_Field_0;
      --  Pull Enable for Port C Bit 3
      PTCPE3 : PUEL_PTCPE3_Field := NRF_SVD.PORT.PUEL_PTCPE3_Field_0;
      --  Pull Enable for Port C Bit 4
      PTCPE4 : PUEL_PTCPE4_Field := NRF_SVD.PORT.PUEL_PTCPE4_Field_1;
      --  Pull Enable for Port C Bit 5
      PTCPE5 : PUEL_PTCPE5_Field := NRF_SVD.PORT.PUEL_PTCPE5_Field_0;
      --  Pull Enable for Port C Bit 6
      PTCPE6 : PUEL_PTCPE6_Field := NRF_SVD.PORT.PUEL_PTCPE6_Field_0;
      --  Pull Enable for Port C Bit 7
      PTCPE7 : PUEL_PTCPE7_Field := NRF_SVD.PORT.PUEL_PTCPE7_Field_0;
      --  Pull Enable for Port D Bit 0
      PTDPE0 : PUEL_PTDPE0_Field := NRF_SVD.PORT.PUEL_PTDPE0_Field_0;
      --  Pull Enable for Port D Bit 1
      PTDPE1 : PUEL_PTDPE1_Field := NRF_SVD.PORT.PUEL_PTDPE1_Field_0;
      --  Pull Enable for Port D Bit 2
      PTDPE2 : PUEL_PTDPE2_Field := NRF_SVD.PORT.PUEL_PTDPE2_Field_0;
      --  Pull Enable for Port D Bit 3
      PTDPE3 : PUEL_PTDPE3_Field := NRF_SVD.PORT.PUEL_PTDPE3_Field_0;
      --  Pull Enable for Port D Bit 4
      PTDPE4 : PUEL_PTDPE4_Field := NRF_SVD.PORT.PUEL_PTDPE4_Field_0;
      --  Pull Enable for Port D Bit 5
      PTDPE5 : PUEL_PTDPE5_Field := NRF_SVD.PORT.PUEL_PTDPE5_Field_0;
      --  Pull Enable for Port D Bit 6
      PTDPE6 : PUEL_PTDPE6_Field := NRF_SVD.PORT.PUEL_PTDPE6_Field_0;
      --  Pull Enable for Port D Bit 7
      PTDPE7 : PUEL_PTDPE7_Field := NRF_SVD.PORT.PUEL_PTDPE7_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_PUEL_Register use record
      PTAPE0 at 0 range 0 .. 0;
      PTAPE1 at 0 range 1 .. 1;
      PTAPE2 at 0 range 2 .. 2;
      PTAPE3 at 0 range 3 .. 3;
      PTAPE4 at 0 range 4 .. 4;
      PTAPE5 at 0 range 5 .. 5;
      PTAPE6 at 0 range 6 .. 6;
      PTAPE7 at 0 range 7 .. 7;
      PTBPE0 at 0 range 8 .. 8;
      PTBPE1 at 0 range 9 .. 9;
      PTBPE2 at 0 range 10 .. 10;
      PTBPE3 at 0 range 11 .. 11;
      PTBPE4 at 0 range 12 .. 12;
      PTBPE5 at 0 range 13 .. 13;
      PTBPE6 at 0 range 14 .. 14;
      PTBPE7 at 0 range 15 .. 15;
      PTCPE0 at 0 range 16 .. 16;
      PTCPE1 at 0 range 17 .. 17;
      PTCPE2 at 0 range 18 .. 18;
      PTCPE3 at 0 range 19 .. 19;
      PTCPE4 at 0 range 20 .. 20;
      PTCPE5 at 0 range 21 .. 21;
      PTCPE6 at 0 range 22 .. 22;
      PTCPE7 at 0 range 23 .. 23;
      PTDPE0 at 0 range 24 .. 24;
      PTDPE1 at 0 range 25 .. 25;
      PTDPE2 at 0 range 26 .. 26;
      PTDPE3 at 0 range 27 .. 27;
      PTDPE4 at 0 range 28 .. 28;
      PTDPE5 at 0 range 29 .. 29;
      PTDPE6 at 0 range 30 .. 30;
      PTDPE7 at 0 range 31 .. 31;
   end record;

   --  Pull Enable for Port E Bit 0
   type PUEH_PTEPE0_Field is
     (
      --  Pullup is disabled for port E bit 0.
      PUEH_PTEPE0_Field_0,
      --  Pullup is enabled for port E bit 0.
      PUEH_PTEPE0_Field_1)
     with Size => 1;
   for PUEH_PTEPE0_Field use
     (PUEH_PTEPE0_Field_0 => 0,
      PUEH_PTEPE0_Field_1 => 1);

   --  Pull Enable for Port E Bit 1
   type PUEH_PTEPE1_Field is
     (
      --  Pullup is disabled for port E bit 1.
      PUEH_PTEPE1_Field_0,
      --  Pullup is enabled for port E bit 1.
      PUEH_PTEPE1_Field_1)
     with Size => 1;
   for PUEH_PTEPE1_Field use
     (PUEH_PTEPE1_Field_0 => 0,
      PUEH_PTEPE1_Field_1 => 1);

   --  Pull Enable for Port E Bit 2
   type PUEH_PTEPE2_Field is
     (
      --  Pullup is disabled for port E bit 2.
      PUEH_PTEPE2_Field_0,
      --  Pullup is enabled for port E bit 2.
      PUEH_PTEPE2_Field_1)
     with Size => 1;
   for PUEH_PTEPE2_Field use
     (PUEH_PTEPE2_Field_0 => 0,
      PUEH_PTEPE2_Field_1 => 1);

   --  Pull Enable for Port E Bit 3
   type PUEH_PTEPE3_Field is
     (
      --  Pullup is disabled for port E bit 3.
      PUEH_PTEPE3_Field_0,
      --  Pullup is enabled for port E bit 3.
      PUEH_PTEPE3_Field_1)
     with Size => 1;
   for PUEH_PTEPE3_Field use
     (PUEH_PTEPE3_Field_0 => 0,
      PUEH_PTEPE3_Field_1 => 1);

   --  Pull Enable for Port E Bit 4
   type PUEH_PTEPE4_Field is
     (
      --  Pullup is disabled for port E bit 4.
      PUEH_PTEPE4_Field_0,
      --  Pullup is enabled for port E bit 4.
      PUEH_PTEPE4_Field_1)
     with Size => 1;
   for PUEH_PTEPE4_Field use
     (PUEH_PTEPE4_Field_0 => 0,
      PUEH_PTEPE4_Field_1 => 1);

   --  Pull Enable for Port E Bit 5
   type PUEH_PTEPE5_Field is
     (
      --  Pullup is disabled for port E bit 5.
      PUEH_PTEPE5_Field_0,
      --  Pullup is enabled for port E bit 5.
      PUEH_PTEPE5_Field_1)
     with Size => 1;
   for PUEH_PTEPE5_Field use
     (PUEH_PTEPE5_Field_0 => 0,
      PUEH_PTEPE5_Field_1 => 1);

   --  Pull Enable for Port E Bit 6
   type PUEH_PTEPE6_Field is
     (
      --  Pullup is disabled for port E bit 6.
      PUEH_PTEPE6_Field_0,
      --  Pullup is enabled for port E bit 6.
      PUEH_PTEPE6_Field_1)
     with Size => 1;
   for PUEH_PTEPE6_Field use
     (PUEH_PTEPE6_Field_0 => 0,
      PUEH_PTEPE6_Field_1 => 1);

   --  Pull Enable for Port E Bit 7
   type PUEH_PTEPE7_Field is
     (
      --  Pullup is disabled for port E bit 7.
      PUEH_PTEPE7_Field_0,
      --  Pullup is enabled for port E bit 7.
      PUEH_PTEPE7_Field_1)
     with Size => 1;
   for PUEH_PTEPE7_Field use
     (PUEH_PTEPE7_Field_0 => 0,
      PUEH_PTEPE7_Field_1 => 1);

   --  Pull Enable for Port F Bit 0
   type PUEH_PTFPE0_Field is
     (
      --  Pullup is disabled for port F bit 0.
      PUEH_PTFPE0_Field_0,
      --  Pullup is enabled for port F bit 0.
      PUEH_PTFPE0_Field_1)
     with Size => 1;
   for PUEH_PTFPE0_Field use
     (PUEH_PTFPE0_Field_0 => 0,
      PUEH_PTFPE0_Field_1 => 1);

   --  Pull Enable for Port F Bit 1
   type PUEH_PTFPE1_Field is
     (
      --  Pullup is disabled for port F bit 1.
      PUEH_PTFPE1_Field_0,
      --  Pullup is enabled for port F bit 1.
      PUEH_PTFPE1_Field_1)
     with Size => 1;
   for PUEH_PTFPE1_Field use
     (PUEH_PTFPE1_Field_0 => 0,
      PUEH_PTFPE1_Field_1 => 1);

   --  Pull Enable for Port F Bit 2
   type PUEH_PTFPE2_Field is
     (
      --  Pullup is disabled for port F bit 2.
      PUEH_PTFPE2_Field_0,
      --  Pullup is enabled for port F bit 2.
      PUEH_PTFPE2_Field_1)
     with Size => 1;
   for PUEH_PTFPE2_Field use
     (PUEH_PTFPE2_Field_0 => 0,
      PUEH_PTFPE2_Field_1 => 1);

   --  Pull Enable for Port F Bit 3
   type PUEH_PTFPE3_Field is
     (
      --  Pullup is disabled for port F bit 3.
      PUEH_PTFPE3_Field_0,
      --  Pullup is enabled for port F bit 3.
      PUEH_PTFPE3_Field_1)
     with Size => 1;
   for PUEH_PTFPE3_Field use
     (PUEH_PTFPE3_Field_0 => 0,
      PUEH_PTFPE3_Field_1 => 1);

   --  Pull Enable for Port F Bit 4
   type PUEH_PTFPE4_Field is
     (
      --  Pullup is disabled for port F bit 4.
      PUEH_PTFPE4_Field_0,
      --  Pullup is enabled for port F bit 4.
      PUEH_PTFPE4_Field_1)
     with Size => 1;
   for PUEH_PTFPE4_Field use
     (PUEH_PTFPE4_Field_0 => 0,
      PUEH_PTFPE4_Field_1 => 1);

   --  Pull Enable for Port F Bit 5
   type PUEH_PTFPE5_Field is
     (
      --  Pullup is disabled for port F bit 5.
      PUEH_PTFPE5_Field_0,
      --  Pullup is enabled for port F bit 5.
      PUEH_PTFPE5_Field_1)
     with Size => 1;
   for PUEH_PTFPE5_Field use
     (PUEH_PTFPE5_Field_0 => 0,
      PUEH_PTFPE5_Field_1 => 1);

   --  Pull Enable for Port F Bit 6
   type PUEH_PTFPE6_Field is
     (
      --  Pullup is disabled for port F bit 6.
      PUEH_PTFPE6_Field_0,
      --  Pullup is enabled for port F bit 6.
      PUEH_PTFPE6_Field_1)
     with Size => 1;
   for PUEH_PTFPE6_Field use
     (PUEH_PTFPE6_Field_0 => 0,
      PUEH_PTFPE6_Field_1 => 1);

   --  Pull Enable for Port F Bit 7
   type PUEH_PTFPE7_Field is
     (
      --  Pullup is disabled for port F bit 7.
      PUEH_PTFPE7_Field_0,
      --  Pullup is enabled for port F bit 7.
      PUEH_PTFPE7_Field_1)
     with Size => 1;
   for PUEH_PTFPE7_Field use
     (PUEH_PTFPE7_Field_0 => 0,
      PUEH_PTFPE7_Field_1 => 1);

   --  Pull Enable for Port G Bit 0
   type PUEH_PTGPE0_Field is
     (
      --  Pullup is disabled for port G bit 0.
      PUEH_PTGPE0_Field_0,
      --  Pullup is enabled for port G bit 0.
      PUEH_PTGPE0_Field_1)
     with Size => 1;
   for PUEH_PTGPE0_Field use
     (PUEH_PTGPE0_Field_0 => 0,
      PUEH_PTGPE0_Field_1 => 1);

   --  Pull Enable for Port G Bit 1
   type PUEH_PTGPE1_Field is
     (
      --  Pullup is disabled for port G bit 1.
      PUEH_PTGPE1_Field_0,
      --  Pullup is enabled for port G bit 1.
      PUEH_PTGPE1_Field_1)
     with Size => 1;
   for PUEH_PTGPE1_Field use
     (PUEH_PTGPE1_Field_0 => 0,
      PUEH_PTGPE1_Field_1 => 1);

   --  Pull Enable for Port G Bit 2
   type PUEH_PTGPE2_Field is
     (
      --  Pullup is disabled for port G bit 2.
      PUEH_PTGPE2_Field_0,
      --  Pullup is enabled for port G bit 2.
      PUEH_PTGPE2_Field_1)
     with Size => 1;
   for PUEH_PTGPE2_Field use
     (PUEH_PTGPE2_Field_0 => 0,
      PUEH_PTGPE2_Field_1 => 1);

   --  Pull Enable for Port G Bit 3
   type PUEH_PTGPE3_Field is
     (
      --  Pullup is disabled for port G bit 3.
      PUEH_PTGPE3_Field_0,
      --  Pullup is enabled for port G bit 3.
      PUEH_PTGPE3_Field_1)
     with Size => 1;
   for PUEH_PTGPE3_Field use
     (PUEH_PTGPE3_Field_0 => 0,
      PUEH_PTGPE3_Field_1 => 1);

   --  Pull Enable for Port H Bit 0
   type PUEH_PTHPE0_Field is
     (
      --  Pullup is disabled for port H bit 0.
      PUEH_PTHPE0_Field_0,
      --  Pullup is enabled for port H bit 0.
      PUEH_PTHPE0_Field_1)
     with Size => 1;
   for PUEH_PTHPE0_Field use
     (PUEH_PTHPE0_Field_0 => 0,
      PUEH_PTHPE0_Field_1 => 1);

   --  Pull Enable for Port H Bit 1
   type PUEH_PTHPE1_Field is
     (
      --  Pullup is disabled for port H bit 1.
      PUEH_PTHPE1_Field_0,
      --  Pullup is enabled for port H bit 1.
      PUEH_PTHPE1_Field_1)
     with Size => 1;
   for PUEH_PTHPE1_Field use
     (PUEH_PTHPE1_Field_0 => 0,
      PUEH_PTHPE1_Field_1 => 1);

   --  Pull Enable for Port H Bit 2
   type PUEH_PTHPE2_Field is
     (
      --  Pullup is disabled for port H bit 2.
      PUEH_PTHPE2_Field_0,
      --  Pullup is enabled for port H bit 2.
      PUEH_PTHPE2_Field_1)
     with Size => 1;
   for PUEH_PTHPE2_Field use
     (PUEH_PTHPE2_Field_0 => 0,
      PUEH_PTHPE2_Field_1 => 1);

   --  Pull Enable for Port H Bit 6
   type PUEH_PTHPE6_Field is
     (
      --  Pullup is disabled for port H bit 6.
      PUEH_PTHPE6_Field_0,
      --  Pullup is enabled for port H bit 6.
      PUEH_PTHPE6_Field_1)
     with Size => 1;
   for PUEH_PTHPE6_Field use
     (PUEH_PTHPE6_Field_0 => 0,
      PUEH_PTHPE6_Field_1 => 1);

   --  Pull Enable for Port H Bit 7
   type PUEH_PTHPE7_Field is
     (
      --  Pullup is disabled for port H bit 7.
      PUEH_PTHPE7_Field_0,
      --  Pullup is enabled for port H bit 7.
      PUEH_PTHPE7_Field_1)
     with Size => 1;
   for PUEH_PTHPE7_Field use
     (PUEH_PTHPE7_Field_0 => 0,
      PUEH_PTHPE7_Field_1 => 1);

   --  Port Pullup Enable High Register
   type PORT_PUEH_Register is record
      --  Pull Enable for Port E Bit 0
      PTEPE0         : PUEH_PTEPE0_Field := NRF_SVD.PORT.PUEH_PTEPE0_Field_0;
      --  Pull Enable for Port E Bit 1
      PTEPE1         : PUEH_PTEPE1_Field := NRF_SVD.PORT.PUEH_PTEPE1_Field_0;
      --  Pull Enable for Port E Bit 2
      PTEPE2         : PUEH_PTEPE2_Field := NRF_SVD.PORT.PUEH_PTEPE2_Field_0;
      --  Pull Enable for Port E Bit 3
      PTEPE3         : PUEH_PTEPE3_Field := NRF_SVD.PORT.PUEH_PTEPE3_Field_0;
      --  Pull Enable for Port E Bit 4
      PTEPE4         : PUEH_PTEPE4_Field := NRF_SVD.PORT.PUEH_PTEPE4_Field_0;
      --  Pull Enable for Port E Bit 5
      PTEPE5         : PUEH_PTEPE5_Field := NRF_SVD.PORT.PUEH_PTEPE5_Field_0;
      --  Pull Enable for Port E Bit 6
      PTEPE6         : PUEH_PTEPE6_Field := NRF_SVD.PORT.PUEH_PTEPE6_Field_0;
      --  Pull Enable for Port E Bit 7
      PTEPE7         : PUEH_PTEPE7_Field := NRF_SVD.PORT.PUEH_PTEPE7_Field_0;
      --  Pull Enable for Port F Bit 0
      PTFPE0         : PUEH_PTFPE0_Field := NRF_SVD.PORT.PUEH_PTFPE0_Field_0;
      --  Pull Enable for Port F Bit 1
      PTFPE1         : PUEH_PTFPE1_Field := NRF_SVD.PORT.PUEH_PTFPE1_Field_0;
      --  Pull Enable for Port F Bit 2
      PTFPE2         : PUEH_PTFPE2_Field := NRF_SVD.PORT.PUEH_PTFPE2_Field_0;
      --  Pull Enable for Port F Bit 3
      PTFPE3         : PUEH_PTFPE3_Field := NRF_SVD.PORT.PUEH_PTFPE3_Field_0;
      --  Pull Enable for Port F Bit 4
      PTFPE4         : PUEH_PTFPE4_Field := NRF_SVD.PORT.PUEH_PTFPE4_Field_0;
      --  Pull Enable for Port F Bit 5
      PTFPE5         : PUEH_PTFPE5_Field := NRF_SVD.PORT.PUEH_PTFPE5_Field_0;
      --  Pull Enable for Port F Bit 6
      PTFPE6         : PUEH_PTFPE6_Field := NRF_SVD.PORT.PUEH_PTFPE6_Field_0;
      --  Pull Enable for Port F Bit 7
      PTFPE7         : PUEH_PTFPE7_Field := NRF_SVD.PORT.PUEH_PTFPE7_Field_0;
      --  Pull Enable for Port G Bit 0
      PTGPE0         : PUEH_PTGPE0_Field := NRF_SVD.PORT.PUEH_PTGPE0_Field_0;
      --  Pull Enable for Port G Bit 1
      PTGPE1         : PUEH_PTGPE1_Field := NRF_SVD.PORT.PUEH_PTGPE1_Field_0;
      --  Pull Enable for Port G Bit 2
      PTGPE2         : PUEH_PTGPE2_Field := NRF_SVD.PORT.PUEH_PTGPE2_Field_0;
      --  Pull Enable for Port G Bit 3
      PTGPE3         : PUEH_PTGPE3_Field := NRF_SVD.PORT.PUEH_PTGPE3_Field_0;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Pull Enable for Port H Bit 0
      PTHPE0         : PUEH_PTHPE0_Field := NRF_SVD.PORT.PUEH_PTHPE0_Field_0;
      --  Pull Enable for Port H Bit 1
      PTHPE1         : PUEH_PTHPE1_Field := NRF_SVD.PORT.PUEH_PTHPE1_Field_0;
      --  Pull Enable for Port H Bit 2
      PTHPE2         : PUEH_PTHPE2_Field := NRF_SVD.PORT.PUEH_PTHPE2_Field_0;
      --  unspecified
      Reserved_27_29 : HAL.UInt3 := 16#0#;
      --  Pull Enable for Port H Bit 6
      PTHPE6         : PUEH_PTHPE6_Field := NRF_SVD.PORT.PUEH_PTHPE6_Field_0;
      --  Pull Enable for Port H Bit 7
      PTHPE7         : PUEH_PTHPE7_Field := NRF_SVD.PORT.PUEH_PTHPE7_Field_0;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_PUEH_Register use record
      PTEPE0         at 0 range 0 .. 0;
      PTEPE1         at 0 range 1 .. 1;
      PTEPE2         at 0 range 2 .. 2;
      PTEPE3         at 0 range 3 .. 3;
      PTEPE4         at 0 range 4 .. 4;
      PTEPE5         at 0 range 5 .. 5;
      PTEPE6         at 0 range 6 .. 6;
      PTEPE7         at 0 range 7 .. 7;
      PTFPE0         at 0 range 8 .. 8;
      PTFPE1         at 0 range 9 .. 9;
      PTFPE2         at 0 range 10 .. 10;
      PTFPE3         at 0 range 11 .. 11;
      PTFPE4         at 0 range 12 .. 12;
      PTFPE5         at 0 range 13 .. 13;
      PTFPE6         at 0 range 14 .. 14;
      PTFPE7         at 0 range 15 .. 15;
      PTGPE0         at 0 range 16 .. 16;
      PTGPE1         at 0 range 17 .. 17;
      PTGPE2         at 0 range 18 .. 18;
      PTGPE3         at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PTHPE0         at 0 range 24 .. 24;
      PTHPE1         at 0 range 25 .. 25;
      PTHPE2         at 0 range 26 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      PTHPE6         at 0 range 30 .. 30;
      PTHPE7         at 0 range 31 .. 31;
   end record;

   --  High Current Drive Capability of PTB4
   type HDRVE_PTB4_Field is
     (
      --  PTB4 is disabled to offer high current drive capability.
      HDRVE_PTB4_Field_0,
      --  PTB4 is enabled to offer high current drive capability.
      HDRVE_PTB4_Field_1)
     with Size => 1;
   for HDRVE_PTB4_Field use
     (HDRVE_PTB4_Field_0 => 0,
      HDRVE_PTB4_Field_1 => 1);

   --  High Current Drive Capability of PTB5
   type HDRVE_PTB5_Field is
     (
      --  PTB5 is disabled to offer high current drive capability.
      HDRVE_PTB5_Field_0,
      --  PTB5 is enabled to offer high current drive capability.
      HDRVE_PTB5_Field_1)
     with Size => 1;
   for HDRVE_PTB5_Field use
     (HDRVE_PTB5_Field_0 => 0,
      HDRVE_PTB5_Field_1 => 1);

   --  High Current Drive Capability of PTD0
   type HDRVE_PTD0_Field is
     (
      --  PTD0 is disabled to offer high current drive capability.
      HDRVE_PTD0_Field_0,
      --  PTD0 is enabled to offer high current drive capability.
      HDRVE_PTD0_Field_1)
     with Size => 1;
   for HDRVE_PTD0_Field use
     (HDRVE_PTD0_Field_0 => 0,
      HDRVE_PTD0_Field_1 => 1);

   --  High Current Drive Capability of PTD1
   type HDRVE_PTD1_Field is
     (
      --  PTD1 is disabled to offer high current drive capability.
      HDRVE_PTD1_Field_0,
      --  PTD1 is enable to offer high current drive capability.
      HDRVE_PTD1_Field_1)
     with Size => 1;
   for HDRVE_PTD1_Field use
     (HDRVE_PTD1_Field_0 => 0,
      HDRVE_PTD1_Field_1 => 1);

   --  High Current Drive Capability of PTE0
   type HDRVE_PTE0_Field is
     (
      --  PTE0 is disabled to offer high current drive capability.
      HDRVE_PTE0_Field_0,
      --  PTE0 is enable to offer high current drive capability.
      HDRVE_PTE0_Field_1)
     with Size => 1;
   for HDRVE_PTE0_Field use
     (HDRVE_PTE0_Field_0 => 0,
      HDRVE_PTE0_Field_1 => 1);

   --  High Current Drive Capability of PTE1
   type HDRVE_PTE1_Field is
     (
      --  PTE1 is disabled to offer high current drive capability.
      HDRVE_PTE1_Field_0,
      --  PTE1 is enabled to offer high current drive capability.
      HDRVE_PTE1_Field_1)
     with Size => 1;
   for HDRVE_PTE1_Field use
     (HDRVE_PTE1_Field_0 => 0,
      HDRVE_PTE1_Field_1 => 1);

   --  High Current Drive Capability of PTH0
   type HDRVE_PTH0_Field is
     (
      --  PTH0 is disabled to offer high current drive capability.
      HDRVE_PTH0_Field_0,
      --  PTH0 is enabled to offer high current drive capability.
      HDRVE_PTH0_Field_1)
     with Size => 1;
   for HDRVE_PTH0_Field use
     (HDRVE_PTH0_Field_0 => 0,
      HDRVE_PTH0_Field_1 => 1);

   --  High Current Drive Capability of PTH1
   type HDRVE_PTH1_Field is
     (
      --  PTH1 is disabled to offer high current drive capability.
      HDRVE_PTH1_Field_0,
      --  PTH1 is enabled to offer high current drive capability.
      HDRVE_PTH1_Field_1)
     with Size => 1;
   for HDRVE_PTH1_Field use
     (HDRVE_PTH1_Field_0 => 0,
      HDRVE_PTH1_Field_1 => 1);

   --  Port High Drive Enable Register
   type PORT_HDRVE_Register is record
      --  High Current Drive Capability of PTB4
      PTB4          : HDRVE_PTB4_Field := NRF_SVD.PORT.HDRVE_PTB4_Field_0;
      --  High Current Drive Capability of PTB5
      PTB5          : HDRVE_PTB5_Field := NRF_SVD.PORT.HDRVE_PTB5_Field_0;
      --  High Current Drive Capability of PTD0
      PTD0          : HDRVE_PTD0_Field := NRF_SVD.PORT.HDRVE_PTD0_Field_0;
      --  High Current Drive Capability of PTD1
      PTD1          : HDRVE_PTD1_Field := NRF_SVD.PORT.HDRVE_PTD1_Field_0;
      --  High Current Drive Capability of PTE0
      PTE0          : HDRVE_PTE0_Field := NRF_SVD.PORT.HDRVE_PTE0_Field_0;
      --  High Current Drive Capability of PTE1
      PTE1          : HDRVE_PTE1_Field := NRF_SVD.PORT.HDRVE_PTE1_Field_0;
      --  High Current Drive Capability of PTH0
      PTH0          : HDRVE_PTH0_Field := NRF_SVD.PORT.HDRVE_PTH0_Field_0;
      --  High Current Drive Capability of PTH1
      PTH1          : HDRVE_PTH1_Field := NRF_SVD.PORT.HDRVE_PTH1_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_HDRVE_Register use record
      PTB4          at 0 range 0 .. 0;
      PTB5          at 0 range 1 .. 1;
      PTD0          at 0 range 2 .. 2;
      PTD1          at 0 range 3 .. 3;
      PTE0          at 0 range 4 .. 4;
      PTE1          at 0 range 5 .. 5;
      PTH0          at 0 range 6 .. 6;
      PTH1          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Port control and interrupts
   type PORT_Peripheral is record
      --  Port Filter Register
      IOFLT : aliased PORT_IOFLT_Register;
      --  Port Pullup Enable Low Register
      PUEL  : aliased PORT_PUEL_Register;
      --  Port Pullup Enable High Register
      PUEH  : aliased PORT_PUEH_Register;
      --  Port High Drive Enable Register
      HDRVE : aliased PORT_HDRVE_Register;
   end record
     with Volatile;

   for PORT_Peripheral use record
      IOFLT at 16#0# range 0 .. 31;
      PUEL  at 16#4# range 0 .. 31;
      PUEH  at 16#8# range 0 .. 31;
      HDRVE at 16#C# range 0 .. 31;
   end record;

   --  Port control and interrupts
   PORT_Periph : aliased PORT_Peripheral
     with Import, Address => PORT_Base;

end NRF_SVD.PORT;
