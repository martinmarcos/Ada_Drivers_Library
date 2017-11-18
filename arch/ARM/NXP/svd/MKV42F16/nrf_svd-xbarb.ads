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

--  This spec has been automatically generated from MKV42F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Crossbar Switch
package NRF_SVD.XBARB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Input (XBARB_INn) to be muxed to XBARB_OUT0 (refer to Functional
   --  Description section for input/output assignment)
   type SEL0_SEL0_Field is
     (
      --  CMP0 Output
      SEL0_SEL0_Field_0,
      --  CMP1 Output
      SEL0_SEL0_Field_1,
      --  CMP2 Output
      SEL0_SEL0_Field_2,
      --  CMP3 Output
      SEL0_SEL0_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL0_SEL0_Field_4,
      --  FTM0 counter init trigger
      SEL0_SEL0_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL0_SEL0_Field_6,
      --  FTM3 counter init trigger
      SEL0_SEL0_Field_7,
      --  PDB0 channel 0 output trigger
      SEL0_SEL0_Field_12,
      --  ADC converter A end of scan
      SEL0_SEL0_Field_13,
      --  XBARIN2 input pin
      SEL0_SEL0_Field_14,
      --  XBARIN3 input pin
      SEL0_SEL0_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL0_SEL0_Field_16,
      --  FTM1 counter init trigger
      SEL0_SEL0_Field_17,
      --  DMA channel 0 done
      SEL0_SEL0_Field_18,
      --  DMA channel 1 done
      SEL0_SEL0_Field_19,
      --  XBARIN10 input pin
      SEL0_SEL0_Field_20,
      --  XBARIN11 input pin
      SEL0_SEL0_Field_21,
      --  DMA channel 6 done
      SEL0_SEL0_Field_22,
      --  DMA channel 7 done
      SEL0_SEL0_Field_23,
      --  PIT trigger 0
      SEL0_SEL0_Field_24,
      --  PIT trigger 1
      SEL0_SEL0_Field_25,
      --  PDB1 channel 0 output trigger
      SEL0_SEL0_Field_26,
      --  ADC converter B end of scan
      SEL0_SEL0_Field_27)
     with Size => 5;
   for SEL0_SEL0_Field use
     (SEL0_SEL0_Field_0 => 0,
      SEL0_SEL0_Field_1 => 1,
      SEL0_SEL0_Field_2 => 2,
      SEL0_SEL0_Field_3 => 3,
      SEL0_SEL0_Field_4 => 4,
      SEL0_SEL0_Field_5 => 5,
      SEL0_SEL0_Field_6 => 6,
      SEL0_SEL0_Field_7 => 7,
      SEL0_SEL0_Field_12 => 12,
      SEL0_SEL0_Field_13 => 13,
      SEL0_SEL0_Field_14 => 14,
      SEL0_SEL0_Field_15 => 15,
      SEL0_SEL0_Field_16 => 16,
      SEL0_SEL0_Field_17 => 17,
      SEL0_SEL0_Field_18 => 18,
      SEL0_SEL0_Field_19 => 19,
      SEL0_SEL0_Field_20 => 20,
      SEL0_SEL0_Field_21 => 21,
      SEL0_SEL0_Field_22 => 22,
      SEL0_SEL0_Field_23 => 23,
      SEL0_SEL0_Field_24 => 24,
      SEL0_SEL0_Field_25 => 25,
      SEL0_SEL0_Field_26 => 26,
      SEL0_SEL0_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT1 (refer to Functional
   --  Description section for input/output assignment)
   type SEL0_SEL1_Field is
     (
      --  CMP0 Output
      SEL0_SEL1_Field_0,
      --  CMP1 Output
      SEL0_SEL1_Field_1,
      --  CMP2 Output
      SEL0_SEL1_Field_2,
      --  CMP3 Output
      SEL0_SEL1_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL0_SEL1_Field_4,
      --  FTM0 counter init trigger
      SEL0_SEL1_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL0_SEL1_Field_6,
      --  FTM3 counter init trigger
      SEL0_SEL1_Field_7,
      --  PDB0 channel 0 output trigger
      SEL0_SEL1_Field_12,
      --  ADC converter A end of scan
      SEL0_SEL1_Field_13,
      --  XBARIN2 input pin
      SEL0_SEL1_Field_14,
      --  XBARIN3 input pin
      SEL0_SEL1_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL0_SEL1_Field_16,
      --  FTM1 counter init trigger
      SEL0_SEL1_Field_17,
      --  DMA channel 0 done
      SEL0_SEL1_Field_18,
      --  DMA channel 1 done
      SEL0_SEL1_Field_19,
      --  XBARIN10 input pin
      SEL0_SEL1_Field_20,
      --  XBARIN11 input pin
      SEL0_SEL1_Field_21,
      --  DMA channel 6 done
      SEL0_SEL1_Field_22,
      --  DMA channel 7 done
      SEL0_SEL1_Field_23,
      --  PIT trigger 0
      SEL0_SEL1_Field_24,
      --  PIT trigger 1
      SEL0_SEL1_Field_25,
      --  PDB1 channel 0 output trigger
      SEL0_SEL1_Field_26,
      --  ADC converter B end of scan
      SEL0_SEL1_Field_27)
     with Size => 5;
   for SEL0_SEL1_Field use
     (SEL0_SEL1_Field_0 => 0,
      SEL0_SEL1_Field_1 => 1,
      SEL0_SEL1_Field_2 => 2,
      SEL0_SEL1_Field_3 => 3,
      SEL0_SEL1_Field_4 => 4,
      SEL0_SEL1_Field_5 => 5,
      SEL0_SEL1_Field_6 => 6,
      SEL0_SEL1_Field_7 => 7,
      SEL0_SEL1_Field_12 => 12,
      SEL0_SEL1_Field_13 => 13,
      SEL0_SEL1_Field_14 => 14,
      SEL0_SEL1_Field_15 => 15,
      SEL0_SEL1_Field_16 => 16,
      SEL0_SEL1_Field_17 => 17,
      SEL0_SEL1_Field_18 => 18,
      SEL0_SEL1_Field_19 => 19,
      SEL0_SEL1_Field_20 => 20,
      SEL0_SEL1_Field_21 => 21,
      SEL0_SEL1_Field_22 => 22,
      SEL0_SEL1_Field_23 => 23,
      SEL0_SEL1_Field_24 => 24,
      SEL0_SEL1_Field_25 => 25,
      SEL0_SEL1_Field_26 => 26,
      SEL0_SEL1_Field_27 => 27);

   --  Crossbar B Select Register 0
   type XBARB_SEL0_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT0 (refer to Functional
      --  Description section for input/output assignment)
      SEL0           : SEL0_SEL0_Field := NRF_SVD.XBARB.SEL0_SEL0_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT1 (refer to Functional
      --  Description section for input/output assignment)
      SEL1           : SEL0_SEL1_Field := NRF_SVD.XBARB.SEL0_SEL1_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL0_Register use record
      SEL0           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL1           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT2 (refer to Functional
   --  Description section for input/output assignment)
   type SEL1_SEL2_Field is
     (
      --  CMP0 Output
      SEL1_SEL2_Field_0,
      --  CMP1 Output
      SEL1_SEL2_Field_1,
      --  CMP2 Output
      SEL1_SEL2_Field_2,
      --  CMP3 Output
      SEL1_SEL2_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL1_SEL2_Field_4,
      --  FTM0 counter init trigger
      SEL1_SEL2_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL1_SEL2_Field_6,
      --  FTM3 counter init trigger
      SEL1_SEL2_Field_7,
      --  PDB0 channel 0 output trigger
      SEL1_SEL2_Field_12,
      --  ADC converter A end of scan
      SEL1_SEL2_Field_13,
      --  XBARIN2 input pin
      SEL1_SEL2_Field_14,
      --  XBARIN3 input pin
      SEL1_SEL2_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL1_SEL2_Field_16,
      --  FTM1 counter init trigger
      SEL1_SEL2_Field_17,
      --  DMA channel 0 done
      SEL1_SEL2_Field_18,
      --  DMA channel 1 done
      SEL1_SEL2_Field_19,
      --  XBARIN10 input pin
      SEL1_SEL2_Field_20,
      --  XBARIN11 input pin
      SEL1_SEL2_Field_21,
      --  DMA channel 6 done
      SEL1_SEL2_Field_22,
      --  DMA channel 7 done
      SEL1_SEL2_Field_23,
      --  PIT trigger 0
      SEL1_SEL2_Field_24,
      --  PIT trigger 1
      SEL1_SEL2_Field_25,
      --  PDB1 channel 0 output trigger
      SEL1_SEL2_Field_26,
      --  ADC converter B end of scan
      SEL1_SEL2_Field_27)
     with Size => 5;
   for SEL1_SEL2_Field use
     (SEL1_SEL2_Field_0 => 0,
      SEL1_SEL2_Field_1 => 1,
      SEL1_SEL2_Field_2 => 2,
      SEL1_SEL2_Field_3 => 3,
      SEL1_SEL2_Field_4 => 4,
      SEL1_SEL2_Field_5 => 5,
      SEL1_SEL2_Field_6 => 6,
      SEL1_SEL2_Field_7 => 7,
      SEL1_SEL2_Field_12 => 12,
      SEL1_SEL2_Field_13 => 13,
      SEL1_SEL2_Field_14 => 14,
      SEL1_SEL2_Field_15 => 15,
      SEL1_SEL2_Field_16 => 16,
      SEL1_SEL2_Field_17 => 17,
      SEL1_SEL2_Field_18 => 18,
      SEL1_SEL2_Field_19 => 19,
      SEL1_SEL2_Field_20 => 20,
      SEL1_SEL2_Field_21 => 21,
      SEL1_SEL2_Field_22 => 22,
      SEL1_SEL2_Field_23 => 23,
      SEL1_SEL2_Field_24 => 24,
      SEL1_SEL2_Field_25 => 25,
      SEL1_SEL2_Field_26 => 26,
      SEL1_SEL2_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT3 (refer to Functional
   --  Description section for input/output assignment)
   type SEL1_SEL3_Field is
     (
      --  CMP0 Output
      SEL1_SEL3_Field_0,
      --  CMP1 Output
      SEL1_SEL3_Field_1,
      --  CMP2 Output
      SEL1_SEL3_Field_2,
      --  CMP3 Output
      SEL1_SEL3_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL1_SEL3_Field_4,
      --  FTM0 counter init trigger
      SEL1_SEL3_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL1_SEL3_Field_6,
      --  FTM3 counter init trigger
      SEL1_SEL3_Field_7,
      --  PDB0 channel 0 output trigger
      SEL1_SEL3_Field_12,
      --  ADC converter A end of scan
      SEL1_SEL3_Field_13,
      --  XBARIN2 input pin
      SEL1_SEL3_Field_14,
      --  XBARIN3 input pin
      SEL1_SEL3_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL1_SEL3_Field_16,
      --  FTM1 counter init trigger
      SEL1_SEL3_Field_17,
      --  DMA channel 0 done
      SEL1_SEL3_Field_18,
      --  DMA channel 1 done
      SEL1_SEL3_Field_19,
      --  XBARIN10 input pin
      SEL1_SEL3_Field_20,
      --  XBARIN11 input pin
      SEL1_SEL3_Field_21,
      --  DMA channel 6 done
      SEL1_SEL3_Field_22,
      --  DMA channel 7 done
      SEL1_SEL3_Field_23,
      --  PIT trigger 0
      SEL1_SEL3_Field_24,
      --  PIT trigger 1
      SEL1_SEL3_Field_25,
      --  PDB1 channel 0 output trigger
      SEL1_SEL3_Field_26,
      --  ADC converter B end of scan
      SEL1_SEL3_Field_27)
     with Size => 5;
   for SEL1_SEL3_Field use
     (SEL1_SEL3_Field_0 => 0,
      SEL1_SEL3_Field_1 => 1,
      SEL1_SEL3_Field_2 => 2,
      SEL1_SEL3_Field_3 => 3,
      SEL1_SEL3_Field_4 => 4,
      SEL1_SEL3_Field_5 => 5,
      SEL1_SEL3_Field_6 => 6,
      SEL1_SEL3_Field_7 => 7,
      SEL1_SEL3_Field_12 => 12,
      SEL1_SEL3_Field_13 => 13,
      SEL1_SEL3_Field_14 => 14,
      SEL1_SEL3_Field_15 => 15,
      SEL1_SEL3_Field_16 => 16,
      SEL1_SEL3_Field_17 => 17,
      SEL1_SEL3_Field_18 => 18,
      SEL1_SEL3_Field_19 => 19,
      SEL1_SEL3_Field_20 => 20,
      SEL1_SEL3_Field_21 => 21,
      SEL1_SEL3_Field_22 => 22,
      SEL1_SEL3_Field_23 => 23,
      SEL1_SEL3_Field_24 => 24,
      SEL1_SEL3_Field_25 => 25,
      SEL1_SEL3_Field_26 => 26,
      SEL1_SEL3_Field_27 => 27);

   --  Crossbar B Select Register 1
   type XBARB_SEL1_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT2 (refer to Functional
      --  Description section for input/output assignment)
      SEL2           : SEL1_SEL2_Field := NRF_SVD.XBARB.SEL1_SEL2_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT3 (refer to Functional
      --  Description section for input/output assignment)
      SEL3           : SEL1_SEL3_Field := NRF_SVD.XBARB.SEL1_SEL3_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL1_Register use record
      SEL2           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL3           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT4 (refer to Functional
   --  Description section for input/output assignment)
   type SEL2_SEL4_Field is
     (
      --  CMP0 Output
      SEL2_SEL4_Field_0,
      --  CMP1 Output
      SEL2_SEL4_Field_1,
      --  CMP2 Output
      SEL2_SEL4_Field_2,
      --  CMP3 Output
      SEL2_SEL4_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL2_SEL4_Field_4,
      --  FTM0 counter init trigger
      SEL2_SEL4_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL2_SEL4_Field_6,
      --  FTM3 counter init trigger
      SEL2_SEL4_Field_7,
      --  PDB0 channel 0 output trigger
      SEL2_SEL4_Field_12,
      --  ADC converter A end of scan
      SEL2_SEL4_Field_13,
      --  XBARIN2 input pin
      SEL2_SEL4_Field_14,
      --  XBARIN3 input pin
      SEL2_SEL4_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL2_SEL4_Field_16,
      --  FTM1 counter init trigger
      SEL2_SEL4_Field_17,
      --  DMA channel 0 done
      SEL2_SEL4_Field_18,
      --  DMA channel 1 done
      SEL2_SEL4_Field_19,
      --  XBARIN10 input pin
      SEL2_SEL4_Field_20,
      --  XBARIN11 input pin
      SEL2_SEL4_Field_21,
      --  DMA channel 6 done
      SEL2_SEL4_Field_22,
      --  DMA channel 7 done
      SEL2_SEL4_Field_23,
      --  PIT trigger 0
      SEL2_SEL4_Field_24,
      --  PIT trigger 1
      SEL2_SEL4_Field_25,
      --  PDB1 channel 0 output trigger
      SEL2_SEL4_Field_26,
      --  ADC converter B end of scan
      SEL2_SEL4_Field_27)
     with Size => 5;
   for SEL2_SEL4_Field use
     (SEL2_SEL4_Field_0 => 0,
      SEL2_SEL4_Field_1 => 1,
      SEL2_SEL4_Field_2 => 2,
      SEL2_SEL4_Field_3 => 3,
      SEL2_SEL4_Field_4 => 4,
      SEL2_SEL4_Field_5 => 5,
      SEL2_SEL4_Field_6 => 6,
      SEL2_SEL4_Field_7 => 7,
      SEL2_SEL4_Field_12 => 12,
      SEL2_SEL4_Field_13 => 13,
      SEL2_SEL4_Field_14 => 14,
      SEL2_SEL4_Field_15 => 15,
      SEL2_SEL4_Field_16 => 16,
      SEL2_SEL4_Field_17 => 17,
      SEL2_SEL4_Field_18 => 18,
      SEL2_SEL4_Field_19 => 19,
      SEL2_SEL4_Field_20 => 20,
      SEL2_SEL4_Field_21 => 21,
      SEL2_SEL4_Field_22 => 22,
      SEL2_SEL4_Field_23 => 23,
      SEL2_SEL4_Field_24 => 24,
      SEL2_SEL4_Field_25 => 25,
      SEL2_SEL4_Field_26 => 26,
      SEL2_SEL4_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT5 (refer to Functional
   --  Description section for input/output assignment)
   type SEL2_SEL5_Field is
     (
      --  CMP0 Output
      SEL2_SEL5_Field_0,
      --  CMP1 Output
      SEL2_SEL5_Field_1,
      --  CMP2 Output
      SEL2_SEL5_Field_2,
      --  CMP3 Output
      SEL2_SEL5_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL2_SEL5_Field_4,
      --  FTM0 counter init trigger
      SEL2_SEL5_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL2_SEL5_Field_6,
      --  FTM3 counter init trigger
      SEL2_SEL5_Field_7,
      --  PDB0 channel 0 output trigger
      SEL2_SEL5_Field_12,
      --  ADC converter A end of scan
      SEL2_SEL5_Field_13,
      --  XBARIN2 input pin
      SEL2_SEL5_Field_14,
      --  XBARIN3 input pin
      SEL2_SEL5_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL2_SEL5_Field_16,
      --  FTM1 counter init trigger
      SEL2_SEL5_Field_17,
      --  DMA channel 0 done
      SEL2_SEL5_Field_18,
      --  DMA channel 1 done
      SEL2_SEL5_Field_19,
      --  XBARIN10 input pin
      SEL2_SEL5_Field_20,
      --  XBARIN11 input pin
      SEL2_SEL5_Field_21,
      --  DMA channel 6 done
      SEL2_SEL5_Field_22,
      --  DMA channel 7 done
      SEL2_SEL5_Field_23,
      --  PIT trigger 0
      SEL2_SEL5_Field_24,
      --  PIT trigger 1
      SEL2_SEL5_Field_25,
      --  PDB1 channel 0 output trigger
      SEL2_SEL5_Field_26,
      --  ADC converter B end of scan
      SEL2_SEL5_Field_27)
     with Size => 5;
   for SEL2_SEL5_Field use
     (SEL2_SEL5_Field_0 => 0,
      SEL2_SEL5_Field_1 => 1,
      SEL2_SEL5_Field_2 => 2,
      SEL2_SEL5_Field_3 => 3,
      SEL2_SEL5_Field_4 => 4,
      SEL2_SEL5_Field_5 => 5,
      SEL2_SEL5_Field_6 => 6,
      SEL2_SEL5_Field_7 => 7,
      SEL2_SEL5_Field_12 => 12,
      SEL2_SEL5_Field_13 => 13,
      SEL2_SEL5_Field_14 => 14,
      SEL2_SEL5_Field_15 => 15,
      SEL2_SEL5_Field_16 => 16,
      SEL2_SEL5_Field_17 => 17,
      SEL2_SEL5_Field_18 => 18,
      SEL2_SEL5_Field_19 => 19,
      SEL2_SEL5_Field_20 => 20,
      SEL2_SEL5_Field_21 => 21,
      SEL2_SEL5_Field_22 => 22,
      SEL2_SEL5_Field_23 => 23,
      SEL2_SEL5_Field_24 => 24,
      SEL2_SEL5_Field_25 => 25,
      SEL2_SEL5_Field_26 => 26,
      SEL2_SEL5_Field_27 => 27);

   --  Crossbar B Select Register 2
   type XBARB_SEL2_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT4 (refer to Functional
      --  Description section for input/output assignment)
      SEL4           : SEL2_SEL4_Field := NRF_SVD.XBARB.SEL2_SEL4_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT5 (refer to Functional
      --  Description section for input/output assignment)
      SEL5           : SEL2_SEL5_Field := NRF_SVD.XBARB.SEL2_SEL5_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL2_Register use record
      SEL4           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL5           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT6 (refer to Functional
   --  Description section for input/output assignment)
   type SEL3_SEL6_Field is
     (
      --  CMP0 Output
      SEL3_SEL6_Field_0,
      --  CMP1 Output
      SEL3_SEL6_Field_1,
      --  CMP2 Output
      SEL3_SEL6_Field_2,
      --  CMP3 Output
      SEL3_SEL6_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL3_SEL6_Field_4,
      --  FTM0 counter init trigger
      SEL3_SEL6_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL3_SEL6_Field_6,
      --  FTM3 counter init trigger
      SEL3_SEL6_Field_7,
      --  PDB0 channel 0 output trigger
      SEL3_SEL6_Field_12,
      --  ADC converter A end of scan
      SEL3_SEL6_Field_13,
      --  XBARIN2 input pin
      SEL3_SEL6_Field_14,
      --  XBARIN3 input pin
      SEL3_SEL6_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL3_SEL6_Field_16,
      --  FTM1 counter init trigger
      SEL3_SEL6_Field_17,
      --  DMA channel 0 done
      SEL3_SEL6_Field_18,
      --  DMA channel 1 done
      SEL3_SEL6_Field_19,
      --  XBARIN10 input pin
      SEL3_SEL6_Field_20,
      --  XBARIN11 input pin
      SEL3_SEL6_Field_21,
      --  DMA channel 6 done
      SEL3_SEL6_Field_22,
      --  DMA channel 7 done
      SEL3_SEL6_Field_23,
      --  PIT trigger 0
      SEL3_SEL6_Field_24,
      --  PIT trigger 1
      SEL3_SEL6_Field_25,
      --  PDB1 channel 0 output trigger
      SEL3_SEL6_Field_26,
      --  ADC converter B end of scan
      SEL3_SEL6_Field_27)
     with Size => 5;
   for SEL3_SEL6_Field use
     (SEL3_SEL6_Field_0 => 0,
      SEL3_SEL6_Field_1 => 1,
      SEL3_SEL6_Field_2 => 2,
      SEL3_SEL6_Field_3 => 3,
      SEL3_SEL6_Field_4 => 4,
      SEL3_SEL6_Field_5 => 5,
      SEL3_SEL6_Field_6 => 6,
      SEL3_SEL6_Field_7 => 7,
      SEL3_SEL6_Field_12 => 12,
      SEL3_SEL6_Field_13 => 13,
      SEL3_SEL6_Field_14 => 14,
      SEL3_SEL6_Field_15 => 15,
      SEL3_SEL6_Field_16 => 16,
      SEL3_SEL6_Field_17 => 17,
      SEL3_SEL6_Field_18 => 18,
      SEL3_SEL6_Field_19 => 19,
      SEL3_SEL6_Field_20 => 20,
      SEL3_SEL6_Field_21 => 21,
      SEL3_SEL6_Field_22 => 22,
      SEL3_SEL6_Field_23 => 23,
      SEL3_SEL6_Field_24 => 24,
      SEL3_SEL6_Field_25 => 25,
      SEL3_SEL6_Field_26 => 26,
      SEL3_SEL6_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT7 (refer to Functional
   --  Description section for input/output assignment)
   type SEL3_SEL7_Field is
     (
      --  CMP0 Output
      SEL3_SEL7_Field_0,
      --  CMP1 Output
      SEL3_SEL7_Field_1,
      --  CMP2 Output
      SEL3_SEL7_Field_2,
      --  CMP3 Output
      SEL3_SEL7_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL3_SEL7_Field_4,
      --  FTM0 counter init trigger
      SEL3_SEL7_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL3_SEL7_Field_6,
      --  FTM3 counter init trigger
      SEL3_SEL7_Field_7,
      --  PDB0 channel 0 output trigger
      SEL3_SEL7_Field_12,
      --  ADC converter A end of scan
      SEL3_SEL7_Field_13,
      --  XBARIN2 input pin
      SEL3_SEL7_Field_14,
      --  XBARIN3 input pin
      SEL3_SEL7_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL3_SEL7_Field_16,
      --  FTM1 counter init trigger
      SEL3_SEL7_Field_17,
      --  DMA channel 0 done
      SEL3_SEL7_Field_18,
      --  DMA channel 1 done
      SEL3_SEL7_Field_19,
      --  XBARIN10 input pin
      SEL3_SEL7_Field_20,
      --  XBARIN11 input pin
      SEL3_SEL7_Field_21,
      --  DMA channel 6 done
      SEL3_SEL7_Field_22,
      --  DMA channel 7 done
      SEL3_SEL7_Field_23,
      --  PIT trigger 0
      SEL3_SEL7_Field_24,
      --  PIT trigger 1
      SEL3_SEL7_Field_25,
      --  PDB1 channel 0 output trigger
      SEL3_SEL7_Field_26,
      --  ADC converter B end of scan
      SEL3_SEL7_Field_27)
     with Size => 5;
   for SEL3_SEL7_Field use
     (SEL3_SEL7_Field_0 => 0,
      SEL3_SEL7_Field_1 => 1,
      SEL3_SEL7_Field_2 => 2,
      SEL3_SEL7_Field_3 => 3,
      SEL3_SEL7_Field_4 => 4,
      SEL3_SEL7_Field_5 => 5,
      SEL3_SEL7_Field_6 => 6,
      SEL3_SEL7_Field_7 => 7,
      SEL3_SEL7_Field_12 => 12,
      SEL3_SEL7_Field_13 => 13,
      SEL3_SEL7_Field_14 => 14,
      SEL3_SEL7_Field_15 => 15,
      SEL3_SEL7_Field_16 => 16,
      SEL3_SEL7_Field_17 => 17,
      SEL3_SEL7_Field_18 => 18,
      SEL3_SEL7_Field_19 => 19,
      SEL3_SEL7_Field_20 => 20,
      SEL3_SEL7_Field_21 => 21,
      SEL3_SEL7_Field_22 => 22,
      SEL3_SEL7_Field_23 => 23,
      SEL3_SEL7_Field_24 => 24,
      SEL3_SEL7_Field_25 => 25,
      SEL3_SEL7_Field_26 => 26,
      SEL3_SEL7_Field_27 => 27);

   --  Crossbar B Select Register 3
   type XBARB_SEL3_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT6 (refer to Functional
      --  Description section for input/output assignment)
      SEL6           : SEL3_SEL6_Field := NRF_SVD.XBARB.SEL3_SEL6_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT7 (refer to Functional
      --  Description section for input/output assignment)
      SEL7           : SEL3_SEL7_Field := NRF_SVD.XBARB.SEL3_SEL7_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL3_Register use record
      SEL6           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL7           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT8 (refer to Functional
   --  Description section for input/output assignment)
   type SEL4_SEL8_Field is
     (
      --  CMP0 Output
      SEL4_SEL8_Field_0,
      --  CMP1 Output
      SEL4_SEL8_Field_1,
      --  CMP2 Output
      SEL4_SEL8_Field_2,
      --  CMP3 Output
      SEL4_SEL8_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL4_SEL8_Field_4,
      --  FTM0 counter init trigger
      SEL4_SEL8_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL4_SEL8_Field_6,
      --  FTM3 counter init trigger
      SEL4_SEL8_Field_7,
      --  PDB0 channel 0 output trigger
      SEL4_SEL8_Field_12,
      --  ADC converter A end of scan
      SEL4_SEL8_Field_13,
      --  XBARIN2 input pin
      SEL4_SEL8_Field_14,
      --  XBARIN3 input pin
      SEL4_SEL8_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL4_SEL8_Field_16,
      --  FTM1 counter init trigger
      SEL4_SEL8_Field_17,
      --  DMA channel 0 done
      SEL4_SEL8_Field_18,
      --  DMA channel 1 done
      SEL4_SEL8_Field_19,
      --  XBARIN10 input pin
      SEL4_SEL8_Field_20,
      --  XBARIN11 input pin
      SEL4_SEL8_Field_21,
      --  DMA channel 6 done
      SEL4_SEL8_Field_22,
      --  DMA channel 7 done
      SEL4_SEL8_Field_23,
      --  PIT trigger 0
      SEL4_SEL8_Field_24,
      --  PIT trigger 1
      SEL4_SEL8_Field_25,
      --  PDB1 channel 0 output trigger
      SEL4_SEL8_Field_26,
      --  ADC converter B end of scan
      SEL4_SEL8_Field_27)
     with Size => 5;
   for SEL4_SEL8_Field use
     (SEL4_SEL8_Field_0 => 0,
      SEL4_SEL8_Field_1 => 1,
      SEL4_SEL8_Field_2 => 2,
      SEL4_SEL8_Field_3 => 3,
      SEL4_SEL8_Field_4 => 4,
      SEL4_SEL8_Field_5 => 5,
      SEL4_SEL8_Field_6 => 6,
      SEL4_SEL8_Field_7 => 7,
      SEL4_SEL8_Field_12 => 12,
      SEL4_SEL8_Field_13 => 13,
      SEL4_SEL8_Field_14 => 14,
      SEL4_SEL8_Field_15 => 15,
      SEL4_SEL8_Field_16 => 16,
      SEL4_SEL8_Field_17 => 17,
      SEL4_SEL8_Field_18 => 18,
      SEL4_SEL8_Field_19 => 19,
      SEL4_SEL8_Field_20 => 20,
      SEL4_SEL8_Field_21 => 21,
      SEL4_SEL8_Field_22 => 22,
      SEL4_SEL8_Field_23 => 23,
      SEL4_SEL8_Field_24 => 24,
      SEL4_SEL8_Field_25 => 25,
      SEL4_SEL8_Field_26 => 26,
      SEL4_SEL8_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT9 (refer to Functional
   --  Description section for input/output assignment)
   type SEL4_SEL9_Field is
     (
      --  CMP0 Output
      SEL4_SEL9_Field_0,
      --  CMP1 Output
      SEL4_SEL9_Field_1,
      --  CMP2 Output
      SEL4_SEL9_Field_2,
      --  CMP3 Output
      SEL4_SEL9_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL4_SEL9_Field_4,
      --  FTM0 counter init trigger
      SEL4_SEL9_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL4_SEL9_Field_6,
      --  FTM3 counter init trigger
      SEL4_SEL9_Field_7,
      --  PDB0 channel 0 output trigger
      SEL4_SEL9_Field_12,
      --  ADC converter A end of scan
      SEL4_SEL9_Field_13,
      --  XBARIN2 input pin
      SEL4_SEL9_Field_14,
      --  XBARIN3 input pin
      SEL4_SEL9_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL4_SEL9_Field_16,
      --  FTM1 counter init trigger
      SEL4_SEL9_Field_17,
      --  DMA channel 0 done
      SEL4_SEL9_Field_18,
      --  DMA channel 1 done
      SEL4_SEL9_Field_19,
      --  XBARIN10 input pin
      SEL4_SEL9_Field_20,
      --  XBARIN11 input pin
      SEL4_SEL9_Field_21,
      --  DMA channel 6 done
      SEL4_SEL9_Field_22,
      --  DMA channel 7 done
      SEL4_SEL9_Field_23,
      --  PIT trigger 0
      SEL4_SEL9_Field_24,
      --  PIT trigger 1
      SEL4_SEL9_Field_25,
      --  PDB1 channel 0 output trigger
      SEL4_SEL9_Field_26,
      --  ADC converter B end of scan
      SEL4_SEL9_Field_27)
     with Size => 5;
   for SEL4_SEL9_Field use
     (SEL4_SEL9_Field_0 => 0,
      SEL4_SEL9_Field_1 => 1,
      SEL4_SEL9_Field_2 => 2,
      SEL4_SEL9_Field_3 => 3,
      SEL4_SEL9_Field_4 => 4,
      SEL4_SEL9_Field_5 => 5,
      SEL4_SEL9_Field_6 => 6,
      SEL4_SEL9_Field_7 => 7,
      SEL4_SEL9_Field_12 => 12,
      SEL4_SEL9_Field_13 => 13,
      SEL4_SEL9_Field_14 => 14,
      SEL4_SEL9_Field_15 => 15,
      SEL4_SEL9_Field_16 => 16,
      SEL4_SEL9_Field_17 => 17,
      SEL4_SEL9_Field_18 => 18,
      SEL4_SEL9_Field_19 => 19,
      SEL4_SEL9_Field_20 => 20,
      SEL4_SEL9_Field_21 => 21,
      SEL4_SEL9_Field_22 => 22,
      SEL4_SEL9_Field_23 => 23,
      SEL4_SEL9_Field_24 => 24,
      SEL4_SEL9_Field_25 => 25,
      SEL4_SEL9_Field_26 => 26,
      SEL4_SEL9_Field_27 => 27);

   --  Crossbar B Select Register 4
   type XBARB_SEL4_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT8 (refer to Functional
      --  Description section for input/output assignment)
      SEL8           : SEL4_SEL8_Field := NRF_SVD.XBARB.SEL4_SEL8_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT9 (refer to Functional
      --  Description section for input/output assignment)
      SEL9           : SEL4_SEL9_Field := NRF_SVD.XBARB.SEL4_SEL9_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL4_Register use record
      SEL8           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL9           at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT10 (refer to Functional
   --  Description section for input/output assignment)
   type SEL5_SEL10_Field is
     (
      --  CMP0 Output
      SEL5_SEL10_Field_0,
      --  CMP1 Output
      SEL5_SEL10_Field_1,
      --  CMP2 Output
      SEL5_SEL10_Field_2,
      --  CMP3 Output
      SEL5_SEL10_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL5_SEL10_Field_4,
      --  FTM0 counter init trigger
      SEL5_SEL10_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL5_SEL10_Field_6,
      --  FTM3 counter init trigger
      SEL5_SEL10_Field_7,
      --  PDB0 channel 0 output trigger
      SEL5_SEL10_Field_12,
      --  ADC converter A end of scan
      SEL5_SEL10_Field_13,
      --  XBARIN2 input pin
      SEL5_SEL10_Field_14,
      --  XBARIN3 input pin
      SEL5_SEL10_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL5_SEL10_Field_16,
      --  FTM1 counter init trigger
      SEL5_SEL10_Field_17,
      --  DMA channel 0 done
      SEL5_SEL10_Field_18,
      --  DMA channel 1 done
      SEL5_SEL10_Field_19,
      --  XBARIN10 input pin
      SEL5_SEL10_Field_20,
      --  XBARIN11 input pin
      SEL5_SEL10_Field_21,
      --  DMA channel 6 done
      SEL5_SEL10_Field_22,
      --  DMA channel 7 done
      SEL5_SEL10_Field_23,
      --  PIT trigger 0
      SEL5_SEL10_Field_24,
      --  PIT trigger 1
      SEL5_SEL10_Field_25,
      --  PDB1 channel 0 output trigger
      SEL5_SEL10_Field_26,
      --  ADC converter B end of scan
      SEL5_SEL10_Field_27)
     with Size => 5;
   for SEL5_SEL10_Field use
     (SEL5_SEL10_Field_0 => 0,
      SEL5_SEL10_Field_1 => 1,
      SEL5_SEL10_Field_2 => 2,
      SEL5_SEL10_Field_3 => 3,
      SEL5_SEL10_Field_4 => 4,
      SEL5_SEL10_Field_5 => 5,
      SEL5_SEL10_Field_6 => 6,
      SEL5_SEL10_Field_7 => 7,
      SEL5_SEL10_Field_12 => 12,
      SEL5_SEL10_Field_13 => 13,
      SEL5_SEL10_Field_14 => 14,
      SEL5_SEL10_Field_15 => 15,
      SEL5_SEL10_Field_16 => 16,
      SEL5_SEL10_Field_17 => 17,
      SEL5_SEL10_Field_18 => 18,
      SEL5_SEL10_Field_19 => 19,
      SEL5_SEL10_Field_20 => 20,
      SEL5_SEL10_Field_21 => 21,
      SEL5_SEL10_Field_22 => 22,
      SEL5_SEL10_Field_23 => 23,
      SEL5_SEL10_Field_24 => 24,
      SEL5_SEL10_Field_25 => 25,
      SEL5_SEL10_Field_26 => 26,
      SEL5_SEL10_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT11 (refer to Functional
   --  Description section for input/output assignment)
   type SEL5_SEL11_Field is
     (
      --  CMP0 Output
      SEL5_SEL11_Field_0,
      --  CMP1 Output
      SEL5_SEL11_Field_1,
      --  CMP2 Output
      SEL5_SEL11_Field_2,
      --  CMP3 Output
      SEL5_SEL11_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL5_SEL11_Field_4,
      --  FTM0 counter init trigger
      SEL5_SEL11_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL5_SEL11_Field_6,
      --  FTM3 counter init trigger
      SEL5_SEL11_Field_7,
      --  PDB0 channel 0 output trigger
      SEL5_SEL11_Field_12,
      --  ADC converter A end of scan
      SEL5_SEL11_Field_13,
      --  XBARIN2 input pin
      SEL5_SEL11_Field_14,
      --  XBARIN3 input pin
      SEL5_SEL11_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL5_SEL11_Field_16,
      --  FTM1 counter init trigger
      SEL5_SEL11_Field_17,
      --  DMA channel 0 done
      SEL5_SEL11_Field_18,
      --  DMA channel 1 done
      SEL5_SEL11_Field_19,
      --  XBARIN10 input pin
      SEL5_SEL11_Field_20,
      --  XBARIN11 input pin
      SEL5_SEL11_Field_21,
      --  DMA channel 6 done
      SEL5_SEL11_Field_22,
      --  DMA channel 7 done
      SEL5_SEL11_Field_23,
      --  PIT trigger 0
      SEL5_SEL11_Field_24,
      --  PIT trigger 1
      SEL5_SEL11_Field_25,
      --  PDB1 channel 0 output trigger
      SEL5_SEL11_Field_26,
      --  ADC converter B end of scan
      SEL5_SEL11_Field_27)
     with Size => 5;
   for SEL5_SEL11_Field use
     (SEL5_SEL11_Field_0 => 0,
      SEL5_SEL11_Field_1 => 1,
      SEL5_SEL11_Field_2 => 2,
      SEL5_SEL11_Field_3 => 3,
      SEL5_SEL11_Field_4 => 4,
      SEL5_SEL11_Field_5 => 5,
      SEL5_SEL11_Field_6 => 6,
      SEL5_SEL11_Field_7 => 7,
      SEL5_SEL11_Field_12 => 12,
      SEL5_SEL11_Field_13 => 13,
      SEL5_SEL11_Field_14 => 14,
      SEL5_SEL11_Field_15 => 15,
      SEL5_SEL11_Field_16 => 16,
      SEL5_SEL11_Field_17 => 17,
      SEL5_SEL11_Field_18 => 18,
      SEL5_SEL11_Field_19 => 19,
      SEL5_SEL11_Field_20 => 20,
      SEL5_SEL11_Field_21 => 21,
      SEL5_SEL11_Field_22 => 22,
      SEL5_SEL11_Field_23 => 23,
      SEL5_SEL11_Field_24 => 24,
      SEL5_SEL11_Field_25 => 25,
      SEL5_SEL11_Field_26 => 26,
      SEL5_SEL11_Field_27 => 27);

   --  Crossbar B Select Register 5
   type XBARB_SEL5_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT10 (refer to Functional
      --  Description section for input/output assignment)
      SEL10          : SEL5_SEL10_Field := NRF_SVD.XBARB.SEL5_SEL10_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT11 (refer to Functional
      --  Description section for input/output assignment)
      SEL11          : SEL5_SEL11_Field := NRF_SVD.XBARB.SEL5_SEL11_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL5_Register use record
      SEL10          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL11          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT12 (refer to Functional
   --  Description section for input/output assignment)
   type SEL6_SEL12_Field is
     (
      --  CMP0 Output
      SEL6_SEL12_Field_0,
      --  CMP1 Output
      SEL6_SEL12_Field_1,
      --  CMP2 Output
      SEL6_SEL12_Field_2,
      --  CMP3 Output
      SEL6_SEL12_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL6_SEL12_Field_4,
      --  FTM0 counter init trigger
      SEL6_SEL12_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL6_SEL12_Field_6,
      --  FTM3 counter init trigger
      SEL6_SEL12_Field_7,
      --  PDB0 channel 0 output trigger
      SEL6_SEL12_Field_12,
      --  ADC converter A end of scan
      SEL6_SEL12_Field_13,
      --  XBARIN2 input pin
      SEL6_SEL12_Field_14,
      --  XBARIN3 input pin
      SEL6_SEL12_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL6_SEL12_Field_16,
      --  FTM1 counter init trigger
      SEL6_SEL12_Field_17,
      --  DMA channel 0 done
      SEL6_SEL12_Field_18,
      --  DMA channel 1 done
      SEL6_SEL12_Field_19,
      --  XBARIN10 input pin
      SEL6_SEL12_Field_20,
      --  XBARIN11 input pin
      SEL6_SEL12_Field_21,
      --  DMA channel 6 done
      SEL6_SEL12_Field_22,
      --  DMA channel 7 done
      SEL6_SEL12_Field_23,
      --  PIT trigger 0
      SEL6_SEL12_Field_24,
      --  PIT trigger 1
      SEL6_SEL12_Field_25,
      --  PDB1 channel 0 output trigger
      SEL6_SEL12_Field_26,
      --  ADC converter B end of scan
      SEL6_SEL12_Field_27)
     with Size => 5;
   for SEL6_SEL12_Field use
     (SEL6_SEL12_Field_0 => 0,
      SEL6_SEL12_Field_1 => 1,
      SEL6_SEL12_Field_2 => 2,
      SEL6_SEL12_Field_3 => 3,
      SEL6_SEL12_Field_4 => 4,
      SEL6_SEL12_Field_5 => 5,
      SEL6_SEL12_Field_6 => 6,
      SEL6_SEL12_Field_7 => 7,
      SEL6_SEL12_Field_12 => 12,
      SEL6_SEL12_Field_13 => 13,
      SEL6_SEL12_Field_14 => 14,
      SEL6_SEL12_Field_15 => 15,
      SEL6_SEL12_Field_16 => 16,
      SEL6_SEL12_Field_17 => 17,
      SEL6_SEL12_Field_18 => 18,
      SEL6_SEL12_Field_19 => 19,
      SEL6_SEL12_Field_20 => 20,
      SEL6_SEL12_Field_21 => 21,
      SEL6_SEL12_Field_22 => 22,
      SEL6_SEL12_Field_23 => 23,
      SEL6_SEL12_Field_24 => 24,
      SEL6_SEL12_Field_25 => 25,
      SEL6_SEL12_Field_26 => 26,
      SEL6_SEL12_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT13 (refer to Functional
   --  Description section for input/output assignment)
   type SEL6_SEL13_Field is
     (
      --  CMP0 Output
      SEL6_SEL13_Field_0,
      --  CMP1 Output
      SEL6_SEL13_Field_1,
      --  CMP2 Output
      SEL6_SEL13_Field_2,
      --  CMP3 Output
      SEL6_SEL13_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL6_SEL13_Field_4,
      --  FTM0 counter init trigger
      SEL6_SEL13_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL6_SEL13_Field_6,
      --  FTM3 counter init trigger
      SEL6_SEL13_Field_7,
      --  PDB0 channel 0 output trigger
      SEL6_SEL13_Field_12,
      --  ADC converter A end of scan
      SEL6_SEL13_Field_13,
      --  XBARIN2 input pin
      SEL6_SEL13_Field_14,
      --  XBARIN3 input pin
      SEL6_SEL13_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL6_SEL13_Field_16,
      --  FTM1 counter init trigger
      SEL6_SEL13_Field_17,
      --  DMA channel 0 done
      SEL6_SEL13_Field_18,
      --  DMA channel 1 done
      SEL6_SEL13_Field_19,
      --  XBARIN10 input pin
      SEL6_SEL13_Field_20,
      --  XBARIN11 input pin
      SEL6_SEL13_Field_21,
      --  DMA channel 6 done
      SEL6_SEL13_Field_22,
      --  DMA channel 7 done
      SEL6_SEL13_Field_23,
      --  PIT trigger 0
      SEL6_SEL13_Field_24,
      --  PIT trigger 1
      SEL6_SEL13_Field_25,
      --  PDB1 channel 0 output trigger
      SEL6_SEL13_Field_26,
      --  ADC converter B end of scan
      SEL6_SEL13_Field_27)
     with Size => 5;
   for SEL6_SEL13_Field use
     (SEL6_SEL13_Field_0 => 0,
      SEL6_SEL13_Field_1 => 1,
      SEL6_SEL13_Field_2 => 2,
      SEL6_SEL13_Field_3 => 3,
      SEL6_SEL13_Field_4 => 4,
      SEL6_SEL13_Field_5 => 5,
      SEL6_SEL13_Field_6 => 6,
      SEL6_SEL13_Field_7 => 7,
      SEL6_SEL13_Field_12 => 12,
      SEL6_SEL13_Field_13 => 13,
      SEL6_SEL13_Field_14 => 14,
      SEL6_SEL13_Field_15 => 15,
      SEL6_SEL13_Field_16 => 16,
      SEL6_SEL13_Field_17 => 17,
      SEL6_SEL13_Field_18 => 18,
      SEL6_SEL13_Field_19 => 19,
      SEL6_SEL13_Field_20 => 20,
      SEL6_SEL13_Field_21 => 21,
      SEL6_SEL13_Field_22 => 22,
      SEL6_SEL13_Field_23 => 23,
      SEL6_SEL13_Field_24 => 24,
      SEL6_SEL13_Field_25 => 25,
      SEL6_SEL13_Field_26 => 26,
      SEL6_SEL13_Field_27 => 27);

   --  Crossbar B Select Register 6
   type XBARB_SEL6_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT12 (refer to Functional
      --  Description section for input/output assignment)
      SEL12          : SEL6_SEL12_Field := NRF_SVD.XBARB.SEL6_SEL12_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT13 (refer to Functional
      --  Description section for input/output assignment)
      SEL13          : SEL6_SEL13_Field := NRF_SVD.XBARB.SEL6_SEL13_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL6_Register use record
      SEL12          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL13          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  Input (XBARB_INn) to be muxed to XBARB_OUT14 (refer to Functional
   --  Description section for input/output assignment)
   type SEL7_SEL14_Field is
     (
      --  CMP0 Output
      SEL7_SEL14_Field_0,
      --  CMP1 Output
      SEL7_SEL14_Field_1,
      --  CMP2 Output
      SEL7_SEL14_Field_2,
      --  CMP3 Output
      SEL7_SEL14_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL7_SEL14_Field_4,
      --  FTM0 counter init trigger
      SEL7_SEL14_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL7_SEL14_Field_6,
      --  FTM3 counter init trigger
      SEL7_SEL14_Field_7,
      --  PDB0 channel 0 output trigger
      SEL7_SEL14_Field_12,
      --  ADC converter A end of scan
      SEL7_SEL14_Field_13,
      --  XBARIN2 input pin
      SEL7_SEL14_Field_14,
      --  XBARIN3 input pin
      SEL7_SEL14_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL7_SEL14_Field_16,
      --  FTM1 counter init trigger
      SEL7_SEL14_Field_17,
      --  DMA channel 0 done
      SEL7_SEL14_Field_18,
      --  DMA channel 1 done
      SEL7_SEL14_Field_19,
      --  XBARIN10 input pin
      SEL7_SEL14_Field_20,
      --  XBARIN11 input pin
      SEL7_SEL14_Field_21,
      --  DMA channel 6 done
      SEL7_SEL14_Field_22,
      --  DMA channel 7 done
      SEL7_SEL14_Field_23,
      --  PIT trigger 0
      SEL7_SEL14_Field_24,
      --  PIT trigger 1
      SEL7_SEL14_Field_25,
      --  PDB1 channel 0 output trigger
      SEL7_SEL14_Field_26,
      --  ADC converter B end of scan
      SEL7_SEL14_Field_27)
     with Size => 5;
   for SEL7_SEL14_Field use
     (SEL7_SEL14_Field_0 => 0,
      SEL7_SEL14_Field_1 => 1,
      SEL7_SEL14_Field_2 => 2,
      SEL7_SEL14_Field_3 => 3,
      SEL7_SEL14_Field_4 => 4,
      SEL7_SEL14_Field_5 => 5,
      SEL7_SEL14_Field_6 => 6,
      SEL7_SEL14_Field_7 => 7,
      SEL7_SEL14_Field_12 => 12,
      SEL7_SEL14_Field_13 => 13,
      SEL7_SEL14_Field_14 => 14,
      SEL7_SEL14_Field_15 => 15,
      SEL7_SEL14_Field_16 => 16,
      SEL7_SEL14_Field_17 => 17,
      SEL7_SEL14_Field_18 => 18,
      SEL7_SEL14_Field_19 => 19,
      SEL7_SEL14_Field_20 => 20,
      SEL7_SEL14_Field_21 => 21,
      SEL7_SEL14_Field_22 => 22,
      SEL7_SEL14_Field_23 => 23,
      SEL7_SEL14_Field_24 => 24,
      SEL7_SEL14_Field_25 => 25,
      SEL7_SEL14_Field_26 => 26,
      SEL7_SEL14_Field_27 => 27);

   --  Input (XBARB_INn) to be muxed to XBARB_OUT15 (refer to Functional
   --  Description section for input/output assignment)
   type SEL7_SEL15_Field is
     (
      --  CMP0 Output
      SEL7_SEL15_Field_0,
      --  CMP1 Output
      SEL7_SEL15_Field_1,
      --  CMP2 Output
      SEL7_SEL15_Field_2,
      --  CMP3 Output
      SEL7_SEL15_Field_3,
      --  FTM0 all channels match trigger ORed together
      SEL7_SEL15_Field_4,
      --  FTM0 counter init trigger
      SEL7_SEL15_Field_5,
      --  FTM3 all channels match trigger ORed together
      SEL7_SEL15_Field_6,
      --  FTM3 counter init trigger
      SEL7_SEL15_Field_7,
      --  PDB0 channel 0 output trigger
      SEL7_SEL15_Field_12,
      --  ADC converter A end of scan
      SEL7_SEL15_Field_13,
      --  XBARIN2 input pin
      SEL7_SEL15_Field_14,
      --  XBARIN3 input pin
      SEL7_SEL15_Field_15,
      --  FTM1 all channels match trigger ORed together
      SEL7_SEL15_Field_16,
      --  FTM1 counter init trigger
      SEL7_SEL15_Field_17,
      --  DMA channel 0 done
      SEL7_SEL15_Field_18,
      --  DMA channel 1 done
      SEL7_SEL15_Field_19,
      --  XBARIN10 input pin
      SEL7_SEL15_Field_20,
      --  XBARIN11 input pin
      SEL7_SEL15_Field_21,
      --  DMA channel 6 done
      SEL7_SEL15_Field_22,
      --  DMA channel 7 done
      SEL7_SEL15_Field_23,
      --  PIT trigger 0
      SEL7_SEL15_Field_24,
      --  PIT trigger 1
      SEL7_SEL15_Field_25,
      --  PDB1 channel 0 output trigger
      SEL7_SEL15_Field_26,
      --  ADC converter B end of scan
      SEL7_SEL15_Field_27)
     with Size => 5;
   for SEL7_SEL15_Field use
     (SEL7_SEL15_Field_0 => 0,
      SEL7_SEL15_Field_1 => 1,
      SEL7_SEL15_Field_2 => 2,
      SEL7_SEL15_Field_3 => 3,
      SEL7_SEL15_Field_4 => 4,
      SEL7_SEL15_Field_5 => 5,
      SEL7_SEL15_Field_6 => 6,
      SEL7_SEL15_Field_7 => 7,
      SEL7_SEL15_Field_12 => 12,
      SEL7_SEL15_Field_13 => 13,
      SEL7_SEL15_Field_14 => 14,
      SEL7_SEL15_Field_15 => 15,
      SEL7_SEL15_Field_16 => 16,
      SEL7_SEL15_Field_17 => 17,
      SEL7_SEL15_Field_18 => 18,
      SEL7_SEL15_Field_19 => 19,
      SEL7_SEL15_Field_20 => 20,
      SEL7_SEL15_Field_21 => 21,
      SEL7_SEL15_Field_22 => 22,
      SEL7_SEL15_Field_23 => 23,
      SEL7_SEL15_Field_24 => 24,
      SEL7_SEL15_Field_25 => 25,
      SEL7_SEL15_Field_26 => 26,
      SEL7_SEL15_Field_27 => 27);

   --  Crossbar B Select Register 7
   type XBARB_SEL7_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT14 (refer to Functional
      --  Description section for input/output assignment)
      SEL14          : SEL7_SEL14_Field := NRF_SVD.XBARB.SEL7_SEL14_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT15 (refer to Functional
      --  Description section for input/output assignment)
      SEL15          : SEL7_SEL15_Field := NRF_SVD.XBARB.SEL7_SEL15_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB_SEL7_Register use record
      SEL14          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SEL15          at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Crossbar Switch
   type XBARB_Peripheral is record
      --  Crossbar B Select Register 0
      SEL0 : aliased XBARB_SEL0_Register;
      --  Crossbar B Select Register 1
      SEL1 : aliased XBARB_SEL1_Register;
      --  Crossbar B Select Register 2
      SEL2 : aliased XBARB_SEL2_Register;
      --  Crossbar B Select Register 3
      SEL3 : aliased XBARB_SEL3_Register;
      --  Crossbar B Select Register 4
      SEL4 : aliased XBARB_SEL4_Register;
      --  Crossbar B Select Register 5
      SEL5 : aliased XBARB_SEL5_Register;
      --  Crossbar B Select Register 6
      SEL6 : aliased XBARB_SEL6_Register;
      --  Crossbar B Select Register 7
      SEL7 : aliased XBARB_SEL7_Register;
   end record
     with Volatile;

   for XBARB_Peripheral use record
      SEL0 at 16#0# range 0 .. 15;
      SEL1 at 16#2# range 0 .. 15;
      SEL2 at 16#4# range 0 .. 15;
      SEL3 at 16#6# range 0 .. 15;
      SEL4 at 16#8# range 0 .. 15;
      SEL5 at 16#A# range 0 .. 15;
      SEL6 at 16#C# range 0 .. 15;
      SEL7 at 16#E# range 0 .. 15;
   end record;

   --  Crossbar Switch
   XBARB_Periph : aliased XBARB_Peripheral
     with Import, Address => XBARB_Base;

end NRF_SVD.XBARB;
