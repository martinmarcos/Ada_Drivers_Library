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

--  This spec has been automatically generated from MKE04Z4.xml

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

   --  Filter Selection For Input from SCL/SDA
   type IOFLT_FLTIIC_Field is
     (
      --  No filter
      IOFLT_FLTIIC_Field_00,
      --  Select FLTDIV1
      IOFLT_FLTIIC_Field_01,
      --  Select FLTDIV2
      IOFLT_FLTIIC_Field_10,
      --  Select BUSCLK
      IOFLT_FLTIIC_Field_11)
     with Size => 2;
   for IOFLT_FLTIIC_Field use
     (IOFLT_FLTIIC_Field_00 => 0,
      IOFLT_FLTIIC_Field_01 => 1,
      IOFLT_FLTIIC_Field_10 => 2,
      IOFLT_FLTIIC_Field_11 => 3);

   --  Filter Selection For Input from FTM0CH0/FTM0CH1
   type IOFLT_FLTFTM0_Field is
     (
      --  No filter
      IOFLT_FLTFTM0_Field_00,
      --  Select FLTDIV1
      IOFLT_FLTFTM0_Field_01,
      --  Select FLTDIV2
      IOFLT_FLTFTM0_Field_10,
      --  Select FLTDIV3
      IOFLT_FLTFTM0_Field_11)
     with Size => 2;
   for IOFLT_FLTFTM0_Field use
     (IOFLT_FLTFTM0_Field_00 => 0,
      IOFLT_FLTFTM0_Field_01 => 1,
      IOFLT_FLTFTM0_Field_10 => 2,
      IOFLT_FLTFTM0_Field_11 => 3);

   --  Filter Selection For Input from PWT_IN1/PWT_IN0
   type IOFLT_FLTPWT_Field is
     (
      --  No filter
      IOFLT_FLTPWT_Field_00,
      --  Select FLTDIV1
      IOFLT_FLTPWT_Field_01,
      --  Select FLTDIV2
      IOFLT_FLTPWT_Field_10,
      --  Select FLTDIV3
      IOFLT_FLTPWT_Field_11)
     with Size => 2;
   for IOFLT_FLTPWT_Field use
     (IOFLT_FLTPWT_Field_00 => 0,
      IOFLT_FLTPWT_Field_01 => 1,
      IOFLT_FLTPWT_Field_10 => 2,
      IOFLT_FLTPWT_Field_11 => 3);

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
      FLTA         : IOFLT_FLTA_Field := NRF_SVD.PORT.IOFLT_FLTA_Field_00;
      --  Filter Selection for Input from PTB
      FLTB         : IOFLT_FLTB_Field := NRF_SVD.PORT.IOFLT_FLTB_Field_00;
      --  Filter Selection for Input from PTC
      FLTC         : IOFLT_FLTC_Field := NRF_SVD.PORT.IOFLT_FLTC_Field_00;
      --  unspecified
      Reserved_6_9 : HAL.UInt4 := 16#0#;
      --  Filter Selection For Input from SCL/SDA
      FLTIIC       : IOFLT_FLTIIC_Field := NRF_SVD.PORT.IOFLT_FLTIIC_Field_00;
      --  Filter Selection For Input from FTM0CH0/FTM0CH1
      FLTFTM0      : IOFLT_FLTFTM0_Field :=
                      NRF_SVD.PORT.IOFLT_FLTFTM0_Field_00;
      --  Filter Selection For Input from PWT_IN1/PWT_IN0
      FLTPWT       : IOFLT_FLTPWT_Field := NRF_SVD.PORT.IOFLT_FLTPWT_Field_00;
      --  Filter Selection for Input from RESET/IRQ
      FLTRST       : IOFLT_FLTRST_Field := NRF_SVD.PORT.IOFLT_FLTRST_Field_00;
      --  Filter selection for Input from KBI0
      FLTKBI0      : IOFLT_FLTKBI0_Field :=
                      NRF_SVD.PORT.IOFLT_FLTKBI0_Field_00;
      --  Filter Selection for Input from KBI1
      FLTKBI1      : IOFLT_FLTKBI1_Field :=
                      NRF_SVD.PORT.IOFLT_FLTKBI1_Field_00;
      --  Filter Selection for Input from NMI
      FLTNMI       : IOFLT_FLTNMI_Field := NRF_SVD.PORT.IOFLT_FLTNMI_Field_11;
      --  Filter Division Set 1
      FLTDIV1      : IOFLT_FLTDIV1_Field :=
                      NRF_SVD.PORT.IOFLT_FLTDIV1_Field_00;
      --  Filter Division Set 2
      FLTDIV2      : IOFLT_FLTDIV2_Field :=
                      NRF_SVD.PORT.IOFLT_FLTDIV2_Field_000;
      --  Filter Division Set 3
      FLTDIV3      : IOFLT_FLTDIV3_Field :=
                      NRF_SVD.PORT.IOFLT_FLTDIV3_Field_000;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_IOFLT_Register use record
      FLTA         at 0 range 0 .. 1;
      FLTB         at 0 range 2 .. 3;
      FLTC         at 0 range 4 .. 5;
      Reserved_6_9 at 0 range 6 .. 9;
      FLTIIC       at 0 range 10 .. 11;
      FLTFTM0      at 0 range 12 .. 13;
      FLTPWT       at 0 range 14 .. 15;
      FLTRST       at 0 range 16 .. 17;
      FLTKBI0      at 0 range 18 .. 19;
      FLTKBI1      at 0 range 20 .. 21;
      FLTNMI       at 0 range 22 .. 23;
      FLTDIV1      at 0 range 24 .. 25;
      FLTDIV2      at 0 range 26 .. 28;
      FLTDIV3      at 0 range 29 .. 31;
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

   --  Port Pullup Enable Low Register
   type PORT_PUEL_Register is record
      --  Pull Enable for Port A Bit 0
      PTAPE0         : PUEL_PTAPE0_Field := NRF_SVD.PORT.PUEL_PTAPE0_Field_1;
      --  Pull Enable for Port A Bit 1
      PTAPE1         : PUEL_PTAPE1_Field := NRF_SVD.PORT.PUEL_PTAPE1_Field_0;
      --  Pull Enable for Port A Bit 2
      PTAPE2         : PUEL_PTAPE2_Field := NRF_SVD.PORT.PUEL_PTAPE2_Field_0;
      --  Pull Enable for Port A Bit 3
      PTAPE3         : PUEL_PTAPE3_Field := NRF_SVD.PORT.PUEL_PTAPE3_Field_0;
      --  Pull Enable for Port A Bit 4
      PTAPE4         : PUEL_PTAPE4_Field := NRF_SVD.PORT.PUEL_PTAPE4_Field_0;
      --  Pull Enable for Port A Bit 5
      PTAPE5         : PUEL_PTAPE5_Field := NRF_SVD.PORT.PUEL_PTAPE5_Field_0;
      --  Pull Enable for Port A Bit 6
      PTAPE6         : PUEL_PTAPE6_Field := NRF_SVD.PORT.PUEL_PTAPE6_Field_0;
      --  Pull Enable for Port A Bit 7
      PTAPE7         : PUEL_PTAPE7_Field := NRF_SVD.PORT.PUEL_PTAPE7_Field_0;
      --  Pull Enable for Port B Bit 0
      PTBPE0         : PUEL_PTBPE0_Field := NRF_SVD.PORT.PUEL_PTBPE0_Field_0;
      --  Pull Enable for Port B Bit 1
      PTBPE1         : PUEL_PTBPE1_Field := NRF_SVD.PORT.PUEL_PTBPE1_Field_0;
      --  Pull Enable for Port B Bit 2
      PTBPE2         : PUEL_PTBPE2_Field := NRF_SVD.PORT.PUEL_PTBPE2_Field_0;
      --  Pull Enable for Port B Bit 3
      PTBPE3         : PUEL_PTBPE3_Field := NRF_SVD.PORT.PUEL_PTBPE3_Field_0;
      --  Pull Enable for Port B Bit 4
      PTBPE4         : PUEL_PTBPE4_Field := NRF_SVD.PORT.PUEL_PTBPE4_Field_0;
      --  Pull Enable for Port B Bit 5
      PTBPE5         : PUEL_PTBPE5_Field := NRF_SVD.PORT.PUEL_PTBPE5_Field_0;
      --  Pull Enable for Port B Bit 6
      PTBPE6         : PUEL_PTBPE6_Field := NRF_SVD.PORT.PUEL_PTBPE6_Field_0;
      --  Pull Enable for Port B Bit 7
      PTBPE7         : PUEL_PTBPE7_Field := NRF_SVD.PORT.PUEL_PTBPE7_Field_0;
      --  Pull Enable for Port C Bit 0
      PTCPE0         : PUEL_PTCPE0_Field := NRF_SVD.PORT.PUEL_PTCPE0_Field_0;
      --  Pull Enable for Port C Bit 1
      PTCPE1         : PUEL_PTCPE1_Field := NRF_SVD.PORT.PUEL_PTCPE1_Field_0;
      --  Pull Enable for Port C Bit 2
      PTCPE2         : PUEL_PTCPE2_Field := NRF_SVD.PORT.PUEL_PTCPE2_Field_0;
      --  Pull Enable for Port C Bit 3
      PTCPE3         : PUEL_PTCPE3_Field := NRF_SVD.PORT.PUEL_PTCPE3_Field_0;
      --  Pull Enable for Port C Bit 4
      PTCPE4         : PUEL_PTCPE4_Field := NRF_SVD.PORT.PUEL_PTCPE4_Field_0;
      --  Pull Enable for Port C Bit 5
      PTCPE5         : PUEL_PTCPE5_Field := NRF_SVD.PORT.PUEL_PTCPE5_Field_0;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_PUEL_Register use record
      PTAPE0         at 0 range 0 .. 0;
      PTAPE1         at 0 range 1 .. 1;
      PTAPE2         at 0 range 2 .. 2;
      PTAPE3         at 0 range 3 .. 3;
      PTAPE4         at 0 range 4 .. 4;
      PTAPE5         at 0 range 5 .. 5;
      PTAPE6         at 0 range 6 .. 6;
      PTAPE7         at 0 range 7 .. 7;
      PTBPE0         at 0 range 8 .. 8;
      PTBPE1         at 0 range 9 .. 9;
      PTBPE2         at 0 range 10 .. 10;
      PTBPE3         at 0 range 11 .. 11;
      PTBPE4         at 0 range 12 .. 12;
      PTBPE5         at 0 range 13 .. 13;
      PTBPE6         at 0 range 14 .. 14;
      PTBPE7         at 0 range 15 .. 15;
      PTCPE0         at 0 range 16 .. 16;
      PTCPE1         at 0 range 17 .. 17;
      PTCPE2         at 0 range 18 .. 18;
      PTCPE3         at 0 range 19 .. 19;
      PTCPE4         at 0 range 20 .. 20;
      PTCPE5         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

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

   --  High Current Drive Capability of PTC1
   type HDRVE_PTC1_Field is
     (
      --  PTC1 is disabled to offer high current drive capability.
      HDRVE_PTC1_Field_0,
      --  PTC1 is enabled to offer high current drive capability.
      HDRVE_PTC1_Field_1)
     with Size => 1;
   for HDRVE_PTC1_Field use
     (HDRVE_PTC1_Field_0 => 0,
      HDRVE_PTC1_Field_1 => 1);

   --  High Current Drive Capability of PTC5
   type HDRVE_PTC5_Field is
     (
      --  PTC5 is disabled to offer high current drive capability.
      HDRVE_PTC5_Field_0,
      --  PTC5 is enabled to offer high current drive capability.
      HDRVE_PTC5_Field_1)
     with Size => 1;
   for HDRVE_PTC5_Field use
     (HDRVE_PTC5_Field_0 => 0,
      HDRVE_PTC5_Field_1 => 1);

   --  Port High Drive Enable Register
   type PORT_HDRVE_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  High Current Drive Capability of PTB5
      PTB5          : HDRVE_PTB5_Field := NRF_SVD.PORT.HDRVE_PTB5_Field_0;
      --  High Current Drive Capability of PTC1
      PTC1          : HDRVE_PTC1_Field := NRF_SVD.PORT.HDRVE_PTC1_Field_0;
      --  High Current Drive Capability of PTC5
      PTC5          : HDRVE_PTC5_Field := NRF_SVD.PORT.HDRVE_PTC5_Field_0;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PORT_HDRVE_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      PTB5          at 0 range 1 .. 1;
      PTC1          at 0 range 2 .. 2;
      PTC5          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
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
      --  Port High Drive Enable Register
      HDRVE : aliased PORT_HDRVE_Register;
   end record
     with Volatile;

   for PORT_Peripheral use record
      IOFLT at 16#0# range 0 .. 31;
      PUEL  at 16#4# range 0 .. 31;
      HDRVE at 16#C# range 0 .. 31;
   end record;

   --  Port control and interrupts
   PORT_Periph : aliased PORT_Peripheral
     with Import, Address => PORT_Base;

end NRF_SVD.PORT;
