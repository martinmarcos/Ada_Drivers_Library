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
package NRF_SVD.XBARA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Input (XBARA_INn) to be muxed to XBARA_OUT0 (refer to Functional
   --  Description section for input/output assignment)
   type SEL0_SEL0_Field is
     (
      --  Logic zero
      SEL0_SEL0_Field_0,
      --  Logic one
      SEL0_SEL0_Field_1,
      --  XBARIN2 input pin
      SEL0_SEL0_Field_2,
      --  XBARIN3 input pin
      SEL0_SEL0_Field_3,
      --  XBARIN4 input pin
      SEL0_SEL0_Field_4,
      --  XBARIN5 input pin
      SEL0_SEL0_Field_5,
      --  XBARIN6 input pin
      SEL0_SEL0_Field_6,
      --  XBARIN7 input pin
      SEL0_SEL0_Field_7,
      --  XBARIN8 input pin
      SEL0_SEL0_Field_8,
      --  XBARIN9 input pin
      SEL0_SEL0_Field_9,
      --  XBARIN10 input pin
      SEL0_SEL0_Field_10,
      --  XBARIN11 input pin
      SEL0_SEL0_Field_11,
      --  CMP0 Output
      SEL0_SEL0_Field_12,
      --  CMP1 Output
      SEL0_SEL0_Field_13,
      --  CMP2 Output
      SEL0_SEL0_Field_14,
      --  CMP3 Output
      SEL0_SEL0_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL0_SEL0_Field_16,
      --  FTM0 counter init trigger
      SEL0_SEL0_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL0_SEL0_Field_18,
      --  FTM3 counter init trigger
      SEL0_SEL0_Field_19,
      --  PDB0 channel 0 output trigger
      SEL0_SEL0_Field_29,
      --  PDB1 channel 0 output trigger
      SEL0_SEL0_Field_31,
      --  ADC converter A end of scan
      SEL0_SEL0_Field_33,
      --  ADC converter B end of scan
      SEL0_SEL0_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL0_SEL0_Field_36,
      --  FTM1 counter init trigger
      SEL0_SEL0_Field_37,
      --  DMA channel 0 done
      SEL0_SEL0_Field_38,
      --  DMA channel 1 done
      SEL0_SEL0_Field_39,
      --  DMA channel 6 done
      SEL0_SEL0_Field_40,
      --  DMA channel 7 done
      SEL0_SEL0_Field_41,
      --  PIT trigger 0
      SEL0_SEL0_Field_42,
      --  PIT trigger 1
      SEL0_SEL0_Field_43,
      --  ENC0 compare trigger and position match
      SEL0_SEL0_Field_45,
      --  AOI output 0
      SEL0_SEL0_Field_46,
      --  AOI output 1
      SEL0_SEL0_Field_47,
      --  AOI output 2
      SEL0_SEL0_Field_48,
      --  AOI output 3
      SEL0_SEL0_Field_49,
      --  PIT trigger 2
      SEL0_SEL0_Field_50,
      --  PIT trigger 3
      SEL0_SEL0_Field_51)
     with Size => 6;
   for SEL0_SEL0_Field use
     (SEL0_SEL0_Field_0 => 0,
      SEL0_SEL0_Field_1 => 1,
      SEL0_SEL0_Field_2 => 2,
      SEL0_SEL0_Field_3 => 3,
      SEL0_SEL0_Field_4 => 4,
      SEL0_SEL0_Field_5 => 5,
      SEL0_SEL0_Field_6 => 6,
      SEL0_SEL0_Field_7 => 7,
      SEL0_SEL0_Field_8 => 8,
      SEL0_SEL0_Field_9 => 9,
      SEL0_SEL0_Field_10 => 10,
      SEL0_SEL0_Field_11 => 11,
      SEL0_SEL0_Field_12 => 12,
      SEL0_SEL0_Field_13 => 13,
      SEL0_SEL0_Field_14 => 14,
      SEL0_SEL0_Field_15 => 15,
      SEL0_SEL0_Field_16 => 16,
      SEL0_SEL0_Field_17 => 17,
      SEL0_SEL0_Field_18 => 18,
      SEL0_SEL0_Field_19 => 19,
      SEL0_SEL0_Field_29 => 29,
      SEL0_SEL0_Field_31 => 31,
      SEL0_SEL0_Field_33 => 33,
      SEL0_SEL0_Field_35 => 35,
      SEL0_SEL0_Field_36 => 36,
      SEL0_SEL0_Field_37 => 37,
      SEL0_SEL0_Field_38 => 38,
      SEL0_SEL0_Field_39 => 39,
      SEL0_SEL0_Field_40 => 40,
      SEL0_SEL0_Field_41 => 41,
      SEL0_SEL0_Field_42 => 42,
      SEL0_SEL0_Field_43 => 43,
      SEL0_SEL0_Field_45 => 45,
      SEL0_SEL0_Field_46 => 46,
      SEL0_SEL0_Field_47 => 47,
      SEL0_SEL0_Field_48 => 48,
      SEL0_SEL0_Field_49 => 49,
      SEL0_SEL0_Field_50 => 50,
      SEL0_SEL0_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT1 (refer to Functional
   --  Description section for input/output assignment)
   type SEL0_SEL1_Field is
     (
      --  Logic zero
      SEL0_SEL1_Field_0,
      --  Logic one
      SEL0_SEL1_Field_1,
      --  XBARIN2 input pin
      SEL0_SEL1_Field_2,
      --  XBARIN3 input pin
      SEL0_SEL1_Field_3,
      --  XBARIN4 input pin
      SEL0_SEL1_Field_4,
      --  XBARIN5 input pin
      SEL0_SEL1_Field_5,
      --  XBARIN6 input pin
      SEL0_SEL1_Field_6,
      --  XBARIN7 input pin
      SEL0_SEL1_Field_7,
      --  XBARIN8 input pin
      SEL0_SEL1_Field_8,
      --  XBARIN9 input pin
      SEL0_SEL1_Field_9,
      --  XBARIN10 input pin
      SEL0_SEL1_Field_10,
      --  XBARIN11 input pin
      SEL0_SEL1_Field_11,
      --  CMP0 Output
      SEL0_SEL1_Field_12,
      --  CMP1 Output
      SEL0_SEL1_Field_13,
      --  CMP2 Output
      SEL0_SEL1_Field_14,
      --  CMP3 Output
      SEL0_SEL1_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL0_SEL1_Field_16,
      --  FTM0 counter init trigger
      SEL0_SEL1_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL0_SEL1_Field_18,
      --  FTM3 counter init trigger
      SEL0_SEL1_Field_19,
      --  PDB0 channel 0 output trigger
      SEL0_SEL1_Field_29,
      --  PDB1 channel 0 output trigger
      SEL0_SEL1_Field_31,
      --  ADC converter A end of scan
      SEL0_SEL1_Field_33,
      --  ADC converter B end of scan
      SEL0_SEL1_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL0_SEL1_Field_36,
      --  FTM1 counter init trigger
      SEL0_SEL1_Field_37,
      --  DMA channel 0 done
      SEL0_SEL1_Field_38,
      --  DMA channel 1 done
      SEL0_SEL1_Field_39,
      --  DMA channel 6 done
      SEL0_SEL1_Field_40,
      --  DMA channel 7 done
      SEL0_SEL1_Field_41,
      --  PIT trigger 0
      SEL0_SEL1_Field_42,
      --  PIT trigger 1
      SEL0_SEL1_Field_43,
      --  ENC0 compare trigger and position match
      SEL0_SEL1_Field_45,
      --  AOI output 0
      SEL0_SEL1_Field_46,
      --  AOI output 1
      SEL0_SEL1_Field_47,
      --  AOI output 2
      SEL0_SEL1_Field_48,
      --  AOI output 3
      SEL0_SEL1_Field_49,
      --  PIT trigger 2
      SEL0_SEL1_Field_50,
      --  PIT trigger 3
      SEL0_SEL1_Field_51)
     with Size => 6;
   for SEL0_SEL1_Field use
     (SEL0_SEL1_Field_0 => 0,
      SEL0_SEL1_Field_1 => 1,
      SEL0_SEL1_Field_2 => 2,
      SEL0_SEL1_Field_3 => 3,
      SEL0_SEL1_Field_4 => 4,
      SEL0_SEL1_Field_5 => 5,
      SEL0_SEL1_Field_6 => 6,
      SEL0_SEL1_Field_7 => 7,
      SEL0_SEL1_Field_8 => 8,
      SEL0_SEL1_Field_9 => 9,
      SEL0_SEL1_Field_10 => 10,
      SEL0_SEL1_Field_11 => 11,
      SEL0_SEL1_Field_12 => 12,
      SEL0_SEL1_Field_13 => 13,
      SEL0_SEL1_Field_14 => 14,
      SEL0_SEL1_Field_15 => 15,
      SEL0_SEL1_Field_16 => 16,
      SEL0_SEL1_Field_17 => 17,
      SEL0_SEL1_Field_18 => 18,
      SEL0_SEL1_Field_19 => 19,
      SEL0_SEL1_Field_29 => 29,
      SEL0_SEL1_Field_31 => 31,
      SEL0_SEL1_Field_33 => 33,
      SEL0_SEL1_Field_35 => 35,
      SEL0_SEL1_Field_36 => 36,
      SEL0_SEL1_Field_37 => 37,
      SEL0_SEL1_Field_38 => 38,
      SEL0_SEL1_Field_39 => 39,
      SEL0_SEL1_Field_40 => 40,
      SEL0_SEL1_Field_41 => 41,
      SEL0_SEL1_Field_42 => 42,
      SEL0_SEL1_Field_43 => 43,
      SEL0_SEL1_Field_45 => 45,
      SEL0_SEL1_Field_46 => 46,
      SEL0_SEL1_Field_47 => 47,
      SEL0_SEL1_Field_48 => 48,
      SEL0_SEL1_Field_49 => 49,
      SEL0_SEL1_Field_50 => 50,
      SEL0_SEL1_Field_51 => 51);

   --  Crossbar A Select Register 0
   type XBARA_SEL0_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT0 (refer to Functional
      --  Description section for input/output assignment)
      SEL0           : SEL0_SEL0_Field := NRF_SVD.XBARA.SEL0_SEL0_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT1 (refer to Functional
      --  Description section for input/output assignment)
      SEL1           : SEL0_SEL1_Field := NRF_SVD.XBARA.SEL0_SEL1_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL0_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT2 (refer to Functional
   --  Description section for input/output assignment)
   type SEL1_SEL2_Field is
     (
      --  Logic zero
      SEL1_SEL2_Field_0,
      --  Logic one
      SEL1_SEL2_Field_1,
      --  XBARIN2 input pin
      SEL1_SEL2_Field_2,
      --  XBARIN3 input pin
      SEL1_SEL2_Field_3,
      --  XBARIN4 input pin
      SEL1_SEL2_Field_4,
      --  XBARIN5 input pin
      SEL1_SEL2_Field_5,
      --  XBARIN6 input pin
      SEL1_SEL2_Field_6,
      --  XBARIN7 input pin
      SEL1_SEL2_Field_7,
      --  XBARIN8 input pin
      SEL1_SEL2_Field_8,
      --  XBARIN9 input pin
      SEL1_SEL2_Field_9,
      --  XBARIN10 input pin
      SEL1_SEL2_Field_10,
      --  XBARIN11 input pin
      SEL1_SEL2_Field_11,
      --  CMP0 Output
      SEL1_SEL2_Field_12,
      --  CMP1 Output
      SEL1_SEL2_Field_13,
      --  CMP2 Output
      SEL1_SEL2_Field_14,
      --  CMP3 Output
      SEL1_SEL2_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL1_SEL2_Field_16,
      --  FTM0 counter init trigger
      SEL1_SEL2_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL1_SEL2_Field_18,
      --  FTM3 counter init trigger
      SEL1_SEL2_Field_19,
      --  PDB0 channel 0 output trigger
      SEL1_SEL2_Field_29,
      --  PDB1 channel 0 output trigger
      SEL1_SEL2_Field_31,
      --  ADC converter A end of scan
      SEL1_SEL2_Field_33,
      --  ADC converter B end of scan
      SEL1_SEL2_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL1_SEL2_Field_36,
      --  FTM1 counter init trigger
      SEL1_SEL2_Field_37,
      --  DMA channel 0 done
      SEL1_SEL2_Field_38,
      --  DMA channel 1 done
      SEL1_SEL2_Field_39,
      --  DMA channel 6 done
      SEL1_SEL2_Field_40,
      --  DMA channel 7 done
      SEL1_SEL2_Field_41,
      --  PIT trigger 0
      SEL1_SEL2_Field_42,
      --  PIT trigger 1
      SEL1_SEL2_Field_43,
      --  ENC0 compare trigger and position match
      SEL1_SEL2_Field_45,
      --  AOI output 0
      SEL1_SEL2_Field_46,
      --  AOI output 1
      SEL1_SEL2_Field_47,
      --  AOI output 2
      SEL1_SEL2_Field_48,
      --  AOI output 3
      SEL1_SEL2_Field_49,
      --  PIT trigger 2
      SEL1_SEL2_Field_50,
      --  PIT trigger 3
      SEL1_SEL2_Field_51)
     with Size => 6;
   for SEL1_SEL2_Field use
     (SEL1_SEL2_Field_0 => 0,
      SEL1_SEL2_Field_1 => 1,
      SEL1_SEL2_Field_2 => 2,
      SEL1_SEL2_Field_3 => 3,
      SEL1_SEL2_Field_4 => 4,
      SEL1_SEL2_Field_5 => 5,
      SEL1_SEL2_Field_6 => 6,
      SEL1_SEL2_Field_7 => 7,
      SEL1_SEL2_Field_8 => 8,
      SEL1_SEL2_Field_9 => 9,
      SEL1_SEL2_Field_10 => 10,
      SEL1_SEL2_Field_11 => 11,
      SEL1_SEL2_Field_12 => 12,
      SEL1_SEL2_Field_13 => 13,
      SEL1_SEL2_Field_14 => 14,
      SEL1_SEL2_Field_15 => 15,
      SEL1_SEL2_Field_16 => 16,
      SEL1_SEL2_Field_17 => 17,
      SEL1_SEL2_Field_18 => 18,
      SEL1_SEL2_Field_19 => 19,
      SEL1_SEL2_Field_29 => 29,
      SEL1_SEL2_Field_31 => 31,
      SEL1_SEL2_Field_33 => 33,
      SEL1_SEL2_Field_35 => 35,
      SEL1_SEL2_Field_36 => 36,
      SEL1_SEL2_Field_37 => 37,
      SEL1_SEL2_Field_38 => 38,
      SEL1_SEL2_Field_39 => 39,
      SEL1_SEL2_Field_40 => 40,
      SEL1_SEL2_Field_41 => 41,
      SEL1_SEL2_Field_42 => 42,
      SEL1_SEL2_Field_43 => 43,
      SEL1_SEL2_Field_45 => 45,
      SEL1_SEL2_Field_46 => 46,
      SEL1_SEL2_Field_47 => 47,
      SEL1_SEL2_Field_48 => 48,
      SEL1_SEL2_Field_49 => 49,
      SEL1_SEL2_Field_50 => 50,
      SEL1_SEL2_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT3 (refer to Functional
   --  Description section for input/output assignment)
   type SEL1_SEL3_Field is
     (
      --  Logic zero
      SEL1_SEL3_Field_0,
      --  Logic one
      SEL1_SEL3_Field_1,
      --  XBARIN2 input pin
      SEL1_SEL3_Field_2,
      --  XBARIN3 input pin
      SEL1_SEL3_Field_3,
      --  XBARIN4 input pin
      SEL1_SEL3_Field_4,
      --  XBARIN5 input pin
      SEL1_SEL3_Field_5,
      --  XBARIN6 input pin
      SEL1_SEL3_Field_6,
      --  XBARIN7 input pin
      SEL1_SEL3_Field_7,
      --  XBARIN8 input pin
      SEL1_SEL3_Field_8,
      --  XBARIN9 input pin
      SEL1_SEL3_Field_9,
      --  XBARIN10 input pin
      SEL1_SEL3_Field_10,
      --  XBARIN11 input pin
      SEL1_SEL3_Field_11,
      --  CMP0 Output
      SEL1_SEL3_Field_12,
      --  CMP1 Output
      SEL1_SEL3_Field_13,
      --  CMP2 Output
      SEL1_SEL3_Field_14,
      --  CMP3 Output
      SEL1_SEL3_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL1_SEL3_Field_16,
      --  FTM0 counter init trigger
      SEL1_SEL3_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL1_SEL3_Field_18,
      --  FTM3 counter init trigger
      SEL1_SEL3_Field_19,
      --  PDB0 channel 0 output trigger
      SEL1_SEL3_Field_29,
      --  PDB1 channel 0 output trigger
      SEL1_SEL3_Field_31,
      --  ADC converter A end of scan
      SEL1_SEL3_Field_33,
      --  ADC converter B end of scan
      SEL1_SEL3_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL1_SEL3_Field_36,
      --  FTM1 counter init trigger
      SEL1_SEL3_Field_37,
      --  DMA channel 0 done
      SEL1_SEL3_Field_38,
      --  DMA channel 1 done
      SEL1_SEL3_Field_39,
      --  DMA channel 6 done
      SEL1_SEL3_Field_40,
      --  DMA channel 7 done
      SEL1_SEL3_Field_41,
      --  PIT trigger 0
      SEL1_SEL3_Field_42,
      --  PIT trigger 1
      SEL1_SEL3_Field_43,
      --  ENC0 compare trigger and position match
      SEL1_SEL3_Field_45,
      --  AOI output 0
      SEL1_SEL3_Field_46,
      --  AOI output 1
      SEL1_SEL3_Field_47,
      --  AOI output 2
      SEL1_SEL3_Field_48,
      --  AOI output 3
      SEL1_SEL3_Field_49,
      --  PIT trigger 2
      SEL1_SEL3_Field_50,
      --  PIT trigger 3
      SEL1_SEL3_Field_51)
     with Size => 6;
   for SEL1_SEL3_Field use
     (SEL1_SEL3_Field_0 => 0,
      SEL1_SEL3_Field_1 => 1,
      SEL1_SEL3_Field_2 => 2,
      SEL1_SEL3_Field_3 => 3,
      SEL1_SEL3_Field_4 => 4,
      SEL1_SEL3_Field_5 => 5,
      SEL1_SEL3_Field_6 => 6,
      SEL1_SEL3_Field_7 => 7,
      SEL1_SEL3_Field_8 => 8,
      SEL1_SEL3_Field_9 => 9,
      SEL1_SEL3_Field_10 => 10,
      SEL1_SEL3_Field_11 => 11,
      SEL1_SEL3_Field_12 => 12,
      SEL1_SEL3_Field_13 => 13,
      SEL1_SEL3_Field_14 => 14,
      SEL1_SEL3_Field_15 => 15,
      SEL1_SEL3_Field_16 => 16,
      SEL1_SEL3_Field_17 => 17,
      SEL1_SEL3_Field_18 => 18,
      SEL1_SEL3_Field_19 => 19,
      SEL1_SEL3_Field_29 => 29,
      SEL1_SEL3_Field_31 => 31,
      SEL1_SEL3_Field_33 => 33,
      SEL1_SEL3_Field_35 => 35,
      SEL1_SEL3_Field_36 => 36,
      SEL1_SEL3_Field_37 => 37,
      SEL1_SEL3_Field_38 => 38,
      SEL1_SEL3_Field_39 => 39,
      SEL1_SEL3_Field_40 => 40,
      SEL1_SEL3_Field_41 => 41,
      SEL1_SEL3_Field_42 => 42,
      SEL1_SEL3_Field_43 => 43,
      SEL1_SEL3_Field_45 => 45,
      SEL1_SEL3_Field_46 => 46,
      SEL1_SEL3_Field_47 => 47,
      SEL1_SEL3_Field_48 => 48,
      SEL1_SEL3_Field_49 => 49,
      SEL1_SEL3_Field_50 => 50,
      SEL1_SEL3_Field_51 => 51);

   --  Crossbar A Select Register 1
   type XBARA_SEL1_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT2 (refer to Functional
      --  Description section for input/output assignment)
      SEL2           : SEL1_SEL2_Field := NRF_SVD.XBARA.SEL1_SEL2_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT3 (refer to Functional
      --  Description section for input/output assignment)
      SEL3           : SEL1_SEL3_Field := NRF_SVD.XBARA.SEL1_SEL3_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL1_Register use record
      SEL2           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL3           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT4 (refer to Functional
   --  Description section for input/output assignment)
   type SEL2_SEL4_Field is
     (
      --  Logic zero
      SEL2_SEL4_Field_0,
      --  Logic one
      SEL2_SEL4_Field_1,
      --  XBARIN2 input pin
      SEL2_SEL4_Field_2,
      --  XBARIN3 input pin
      SEL2_SEL4_Field_3,
      --  XBARIN4 input pin
      SEL2_SEL4_Field_4,
      --  XBARIN5 input pin
      SEL2_SEL4_Field_5,
      --  XBARIN6 input pin
      SEL2_SEL4_Field_6,
      --  XBARIN7 input pin
      SEL2_SEL4_Field_7,
      --  XBARIN8 input pin
      SEL2_SEL4_Field_8,
      --  XBARIN9 input pin
      SEL2_SEL4_Field_9,
      --  XBARIN10 input pin
      SEL2_SEL4_Field_10,
      --  XBARIN11 input pin
      SEL2_SEL4_Field_11,
      --  CMP0 Output
      SEL2_SEL4_Field_12,
      --  CMP1 Output
      SEL2_SEL4_Field_13,
      --  CMP2 Output
      SEL2_SEL4_Field_14,
      --  CMP3 Output
      SEL2_SEL4_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL2_SEL4_Field_16,
      --  FTM0 counter init trigger
      SEL2_SEL4_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL2_SEL4_Field_18,
      --  FTM3 counter init trigger
      SEL2_SEL4_Field_19,
      --  PDB0 channel 0 output trigger
      SEL2_SEL4_Field_29,
      --  PDB1 channel 0 output trigger
      SEL2_SEL4_Field_31,
      --  ADC converter A end of scan
      SEL2_SEL4_Field_33,
      --  ADC converter B end of scan
      SEL2_SEL4_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL2_SEL4_Field_36,
      --  FTM1 counter init trigger
      SEL2_SEL4_Field_37,
      --  DMA channel 0 done
      SEL2_SEL4_Field_38,
      --  DMA channel 1 done
      SEL2_SEL4_Field_39,
      --  DMA channel 6 done
      SEL2_SEL4_Field_40,
      --  DMA channel 7 done
      SEL2_SEL4_Field_41,
      --  PIT trigger 0
      SEL2_SEL4_Field_42,
      --  PIT trigger 1
      SEL2_SEL4_Field_43,
      --  ENC0 compare trigger and position match
      SEL2_SEL4_Field_45,
      --  AOI output 0
      SEL2_SEL4_Field_46,
      --  AOI output 1
      SEL2_SEL4_Field_47,
      --  AOI output 2
      SEL2_SEL4_Field_48,
      --  AOI output 3
      SEL2_SEL4_Field_49,
      --  PIT trigger 2
      SEL2_SEL4_Field_50,
      --  PIT trigger 3
      SEL2_SEL4_Field_51)
     with Size => 6;
   for SEL2_SEL4_Field use
     (SEL2_SEL4_Field_0 => 0,
      SEL2_SEL4_Field_1 => 1,
      SEL2_SEL4_Field_2 => 2,
      SEL2_SEL4_Field_3 => 3,
      SEL2_SEL4_Field_4 => 4,
      SEL2_SEL4_Field_5 => 5,
      SEL2_SEL4_Field_6 => 6,
      SEL2_SEL4_Field_7 => 7,
      SEL2_SEL4_Field_8 => 8,
      SEL2_SEL4_Field_9 => 9,
      SEL2_SEL4_Field_10 => 10,
      SEL2_SEL4_Field_11 => 11,
      SEL2_SEL4_Field_12 => 12,
      SEL2_SEL4_Field_13 => 13,
      SEL2_SEL4_Field_14 => 14,
      SEL2_SEL4_Field_15 => 15,
      SEL2_SEL4_Field_16 => 16,
      SEL2_SEL4_Field_17 => 17,
      SEL2_SEL4_Field_18 => 18,
      SEL2_SEL4_Field_19 => 19,
      SEL2_SEL4_Field_29 => 29,
      SEL2_SEL4_Field_31 => 31,
      SEL2_SEL4_Field_33 => 33,
      SEL2_SEL4_Field_35 => 35,
      SEL2_SEL4_Field_36 => 36,
      SEL2_SEL4_Field_37 => 37,
      SEL2_SEL4_Field_38 => 38,
      SEL2_SEL4_Field_39 => 39,
      SEL2_SEL4_Field_40 => 40,
      SEL2_SEL4_Field_41 => 41,
      SEL2_SEL4_Field_42 => 42,
      SEL2_SEL4_Field_43 => 43,
      SEL2_SEL4_Field_45 => 45,
      SEL2_SEL4_Field_46 => 46,
      SEL2_SEL4_Field_47 => 47,
      SEL2_SEL4_Field_48 => 48,
      SEL2_SEL4_Field_49 => 49,
      SEL2_SEL4_Field_50 => 50,
      SEL2_SEL4_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT5 (refer to Functional
   --  Description section for input/output assignment)
   type SEL2_SEL5_Field is
     (
      --  Logic zero
      SEL2_SEL5_Field_0,
      --  Logic one
      SEL2_SEL5_Field_1,
      --  XBARIN2 input pin
      SEL2_SEL5_Field_2,
      --  XBARIN3 input pin
      SEL2_SEL5_Field_3,
      --  XBARIN4 input pin
      SEL2_SEL5_Field_4,
      --  XBARIN5 input pin
      SEL2_SEL5_Field_5,
      --  XBARIN6 input pin
      SEL2_SEL5_Field_6,
      --  XBARIN7 input pin
      SEL2_SEL5_Field_7,
      --  XBARIN8 input pin
      SEL2_SEL5_Field_8,
      --  XBARIN9 input pin
      SEL2_SEL5_Field_9,
      --  XBARIN10 input pin
      SEL2_SEL5_Field_10,
      --  XBARIN11 input pin
      SEL2_SEL5_Field_11,
      --  CMP0 Output
      SEL2_SEL5_Field_12,
      --  CMP1 Output
      SEL2_SEL5_Field_13,
      --  CMP2 Output
      SEL2_SEL5_Field_14,
      --  CMP3 Output
      SEL2_SEL5_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL2_SEL5_Field_16,
      --  FTM0 counter init trigger
      SEL2_SEL5_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL2_SEL5_Field_18,
      --  FTM3 counter init trigger
      SEL2_SEL5_Field_19,
      --  PDB0 channel 0 output trigger
      SEL2_SEL5_Field_29,
      --  PDB1 channel 0 output trigger
      SEL2_SEL5_Field_31,
      --  ADC converter A end of scan
      SEL2_SEL5_Field_33,
      --  ADC converter B end of scan
      SEL2_SEL5_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL2_SEL5_Field_36,
      --  FTM1 counter init trigger
      SEL2_SEL5_Field_37,
      --  DMA channel 0 done
      SEL2_SEL5_Field_38,
      --  DMA channel 1 done
      SEL2_SEL5_Field_39,
      --  DMA channel 6 done
      SEL2_SEL5_Field_40,
      --  DMA channel 7 done
      SEL2_SEL5_Field_41,
      --  PIT trigger 0
      SEL2_SEL5_Field_42,
      --  PIT trigger 1
      SEL2_SEL5_Field_43,
      --  ENC0 compare trigger and position match
      SEL2_SEL5_Field_45,
      --  AOI output 0
      SEL2_SEL5_Field_46,
      --  AOI output 1
      SEL2_SEL5_Field_47,
      --  AOI output 2
      SEL2_SEL5_Field_48,
      --  AOI output 3
      SEL2_SEL5_Field_49,
      --  PIT trigger 2
      SEL2_SEL5_Field_50,
      --  PIT trigger 3
      SEL2_SEL5_Field_51)
     with Size => 6;
   for SEL2_SEL5_Field use
     (SEL2_SEL5_Field_0 => 0,
      SEL2_SEL5_Field_1 => 1,
      SEL2_SEL5_Field_2 => 2,
      SEL2_SEL5_Field_3 => 3,
      SEL2_SEL5_Field_4 => 4,
      SEL2_SEL5_Field_5 => 5,
      SEL2_SEL5_Field_6 => 6,
      SEL2_SEL5_Field_7 => 7,
      SEL2_SEL5_Field_8 => 8,
      SEL2_SEL5_Field_9 => 9,
      SEL2_SEL5_Field_10 => 10,
      SEL2_SEL5_Field_11 => 11,
      SEL2_SEL5_Field_12 => 12,
      SEL2_SEL5_Field_13 => 13,
      SEL2_SEL5_Field_14 => 14,
      SEL2_SEL5_Field_15 => 15,
      SEL2_SEL5_Field_16 => 16,
      SEL2_SEL5_Field_17 => 17,
      SEL2_SEL5_Field_18 => 18,
      SEL2_SEL5_Field_19 => 19,
      SEL2_SEL5_Field_29 => 29,
      SEL2_SEL5_Field_31 => 31,
      SEL2_SEL5_Field_33 => 33,
      SEL2_SEL5_Field_35 => 35,
      SEL2_SEL5_Field_36 => 36,
      SEL2_SEL5_Field_37 => 37,
      SEL2_SEL5_Field_38 => 38,
      SEL2_SEL5_Field_39 => 39,
      SEL2_SEL5_Field_40 => 40,
      SEL2_SEL5_Field_41 => 41,
      SEL2_SEL5_Field_42 => 42,
      SEL2_SEL5_Field_43 => 43,
      SEL2_SEL5_Field_45 => 45,
      SEL2_SEL5_Field_46 => 46,
      SEL2_SEL5_Field_47 => 47,
      SEL2_SEL5_Field_48 => 48,
      SEL2_SEL5_Field_49 => 49,
      SEL2_SEL5_Field_50 => 50,
      SEL2_SEL5_Field_51 => 51);

   --  Crossbar A Select Register 2
   type XBARA_SEL2_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT4 (refer to Functional
      --  Description section for input/output assignment)
      SEL4           : SEL2_SEL4_Field := NRF_SVD.XBARA.SEL2_SEL4_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT5 (refer to Functional
      --  Description section for input/output assignment)
      SEL5           : SEL2_SEL5_Field := NRF_SVD.XBARA.SEL2_SEL5_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL2_Register use record
      SEL4           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL5           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT6 (refer to Functional
   --  Description section for input/output assignment)
   type SEL3_SEL6_Field is
     (
      --  Logic zero
      SEL3_SEL6_Field_0,
      --  Logic one
      SEL3_SEL6_Field_1,
      --  XBARIN2 input pin
      SEL3_SEL6_Field_2,
      --  XBARIN3 input pin
      SEL3_SEL6_Field_3,
      --  XBARIN4 input pin
      SEL3_SEL6_Field_4,
      --  XBARIN5 input pin
      SEL3_SEL6_Field_5,
      --  XBARIN6 input pin
      SEL3_SEL6_Field_6,
      --  XBARIN7 input pin
      SEL3_SEL6_Field_7,
      --  XBARIN8 input pin
      SEL3_SEL6_Field_8,
      --  XBARIN9 input pin
      SEL3_SEL6_Field_9,
      --  XBARIN10 input pin
      SEL3_SEL6_Field_10,
      --  XBARIN11 input pin
      SEL3_SEL6_Field_11,
      --  CMP0 Output
      SEL3_SEL6_Field_12,
      --  CMP1 Output
      SEL3_SEL6_Field_13,
      --  CMP2 Output
      SEL3_SEL6_Field_14,
      --  CMP3 Output
      SEL3_SEL6_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL3_SEL6_Field_16,
      --  FTM0 counter init trigger
      SEL3_SEL6_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL3_SEL6_Field_18,
      --  FTM3 counter init trigger
      SEL3_SEL6_Field_19,
      --  PDB0 channel 0 output trigger
      SEL3_SEL6_Field_29,
      --  PDB1 channel 0 output trigger
      SEL3_SEL6_Field_31,
      --  ADC converter A end of scan
      SEL3_SEL6_Field_33,
      --  ADC converter B end of scan
      SEL3_SEL6_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL3_SEL6_Field_36,
      --  FTM1 counter init trigger
      SEL3_SEL6_Field_37,
      --  DMA channel 0 done
      SEL3_SEL6_Field_38,
      --  DMA channel 1 done
      SEL3_SEL6_Field_39,
      --  DMA channel 6 done
      SEL3_SEL6_Field_40,
      --  DMA channel 7 done
      SEL3_SEL6_Field_41,
      --  PIT trigger 0
      SEL3_SEL6_Field_42,
      --  PIT trigger 1
      SEL3_SEL6_Field_43,
      --  ENC0 compare trigger and position match
      SEL3_SEL6_Field_45,
      --  AOI output 0
      SEL3_SEL6_Field_46,
      --  AOI output 1
      SEL3_SEL6_Field_47,
      --  AOI output 2
      SEL3_SEL6_Field_48,
      --  AOI output 3
      SEL3_SEL6_Field_49,
      --  PIT trigger 2
      SEL3_SEL6_Field_50,
      --  PIT trigger 3
      SEL3_SEL6_Field_51)
     with Size => 6;
   for SEL3_SEL6_Field use
     (SEL3_SEL6_Field_0 => 0,
      SEL3_SEL6_Field_1 => 1,
      SEL3_SEL6_Field_2 => 2,
      SEL3_SEL6_Field_3 => 3,
      SEL3_SEL6_Field_4 => 4,
      SEL3_SEL6_Field_5 => 5,
      SEL3_SEL6_Field_6 => 6,
      SEL3_SEL6_Field_7 => 7,
      SEL3_SEL6_Field_8 => 8,
      SEL3_SEL6_Field_9 => 9,
      SEL3_SEL6_Field_10 => 10,
      SEL3_SEL6_Field_11 => 11,
      SEL3_SEL6_Field_12 => 12,
      SEL3_SEL6_Field_13 => 13,
      SEL3_SEL6_Field_14 => 14,
      SEL3_SEL6_Field_15 => 15,
      SEL3_SEL6_Field_16 => 16,
      SEL3_SEL6_Field_17 => 17,
      SEL3_SEL6_Field_18 => 18,
      SEL3_SEL6_Field_19 => 19,
      SEL3_SEL6_Field_29 => 29,
      SEL3_SEL6_Field_31 => 31,
      SEL3_SEL6_Field_33 => 33,
      SEL3_SEL6_Field_35 => 35,
      SEL3_SEL6_Field_36 => 36,
      SEL3_SEL6_Field_37 => 37,
      SEL3_SEL6_Field_38 => 38,
      SEL3_SEL6_Field_39 => 39,
      SEL3_SEL6_Field_40 => 40,
      SEL3_SEL6_Field_41 => 41,
      SEL3_SEL6_Field_42 => 42,
      SEL3_SEL6_Field_43 => 43,
      SEL3_SEL6_Field_45 => 45,
      SEL3_SEL6_Field_46 => 46,
      SEL3_SEL6_Field_47 => 47,
      SEL3_SEL6_Field_48 => 48,
      SEL3_SEL6_Field_49 => 49,
      SEL3_SEL6_Field_50 => 50,
      SEL3_SEL6_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT7 (refer to Functional
   --  Description section for input/output assignment)
   type SEL3_SEL7_Field is
     (
      --  Logic zero
      SEL3_SEL7_Field_0,
      --  Logic one
      SEL3_SEL7_Field_1,
      --  XBARIN2 input pin
      SEL3_SEL7_Field_2,
      --  XBARIN3 input pin
      SEL3_SEL7_Field_3,
      --  XBARIN4 input pin
      SEL3_SEL7_Field_4,
      --  XBARIN5 input pin
      SEL3_SEL7_Field_5,
      --  XBARIN6 input pin
      SEL3_SEL7_Field_6,
      --  XBARIN7 input pin
      SEL3_SEL7_Field_7,
      --  XBARIN8 input pin
      SEL3_SEL7_Field_8,
      --  XBARIN9 input pin
      SEL3_SEL7_Field_9,
      --  XBARIN10 input pin
      SEL3_SEL7_Field_10,
      --  XBARIN11 input pin
      SEL3_SEL7_Field_11,
      --  CMP0 Output
      SEL3_SEL7_Field_12,
      --  CMP1 Output
      SEL3_SEL7_Field_13,
      --  CMP2 Output
      SEL3_SEL7_Field_14,
      --  CMP3 Output
      SEL3_SEL7_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL3_SEL7_Field_16,
      --  FTM0 counter init trigger
      SEL3_SEL7_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL3_SEL7_Field_18,
      --  FTM3 counter init trigger
      SEL3_SEL7_Field_19,
      --  PDB0 channel 0 output trigger
      SEL3_SEL7_Field_29,
      --  PDB1 channel 0 output trigger
      SEL3_SEL7_Field_31,
      --  ADC converter A end of scan
      SEL3_SEL7_Field_33,
      --  ADC converter B end of scan
      SEL3_SEL7_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL3_SEL7_Field_36,
      --  FTM1 counter init trigger
      SEL3_SEL7_Field_37,
      --  DMA channel 0 done
      SEL3_SEL7_Field_38,
      --  DMA channel 1 done
      SEL3_SEL7_Field_39,
      --  DMA channel 6 done
      SEL3_SEL7_Field_40,
      --  DMA channel 7 done
      SEL3_SEL7_Field_41,
      --  PIT trigger 0
      SEL3_SEL7_Field_42,
      --  PIT trigger 1
      SEL3_SEL7_Field_43,
      --  ENC0 compare trigger and position match
      SEL3_SEL7_Field_45,
      --  AOI output 0
      SEL3_SEL7_Field_46,
      --  AOI output 1
      SEL3_SEL7_Field_47,
      --  AOI output 2
      SEL3_SEL7_Field_48,
      --  AOI output 3
      SEL3_SEL7_Field_49,
      --  PIT trigger 2
      SEL3_SEL7_Field_50,
      --  PIT trigger 3
      SEL3_SEL7_Field_51)
     with Size => 6;
   for SEL3_SEL7_Field use
     (SEL3_SEL7_Field_0 => 0,
      SEL3_SEL7_Field_1 => 1,
      SEL3_SEL7_Field_2 => 2,
      SEL3_SEL7_Field_3 => 3,
      SEL3_SEL7_Field_4 => 4,
      SEL3_SEL7_Field_5 => 5,
      SEL3_SEL7_Field_6 => 6,
      SEL3_SEL7_Field_7 => 7,
      SEL3_SEL7_Field_8 => 8,
      SEL3_SEL7_Field_9 => 9,
      SEL3_SEL7_Field_10 => 10,
      SEL3_SEL7_Field_11 => 11,
      SEL3_SEL7_Field_12 => 12,
      SEL3_SEL7_Field_13 => 13,
      SEL3_SEL7_Field_14 => 14,
      SEL3_SEL7_Field_15 => 15,
      SEL3_SEL7_Field_16 => 16,
      SEL3_SEL7_Field_17 => 17,
      SEL3_SEL7_Field_18 => 18,
      SEL3_SEL7_Field_19 => 19,
      SEL3_SEL7_Field_29 => 29,
      SEL3_SEL7_Field_31 => 31,
      SEL3_SEL7_Field_33 => 33,
      SEL3_SEL7_Field_35 => 35,
      SEL3_SEL7_Field_36 => 36,
      SEL3_SEL7_Field_37 => 37,
      SEL3_SEL7_Field_38 => 38,
      SEL3_SEL7_Field_39 => 39,
      SEL3_SEL7_Field_40 => 40,
      SEL3_SEL7_Field_41 => 41,
      SEL3_SEL7_Field_42 => 42,
      SEL3_SEL7_Field_43 => 43,
      SEL3_SEL7_Field_45 => 45,
      SEL3_SEL7_Field_46 => 46,
      SEL3_SEL7_Field_47 => 47,
      SEL3_SEL7_Field_48 => 48,
      SEL3_SEL7_Field_49 => 49,
      SEL3_SEL7_Field_50 => 50,
      SEL3_SEL7_Field_51 => 51);

   --  Crossbar A Select Register 3
   type XBARA_SEL3_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT6 (refer to Functional
      --  Description section for input/output assignment)
      SEL6           : SEL3_SEL6_Field := NRF_SVD.XBARA.SEL3_SEL6_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT7 (refer to Functional
      --  Description section for input/output assignment)
      SEL7           : SEL3_SEL7_Field := NRF_SVD.XBARA.SEL3_SEL7_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL3_Register use record
      SEL6           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL7           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT8 (refer to Functional
   --  Description section for input/output assignment)
   type SEL4_SEL8_Field is
     (
      --  Logic zero
      SEL4_SEL8_Field_0,
      --  Logic one
      SEL4_SEL8_Field_1,
      --  XBARIN2 input pin
      SEL4_SEL8_Field_2,
      --  XBARIN3 input pin
      SEL4_SEL8_Field_3,
      --  XBARIN4 input pin
      SEL4_SEL8_Field_4,
      --  XBARIN5 input pin
      SEL4_SEL8_Field_5,
      --  XBARIN6 input pin
      SEL4_SEL8_Field_6,
      --  XBARIN7 input pin
      SEL4_SEL8_Field_7,
      --  XBARIN8 input pin
      SEL4_SEL8_Field_8,
      --  XBARIN9 input pin
      SEL4_SEL8_Field_9,
      --  XBARIN10 input pin
      SEL4_SEL8_Field_10,
      --  XBARIN11 input pin
      SEL4_SEL8_Field_11,
      --  CMP0 Output
      SEL4_SEL8_Field_12,
      --  CMP1 Output
      SEL4_SEL8_Field_13,
      --  CMP2 Output
      SEL4_SEL8_Field_14,
      --  CMP3 Output
      SEL4_SEL8_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL4_SEL8_Field_16,
      --  FTM0 counter init trigger
      SEL4_SEL8_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL4_SEL8_Field_18,
      --  FTM3 counter init trigger
      SEL4_SEL8_Field_19,
      --  PDB0 channel 0 output trigger
      SEL4_SEL8_Field_29,
      --  PDB1 channel 0 output trigger
      SEL4_SEL8_Field_31,
      --  ADC converter A end of scan
      SEL4_SEL8_Field_33,
      --  ADC converter B end of scan
      SEL4_SEL8_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL4_SEL8_Field_36,
      --  FTM1 counter init trigger
      SEL4_SEL8_Field_37,
      --  DMA channel 0 done
      SEL4_SEL8_Field_38,
      --  DMA channel 1 done
      SEL4_SEL8_Field_39,
      --  DMA channel 6 done
      SEL4_SEL8_Field_40,
      --  DMA channel 7 done
      SEL4_SEL8_Field_41,
      --  PIT trigger 0
      SEL4_SEL8_Field_42,
      --  PIT trigger 1
      SEL4_SEL8_Field_43,
      --  ENC0 compare trigger and position match
      SEL4_SEL8_Field_45,
      --  AOI output 0
      SEL4_SEL8_Field_46,
      --  AOI output 1
      SEL4_SEL8_Field_47,
      --  AOI output 2
      SEL4_SEL8_Field_48,
      --  AOI output 3
      SEL4_SEL8_Field_49,
      --  PIT trigger 2
      SEL4_SEL8_Field_50,
      --  PIT trigger 3
      SEL4_SEL8_Field_51)
     with Size => 6;
   for SEL4_SEL8_Field use
     (SEL4_SEL8_Field_0 => 0,
      SEL4_SEL8_Field_1 => 1,
      SEL4_SEL8_Field_2 => 2,
      SEL4_SEL8_Field_3 => 3,
      SEL4_SEL8_Field_4 => 4,
      SEL4_SEL8_Field_5 => 5,
      SEL4_SEL8_Field_6 => 6,
      SEL4_SEL8_Field_7 => 7,
      SEL4_SEL8_Field_8 => 8,
      SEL4_SEL8_Field_9 => 9,
      SEL4_SEL8_Field_10 => 10,
      SEL4_SEL8_Field_11 => 11,
      SEL4_SEL8_Field_12 => 12,
      SEL4_SEL8_Field_13 => 13,
      SEL4_SEL8_Field_14 => 14,
      SEL4_SEL8_Field_15 => 15,
      SEL4_SEL8_Field_16 => 16,
      SEL4_SEL8_Field_17 => 17,
      SEL4_SEL8_Field_18 => 18,
      SEL4_SEL8_Field_19 => 19,
      SEL4_SEL8_Field_29 => 29,
      SEL4_SEL8_Field_31 => 31,
      SEL4_SEL8_Field_33 => 33,
      SEL4_SEL8_Field_35 => 35,
      SEL4_SEL8_Field_36 => 36,
      SEL4_SEL8_Field_37 => 37,
      SEL4_SEL8_Field_38 => 38,
      SEL4_SEL8_Field_39 => 39,
      SEL4_SEL8_Field_40 => 40,
      SEL4_SEL8_Field_41 => 41,
      SEL4_SEL8_Field_42 => 42,
      SEL4_SEL8_Field_43 => 43,
      SEL4_SEL8_Field_45 => 45,
      SEL4_SEL8_Field_46 => 46,
      SEL4_SEL8_Field_47 => 47,
      SEL4_SEL8_Field_48 => 48,
      SEL4_SEL8_Field_49 => 49,
      SEL4_SEL8_Field_50 => 50,
      SEL4_SEL8_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT9 (refer to Functional
   --  Description section for input/output assignment)
   type SEL4_SEL9_Field is
     (
      --  Logic zero
      SEL4_SEL9_Field_0,
      --  Logic one
      SEL4_SEL9_Field_1,
      --  XBARIN2 input pin
      SEL4_SEL9_Field_2,
      --  XBARIN3 input pin
      SEL4_SEL9_Field_3,
      --  XBARIN4 input pin
      SEL4_SEL9_Field_4,
      --  XBARIN5 input pin
      SEL4_SEL9_Field_5,
      --  XBARIN6 input pin
      SEL4_SEL9_Field_6,
      --  XBARIN7 input pin
      SEL4_SEL9_Field_7,
      --  XBARIN8 input pin
      SEL4_SEL9_Field_8,
      --  XBARIN9 input pin
      SEL4_SEL9_Field_9,
      --  XBARIN10 input pin
      SEL4_SEL9_Field_10,
      --  XBARIN11 input pin
      SEL4_SEL9_Field_11,
      --  CMP0 Output
      SEL4_SEL9_Field_12,
      --  CMP1 Output
      SEL4_SEL9_Field_13,
      --  CMP2 Output
      SEL4_SEL9_Field_14,
      --  CMP3 Output
      SEL4_SEL9_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL4_SEL9_Field_16,
      --  FTM0 counter init trigger
      SEL4_SEL9_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL4_SEL9_Field_18,
      --  FTM3 counter init trigger
      SEL4_SEL9_Field_19,
      --  PDB0 channel 0 output trigger
      SEL4_SEL9_Field_29,
      --  PDB1 channel 0 output trigger
      SEL4_SEL9_Field_31,
      --  ADC converter A end of scan
      SEL4_SEL9_Field_33,
      --  ADC converter B end of scan
      SEL4_SEL9_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL4_SEL9_Field_36,
      --  FTM1 counter init trigger
      SEL4_SEL9_Field_37,
      --  DMA channel 0 done
      SEL4_SEL9_Field_38,
      --  DMA channel 1 done
      SEL4_SEL9_Field_39,
      --  DMA channel 6 done
      SEL4_SEL9_Field_40,
      --  DMA channel 7 done
      SEL4_SEL9_Field_41,
      --  PIT trigger 0
      SEL4_SEL9_Field_42,
      --  PIT trigger 1
      SEL4_SEL9_Field_43,
      --  ENC0 compare trigger and position match
      SEL4_SEL9_Field_45,
      --  AOI output 0
      SEL4_SEL9_Field_46,
      --  AOI output 1
      SEL4_SEL9_Field_47,
      --  AOI output 2
      SEL4_SEL9_Field_48,
      --  AOI output 3
      SEL4_SEL9_Field_49,
      --  PIT trigger 2
      SEL4_SEL9_Field_50,
      --  PIT trigger 3
      SEL4_SEL9_Field_51)
     with Size => 6;
   for SEL4_SEL9_Field use
     (SEL4_SEL9_Field_0 => 0,
      SEL4_SEL9_Field_1 => 1,
      SEL4_SEL9_Field_2 => 2,
      SEL4_SEL9_Field_3 => 3,
      SEL4_SEL9_Field_4 => 4,
      SEL4_SEL9_Field_5 => 5,
      SEL4_SEL9_Field_6 => 6,
      SEL4_SEL9_Field_7 => 7,
      SEL4_SEL9_Field_8 => 8,
      SEL4_SEL9_Field_9 => 9,
      SEL4_SEL9_Field_10 => 10,
      SEL4_SEL9_Field_11 => 11,
      SEL4_SEL9_Field_12 => 12,
      SEL4_SEL9_Field_13 => 13,
      SEL4_SEL9_Field_14 => 14,
      SEL4_SEL9_Field_15 => 15,
      SEL4_SEL9_Field_16 => 16,
      SEL4_SEL9_Field_17 => 17,
      SEL4_SEL9_Field_18 => 18,
      SEL4_SEL9_Field_19 => 19,
      SEL4_SEL9_Field_29 => 29,
      SEL4_SEL9_Field_31 => 31,
      SEL4_SEL9_Field_33 => 33,
      SEL4_SEL9_Field_35 => 35,
      SEL4_SEL9_Field_36 => 36,
      SEL4_SEL9_Field_37 => 37,
      SEL4_SEL9_Field_38 => 38,
      SEL4_SEL9_Field_39 => 39,
      SEL4_SEL9_Field_40 => 40,
      SEL4_SEL9_Field_41 => 41,
      SEL4_SEL9_Field_42 => 42,
      SEL4_SEL9_Field_43 => 43,
      SEL4_SEL9_Field_45 => 45,
      SEL4_SEL9_Field_46 => 46,
      SEL4_SEL9_Field_47 => 47,
      SEL4_SEL9_Field_48 => 48,
      SEL4_SEL9_Field_49 => 49,
      SEL4_SEL9_Field_50 => 50,
      SEL4_SEL9_Field_51 => 51);

   --  Crossbar A Select Register 4
   type XBARA_SEL4_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT8 (refer to Functional
      --  Description section for input/output assignment)
      SEL8           : SEL4_SEL8_Field := NRF_SVD.XBARA.SEL4_SEL8_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT9 (refer to Functional
      --  Description section for input/output assignment)
      SEL9           : SEL4_SEL9_Field := NRF_SVD.XBARA.SEL4_SEL9_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL4_Register use record
      SEL8           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL9           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT10 (refer to Functional
   --  Description section for input/output assignment)
   type SEL5_SEL10_Field is
     (
      --  Logic zero
      SEL5_SEL10_Field_0,
      --  Logic one
      SEL5_SEL10_Field_1,
      --  XBARIN2 input pin
      SEL5_SEL10_Field_2,
      --  XBARIN3 input pin
      SEL5_SEL10_Field_3,
      --  XBARIN4 input pin
      SEL5_SEL10_Field_4,
      --  XBARIN5 input pin
      SEL5_SEL10_Field_5,
      --  XBARIN6 input pin
      SEL5_SEL10_Field_6,
      --  XBARIN7 input pin
      SEL5_SEL10_Field_7,
      --  XBARIN8 input pin
      SEL5_SEL10_Field_8,
      --  XBARIN9 input pin
      SEL5_SEL10_Field_9,
      --  XBARIN10 input pin
      SEL5_SEL10_Field_10,
      --  XBARIN11 input pin
      SEL5_SEL10_Field_11,
      --  CMP0 Output
      SEL5_SEL10_Field_12,
      --  CMP1 Output
      SEL5_SEL10_Field_13,
      --  CMP2 Output
      SEL5_SEL10_Field_14,
      --  CMP3 Output
      SEL5_SEL10_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL5_SEL10_Field_16,
      --  FTM0 counter init trigger
      SEL5_SEL10_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL5_SEL10_Field_18,
      --  FTM3 counter init trigger
      SEL5_SEL10_Field_19,
      --  PDB0 channel 0 output trigger
      SEL5_SEL10_Field_29,
      --  PDB1 channel 0 output trigger
      SEL5_SEL10_Field_31,
      --  ADC converter A end of scan
      SEL5_SEL10_Field_33,
      --  ADC converter B end of scan
      SEL5_SEL10_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL5_SEL10_Field_36,
      --  FTM1 counter init trigger
      SEL5_SEL10_Field_37,
      --  DMA channel 0 done
      SEL5_SEL10_Field_38,
      --  DMA channel 1 done
      SEL5_SEL10_Field_39,
      --  DMA channel 6 done
      SEL5_SEL10_Field_40,
      --  DMA channel 7 done
      SEL5_SEL10_Field_41,
      --  PIT trigger 0
      SEL5_SEL10_Field_42,
      --  PIT trigger 1
      SEL5_SEL10_Field_43,
      --  ENC0 compare trigger and position match
      SEL5_SEL10_Field_45,
      --  AOI output 0
      SEL5_SEL10_Field_46,
      --  AOI output 1
      SEL5_SEL10_Field_47,
      --  AOI output 2
      SEL5_SEL10_Field_48,
      --  AOI output 3
      SEL5_SEL10_Field_49,
      --  PIT trigger 2
      SEL5_SEL10_Field_50,
      --  PIT trigger 3
      SEL5_SEL10_Field_51)
     with Size => 6;
   for SEL5_SEL10_Field use
     (SEL5_SEL10_Field_0 => 0,
      SEL5_SEL10_Field_1 => 1,
      SEL5_SEL10_Field_2 => 2,
      SEL5_SEL10_Field_3 => 3,
      SEL5_SEL10_Field_4 => 4,
      SEL5_SEL10_Field_5 => 5,
      SEL5_SEL10_Field_6 => 6,
      SEL5_SEL10_Field_7 => 7,
      SEL5_SEL10_Field_8 => 8,
      SEL5_SEL10_Field_9 => 9,
      SEL5_SEL10_Field_10 => 10,
      SEL5_SEL10_Field_11 => 11,
      SEL5_SEL10_Field_12 => 12,
      SEL5_SEL10_Field_13 => 13,
      SEL5_SEL10_Field_14 => 14,
      SEL5_SEL10_Field_15 => 15,
      SEL5_SEL10_Field_16 => 16,
      SEL5_SEL10_Field_17 => 17,
      SEL5_SEL10_Field_18 => 18,
      SEL5_SEL10_Field_19 => 19,
      SEL5_SEL10_Field_29 => 29,
      SEL5_SEL10_Field_31 => 31,
      SEL5_SEL10_Field_33 => 33,
      SEL5_SEL10_Field_35 => 35,
      SEL5_SEL10_Field_36 => 36,
      SEL5_SEL10_Field_37 => 37,
      SEL5_SEL10_Field_38 => 38,
      SEL5_SEL10_Field_39 => 39,
      SEL5_SEL10_Field_40 => 40,
      SEL5_SEL10_Field_41 => 41,
      SEL5_SEL10_Field_42 => 42,
      SEL5_SEL10_Field_43 => 43,
      SEL5_SEL10_Field_45 => 45,
      SEL5_SEL10_Field_46 => 46,
      SEL5_SEL10_Field_47 => 47,
      SEL5_SEL10_Field_48 => 48,
      SEL5_SEL10_Field_49 => 49,
      SEL5_SEL10_Field_50 => 50,
      SEL5_SEL10_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT11 (refer to Functional
   --  Description section for input/output assignment)
   type SEL5_SEL11_Field is
     (
      --  Logic zero
      SEL5_SEL11_Field_0,
      --  Logic one
      SEL5_SEL11_Field_1,
      --  XBARIN2 input pin
      SEL5_SEL11_Field_2,
      --  XBARIN3 input pin
      SEL5_SEL11_Field_3,
      --  XBARIN4 input pin
      SEL5_SEL11_Field_4,
      --  XBARIN5 input pin
      SEL5_SEL11_Field_5,
      --  XBARIN6 input pin
      SEL5_SEL11_Field_6,
      --  XBARIN7 input pin
      SEL5_SEL11_Field_7,
      --  XBARIN8 input pin
      SEL5_SEL11_Field_8,
      --  XBARIN9 input pin
      SEL5_SEL11_Field_9,
      --  XBARIN10 input pin
      SEL5_SEL11_Field_10,
      --  XBARIN11 input pin
      SEL5_SEL11_Field_11,
      --  CMP0 Output
      SEL5_SEL11_Field_12,
      --  CMP1 Output
      SEL5_SEL11_Field_13,
      --  CMP2 Output
      SEL5_SEL11_Field_14,
      --  CMP3 Output
      SEL5_SEL11_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL5_SEL11_Field_16,
      --  FTM0 counter init trigger
      SEL5_SEL11_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL5_SEL11_Field_18,
      --  FTM3 counter init trigger
      SEL5_SEL11_Field_19,
      --  PDB0 channel 0 output trigger
      SEL5_SEL11_Field_29,
      --  PDB1 channel 0 output trigger
      SEL5_SEL11_Field_31,
      --  ADC converter A end of scan
      SEL5_SEL11_Field_33,
      --  ADC converter B end of scan
      SEL5_SEL11_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL5_SEL11_Field_36,
      --  FTM1 counter init trigger
      SEL5_SEL11_Field_37,
      --  DMA channel 0 done
      SEL5_SEL11_Field_38,
      --  DMA channel 1 done
      SEL5_SEL11_Field_39,
      --  DMA channel 6 done
      SEL5_SEL11_Field_40,
      --  DMA channel 7 done
      SEL5_SEL11_Field_41,
      --  PIT trigger 0
      SEL5_SEL11_Field_42,
      --  PIT trigger 1
      SEL5_SEL11_Field_43,
      --  ENC0 compare trigger and position match
      SEL5_SEL11_Field_45,
      --  AOI output 0
      SEL5_SEL11_Field_46,
      --  AOI output 1
      SEL5_SEL11_Field_47,
      --  AOI output 2
      SEL5_SEL11_Field_48,
      --  AOI output 3
      SEL5_SEL11_Field_49,
      --  PIT trigger 2
      SEL5_SEL11_Field_50,
      --  PIT trigger 3
      SEL5_SEL11_Field_51)
     with Size => 6;
   for SEL5_SEL11_Field use
     (SEL5_SEL11_Field_0 => 0,
      SEL5_SEL11_Field_1 => 1,
      SEL5_SEL11_Field_2 => 2,
      SEL5_SEL11_Field_3 => 3,
      SEL5_SEL11_Field_4 => 4,
      SEL5_SEL11_Field_5 => 5,
      SEL5_SEL11_Field_6 => 6,
      SEL5_SEL11_Field_7 => 7,
      SEL5_SEL11_Field_8 => 8,
      SEL5_SEL11_Field_9 => 9,
      SEL5_SEL11_Field_10 => 10,
      SEL5_SEL11_Field_11 => 11,
      SEL5_SEL11_Field_12 => 12,
      SEL5_SEL11_Field_13 => 13,
      SEL5_SEL11_Field_14 => 14,
      SEL5_SEL11_Field_15 => 15,
      SEL5_SEL11_Field_16 => 16,
      SEL5_SEL11_Field_17 => 17,
      SEL5_SEL11_Field_18 => 18,
      SEL5_SEL11_Field_19 => 19,
      SEL5_SEL11_Field_29 => 29,
      SEL5_SEL11_Field_31 => 31,
      SEL5_SEL11_Field_33 => 33,
      SEL5_SEL11_Field_35 => 35,
      SEL5_SEL11_Field_36 => 36,
      SEL5_SEL11_Field_37 => 37,
      SEL5_SEL11_Field_38 => 38,
      SEL5_SEL11_Field_39 => 39,
      SEL5_SEL11_Field_40 => 40,
      SEL5_SEL11_Field_41 => 41,
      SEL5_SEL11_Field_42 => 42,
      SEL5_SEL11_Field_43 => 43,
      SEL5_SEL11_Field_45 => 45,
      SEL5_SEL11_Field_46 => 46,
      SEL5_SEL11_Field_47 => 47,
      SEL5_SEL11_Field_48 => 48,
      SEL5_SEL11_Field_49 => 49,
      SEL5_SEL11_Field_50 => 50,
      SEL5_SEL11_Field_51 => 51);

   --  Crossbar A Select Register 5
   type XBARA_SEL5_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT10 (refer to Functional
      --  Description section for input/output assignment)
      SEL10          : SEL5_SEL10_Field := NRF_SVD.XBARA.SEL5_SEL10_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT11 (refer to Functional
      --  Description section for input/output assignment)
      SEL11          : SEL5_SEL11_Field := NRF_SVD.XBARA.SEL5_SEL11_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL5_Register use record
      SEL10          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL11          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT12 (refer to Functional
   --  Description section for input/output assignment)
   type SEL6_SEL12_Field is
     (
      --  Logic zero
      SEL6_SEL12_Field_0,
      --  Logic one
      SEL6_SEL12_Field_1,
      --  XBARIN2 input pin
      SEL6_SEL12_Field_2,
      --  XBARIN3 input pin
      SEL6_SEL12_Field_3,
      --  XBARIN4 input pin
      SEL6_SEL12_Field_4,
      --  XBARIN5 input pin
      SEL6_SEL12_Field_5,
      --  XBARIN6 input pin
      SEL6_SEL12_Field_6,
      --  XBARIN7 input pin
      SEL6_SEL12_Field_7,
      --  XBARIN8 input pin
      SEL6_SEL12_Field_8,
      --  XBARIN9 input pin
      SEL6_SEL12_Field_9,
      --  XBARIN10 input pin
      SEL6_SEL12_Field_10,
      --  XBARIN11 input pin
      SEL6_SEL12_Field_11,
      --  CMP0 Output
      SEL6_SEL12_Field_12,
      --  CMP1 Output
      SEL6_SEL12_Field_13,
      --  CMP2 Output
      SEL6_SEL12_Field_14,
      --  CMP3 Output
      SEL6_SEL12_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL6_SEL12_Field_16,
      --  FTM0 counter init trigger
      SEL6_SEL12_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL6_SEL12_Field_18,
      --  FTM3 counter init trigger
      SEL6_SEL12_Field_19,
      --  PDB0 channel 0 output trigger
      SEL6_SEL12_Field_29,
      --  PDB1 channel 0 output trigger
      SEL6_SEL12_Field_31,
      --  ADC converter A end of scan
      SEL6_SEL12_Field_33,
      --  ADC converter B end of scan
      SEL6_SEL12_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL6_SEL12_Field_36,
      --  FTM1 counter init trigger
      SEL6_SEL12_Field_37,
      --  DMA channel 0 done
      SEL6_SEL12_Field_38,
      --  DMA channel 1 done
      SEL6_SEL12_Field_39,
      --  DMA channel 6 done
      SEL6_SEL12_Field_40,
      --  DMA channel 7 done
      SEL6_SEL12_Field_41,
      --  PIT trigger 0
      SEL6_SEL12_Field_42,
      --  PIT trigger 1
      SEL6_SEL12_Field_43,
      --  ENC0 compare trigger and position match
      SEL6_SEL12_Field_45,
      --  AOI output 0
      SEL6_SEL12_Field_46,
      --  AOI output 1
      SEL6_SEL12_Field_47,
      --  AOI output 2
      SEL6_SEL12_Field_48,
      --  AOI output 3
      SEL6_SEL12_Field_49,
      --  PIT trigger 2
      SEL6_SEL12_Field_50,
      --  PIT trigger 3
      SEL6_SEL12_Field_51)
     with Size => 6;
   for SEL6_SEL12_Field use
     (SEL6_SEL12_Field_0 => 0,
      SEL6_SEL12_Field_1 => 1,
      SEL6_SEL12_Field_2 => 2,
      SEL6_SEL12_Field_3 => 3,
      SEL6_SEL12_Field_4 => 4,
      SEL6_SEL12_Field_5 => 5,
      SEL6_SEL12_Field_6 => 6,
      SEL6_SEL12_Field_7 => 7,
      SEL6_SEL12_Field_8 => 8,
      SEL6_SEL12_Field_9 => 9,
      SEL6_SEL12_Field_10 => 10,
      SEL6_SEL12_Field_11 => 11,
      SEL6_SEL12_Field_12 => 12,
      SEL6_SEL12_Field_13 => 13,
      SEL6_SEL12_Field_14 => 14,
      SEL6_SEL12_Field_15 => 15,
      SEL6_SEL12_Field_16 => 16,
      SEL6_SEL12_Field_17 => 17,
      SEL6_SEL12_Field_18 => 18,
      SEL6_SEL12_Field_19 => 19,
      SEL6_SEL12_Field_29 => 29,
      SEL6_SEL12_Field_31 => 31,
      SEL6_SEL12_Field_33 => 33,
      SEL6_SEL12_Field_35 => 35,
      SEL6_SEL12_Field_36 => 36,
      SEL6_SEL12_Field_37 => 37,
      SEL6_SEL12_Field_38 => 38,
      SEL6_SEL12_Field_39 => 39,
      SEL6_SEL12_Field_40 => 40,
      SEL6_SEL12_Field_41 => 41,
      SEL6_SEL12_Field_42 => 42,
      SEL6_SEL12_Field_43 => 43,
      SEL6_SEL12_Field_45 => 45,
      SEL6_SEL12_Field_46 => 46,
      SEL6_SEL12_Field_47 => 47,
      SEL6_SEL12_Field_48 => 48,
      SEL6_SEL12_Field_49 => 49,
      SEL6_SEL12_Field_50 => 50,
      SEL6_SEL12_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT13 (refer to Functional
   --  Description section for input/output assignment)
   type SEL6_SEL13_Field is
     (
      --  Logic zero
      SEL6_SEL13_Field_0,
      --  Logic one
      SEL6_SEL13_Field_1,
      --  XBARIN2 input pin
      SEL6_SEL13_Field_2,
      --  XBARIN3 input pin
      SEL6_SEL13_Field_3,
      --  XBARIN4 input pin
      SEL6_SEL13_Field_4,
      --  XBARIN5 input pin
      SEL6_SEL13_Field_5,
      --  XBARIN6 input pin
      SEL6_SEL13_Field_6,
      --  XBARIN7 input pin
      SEL6_SEL13_Field_7,
      --  XBARIN8 input pin
      SEL6_SEL13_Field_8,
      --  XBARIN9 input pin
      SEL6_SEL13_Field_9,
      --  XBARIN10 input pin
      SEL6_SEL13_Field_10,
      --  XBARIN11 input pin
      SEL6_SEL13_Field_11,
      --  CMP0 Output
      SEL6_SEL13_Field_12,
      --  CMP1 Output
      SEL6_SEL13_Field_13,
      --  CMP2 Output
      SEL6_SEL13_Field_14,
      --  CMP3 Output
      SEL6_SEL13_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL6_SEL13_Field_16,
      --  FTM0 counter init trigger
      SEL6_SEL13_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL6_SEL13_Field_18,
      --  FTM3 counter init trigger
      SEL6_SEL13_Field_19,
      --  PDB0 channel 0 output trigger
      SEL6_SEL13_Field_29,
      --  PDB1 channel 0 output trigger
      SEL6_SEL13_Field_31,
      --  ADC converter A end of scan
      SEL6_SEL13_Field_33,
      --  ADC converter B end of scan
      SEL6_SEL13_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL6_SEL13_Field_36,
      --  FTM1 counter init trigger
      SEL6_SEL13_Field_37,
      --  DMA channel 0 done
      SEL6_SEL13_Field_38,
      --  DMA channel 1 done
      SEL6_SEL13_Field_39,
      --  DMA channel 6 done
      SEL6_SEL13_Field_40,
      --  DMA channel 7 done
      SEL6_SEL13_Field_41,
      --  PIT trigger 0
      SEL6_SEL13_Field_42,
      --  PIT trigger 1
      SEL6_SEL13_Field_43,
      --  ENC0 compare trigger and position match
      SEL6_SEL13_Field_45,
      --  AOI output 0
      SEL6_SEL13_Field_46,
      --  AOI output 1
      SEL6_SEL13_Field_47,
      --  AOI output 2
      SEL6_SEL13_Field_48,
      --  AOI output 3
      SEL6_SEL13_Field_49,
      --  PIT trigger 2
      SEL6_SEL13_Field_50,
      --  PIT trigger 3
      SEL6_SEL13_Field_51)
     with Size => 6;
   for SEL6_SEL13_Field use
     (SEL6_SEL13_Field_0 => 0,
      SEL6_SEL13_Field_1 => 1,
      SEL6_SEL13_Field_2 => 2,
      SEL6_SEL13_Field_3 => 3,
      SEL6_SEL13_Field_4 => 4,
      SEL6_SEL13_Field_5 => 5,
      SEL6_SEL13_Field_6 => 6,
      SEL6_SEL13_Field_7 => 7,
      SEL6_SEL13_Field_8 => 8,
      SEL6_SEL13_Field_9 => 9,
      SEL6_SEL13_Field_10 => 10,
      SEL6_SEL13_Field_11 => 11,
      SEL6_SEL13_Field_12 => 12,
      SEL6_SEL13_Field_13 => 13,
      SEL6_SEL13_Field_14 => 14,
      SEL6_SEL13_Field_15 => 15,
      SEL6_SEL13_Field_16 => 16,
      SEL6_SEL13_Field_17 => 17,
      SEL6_SEL13_Field_18 => 18,
      SEL6_SEL13_Field_19 => 19,
      SEL6_SEL13_Field_29 => 29,
      SEL6_SEL13_Field_31 => 31,
      SEL6_SEL13_Field_33 => 33,
      SEL6_SEL13_Field_35 => 35,
      SEL6_SEL13_Field_36 => 36,
      SEL6_SEL13_Field_37 => 37,
      SEL6_SEL13_Field_38 => 38,
      SEL6_SEL13_Field_39 => 39,
      SEL6_SEL13_Field_40 => 40,
      SEL6_SEL13_Field_41 => 41,
      SEL6_SEL13_Field_42 => 42,
      SEL6_SEL13_Field_43 => 43,
      SEL6_SEL13_Field_45 => 45,
      SEL6_SEL13_Field_46 => 46,
      SEL6_SEL13_Field_47 => 47,
      SEL6_SEL13_Field_48 => 48,
      SEL6_SEL13_Field_49 => 49,
      SEL6_SEL13_Field_50 => 50,
      SEL6_SEL13_Field_51 => 51);

   --  Crossbar A Select Register 6
   type XBARA_SEL6_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT12 (refer to Functional
      --  Description section for input/output assignment)
      SEL12          : SEL6_SEL12_Field := NRF_SVD.XBARA.SEL6_SEL12_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT13 (refer to Functional
      --  Description section for input/output assignment)
      SEL13          : SEL6_SEL13_Field := NRF_SVD.XBARA.SEL6_SEL13_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL6_Register use record
      SEL12          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL13          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL7_SEL14_Field is HAL.UInt6;
   subtype XBARA_SEL7_SEL15_Field is HAL.UInt6;

   --  Crossbar A Select Register 7
   type XBARA_SEL7_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT14 (refer to Functional
      --  Description section for input/output assignment)
      SEL14          : XBARA_SEL7_SEL14_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT15 (refer to Functional
      --  Description section for input/output assignment)
      SEL15          : XBARA_SEL7_SEL15_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL7_Register use record
      SEL14          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL15          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT16 (refer to Functional
   --  Description section for input/output assignment)
   type SEL8_SEL16_Field is
     (
      --  Logic zero
      SEL8_SEL16_Field_0,
      --  Logic one
      SEL8_SEL16_Field_1,
      --  XBARIN2 input pin
      SEL8_SEL16_Field_2,
      --  XBARIN3 input pin
      SEL8_SEL16_Field_3,
      --  XBARIN4 input pin
      SEL8_SEL16_Field_4,
      --  XBARIN5 input pin
      SEL8_SEL16_Field_5,
      --  XBARIN6 input pin
      SEL8_SEL16_Field_6,
      --  XBARIN7 input pin
      SEL8_SEL16_Field_7,
      --  XBARIN8 input pin
      SEL8_SEL16_Field_8,
      --  XBARIN9 input pin
      SEL8_SEL16_Field_9,
      --  XBARIN10 input pin
      SEL8_SEL16_Field_10,
      --  XBARIN11 input pin
      SEL8_SEL16_Field_11,
      --  CMP0 Output
      SEL8_SEL16_Field_12,
      --  CMP1 Output
      SEL8_SEL16_Field_13,
      --  CMP2 Output
      SEL8_SEL16_Field_14,
      --  CMP3 Output
      SEL8_SEL16_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL8_SEL16_Field_16,
      --  FTM0 counter init trigger
      SEL8_SEL16_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL8_SEL16_Field_18,
      --  FTM3 counter init trigger
      SEL8_SEL16_Field_19,
      --  PDB0 channel 0 output trigger
      SEL8_SEL16_Field_29,
      --  PDB1 channel 0 output trigger
      SEL8_SEL16_Field_31,
      --  ADC converter A end of scan
      SEL8_SEL16_Field_33,
      --  ADC converter B end of scan
      SEL8_SEL16_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL8_SEL16_Field_36,
      --  FTM1 counter init trigger
      SEL8_SEL16_Field_37,
      --  DMA channel 0 done
      SEL8_SEL16_Field_38,
      --  DMA channel 1 done
      SEL8_SEL16_Field_39,
      --  DMA channel 6 done
      SEL8_SEL16_Field_40,
      --  DMA channel 7 done
      SEL8_SEL16_Field_41,
      --  PIT trigger 0
      SEL8_SEL16_Field_42,
      --  PIT trigger 1
      SEL8_SEL16_Field_43,
      --  ENC0 compare trigger and position match
      SEL8_SEL16_Field_45,
      --  AOI output 0
      SEL8_SEL16_Field_46,
      --  AOI output 1
      SEL8_SEL16_Field_47,
      --  AOI output 2
      SEL8_SEL16_Field_48,
      --  AOI output 3
      SEL8_SEL16_Field_49,
      --  PIT trigger 2
      SEL8_SEL16_Field_50,
      --  PIT trigger 3
      SEL8_SEL16_Field_51)
     with Size => 6;
   for SEL8_SEL16_Field use
     (SEL8_SEL16_Field_0 => 0,
      SEL8_SEL16_Field_1 => 1,
      SEL8_SEL16_Field_2 => 2,
      SEL8_SEL16_Field_3 => 3,
      SEL8_SEL16_Field_4 => 4,
      SEL8_SEL16_Field_5 => 5,
      SEL8_SEL16_Field_6 => 6,
      SEL8_SEL16_Field_7 => 7,
      SEL8_SEL16_Field_8 => 8,
      SEL8_SEL16_Field_9 => 9,
      SEL8_SEL16_Field_10 => 10,
      SEL8_SEL16_Field_11 => 11,
      SEL8_SEL16_Field_12 => 12,
      SEL8_SEL16_Field_13 => 13,
      SEL8_SEL16_Field_14 => 14,
      SEL8_SEL16_Field_15 => 15,
      SEL8_SEL16_Field_16 => 16,
      SEL8_SEL16_Field_17 => 17,
      SEL8_SEL16_Field_18 => 18,
      SEL8_SEL16_Field_19 => 19,
      SEL8_SEL16_Field_29 => 29,
      SEL8_SEL16_Field_31 => 31,
      SEL8_SEL16_Field_33 => 33,
      SEL8_SEL16_Field_35 => 35,
      SEL8_SEL16_Field_36 => 36,
      SEL8_SEL16_Field_37 => 37,
      SEL8_SEL16_Field_38 => 38,
      SEL8_SEL16_Field_39 => 39,
      SEL8_SEL16_Field_40 => 40,
      SEL8_SEL16_Field_41 => 41,
      SEL8_SEL16_Field_42 => 42,
      SEL8_SEL16_Field_43 => 43,
      SEL8_SEL16_Field_45 => 45,
      SEL8_SEL16_Field_46 => 46,
      SEL8_SEL16_Field_47 => 47,
      SEL8_SEL16_Field_48 => 48,
      SEL8_SEL16_Field_49 => 49,
      SEL8_SEL16_Field_50 => 50,
      SEL8_SEL16_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT17 (refer to Functional
   --  Description section for input/output assignment)
   type SEL8_SEL17_Field is
     (
      --  Logic zero
      SEL8_SEL17_Field_0,
      --  Logic one
      SEL8_SEL17_Field_1,
      --  XBARIN2 input pin
      SEL8_SEL17_Field_2,
      --  XBARIN3 input pin
      SEL8_SEL17_Field_3,
      --  XBARIN4 input pin
      SEL8_SEL17_Field_4,
      --  XBARIN5 input pin
      SEL8_SEL17_Field_5,
      --  XBARIN6 input pin
      SEL8_SEL17_Field_6,
      --  XBARIN7 input pin
      SEL8_SEL17_Field_7,
      --  XBARIN8 input pin
      SEL8_SEL17_Field_8,
      --  XBARIN9 input pin
      SEL8_SEL17_Field_9,
      --  XBARIN10 input pin
      SEL8_SEL17_Field_10,
      --  XBARIN11 input pin
      SEL8_SEL17_Field_11,
      --  CMP0 Output
      SEL8_SEL17_Field_12,
      --  CMP1 Output
      SEL8_SEL17_Field_13,
      --  CMP2 Output
      SEL8_SEL17_Field_14,
      --  CMP3 Output
      SEL8_SEL17_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL8_SEL17_Field_16,
      --  FTM0 counter init trigger
      SEL8_SEL17_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL8_SEL17_Field_18,
      --  FTM3 counter init trigger
      SEL8_SEL17_Field_19,
      --  PDB0 channel 0 output trigger
      SEL8_SEL17_Field_29,
      --  PDB1 channel 0 output trigger
      SEL8_SEL17_Field_31,
      --  ADC converter A end of scan
      SEL8_SEL17_Field_33,
      --  ADC converter B end of scan
      SEL8_SEL17_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL8_SEL17_Field_36,
      --  FTM1 counter init trigger
      SEL8_SEL17_Field_37,
      --  DMA channel 0 done
      SEL8_SEL17_Field_38,
      --  DMA channel 1 done
      SEL8_SEL17_Field_39,
      --  DMA channel 6 done
      SEL8_SEL17_Field_40,
      --  DMA channel 7 done
      SEL8_SEL17_Field_41,
      --  PIT trigger 0
      SEL8_SEL17_Field_42,
      --  PIT trigger 1
      SEL8_SEL17_Field_43,
      --  ENC0 compare trigger and position match
      SEL8_SEL17_Field_45,
      --  AOI output 0
      SEL8_SEL17_Field_46,
      --  AOI output 1
      SEL8_SEL17_Field_47,
      --  AOI output 2
      SEL8_SEL17_Field_48,
      --  AOI output 3
      SEL8_SEL17_Field_49,
      --  PIT trigger 2
      SEL8_SEL17_Field_50,
      --  PIT trigger 3
      SEL8_SEL17_Field_51)
     with Size => 6;
   for SEL8_SEL17_Field use
     (SEL8_SEL17_Field_0 => 0,
      SEL8_SEL17_Field_1 => 1,
      SEL8_SEL17_Field_2 => 2,
      SEL8_SEL17_Field_3 => 3,
      SEL8_SEL17_Field_4 => 4,
      SEL8_SEL17_Field_5 => 5,
      SEL8_SEL17_Field_6 => 6,
      SEL8_SEL17_Field_7 => 7,
      SEL8_SEL17_Field_8 => 8,
      SEL8_SEL17_Field_9 => 9,
      SEL8_SEL17_Field_10 => 10,
      SEL8_SEL17_Field_11 => 11,
      SEL8_SEL17_Field_12 => 12,
      SEL8_SEL17_Field_13 => 13,
      SEL8_SEL17_Field_14 => 14,
      SEL8_SEL17_Field_15 => 15,
      SEL8_SEL17_Field_16 => 16,
      SEL8_SEL17_Field_17 => 17,
      SEL8_SEL17_Field_18 => 18,
      SEL8_SEL17_Field_19 => 19,
      SEL8_SEL17_Field_29 => 29,
      SEL8_SEL17_Field_31 => 31,
      SEL8_SEL17_Field_33 => 33,
      SEL8_SEL17_Field_35 => 35,
      SEL8_SEL17_Field_36 => 36,
      SEL8_SEL17_Field_37 => 37,
      SEL8_SEL17_Field_38 => 38,
      SEL8_SEL17_Field_39 => 39,
      SEL8_SEL17_Field_40 => 40,
      SEL8_SEL17_Field_41 => 41,
      SEL8_SEL17_Field_42 => 42,
      SEL8_SEL17_Field_43 => 43,
      SEL8_SEL17_Field_45 => 45,
      SEL8_SEL17_Field_46 => 46,
      SEL8_SEL17_Field_47 => 47,
      SEL8_SEL17_Field_48 => 48,
      SEL8_SEL17_Field_49 => 49,
      SEL8_SEL17_Field_50 => 50,
      SEL8_SEL17_Field_51 => 51);

   --  Crossbar A Select Register 8
   type XBARA_SEL8_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT16 (refer to Functional
      --  Description section for input/output assignment)
      SEL16          : SEL8_SEL16_Field := NRF_SVD.XBARA.SEL8_SEL16_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT17 (refer to Functional
      --  Description section for input/output assignment)
      SEL17          : SEL8_SEL17_Field := NRF_SVD.XBARA.SEL8_SEL17_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL8_Register use record
      SEL16          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL17          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT18 (refer to Functional
   --  Description section for input/output assignment)
   type SEL9_SEL18_Field is
     (
      --  Logic zero
      SEL9_SEL18_Field_0,
      --  Logic one
      SEL9_SEL18_Field_1,
      --  XBARIN2 input pin
      SEL9_SEL18_Field_2,
      --  XBARIN3 input pin
      SEL9_SEL18_Field_3,
      --  XBARIN4 input pin
      SEL9_SEL18_Field_4,
      --  XBARIN5 input pin
      SEL9_SEL18_Field_5,
      --  XBARIN6 input pin
      SEL9_SEL18_Field_6,
      --  XBARIN7 input pin
      SEL9_SEL18_Field_7,
      --  XBARIN8 input pin
      SEL9_SEL18_Field_8,
      --  XBARIN9 input pin
      SEL9_SEL18_Field_9,
      --  XBARIN10 input pin
      SEL9_SEL18_Field_10,
      --  XBARIN11 input pin
      SEL9_SEL18_Field_11,
      --  CMP0 Output
      SEL9_SEL18_Field_12,
      --  CMP1 Output
      SEL9_SEL18_Field_13,
      --  CMP2 Output
      SEL9_SEL18_Field_14,
      --  CMP3 Output
      SEL9_SEL18_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL9_SEL18_Field_16,
      --  FTM0 counter init trigger
      SEL9_SEL18_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL9_SEL18_Field_18,
      --  FTM3 counter init trigger
      SEL9_SEL18_Field_19,
      --  PDB0 channel 0 output trigger
      SEL9_SEL18_Field_29,
      --  PDB1 channel 0 output trigger
      SEL9_SEL18_Field_31,
      --  ADC converter A end of scan
      SEL9_SEL18_Field_33,
      --  ADC converter B end of scan
      SEL9_SEL18_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL9_SEL18_Field_36,
      --  FTM1 counter init trigger
      SEL9_SEL18_Field_37,
      --  DMA channel 0 done
      SEL9_SEL18_Field_38,
      --  DMA channel 1 done
      SEL9_SEL18_Field_39,
      --  DMA channel 6 done
      SEL9_SEL18_Field_40,
      --  DMA channel 7 done
      SEL9_SEL18_Field_41,
      --  PIT trigger 0
      SEL9_SEL18_Field_42,
      --  PIT trigger 1
      SEL9_SEL18_Field_43,
      --  ENC0 compare trigger and position match
      SEL9_SEL18_Field_45,
      --  AOI output 0
      SEL9_SEL18_Field_46,
      --  AOI output 1
      SEL9_SEL18_Field_47,
      --  AOI output 2
      SEL9_SEL18_Field_48,
      --  AOI output 3
      SEL9_SEL18_Field_49,
      --  PIT trigger 2
      SEL9_SEL18_Field_50,
      --  PIT trigger 3
      SEL9_SEL18_Field_51)
     with Size => 6;
   for SEL9_SEL18_Field use
     (SEL9_SEL18_Field_0 => 0,
      SEL9_SEL18_Field_1 => 1,
      SEL9_SEL18_Field_2 => 2,
      SEL9_SEL18_Field_3 => 3,
      SEL9_SEL18_Field_4 => 4,
      SEL9_SEL18_Field_5 => 5,
      SEL9_SEL18_Field_6 => 6,
      SEL9_SEL18_Field_7 => 7,
      SEL9_SEL18_Field_8 => 8,
      SEL9_SEL18_Field_9 => 9,
      SEL9_SEL18_Field_10 => 10,
      SEL9_SEL18_Field_11 => 11,
      SEL9_SEL18_Field_12 => 12,
      SEL9_SEL18_Field_13 => 13,
      SEL9_SEL18_Field_14 => 14,
      SEL9_SEL18_Field_15 => 15,
      SEL9_SEL18_Field_16 => 16,
      SEL9_SEL18_Field_17 => 17,
      SEL9_SEL18_Field_18 => 18,
      SEL9_SEL18_Field_19 => 19,
      SEL9_SEL18_Field_29 => 29,
      SEL9_SEL18_Field_31 => 31,
      SEL9_SEL18_Field_33 => 33,
      SEL9_SEL18_Field_35 => 35,
      SEL9_SEL18_Field_36 => 36,
      SEL9_SEL18_Field_37 => 37,
      SEL9_SEL18_Field_38 => 38,
      SEL9_SEL18_Field_39 => 39,
      SEL9_SEL18_Field_40 => 40,
      SEL9_SEL18_Field_41 => 41,
      SEL9_SEL18_Field_42 => 42,
      SEL9_SEL18_Field_43 => 43,
      SEL9_SEL18_Field_45 => 45,
      SEL9_SEL18_Field_46 => 46,
      SEL9_SEL18_Field_47 => 47,
      SEL9_SEL18_Field_48 => 48,
      SEL9_SEL18_Field_49 => 49,
      SEL9_SEL18_Field_50 => 50,
      SEL9_SEL18_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT19 (refer to Functional
   --  Description section for input/output assignment)
   type SEL9_SEL19_Field is
     (
      --  Logic zero
      SEL9_SEL19_Field_0,
      --  Logic one
      SEL9_SEL19_Field_1,
      --  XBARIN2 input pin
      SEL9_SEL19_Field_2,
      --  XBARIN3 input pin
      SEL9_SEL19_Field_3,
      --  XBARIN4 input pin
      SEL9_SEL19_Field_4,
      --  XBARIN5 input pin
      SEL9_SEL19_Field_5,
      --  XBARIN6 input pin
      SEL9_SEL19_Field_6,
      --  XBARIN7 input pin
      SEL9_SEL19_Field_7,
      --  XBARIN8 input pin
      SEL9_SEL19_Field_8,
      --  XBARIN9 input pin
      SEL9_SEL19_Field_9,
      --  XBARIN10 input pin
      SEL9_SEL19_Field_10,
      --  XBARIN11 input pin
      SEL9_SEL19_Field_11,
      --  CMP0 Output
      SEL9_SEL19_Field_12,
      --  CMP1 Output
      SEL9_SEL19_Field_13,
      --  CMP2 Output
      SEL9_SEL19_Field_14,
      --  CMP3 Output
      SEL9_SEL19_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL9_SEL19_Field_16,
      --  FTM0 counter init trigger
      SEL9_SEL19_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL9_SEL19_Field_18,
      --  FTM3 counter init trigger
      SEL9_SEL19_Field_19,
      --  PDB0 channel 0 output trigger
      SEL9_SEL19_Field_29,
      --  PDB1 channel 0 output trigger
      SEL9_SEL19_Field_31,
      --  ADC converter A end of scan
      SEL9_SEL19_Field_33,
      --  ADC converter B end of scan
      SEL9_SEL19_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL9_SEL19_Field_36,
      --  FTM1 counter init trigger
      SEL9_SEL19_Field_37,
      --  DMA channel 0 done
      SEL9_SEL19_Field_38,
      --  DMA channel 1 done
      SEL9_SEL19_Field_39,
      --  DMA channel 6 done
      SEL9_SEL19_Field_40,
      --  DMA channel 7 done
      SEL9_SEL19_Field_41,
      --  PIT trigger 0
      SEL9_SEL19_Field_42,
      --  PIT trigger 1
      SEL9_SEL19_Field_43,
      --  ENC0 compare trigger and position match
      SEL9_SEL19_Field_45,
      --  AOI output 0
      SEL9_SEL19_Field_46,
      --  AOI output 1
      SEL9_SEL19_Field_47,
      --  AOI output 2
      SEL9_SEL19_Field_48,
      --  AOI output 3
      SEL9_SEL19_Field_49,
      --  PIT trigger 2
      SEL9_SEL19_Field_50,
      --  PIT trigger 3
      SEL9_SEL19_Field_51)
     with Size => 6;
   for SEL9_SEL19_Field use
     (SEL9_SEL19_Field_0 => 0,
      SEL9_SEL19_Field_1 => 1,
      SEL9_SEL19_Field_2 => 2,
      SEL9_SEL19_Field_3 => 3,
      SEL9_SEL19_Field_4 => 4,
      SEL9_SEL19_Field_5 => 5,
      SEL9_SEL19_Field_6 => 6,
      SEL9_SEL19_Field_7 => 7,
      SEL9_SEL19_Field_8 => 8,
      SEL9_SEL19_Field_9 => 9,
      SEL9_SEL19_Field_10 => 10,
      SEL9_SEL19_Field_11 => 11,
      SEL9_SEL19_Field_12 => 12,
      SEL9_SEL19_Field_13 => 13,
      SEL9_SEL19_Field_14 => 14,
      SEL9_SEL19_Field_15 => 15,
      SEL9_SEL19_Field_16 => 16,
      SEL9_SEL19_Field_17 => 17,
      SEL9_SEL19_Field_18 => 18,
      SEL9_SEL19_Field_19 => 19,
      SEL9_SEL19_Field_29 => 29,
      SEL9_SEL19_Field_31 => 31,
      SEL9_SEL19_Field_33 => 33,
      SEL9_SEL19_Field_35 => 35,
      SEL9_SEL19_Field_36 => 36,
      SEL9_SEL19_Field_37 => 37,
      SEL9_SEL19_Field_38 => 38,
      SEL9_SEL19_Field_39 => 39,
      SEL9_SEL19_Field_40 => 40,
      SEL9_SEL19_Field_41 => 41,
      SEL9_SEL19_Field_42 => 42,
      SEL9_SEL19_Field_43 => 43,
      SEL9_SEL19_Field_45 => 45,
      SEL9_SEL19_Field_46 => 46,
      SEL9_SEL19_Field_47 => 47,
      SEL9_SEL19_Field_48 => 48,
      SEL9_SEL19_Field_49 => 49,
      SEL9_SEL19_Field_50 => 50,
      SEL9_SEL19_Field_51 => 51);

   --  Crossbar A Select Register 9
   type XBARA_SEL9_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT18 (refer to Functional
      --  Description section for input/output assignment)
      SEL18          : SEL9_SEL18_Field := NRF_SVD.XBARA.SEL9_SEL18_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT19 (refer to Functional
      --  Description section for input/output assignment)
      SEL19          : SEL9_SEL19_Field := NRF_SVD.XBARA.SEL9_SEL19_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL9_Register use record
      SEL18          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL19          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL10_SEL20_Field is HAL.UInt6;
   subtype XBARA_SEL10_SEL21_Field is HAL.UInt6;

   --  Crossbar A Select Register 10
   type XBARA_SEL10_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT20 (refer to Functional
      --  Description section for input/output assignment)
      SEL20          : XBARA_SEL10_SEL20_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT21 (refer to Functional
      --  Description section for input/output assignment)
      SEL21          : XBARA_SEL10_SEL21_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL10_Register use record
      SEL20          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL21          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL11_SEL22_Field is HAL.UInt6;
   subtype XBARA_SEL11_SEL23_Field is HAL.UInt6;

   --  Crossbar A Select Register 11
   type XBARA_SEL11_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT22 (refer to Functional
      --  Description section for input/output assignment)
      SEL22          : XBARA_SEL11_SEL22_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT23 (refer to Functional
      --  Description section for input/output assignment)
      SEL23          : XBARA_SEL11_SEL23_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL11_Register use record
      SEL22          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL23          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL12_SEL24_Field is HAL.UInt6;
   subtype XBARA_SEL12_SEL25_Field is HAL.UInt6;

   --  Crossbar A Select Register 12
   type XBARA_SEL12_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT24 (refer to Functional
      --  Description section for input/output assignment)
      SEL24          : XBARA_SEL12_SEL24_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT25 (refer to Functional
      --  Description section for input/output assignment)
      SEL25          : XBARA_SEL12_SEL25_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL12_Register use record
      SEL24          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL25          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL13_SEL26_Field is HAL.UInt6;
   subtype XBARA_SEL13_SEL27_Field is HAL.UInt6;

   --  Crossbar A Select Register 13
   type XBARA_SEL13_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT26 (refer to Functional
      --  Description section for input/output assignment)
      SEL26          : XBARA_SEL13_SEL26_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT27 (refer to Functional
      --  Description section for input/output assignment)
      SEL27          : XBARA_SEL13_SEL27_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL13_Register use record
      SEL26          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL27          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL14_SEL28_Field is HAL.UInt6;
   subtype XBARA_SEL14_SEL29_Field is HAL.UInt6;

   --  Crossbar A Select Register 14
   type XBARA_SEL14_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT28 (refer to Functional
      --  Description section for input/output assignment)
      SEL28          : XBARA_SEL14_SEL28_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT29 (refer to Functional
      --  Description section for input/output assignment)
      SEL29          : XBARA_SEL14_SEL29_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL14_Register use record
      SEL28          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL29          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL15_SEL30_Field is HAL.UInt6;
   subtype XBARA_SEL15_SEL31_Field is HAL.UInt6;

   --  Crossbar A Select Register 15
   type XBARA_SEL15_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT30 (refer to Functional
      --  Description section for input/output assignment)
      SEL30          : XBARA_SEL15_SEL30_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT31 (refer to Functional
      --  Description section for input/output assignment)
      SEL31          : XBARA_SEL15_SEL31_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL15_Register use record
      SEL30          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL31          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL16_SEL32_Field is HAL.UInt6;
   subtype XBARA_SEL16_SEL33_Field is HAL.UInt6;

   --  Crossbar A Select Register 16
   type XBARA_SEL16_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT32 (refer to Functional
      --  Description section for input/output assignment)
      SEL32          : XBARA_SEL16_SEL32_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT33 (refer to Functional
      --  Description section for input/output assignment)
      SEL33          : XBARA_SEL16_SEL33_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL16_Register use record
      SEL32          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL33          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT34 (refer to Functional
   --  Description section for input/output assignment)
   type SEL17_SEL34_Field is
     (
      --  Logic zero
      SEL17_SEL34_Field_0,
      --  Logic one
      SEL17_SEL34_Field_1,
      --  XBARIN2 input pin
      SEL17_SEL34_Field_2,
      --  XBARIN3 input pin
      SEL17_SEL34_Field_3,
      --  XBARIN4 input pin
      SEL17_SEL34_Field_4,
      --  XBARIN5 input pin
      SEL17_SEL34_Field_5,
      --  XBARIN6 input pin
      SEL17_SEL34_Field_6,
      --  XBARIN7 input pin
      SEL17_SEL34_Field_7,
      --  XBARIN8 input pin
      SEL17_SEL34_Field_8,
      --  XBARIN9 input pin
      SEL17_SEL34_Field_9,
      --  XBARIN10 input pin
      SEL17_SEL34_Field_10,
      --  XBARIN11 input pin
      SEL17_SEL34_Field_11,
      --  CMP0 Output
      SEL17_SEL34_Field_12,
      --  CMP1 Output
      SEL17_SEL34_Field_13,
      --  CMP2 Output
      SEL17_SEL34_Field_14,
      --  CMP3 Output
      SEL17_SEL34_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL17_SEL34_Field_16,
      --  FTM0 counter init trigger
      SEL17_SEL34_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL17_SEL34_Field_18,
      --  FTM3 counter init trigger
      SEL17_SEL34_Field_19,
      --  PDB0 channel 0 output trigger
      SEL17_SEL34_Field_29,
      --  PDB1 channel 0 output trigger
      SEL17_SEL34_Field_31,
      --  ADC converter A end of scan
      SEL17_SEL34_Field_33,
      --  ADC converter B end of scan
      SEL17_SEL34_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL17_SEL34_Field_36,
      --  FTM1 counter init trigger
      SEL17_SEL34_Field_37,
      --  DMA channel 0 done
      SEL17_SEL34_Field_38,
      --  DMA channel 1 done
      SEL17_SEL34_Field_39,
      --  DMA channel 6 done
      SEL17_SEL34_Field_40,
      --  DMA channel 7 done
      SEL17_SEL34_Field_41,
      --  PIT trigger 0
      SEL17_SEL34_Field_42,
      --  PIT trigger 1
      SEL17_SEL34_Field_43,
      --  ENC0 compare trigger and position match
      SEL17_SEL34_Field_45,
      --  AOI output 0
      SEL17_SEL34_Field_46,
      --  AOI output 1
      SEL17_SEL34_Field_47,
      --  AOI output 2
      SEL17_SEL34_Field_48,
      --  AOI output 3
      SEL17_SEL34_Field_49,
      --  PIT trigger 2
      SEL17_SEL34_Field_50,
      --  PIT trigger 3
      SEL17_SEL34_Field_51)
     with Size => 6;
   for SEL17_SEL34_Field use
     (SEL17_SEL34_Field_0 => 0,
      SEL17_SEL34_Field_1 => 1,
      SEL17_SEL34_Field_2 => 2,
      SEL17_SEL34_Field_3 => 3,
      SEL17_SEL34_Field_4 => 4,
      SEL17_SEL34_Field_5 => 5,
      SEL17_SEL34_Field_6 => 6,
      SEL17_SEL34_Field_7 => 7,
      SEL17_SEL34_Field_8 => 8,
      SEL17_SEL34_Field_9 => 9,
      SEL17_SEL34_Field_10 => 10,
      SEL17_SEL34_Field_11 => 11,
      SEL17_SEL34_Field_12 => 12,
      SEL17_SEL34_Field_13 => 13,
      SEL17_SEL34_Field_14 => 14,
      SEL17_SEL34_Field_15 => 15,
      SEL17_SEL34_Field_16 => 16,
      SEL17_SEL34_Field_17 => 17,
      SEL17_SEL34_Field_18 => 18,
      SEL17_SEL34_Field_19 => 19,
      SEL17_SEL34_Field_29 => 29,
      SEL17_SEL34_Field_31 => 31,
      SEL17_SEL34_Field_33 => 33,
      SEL17_SEL34_Field_35 => 35,
      SEL17_SEL34_Field_36 => 36,
      SEL17_SEL34_Field_37 => 37,
      SEL17_SEL34_Field_38 => 38,
      SEL17_SEL34_Field_39 => 39,
      SEL17_SEL34_Field_40 => 40,
      SEL17_SEL34_Field_41 => 41,
      SEL17_SEL34_Field_42 => 42,
      SEL17_SEL34_Field_43 => 43,
      SEL17_SEL34_Field_45 => 45,
      SEL17_SEL34_Field_46 => 46,
      SEL17_SEL34_Field_47 => 47,
      SEL17_SEL34_Field_48 => 48,
      SEL17_SEL34_Field_49 => 49,
      SEL17_SEL34_Field_50 => 50,
      SEL17_SEL34_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT35 (refer to Functional
   --  Description section for input/output assignment)
   type SEL17_SEL35_Field is
     (
      --  Logic zero
      SEL17_SEL35_Field_0,
      --  Logic one
      SEL17_SEL35_Field_1,
      --  XBARIN2 input pin
      SEL17_SEL35_Field_2,
      --  XBARIN3 input pin
      SEL17_SEL35_Field_3,
      --  XBARIN4 input pin
      SEL17_SEL35_Field_4,
      --  XBARIN5 input pin
      SEL17_SEL35_Field_5,
      --  XBARIN6 input pin
      SEL17_SEL35_Field_6,
      --  XBARIN7 input pin
      SEL17_SEL35_Field_7,
      --  XBARIN8 input pin
      SEL17_SEL35_Field_8,
      --  XBARIN9 input pin
      SEL17_SEL35_Field_9,
      --  XBARIN10 input pin
      SEL17_SEL35_Field_10,
      --  XBARIN11 input pin
      SEL17_SEL35_Field_11,
      --  CMP0 Output
      SEL17_SEL35_Field_12,
      --  CMP1 Output
      SEL17_SEL35_Field_13,
      --  CMP2 Output
      SEL17_SEL35_Field_14,
      --  CMP3 Output
      SEL17_SEL35_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL17_SEL35_Field_16,
      --  FTM0 counter init trigger
      SEL17_SEL35_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL17_SEL35_Field_18,
      --  FTM3 counter init trigger
      SEL17_SEL35_Field_19,
      --  PDB0 channel 0 output trigger
      SEL17_SEL35_Field_29,
      --  PDB1 channel 0 output trigger
      SEL17_SEL35_Field_31,
      --  ADC converter A end of scan
      SEL17_SEL35_Field_33,
      --  ADC converter B end of scan
      SEL17_SEL35_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL17_SEL35_Field_36,
      --  FTM1 counter init trigger
      SEL17_SEL35_Field_37,
      --  DMA channel 0 done
      SEL17_SEL35_Field_38,
      --  DMA channel 1 done
      SEL17_SEL35_Field_39,
      --  DMA channel 6 done
      SEL17_SEL35_Field_40,
      --  DMA channel 7 done
      SEL17_SEL35_Field_41,
      --  PIT trigger 0
      SEL17_SEL35_Field_42,
      --  PIT trigger 1
      SEL17_SEL35_Field_43,
      --  ENC0 compare trigger and position match
      SEL17_SEL35_Field_45,
      --  AOI output 0
      SEL17_SEL35_Field_46,
      --  AOI output 1
      SEL17_SEL35_Field_47,
      --  AOI output 2
      SEL17_SEL35_Field_48,
      --  AOI output 3
      SEL17_SEL35_Field_49,
      --  PIT trigger 2
      SEL17_SEL35_Field_50,
      --  PIT trigger 3
      SEL17_SEL35_Field_51)
     with Size => 6;
   for SEL17_SEL35_Field use
     (SEL17_SEL35_Field_0 => 0,
      SEL17_SEL35_Field_1 => 1,
      SEL17_SEL35_Field_2 => 2,
      SEL17_SEL35_Field_3 => 3,
      SEL17_SEL35_Field_4 => 4,
      SEL17_SEL35_Field_5 => 5,
      SEL17_SEL35_Field_6 => 6,
      SEL17_SEL35_Field_7 => 7,
      SEL17_SEL35_Field_8 => 8,
      SEL17_SEL35_Field_9 => 9,
      SEL17_SEL35_Field_10 => 10,
      SEL17_SEL35_Field_11 => 11,
      SEL17_SEL35_Field_12 => 12,
      SEL17_SEL35_Field_13 => 13,
      SEL17_SEL35_Field_14 => 14,
      SEL17_SEL35_Field_15 => 15,
      SEL17_SEL35_Field_16 => 16,
      SEL17_SEL35_Field_17 => 17,
      SEL17_SEL35_Field_18 => 18,
      SEL17_SEL35_Field_19 => 19,
      SEL17_SEL35_Field_29 => 29,
      SEL17_SEL35_Field_31 => 31,
      SEL17_SEL35_Field_33 => 33,
      SEL17_SEL35_Field_35 => 35,
      SEL17_SEL35_Field_36 => 36,
      SEL17_SEL35_Field_37 => 37,
      SEL17_SEL35_Field_38 => 38,
      SEL17_SEL35_Field_39 => 39,
      SEL17_SEL35_Field_40 => 40,
      SEL17_SEL35_Field_41 => 41,
      SEL17_SEL35_Field_42 => 42,
      SEL17_SEL35_Field_43 => 43,
      SEL17_SEL35_Field_45 => 45,
      SEL17_SEL35_Field_46 => 46,
      SEL17_SEL35_Field_47 => 47,
      SEL17_SEL35_Field_48 => 48,
      SEL17_SEL35_Field_49 => 49,
      SEL17_SEL35_Field_50 => 50,
      SEL17_SEL35_Field_51 => 51);

   --  Crossbar A Select Register 17
   type XBARA_SEL17_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT34 (refer to Functional
      --  Description section for input/output assignment)
      SEL34          : SEL17_SEL34_Field := NRF_SVD.XBARA.SEL17_SEL34_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT35 (refer to Functional
      --  Description section for input/output assignment)
      SEL35          : SEL17_SEL35_Field := NRF_SVD.XBARA.SEL17_SEL35_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL17_Register use record
      SEL34          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL35          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL18_SEL36_Field is HAL.UInt6;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT37 (refer to Functional
   --  Description section for input/output assignment)
   type SEL18_SEL37_Field is
     (
      --  Logic zero
      SEL18_SEL37_Field_0,
      --  Logic one
      SEL18_SEL37_Field_1,
      --  XBARIN2 input pin
      SEL18_SEL37_Field_2,
      --  XBARIN3 input pin
      SEL18_SEL37_Field_3,
      --  XBARIN4 input pin
      SEL18_SEL37_Field_4,
      --  XBARIN5 input pin
      SEL18_SEL37_Field_5,
      --  XBARIN6 input pin
      SEL18_SEL37_Field_6,
      --  XBARIN7 input pin
      SEL18_SEL37_Field_7,
      --  XBARIN8 input pin
      SEL18_SEL37_Field_8,
      --  XBARIN9 input pin
      SEL18_SEL37_Field_9,
      --  XBARIN10 input pin
      SEL18_SEL37_Field_10,
      --  XBARIN11 input pin
      SEL18_SEL37_Field_11,
      --  CMP0 Output
      SEL18_SEL37_Field_12,
      --  CMP1 Output
      SEL18_SEL37_Field_13,
      --  CMP2 Output
      SEL18_SEL37_Field_14,
      --  CMP3 Output
      SEL18_SEL37_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL18_SEL37_Field_16,
      --  FTM0 counter init trigger
      SEL18_SEL37_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL18_SEL37_Field_18,
      --  FTM3 counter init trigger
      SEL18_SEL37_Field_19,
      --  PDB0 channel 0 output trigger
      SEL18_SEL37_Field_29,
      --  PDB1 channel 0 output trigger
      SEL18_SEL37_Field_31,
      --  ADC converter A end of scan
      SEL18_SEL37_Field_33,
      --  ADC converter B end of scan
      SEL18_SEL37_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL18_SEL37_Field_36,
      --  FTM1 counter init trigger
      SEL18_SEL37_Field_37,
      --  DMA channel 0 done
      SEL18_SEL37_Field_38,
      --  DMA channel 1 done
      SEL18_SEL37_Field_39,
      --  DMA channel 6 done
      SEL18_SEL37_Field_40,
      --  DMA channel 7 done
      SEL18_SEL37_Field_41,
      --  PIT trigger 0
      SEL18_SEL37_Field_42,
      --  PIT trigger 1
      SEL18_SEL37_Field_43,
      --  ENC0 compare trigger and position match
      SEL18_SEL37_Field_45,
      --  AOI output 0
      SEL18_SEL37_Field_46,
      --  AOI output 1
      SEL18_SEL37_Field_47,
      --  AOI output 2
      SEL18_SEL37_Field_48,
      --  AOI output 3
      SEL18_SEL37_Field_49,
      --  PIT trigger 2
      SEL18_SEL37_Field_50,
      --  PIT trigger 3
      SEL18_SEL37_Field_51)
     with Size => 6;
   for SEL18_SEL37_Field use
     (SEL18_SEL37_Field_0 => 0,
      SEL18_SEL37_Field_1 => 1,
      SEL18_SEL37_Field_2 => 2,
      SEL18_SEL37_Field_3 => 3,
      SEL18_SEL37_Field_4 => 4,
      SEL18_SEL37_Field_5 => 5,
      SEL18_SEL37_Field_6 => 6,
      SEL18_SEL37_Field_7 => 7,
      SEL18_SEL37_Field_8 => 8,
      SEL18_SEL37_Field_9 => 9,
      SEL18_SEL37_Field_10 => 10,
      SEL18_SEL37_Field_11 => 11,
      SEL18_SEL37_Field_12 => 12,
      SEL18_SEL37_Field_13 => 13,
      SEL18_SEL37_Field_14 => 14,
      SEL18_SEL37_Field_15 => 15,
      SEL18_SEL37_Field_16 => 16,
      SEL18_SEL37_Field_17 => 17,
      SEL18_SEL37_Field_18 => 18,
      SEL18_SEL37_Field_19 => 19,
      SEL18_SEL37_Field_29 => 29,
      SEL18_SEL37_Field_31 => 31,
      SEL18_SEL37_Field_33 => 33,
      SEL18_SEL37_Field_35 => 35,
      SEL18_SEL37_Field_36 => 36,
      SEL18_SEL37_Field_37 => 37,
      SEL18_SEL37_Field_38 => 38,
      SEL18_SEL37_Field_39 => 39,
      SEL18_SEL37_Field_40 => 40,
      SEL18_SEL37_Field_41 => 41,
      SEL18_SEL37_Field_42 => 42,
      SEL18_SEL37_Field_43 => 43,
      SEL18_SEL37_Field_45 => 45,
      SEL18_SEL37_Field_46 => 46,
      SEL18_SEL37_Field_47 => 47,
      SEL18_SEL37_Field_48 => 48,
      SEL18_SEL37_Field_49 => 49,
      SEL18_SEL37_Field_50 => 50,
      SEL18_SEL37_Field_51 => 51);

   --  Crossbar A Select Register 18
   type XBARA_SEL18_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT36 (refer to Functional
      --  Description section for input/output assignment)
      SEL36          : XBARA_SEL18_SEL36_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT37 (refer to Functional
      --  Description section for input/output assignment)
      SEL37          : SEL18_SEL37_Field := NRF_SVD.XBARA.SEL18_SEL37_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL18_Register use record
      SEL36          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL37          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT38 (refer to Functional
   --  Description section for input/output assignment)
   type SEL19_SEL38_Field is
     (
      --  Logic zero
      SEL19_SEL38_Field_0,
      --  Logic one
      SEL19_SEL38_Field_1,
      --  XBARIN2 input pin
      SEL19_SEL38_Field_2,
      --  XBARIN3 input pin
      SEL19_SEL38_Field_3,
      --  XBARIN4 input pin
      SEL19_SEL38_Field_4,
      --  XBARIN5 input pin
      SEL19_SEL38_Field_5,
      --  XBARIN6 input pin
      SEL19_SEL38_Field_6,
      --  XBARIN7 input pin
      SEL19_SEL38_Field_7,
      --  XBARIN8 input pin
      SEL19_SEL38_Field_8,
      --  XBARIN9 input pin
      SEL19_SEL38_Field_9,
      --  XBARIN10 input pin
      SEL19_SEL38_Field_10,
      --  XBARIN11 input pin
      SEL19_SEL38_Field_11,
      --  CMP0 Output
      SEL19_SEL38_Field_12,
      --  CMP1 Output
      SEL19_SEL38_Field_13,
      --  CMP2 Output
      SEL19_SEL38_Field_14,
      --  CMP3 Output
      SEL19_SEL38_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL19_SEL38_Field_16,
      --  FTM0 counter init trigger
      SEL19_SEL38_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL19_SEL38_Field_18,
      --  FTM3 counter init trigger
      SEL19_SEL38_Field_19,
      --  PDB0 channel 0 output trigger
      SEL19_SEL38_Field_29,
      --  PDB1 channel 0 output trigger
      SEL19_SEL38_Field_31,
      --  ADC converter A end of scan
      SEL19_SEL38_Field_33,
      --  ADC converter B end of scan
      SEL19_SEL38_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL19_SEL38_Field_36,
      --  FTM1 counter init trigger
      SEL19_SEL38_Field_37,
      --  DMA channel 0 done
      SEL19_SEL38_Field_38,
      --  DMA channel 1 done
      SEL19_SEL38_Field_39,
      --  DMA channel 6 done
      SEL19_SEL38_Field_40,
      --  DMA channel 7 done
      SEL19_SEL38_Field_41,
      --  PIT trigger 0
      SEL19_SEL38_Field_42,
      --  PIT trigger 1
      SEL19_SEL38_Field_43,
      --  ENC0 compare trigger and position match
      SEL19_SEL38_Field_45,
      --  AOI output 0
      SEL19_SEL38_Field_46,
      --  AOI output 1
      SEL19_SEL38_Field_47,
      --  AOI output 2
      SEL19_SEL38_Field_48,
      --  AOI output 3
      SEL19_SEL38_Field_49,
      --  PIT trigger 2
      SEL19_SEL38_Field_50,
      --  PIT trigger 3
      SEL19_SEL38_Field_51)
     with Size => 6;
   for SEL19_SEL38_Field use
     (SEL19_SEL38_Field_0 => 0,
      SEL19_SEL38_Field_1 => 1,
      SEL19_SEL38_Field_2 => 2,
      SEL19_SEL38_Field_3 => 3,
      SEL19_SEL38_Field_4 => 4,
      SEL19_SEL38_Field_5 => 5,
      SEL19_SEL38_Field_6 => 6,
      SEL19_SEL38_Field_7 => 7,
      SEL19_SEL38_Field_8 => 8,
      SEL19_SEL38_Field_9 => 9,
      SEL19_SEL38_Field_10 => 10,
      SEL19_SEL38_Field_11 => 11,
      SEL19_SEL38_Field_12 => 12,
      SEL19_SEL38_Field_13 => 13,
      SEL19_SEL38_Field_14 => 14,
      SEL19_SEL38_Field_15 => 15,
      SEL19_SEL38_Field_16 => 16,
      SEL19_SEL38_Field_17 => 17,
      SEL19_SEL38_Field_18 => 18,
      SEL19_SEL38_Field_19 => 19,
      SEL19_SEL38_Field_29 => 29,
      SEL19_SEL38_Field_31 => 31,
      SEL19_SEL38_Field_33 => 33,
      SEL19_SEL38_Field_35 => 35,
      SEL19_SEL38_Field_36 => 36,
      SEL19_SEL38_Field_37 => 37,
      SEL19_SEL38_Field_38 => 38,
      SEL19_SEL38_Field_39 => 39,
      SEL19_SEL38_Field_40 => 40,
      SEL19_SEL38_Field_41 => 41,
      SEL19_SEL38_Field_42 => 42,
      SEL19_SEL38_Field_43 => 43,
      SEL19_SEL38_Field_45 => 45,
      SEL19_SEL38_Field_46 => 46,
      SEL19_SEL38_Field_47 => 47,
      SEL19_SEL38_Field_48 => 48,
      SEL19_SEL38_Field_49 => 49,
      SEL19_SEL38_Field_50 => 50,
      SEL19_SEL38_Field_51 => 51);

   subtype XBARA_SEL19_SEL39_Field is HAL.UInt6;

   --  Crossbar A Select Register 19
   type XBARA_SEL19_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT38 (refer to Functional
      --  Description section for input/output assignment)
      SEL38          : SEL19_SEL38_Field := NRF_SVD.XBARA.SEL19_SEL38_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT39 (refer to Functional
      --  Description section for input/output assignment)
      SEL39          : XBARA_SEL19_SEL39_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL19_Register use record
      SEL38          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL39          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL20_SEL40_Field is HAL.UInt6;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT41 (refer to Functional
   --  Description section for input/output assignment)
   type SEL20_SEL41_Field is
     (
      --  Logic zero
      SEL20_SEL41_Field_0,
      --  Logic one
      SEL20_SEL41_Field_1,
      --  XBARIN2 input pin
      SEL20_SEL41_Field_2,
      --  XBARIN3 input pin
      SEL20_SEL41_Field_3,
      --  XBARIN4 input pin
      SEL20_SEL41_Field_4,
      --  XBARIN5 input pin
      SEL20_SEL41_Field_5,
      --  XBARIN6 input pin
      SEL20_SEL41_Field_6,
      --  XBARIN7 input pin
      SEL20_SEL41_Field_7,
      --  XBARIN8 input pin
      SEL20_SEL41_Field_8,
      --  XBARIN9 input pin
      SEL20_SEL41_Field_9,
      --  XBARIN10 input pin
      SEL20_SEL41_Field_10,
      --  XBARIN11 input pin
      SEL20_SEL41_Field_11,
      --  CMP0 Output
      SEL20_SEL41_Field_12,
      --  CMP1 Output
      SEL20_SEL41_Field_13,
      --  CMP2 Output
      SEL20_SEL41_Field_14,
      --  CMP3 Output
      SEL20_SEL41_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL20_SEL41_Field_16,
      --  FTM0 counter init trigger
      SEL20_SEL41_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL20_SEL41_Field_18,
      --  FTM3 counter init trigger
      SEL20_SEL41_Field_19,
      --  PDB0 channel 0 output trigger
      SEL20_SEL41_Field_29,
      --  PDB1 channel 0 output trigger
      SEL20_SEL41_Field_31,
      --  ADC converter A end of scan
      SEL20_SEL41_Field_33,
      --  ADC converter B end of scan
      SEL20_SEL41_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL20_SEL41_Field_36,
      --  FTM1 counter init trigger
      SEL20_SEL41_Field_37,
      --  DMA channel 0 done
      SEL20_SEL41_Field_38,
      --  DMA channel 1 done
      SEL20_SEL41_Field_39,
      --  DMA channel 6 done
      SEL20_SEL41_Field_40,
      --  DMA channel 7 done
      SEL20_SEL41_Field_41,
      --  PIT trigger 0
      SEL20_SEL41_Field_42,
      --  PIT trigger 1
      SEL20_SEL41_Field_43,
      --  ENC0 compare trigger and position match
      SEL20_SEL41_Field_45,
      --  AOI output 0
      SEL20_SEL41_Field_46,
      --  AOI output 1
      SEL20_SEL41_Field_47,
      --  AOI output 2
      SEL20_SEL41_Field_48,
      --  AOI output 3
      SEL20_SEL41_Field_49,
      --  PIT trigger 2
      SEL20_SEL41_Field_50,
      --  PIT trigger 3
      SEL20_SEL41_Field_51)
     with Size => 6;
   for SEL20_SEL41_Field use
     (SEL20_SEL41_Field_0 => 0,
      SEL20_SEL41_Field_1 => 1,
      SEL20_SEL41_Field_2 => 2,
      SEL20_SEL41_Field_3 => 3,
      SEL20_SEL41_Field_4 => 4,
      SEL20_SEL41_Field_5 => 5,
      SEL20_SEL41_Field_6 => 6,
      SEL20_SEL41_Field_7 => 7,
      SEL20_SEL41_Field_8 => 8,
      SEL20_SEL41_Field_9 => 9,
      SEL20_SEL41_Field_10 => 10,
      SEL20_SEL41_Field_11 => 11,
      SEL20_SEL41_Field_12 => 12,
      SEL20_SEL41_Field_13 => 13,
      SEL20_SEL41_Field_14 => 14,
      SEL20_SEL41_Field_15 => 15,
      SEL20_SEL41_Field_16 => 16,
      SEL20_SEL41_Field_17 => 17,
      SEL20_SEL41_Field_18 => 18,
      SEL20_SEL41_Field_19 => 19,
      SEL20_SEL41_Field_29 => 29,
      SEL20_SEL41_Field_31 => 31,
      SEL20_SEL41_Field_33 => 33,
      SEL20_SEL41_Field_35 => 35,
      SEL20_SEL41_Field_36 => 36,
      SEL20_SEL41_Field_37 => 37,
      SEL20_SEL41_Field_38 => 38,
      SEL20_SEL41_Field_39 => 39,
      SEL20_SEL41_Field_40 => 40,
      SEL20_SEL41_Field_41 => 41,
      SEL20_SEL41_Field_42 => 42,
      SEL20_SEL41_Field_43 => 43,
      SEL20_SEL41_Field_45 => 45,
      SEL20_SEL41_Field_46 => 46,
      SEL20_SEL41_Field_47 => 47,
      SEL20_SEL41_Field_48 => 48,
      SEL20_SEL41_Field_49 => 49,
      SEL20_SEL41_Field_50 => 50,
      SEL20_SEL41_Field_51 => 51);

   --  Crossbar A Select Register 20
   type XBARA_SEL20_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT40 (refer to Functional
      --  Description section for input/output assignment)
      SEL40          : XBARA_SEL20_SEL40_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT41 (refer to Functional
      --  Description section for input/output assignment)
      SEL41          : SEL20_SEL41_Field := NRF_SVD.XBARA.SEL20_SEL41_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL20_Register use record
      SEL40          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL41          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT42 (refer to Functional
   --  Description section for input/output assignment)
   type SEL21_SEL42_Field is
     (
      --  Logic zero
      SEL21_SEL42_Field_0,
      --  Logic one
      SEL21_SEL42_Field_1,
      --  XBARIN2 input pin
      SEL21_SEL42_Field_2,
      --  XBARIN3 input pin
      SEL21_SEL42_Field_3,
      --  XBARIN4 input pin
      SEL21_SEL42_Field_4,
      --  XBARIN5 input pin
      SEL21_SEL42_Field_5,
      --  XBARIN6 input pin
      SEL21_SEL42_Field_6,
      --  XBARIN7 input pin
      SEL21_SEL42_Field_7,
      --  XBARIN8 input pin
      SEL21_SEL42_Field_8,
      --  XBARIN9 input pin
      SEL21_SEL42_Field_9,
      --  XBARIN10 input pin
      SEL21_SEL42_Field_10,
      --  XBARIN11 input pin
      SEL21_SEL42_Field_11,
      --  CMP0 Output
      SEL21_SEL42_Field_12,
      --  CMP1 Output
      SEL21_SEL42_Field_13,
      --  CMP2 Output
      SEL21_SEL42_Field_14,
      --  CMP3 Output
      SEL21_SEL42_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL21_SEL42_Field_16,
      --  FTM0 counter init trigger
      SEL21_SEL42_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL21_SEL42_Field_18,
      --  FTM3 counter init trigger
      SEL21_SEL42_Field_19,
      --  PDB0 channel 0 output trigger
      SEL21_SEL42_Field_29,
      --  PDB1 channel 0 output trigger
      SEL21_SEL42_Field_31,
      --  ADC converter A end of scan
      SEL21_SEL42_Field_33,
      --  ADC converter B end of scan
      SEL21_SEL42_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL21_SEL42_Field_36,
      --  FTM1 counter init trigger
      SEL21_SEL42_Field_37,
      --  DMA channel 0 done
      SEL21_SEL42_Field_38,
      --  DMA channel 1 done
      SEL21_SEL42_Field_39,
      --  DMA channel 6 done
      SEL21_SEL42_Field_40,
      --  DMA channel 7 done
      SEL21_SEL42_Field_41,
      --  PIT trigger 0
      SEL21_SEL42_Field_42,
      --  PIT trigger 1
      SEL21_SEL42_Field_43,
      --  ENC0 compare trigger and position match
      SEL21_SEL42_Field_45,
      --  AOI output 0
      SEL21_SEL42_Field_46,
      --  AOI output 1
      SEL21_SEL42_Field_47,
      --  AOI output 2
      SEL21_SEL42_Field_48,
      --  AOI output 3
      SEL21_SEL42_Field_49,
      --  PIT trigger 2
      SEL21_SEL42_Field_50,
      --  PIT trigger 3
      SEL21_SEL42_Field_51)
     with Size => 6;
   for SEL21_SEL42_Field use
     (SEL21_SEL42_Field_0 => 0,
      SEL21_SEL42_Field_1 => 1,
      SEL21_SEL42_Field_2 => 2,
      SEL21_SEL42_Field_3 => 3,
      SEL21_SEL42_Field_4 => 4,
      SEL21_SEL42_Field_5 => 5,
      SEL21_SEL42_Field_6 => 6,
      SEL21_SEL42_Field_7 => 7,
      SEL21_SEL42_Field_8 => 8,
      SEL21_SEL42_Field_9 => 9,
      SEL21_SEL42_Field_10 => 10,
      SEL21_SEL42_Field_11 => 11,
      SEL21_SEL42_Field_12 => 12,
      SEL21_SEL42_Field_13 => 13,
      SEL21_SEL42_Field_14 => 14,
      SEL21_SEL42_Field_15 => 15,
      SEL21_SEL42_Field_16 => 16,
      SEL21_SEL42_Field_17 => 17,
      SEL21_SEL42_Field_18 => 18,
      SEL21_SEL42_Field_19 => 19,
      SEL21_SEL42_Field_29 => 29,
      SEL21_SEL42_Field_31 => 31,
      SEL21_SEL42_Field_33 => 33,
      SEL21_SEL42_Field_35 => 35,
      SEL21_SEL42_Field_36 => 36,
      SEL21_SEL42_Field_37 => 37,
      SEL21_SEL42_Field_38 => 38,
      SEL21_SEL42_Field_39 => 39,
      SEL21_SEL42_Field_40 => 40,
      SEL21_SEL42_Field_41 => 41,
      SEL21_SEL42_Field_42 => 42,
      SEL21_SEL42_Field_43 => 43,
      SEL21_SEL42_Field_45 => 45,
      SEL21_SEL42_Field_46 => 46,
      SEL21_SEL42_Field_47 => 47,
      SEL21_SEL42_Field_48 => 48,
      SEL21_SEL42_Field_49 => 49,
      SEL21_SEL42_Field_50 => 50,
      SEL21_SEL42_Field_51 => 51);

   subtype XBARA_SEL21_SEL43_Field is HAL.UInt6;

   --  Crossbar A Select Register 21
   type XBARA_SEL21_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT42 (refer to Functional
      --  Description section for input/output assignment)
      SEL42          : SEL21_SEL42_Field := NRF_SVD.XBARA.SEL21_SEL42_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT43 (refer to Functional
      --  Description section for input/output assignment)
      SEL43          : XBARA_SEL21_SEL43_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL21_Register use record
      SEL42          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL43          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT44 (refer to Functional
   --  Description section for input/output assignment)
   type SEL22_SEL44_Field is
     (
      --  Logic zero
      SEL22_SEL44_Field_0,
      --  Logic one
      SEL22_SEL44_Field_1,
      --  XBARIN2 input pin
      SEL22_SEL44_Field_2,
      --  XBARIN3 input pin
      SEL22_SEL44_Field_3,
      --  XBARIN4 input pin
      SEL22_SEL44_Field_4,
      --  XBARIN5 input pin
      SEL22_SEL44_Field_5,
      --  XBARIN6 input pin
      SEL22_SEL44_Field_6,
      --  XBARIN7 input pin
      SEL22_SEL44_Field_7,
      --  XBARIN8 input pin
      SEL22_SEL44_Field_8,
      --  XBARIN9 input pin
      SEL22_SEL44_Field_9,
      --  XBARIN10 input pin
      SEL22_SEL44_Field_10,
      --  XBARIN11 input pin
      SEL22_SEL44_Field_11,
      --  CMP0 Output
      SEL22_SEL44_Field_12,
      --  CMP1 Output
      SEL22_SEL44_Field_13,
      --  CMP2 Output
      SEL22_SEL44_Field_14,
      --  CMP3 Output
      SEL22_SEL44_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL22_SEL44_Field_16,
      --  FTM0 counter init trigger
      SEL22_SEL44_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL22_SEL44_Field_18,
      --  FTM3 counter init trigger
      SEL22_SEL44_Field_19,
      --  PDB0 channel 0 output trigger
      SEL22_SEL44_Field_29,
      --  PDB1 channel 0 output trigger
      SEL22_SEL44_Field_31,
      --  ADC converter A end of scan
      SEL22_SEL44_Field_33,
      --  ADC converter B end of scan
      SEL22_SEL44_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL22_SEL44_Field_36,
      --  FTM1 counter init trigger
      SEL22_SEL44_Field_37,
      --  DMA channel 0 done
      SEL22_SEL44_Field_38,
      --  DMA channel 1 done
      SEL22_SEL44_Field_39,
      --  DMA channel 6 done
      SEL22_SEL44_Field_40,
      --  DMA channel 7 done
      SEL22_SEL44_Field_41,
      --  PIT trigger 0
      SEL22_SEL44_Field_42,
      --  PIT trigger 1
      SEL22_SEL44_Field_43,
      --  ENC0 compare trigger and position match
      SEL22_SEL44_Field_45,
      --  AOI output 0
      SEL22_SEL44_Field_46,
      --  AOI output 1
      SEL22_SEL44_Field_47,
      --  AOI output 2
      SEL22_SEL44_Field_48,
      --  AOI output 3
      SEL22_SEL44_Field_49,
      --  PIT trigger 2
      SEL22_SEL44_Field_50,
      --  PIT trigger 3
      SEL22_SEL44_Field_51)
     with Size => 6;
   for SEL22_SEL44_Field use
     (SEL22_SEL44_Field_0 => 0,
      SEL22_SEL44_Field_1 => 1,
      SEL22_SEL44_Field_2 => 2,
      SEL22_SEL44_Field_3 => 3,
      SEL22_SEL44_Field_4 => 4,
      SEL22_SEL44_Field_5 => 5,
      SEL22_SEL44_Field_6 => 6,
      SEL22_SEL44_Field_7 => 7,
      SEL22_SEL44_Field_8 => 8,
      SEL22_SEL44_Field_9 => 9,
      SEL22_SEL44_Field_10 => 10,
      SEL22_SEL44_Field_11 => 11,
      SEL22_SEL44_Field_12 => 12,
      SEL22_SEL44_Field_13 => 13,
      SEL22_SEL44_Field_14 => 14,
      SEL22_SEL44_Field_15 => 15,
      SEL22_SEL44_Field_16 => 16,
      SEL22_SEL44_Field_17 => 17,
      SEL22_SEL44_Field_18 => 18,
      SEL22_SEL44_Field_19 => 19,
      SEL22_SEL44_Field_29 => 29,
      SEL22_SEL44_Field_31 => 31,
      SEL22_SEL44_Field_33 => 33,
      SEL22_SEL44_Field_35 => 35,
      SEL22_SEL44_Field_36 => 36,
      SEL22_SEL44_Field_37 => 37,
      SEL22_SEL44_Field_38 => 38,
      SEL22_SEL44_Field_39 => 39,
      SEL22_SEL44_Field_40 => 40,
      SEL22_SEL44_Field_41 => 41,
      SEL22_SEL44_Field_42 => 42,
      SEL22_SEL44_Field_43 => 43,
      SEL22_SEL44_Field_45 => 45,
      SEL22_SEL44_Field_46 => 46,
      SEL22_SEL44_Field_47 => 47,
      SEL22_SEL44_Field_48 => 48,
      SEL22_SEL44_Field_49 => 49,
      SEL22_SEL44_Field_50 => 50,
      SEL22_SEL44_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT45 (refer to Functional
   --  Description section for input/output assignment)
   type SEL22_SEL45_Field is
     (
      --  Logic zero
      SEL22_SEL45_Field_0,
      --  Logic one
      SEL22_SEL45_Field_1,
      --  XBARIN2 input pin
      SEL22_SEL45_Field_2,
      --  XBARIN3 input pin
      SEL22_SEL45_Field_3,
      --  XBARIN4 input pin
      SEL22_SEL45_Field_4,
      --  XBARIN5 input pin
      SEL22_SEL45_Field_5,
      --  XBARIN6 input pin
      SEL22_SEL45_Field_6,
      --  XBARIN7 input pin
      SEL22_SEL45_Field_7,
      --  XBARIN8 input pin
      SEL22_SEL45_Field_8,
      --  XBARIN9 input pin
      SEL22_SEL45_Field_9,
      --  XBARIN10 input pin
      SEL22_SEL45_Field_10,
      --  XBARIN11 input pin
      SEL22_SEL45_Field_11,
      --  CMP0 Output
      SEL22_SEL45_Field_12,
      --  CMP1 Output
      SEL22_SEL45_Field_13,
      --  CMP2 Output
      SEL22_SEL45_Field_14,
      --  CMP3 Output
      SEL22_SEL45_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL22_SEL45_Field_16,
      --  FTM0 counter init trigger
      SEL22_SEL45_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL22_SEL45_Field_18,
      --  FTM3 counter init trigger
      SEL22_SEL45_Field_19,
      --  PDB0 channel 0 output trigger
      SEL22_SEL45_Field_29,
      --  PDB1 channel 0 output trigger
      SEL22_SEL45_Field_31,
      --  ADC converter A end of scan
      SEL22_SEL45_Field_33,
      --  ADC converter B end of scan
      SEL22_SEL45_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL22_SEL45_Field_36,
      --  FTM1 counter init trigger
      SEL22_SEL45_Field_37,
      --  DMA channel 0 done
      SEL22_SEL45_Field_38,
      --  DMA channel 1 done
      SEL22_SEL45_Field_39,
      --  DMA channel 6 done
      SEL22_SEL45_Field_40,
      --  DMA channel 7 done
      SEL22_SEL45_Field_41,
      --  PIT trigger 0
      SEL22_SEL45_Field_42,
      --  PIT trigger 1
      SEL22_SEL45_Field_43,
      --  ENC0 compare trigger and position match
      SEL22_SEL45_Field_45,
      --  AOI output 0
      SEL22_SEL45_Field_46,
      --  AOI output 1
      SEL22_SEL45_Field_47,
      --  AOI output 2
      SEL22_SEL45_Field_48,
      --  AOI output 3
      SEL22_SEL45_Field_49,
      --  PIT trigger 2
      SEL22_SEL45_Field_50,
      --  PIT trigger 3
      SEL22_SEL45_Field_51)
     with Size => 6;
   for SEL22_SEL45_Field use
     (SEL22_SEL45_Field_0 => 0,
      SEL22_SEL45_Field_1 => 1,
      SEL22_SEL45_Field_2 => 2,
      SEL22_SEL45_Field_3 => 3,
      SEL22_SEL45_Field_4 => 4,
      SEL22_SEL45_Field_5 => 5,
      SEL22_SEL45_Field_6 => 6,
      SEL22_SEL45_Field_7 => 7,
      SEL22_SEL45_Field_8 => 8,
      SEL22_SEL45_Field_9 => 9,
      SEL22_SEL45_Field_10 => 10,
      SEL22_SEL45_Field_11 => 11,
      SEL22_SEL45_Field_12 => 12,
      SEL22_SEL45_Field_13 => 13,
      SEL22_SEL45_Field_14 => 14,
      SEL22_SEL45_Field_15 => 15,
      SEL22_SEL45_Field_16 => 16,
      SEL22_SEL45_Field_17 => 17,
      SEL22_SEL45_Field_18 => 18,
      SEL22_SEL45_Field_19 => 19,
      SEL22_SEL45_Field_29 => 29,
      SEL22_SEL45_Field_31 => 31,
      SEL22_SEL45_Field_33 => 33,
      SEL22_SEL45_Field_35 => 35,
      SEL22_SEL45_Field_36 => 36,
      SEL22_SEL45_Field_37 => 37,
      SEL22_SEL45_Field_38 => 38,
      SEL22_SEL45_Field_39 => 39,
      SEL22_SEL45_Field_40 => 40,
      SEL22_SEL45_Field_41 => 41,
      SEL22_SEL45_Field_42 => 42,
      SEL22_SEL45_Field_43 => 43,
      SEL22_SEL45_Field_45 => 45,
      SEL22_SEL45_Field_46 => 46,
      SEL22_SEL45_Field_47 => 47,
      SEL22_SEL45_Field_48 => 48,
      SEL22_SEL45_Field_49 => 49,
      SEL22_SEL45_Field_50 => 50,
      SEL22_SEL45_Field_51 => 51);

   --  Crossbar A Select Register 22
   type XBARA_SEL22_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT44 (refer to Functional
      --  Description section for input/output assignment)
      SEL44          : SEL22_SEL44_Field := NRF_SVD.XBARA.SEL22_SEL44_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT45 (refer to Functional
      --  Description section for input/output assignment)
      SEL45          : SEL22_SEL45_Field := NRF_SVD.XBARA.SEL22_SEL45_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL22_Register use record
      SEL44          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL45          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT46 (refer to Functional
   --  Description section for input/output assignment)
   type SEL23_SEL46_Field is
     (
      --  Logic zero
      SEL23_SEL46_Field_0,
      --  Logic one
      SEL23_SEL46_Field_1,
      --  XBARIN2 input pin
      SEL23_SEL46_Field_2,
      --  XBARIN3 input pin
      SEL23_SEL46_Field_3,
      --  XBARIN4 input pin
      SEL23_SEL46_Field_4,
      --  XBARIN5 input pin
      SEL23_SEL46_Field_5,
      --  XBARIN6 input pin
      SEL23_SEL46_Field_6,
      --  XBARIN7 input pin
      SEL23_SEL46_Field_7,
      --  XBARIN8 input pin
      SEL23_SEL46_Field_8,
      --  XBARIN9 input pin
      SEL23_SEL46_Field_9,
      --  XBARIN10 input pin
      SEL23_SEL46_Field_10,
      --  XBARIN11 input pin
      SEL23_SEL46_Field_11,
      --  CMP0 Output
      SEL23_SEL46_Field_12,
      --  CMP1 Output
      SEL23_SEL46_Field_13,
      --  CMP2 Output
      SEL23_SEL46_Field_14,
      --  CMP3 Output
      SEL23_SEL46_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL23_SEL46_Field_16,
      --  FTM0 counter init trigger
      SEL23_SEL46_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL23_SEL46_Field_18,
      --  FTM3 counter init trigger
      SEL23_SEL46_Field_19,
      --  PDB0 channel 0 output trigger
      SEL23_SEL46_Field_29,
      --  PDB1 channel 0 output trigger
      SEL23_SEL46_Field_31,
      --  ADC converter A end of scan
      SEL23_SEL46_Field_33,
      --  ADC converter B end of scan
      SEL23_SEL46_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL23_SEL46_Field_36,
      --  FTM1 counter init trigger
      SEL23_SEL46_Field_37,
      --  DMA channel 0 done
      SEL23_SEL46_Field_38,
      --  DMA channel 1 done
      SEL23_SEL46_Field_39,
      --  DMA channel 6 done
      SEL23_SEL46_Field_40,
      --  DMA channel 7 done
      SEL23_SEL46_Field_41,
      --  PIT trigger 0
      SEL23_SEL46_Field_42,
      --  PIT trigger 1
      SEL23_SEL46_Field_43,
      --  ENC0 compare trigger and position match
      SEL23_SEL46_Field_45,
      --  AOI output 0
      SEL23_SEL46_Field_46,
      --  AOI output 1
      SEL23_SEL46_Field_47,
      --  AOI output 2
      SEL23_SEL46_Field_48,
      --  AOI output 3
      SEL23_SEL46_Field_49,
      --  PIT trigger 2
      SEL23_SEL46_Field_50,
      --  PIT trigger 3
      SEL23_SEL46_Field_51)
     with Size => 6;
   for SEL23_SEL46_Field use
     (SEL23_SEL46_Field_0 => 0,
      SEL23_SEL46_Field_1 => 1,
      SEL23_SEL46_Field_2 => 2,
      SEL23_SEL46_Field_3 => 3,
      SEL23_SEL46_Field_4 => 4,
      SEL23_SEL46_Field_5 => 5,
      SEL23_SEL46_Field_6 => 6,
      SEL23_SEL46_Field_7 => 7,
      SEL23_SEL46_Field_8 => 8,
      SEL23_SEL46_Field_9 => 9,
      SEL23_SEL46_Field_10 => 10,
      SEL23_SEL46_Field_11 => 11,
      SEL23_SEL46_Field_12 => 12,
      SEL23_SEL46_Field_13 => 13,
      SEL23_SEL46_Field_14 => 14,
      SEL23_SEL46_Field_15 => 15,
      SEL23_SEL46_Field_16 => 16,
      SEL23_SEL46_Field_17 => 17,
      SEL23_SEL46_Field_18 => 18,
      SEL23_SEL46_Field_19 => 19,
      SEL23_SEL46_Field_29 => 29,
      SEL23_SEL46_Field_31 => 31,
      SEL23_SEL46_Field_33 => 33,
      SEL23_SEL46_Field_35 => 35,
      SEL23_SEL46_Field_36 => 36,
      SEL23_SEL46_Field_37 => 37,
      SEL23_SEL46_Field_38 => 38,
      SEL23_SEL46_Field_39 => 39,
      SEL23_SEL46_Field_40 => 40,
      SEL23_SEL46_Field_41 => 41,
      SEL23_SEL46_Field_42 => 42,
      SEL23_SEL46_Field_43 => 43,
      SEL23_SEL46_Field_45 => 45,
      SEL23_SEL46_Field_46 => 46,
      SEL23_SEL46_Field_47 => 47,
      SEL23_SEL46_Field_48 => 48,
      SEL23_SEL46_Field_49 => 49,
      SEL23_SEL46_Field_50 => 50,
      SEL23_SEL46_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT47 (refer to Functional
   --  Description section for input/output assignment)
   type SEL23_SEL47_Field is
     (
      --  Logic zero
      SEL23_SEL47_Field_0,
      --  Logic one
      SEL23_SEL47_Field_1,
      --  XBARIN2 input pin
      SEL23_SEL47_Field_2,
      --  XBARIN3 input pin
      SEL23_SEL47_Field_3,
      --  XBARIN4 input pin
      SEL23_SEL47_Field_4,
      --  XBARIN5 input pin
      SEL23_SEL47_Field_5,
      --  XBARIN6 input pin
      SEL23_SEL47_Field_6,
      --  XBARIN7 input pin
      SEL23_SEL47_Field_7,
      --  XBARIN8 input pin
      SEL23_SEL47_Field_8,
      --  XBARIN9 input pin
      SEL23_SEL47_Field_9,
      --  XBARIN10 input pin
      SEL23_SEL47_Field_10,
      --  XBARIN11 input pin
      SEL23_SEL47_Field_11,
      --  CMP0 Output
      SEL23_SEL47_Field_12,
      --  CMP1 Output
      SEL23_SEL47_Field_13,
      --  CMP2 Output
      SEL23_SEL47_Field_14,
      --  CMP3 Output
      SEL23_SEL47_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL23_SEL47_Field_16,
      --  FTM0 counter init trigger
      SEL23_SEL47_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL23_SEL47_Field_18,
      --  FTM3 counter init trigger
      SEL23_SEL47_Field_19,
      --  PDB0 channel 0 output trigger
      SEL23_SEL47_Field_29,
      --  PDB1 channel 0 output trigger
      SEL23_SEL47_Field_31,
      --  ADC converter A end of scan
      SEL23_SEL47_Field_33,
      --  ADC converter B end of scan
      SEL23_SEL47_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL23_SEL47_Field_36,
      --  FTM1 counter init trigger
      SEL23_SEL47_Field_37,
      --  DMA channel 0 done
      SEL23_SEL47_Field_38,
      --  DMA channel 1 done
      SEL23_SEL47_Field_39,
      --  DMA channel 6 done
      SEL23_SEL47_Field_40,
      --  DMA channel 7 done
      SEL23_SEL47_Field_41,
      --  PIT trigger 0
      SEL23_SEL47_Field_42,
      --  PIT trigger 1
      SEL23_SEL47_Field_43,
      --  ENC0 compare trigger and position match
      SEL23_SEL47_Field_45,
      --  AOI output 0
      SEL23_SEL47_Field_46,
      --  AOI output 1
      SEL23_SEL47_Field_47,
      --  AOI output 2
      SEL23_SEL47_Field_48,
      --  AOI output 3
      SEL23_SEL47_Field_49,
      --  PIT trigger 2
      SEL23_SEL47_Field_50,
      --  PIT trigger 3
      SEL23_SEL47_Field_51)
     with Size => 6;
   for SEL23_SEL47_Field use
     (SEL23_SEL47_Field_0 => 0,
      SEL23_SEL47_Field_1 => 1,
      SEL23_SEL47_Field_2 => 2,
      SEL23_SEL47_Field_3 => 3,
      SEL23_SEL47_Field_4 => 4,
      SEL23_SEL47_Field_5 => 5,
      SEL23_SEL47_Field_6 => 6,
      SEL23_SEL47_Field_7 => 7,
      SEL23_SEL47_Field_8 => 8,
      SEL23_SEL47_Field_9 => 9,
      SEL23_SEL47_Field_10 => 10,
      SEL23_SEL47_Field_11 => 11,
      SEL23_SEL47_Field_12 => 12,
      SEL23_SEL47_Field_13 => 13,
      SEL23_SEL47_Field_14 => 14,
      SEL23_SEL47_Field_15 => 15,
      SEL23_SEL47_Field_16 => 16,
      SEL23_SEL47_Field_17 => 17,
      SEL23_SEL47_Field_18 => 18,
      SEL23_SEL47_Field_19 => 19,
      SEL23_SEL47_Field_29 => 29,
      SEL23_SEL47_Field_31 => 31,
      SEL23_SEL47_Field_33 => 33,
      SEL23_SEL47_Field_35 => 35,
      SEL23_SEL47_Field_36 => 36,
      SEL23_SEL47_Field_37 => 37,
      SEL23_SEL47_Field_38 => 38,
      SEL23_SEL47_Field_39 => 39,
      SEL23_SEL47_Field_40 => 40,
      SEL23_SEL47_Field_41 => 41,
      SEL23_SEL47_Field_42 => 42,
      SEL23_SEL47_Field_43 => 43,
      SEL23_SEL47_Field_45 => 45,
      SEL23_SEL47_Field_46 => 46,
      SEL23_SEL47_Field_47 => 47,
      SEL23_SEL47_Field_48 => 48,
      SEL23_SEL47_Field_49 => 49,
      SEL23_SEL47_Field_50 => 50,
      SEL23_SEL47_Field_51 => 51);

   --  Crossbar A Select Register 23
   type XBARA_SEL23_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT46 (refer to Functional
      --  Description section for input/output assignment)
      SEL46          : SEL23_SEL46_Field := NRF_SVD.XBARA.SEL23_SEL46_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT47 (refer to Functional
      --  Description section for input/output assignment)
      SEL47          : SEL23_SEL47_Field := NRF_SVD.XBARA.SEL23_SEL47_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL23_Register use record
      SEL46          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL47          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT48 (refer to Functional
   --  Description section for input/output assignment)
   type SEL24_SEL48_Field is
     (
      --  Logic zero
      SEL24_SEL48_Field_0,
      --  Logic one
      SEL24_SEL48_Field_1,
      --  XBARIN2 input pin
      SEL24_SEL48_Field_2,
      --  XBARIN3 input pin
      SEL24_SEL48_Field_3,
      --  XBARIN4 input pin
      SEL24_SEL48_Field_4,
      --  XBARIN5 input pin
      SEL24_SEL48_Field_5,
      --  XBARIN6 input pin
      SEL24_SEL48_Field_6,
      --  XBARIN7 input pin
      SEL24_SEL48_Field_7,
      --  XBARIN8 input pin
      SEL24_SEL48_Field_8,
      --  XBARIN9 input pin
      SEL24_SEL48_Field_9,
      --  XBARIN10 input pin
      SEL24_SEL48_Field_10,
      --  XBARIN11 input pin
      SEL24_SEL48_Field_11,
      --  CMP0 Output
      SEL24_SEL48_Field_12,
      --  CMP1 Output
      SEL24_SEL48_Field_13,
      --  CMP2 Output
      SEL24_SEL48_Field_14,
      --  CMP3 Output
      SEL24_SEL48_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL24_SEL48_Field_16,
      --  FTM0 counter init trigger
      SEL24_SEL48_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL24_SEL48_Field_18,
      --  FTM3 counter init trigger
      SEL24_SEL48_Field_19,
      --  PDB0 channel 0 output trigger
      SEL24_SEL48_Field_29,
      --  PDB1 channel 0 output trigger
      SEL24_SEL48_Field_31,
      --  ADC converter A end of scan
      SEL24_SEL48_Field_33,
      --  ADC converter B end of scan
      SEL24_SEL48_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL24_SEL48_Field_36,
      --  FTM1 counter init trigger
      SEL24_SEL48_Field_37,
      --  DMA channel 0 done
      SEL24_SEL48_Field_38,
      --  DMA channel 1 done
      SEL24_SEL48_Field_39,
      --  DMA channel 6 done
      SEL24_SEL48_Field_40,
      --  DMA channel 7 done
      SEL24_SEL48_Field_41,
      --  PIT trigger 0
      SEL24_SEL48_Field_42,
      --  PIT trigger 1
      SEL24_SEL48_Field_43,
      --  ENC0 compare trigger and position match
      SEL24_SEL48_Field_45,
      --  AOI output 0
      SEL24_SEL48_Field_46,
      --  AOI output 1
      SEL24_SEL48_Field_47,
      --  AOI output 2
      SEL24_SEL48_Field_48,
      --  AOI output 3
      SEL24_SEL48_Field_49,
      --  PIT trigger 2
      SEL24_SEL48_Field_50,
      --  PIT trigger 3
      SEL24_SEL48_Field_51)
     with Size => 6;
   for SEL24_SEL48_Field use
     (SEL24_SEL48_Field_0 => 0,
      SEL24_SEL48_Field_1 => 1,
      SEL24_SEL48_Field_2 => 2,
      SEL24_SEL48_Field_3 => 3,
      SEL24_SEL48_Field_4 => 4,
      SEL24_SEL48_Field_5 => 5,
      SEL24_SEL48_Field_6 => 6,
      SEL24_SEL48_Field_7 => 7,
      SEL24_SEL48_Field_8 => 8,
      SEL24_SEL48_Field_9 => 9,
      SEL24_SEL48_Field_10 => 10,
      SEL24_SEL48_Field_11 => 11,
      SEL24_SEL48_Field_12 => 12,
      SEL24_SEL48_Field_13 => 13,
      SEL24_SEL48_Field_14 => 14,
      SEL24_SEL48_Field_15 => 15,
      SEL24_SEL48_Field_16 => 16,
      SEL24_SEL48_Field_17 => 17,
      SEL24_SEL48_Field_18 => 18,
      SEL24_SEL48_Field_19 => 19,
      SEL24_SEL48_Field_29 => 29,
      SEL24_SEL48_Field_31 => 31,
      SEL24_SEL48_Field_33 => 33,
      SEL24_SEL48_Field_35 => 35,
      SEL24_SEL48_Field_36 => 36,
      SEL24_SEL48_Field_37 => 37,
      SEL24_SEL48_Field_38 => 38,
      SEL24_SEL48_Field_39 => 39,
      SEL24_SEL48_Field_40 => 40,
      SEL24_SEL48_Field_41 => 41,
      SEL24_SEL48_Field_42 => 42,
      SEL24_SEL48_Field_43 => 43,
      SEL24_SEL48_Field_45 => 45,
      SEL24_SEL48_Field_46 => 46,
      SEL24_SEL48_Field_47 => 47,
      SEL24_SEL48_Field_48 => 48,
      SEL24_SEL48_Field_49 => 49,
      SEL24_SEL48_Field_50 => 50,
      SEL24_SEL48_Field_51 => 51);

   --  Input (XBARA_INn) to be muxed to XBARA_OUT49 (refer to Functional
   --  Description section for input/output assignment)
   type SEL24_SEL49_Field is
     (
      --  Logic zero
      SEL24_SEL49_Field_0,
      --  Logic one
      SEL24_SEL49_Field_1,
      --  XBARIN2 input pin
      SEL24_SEL49_Field_2,
      --  XBARIN3 input pin
      SEL24_SEL49_Field_3,
      --  XBARIN4 input pin
      SEL24_SEL49_Field_4,
      --  XBARIN5 input pin
      SEL24_SEL49_Field_5,
      --  XBARIN6 input pin
      SEL24_SEL49_Field_6,
      --  XBARIN7 input pin
      SEL24_SEL49_Field_7,
      --  XBARIN8 input pin
      SEL24_SEL49_Field_8,
      --  XBARIN9 input pin
      SEL24_SEL49_Field_9,
      --  XBARIN10 input pin
      SEL24_SEL49_Field_10,
      --  XBARIN11 input pin
      SEL24_SEL49_Field_11,
      --  CMP0 Output
      SEL24_SEL49_Field_12,
      --  CMP1 Output
      SEL24_SEL49_Field_13,
      --  CMP2 Output
      SEL24_SEL49_Field_14,
      --  CMP3 Output
      SEL24_SEL49_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL24_SEL49_Field_16,
      --  FTM0 counter init trigger
      SEL24_SEL49_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL24_SEL49_Field_18,
      --  FTM3 counter init trigger
      SEL24_SEL49_Field_19,
      --  PDB0 channel 0 output trigger
      SEL24_SEL49_Field_29,
      --  PDB1 channel 0 output trigger
      SEL24_SEL49_Field_31,
      --  ADC converter A end of scan
      SEL24_SEL49_Field_33,
      --  ADC converter B end of scan
      SEL24_SEL49_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL24_SEL49_Field_36,
      --  FTM1 counter init trigger
      SEL24_SEL49_Field_37,
      --  DMA channel 0 done
      SEL24_SEL49_Field_38,
      --  DMA channel 1 done
      SEL24_SEL49_Field_39,
      --  DMA channel 6 done
      SEL24_SEL49_Field_40,
      --  DMA channel 7 done
      SEL24_SEL49_Field_41,
      --  PIT trigger 0
      SEL24_SEL49_Field_42,
      --  PIT trigger 1
      SEL24_SEL49_Field_43,
      --  ENC0 compare trigger and position match
      SEL24_SEL49_Field_45,
      --  AOI output 0
      SEL24_SEL49_Field_46,
      --  AOI output 1
      SEL24_SEL49_Field_47,
      --  AOI output 2
      SEL24_SEL49_Field_48,
      --  AOI output 3
      SEL24_SEL49_Field_49,
      --  PIT trigger 2
      SEL24_SEL49_Field_50,
      --  PIT trigger 3
      SEL24_SEL49_Field_51)
     with Size => 6;
   for SEL24_SEL49_Field use
     (SEL24_SEL49_Field_0 => 0,
      SEL24_SEL49_Field_1 => 1,
      SEL24_SEL49_Field_2 => 2,
      SEL24_SEL49_Field_3 => 3,
      SEL24_SEL49_Field_4 => 4,
      SEL24_SEL49_Field_5 => 5,
      SEL24_SEL49_Field_6 => 6,
      SEL24_SEL49_Field_7 => 7,
      SEL24_SEL49_Field_8 => 8,
      SEL24_SEL49_Field_9 => 9,
      SEL24_SEL49_Field_10 => 10,
      SEL24_SEL49_Field_11 => 11,
      SEL24_SEL49_Field_12 => 12,
      SEL24_SEL49_Field_13 => 13,
      SEL24_SEL49_Field_14 => 14,
      SEL24_SEL49_Field_15 => 15,
      SEL24_SEL49_Field_16 => 16,
      SEL24_SEL49_Field_17 => 17,
      SEL24_SEL49_Field_18 => 18,
      SEL24_SEL49_Field_19 => 19,
      SEL24_SEL49_Field_29 => 29,
      SEL24_SEL49_Field_31 => 31,
      SEL24_SEL49_Field_33 => 33,
      SEL24_SEL49_Field_35 => 35,
      SEL24_SEL49_Field_36 => 36,
      SEL24_SEL49_Field_37 => 37,
      SEL24_SEL49_Field_38 => 38,
      SEL24_SEL49_Field_39 => 39,
      SEL24_SEL49_Field_40 => 40,
      SEL24_SEL49_Field_41 => 41,
      SEL24_SEL49_Field_42 => 42,
      SEL24_SEL49_Field_43 => 43,
      SEL24_SEL49_Field_45 => 45,
      SEL24_SEL49_Field_46 => 46,
      SEL24_SEL49_Field_47 => 47,
      SEL24_SEL49_Field_48 => 48,
      SEL24_SEL49_Field_49 => 49,
      SEL24_SEL49_Field_50 => 50,
      SEL24_SEL49_Field_51 => 51);

   --  Crossbar A Select Register 24
   type XBARA_SEL24_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT48 (refer to Functional
      --  Description section for input/output assignment)
      SEL48          : SEL24_SEL48_Field := NRF_SVD.XBARA.SEL24_SEL48_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT49 (refer to Functional
      --  Description section for input/output assignment)
      SEL49          : SEL24_SEL49_Field := NRF_SVD.XBARA.SEL24_SEL49_Field_0;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL24_Register use record
      SEL48          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL49          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT50 (refer to Functional
   --  Description section for input/output assignment)
   type SEL25_SEL50_Field is
     (
      --  Logic zero
      SEL25_SEL50_Field_0,
      --  Logic one
      SEL25_SEL50_Field_1,
      --  XBARIN2 input pin
      SEL25_SEL50_Field_2,
      --  XBARIN3 input pin
      SEL25_SEL50_Field_3,
      --  XBARIN4 input pin
      SEL25_SEL50_Field_4,
      --  XBARIN5 input pin
      SEL25_SEL50_Field_5,
      --  XBARIN6 input pin
      SEL25_SEL50_Field_6,
      --  XBARIN7 input pin
      SEL25_SEL50_Field_7,
      --  XBARIN8 input pin
      SEL25_SEL50_Field_8,
      --  XBARIN9 input pin
      SEL25_SEL50_Field_9,
      --  XBARIN10 input pin
      SEL25_SEL50_Field_10,
      --  XBARIN11 input pin
      SEL25_SEL50_Field_11,
      --  CMP0 Output
      SEL25_SEL50_Field_12,
      --  CMP1 Output
      SEL25_SEL50_Field_13,
      --  CMP2 Output
      SEL25_SEL50_Field_14,
      --  CMP3 Output
      SEL25_SEL50_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL25_SEL50_Field_16,
      --  FTM0 counter init trigger
      SEL25_SEL50_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL25_SEL50_Field_18,
      --  FTM3 counter init trigger
      SEL25_SEL50_Field_19,
      --  PDB0 channel 0 output trigger
      SEL25_SEL50_Field_29,
      --  PDB1 channel 0 output trigger
      SEL25_SEL50_Field_31,
      --  ADC converter A end of scan
      SEL25_SEL50_Field_33,
      --  ADC converter B end of scan
      SEL25_SEL50_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL25_SEL50_Field_36,
      --  FTM1 counter init trigger
      SEL25_SEL50_Field_37,
      --  DMA channel 0 done
      SEL25_SEL50_Field_38,
      --  DMA channel 1 done
      SEL25_SEL50_Field_39,
      --  DMA channel 6 done
      SEL25_SEL50_Field_40,
      --  DMA channel 7 done
      SEL25_SEL50_Field_41,
      --  PIT trigger 0
      SEL25_SEL50_Field_42,
      --  PIT trigger 1
      SEL25_SEL50_Field_43,
      --  ENC0 compare trigger and position match
      SEL25_SEL50_Field_45,
      --  AOI output 0
      SEL25_SEL50_Field_46,
      --  AOI output 1
      SEL25_SEL50_Field_47,
      --  AOI output 2
      SEL25_SEL50_Field_48,
      --  AOI output 3
      SEL25_SEL50_Field_49,
      --  PIT trigger 2
      SEL25_SEL50_Field_50,
      --  PIT trigger 3
      SEL25_SEL50_Field_51)
     with Size => 6;
   for SEL25_SEL50_Field use
     (SEL25_SEL50_Field_0 => 0,
      SEL25_SEL50_Field_1 => 1,
      SEL25_SEL50_Field_2 => 2,
      SEL25_SEL50_Field_3 => 3,
      SEL25_SEL50_Field_4 => 4,
      SEL25_SEL50_Field_5 => 5,
      SEL25_SEL50_Field_6 => 6,
      SEL25_SEL50_Field_7 => 7,
      SEL25_SEL50_Field_8 => 8,
      SEL25_SEL50_Field_9 => 9,
      SEL25_SEL50_Field_10 => 10,
      SEL25_SEL50_Field_11 => 11,
      SEL25_SEL50_Field_12 => 12,
      SEL25_SEL50_Field_13 => 13,
      SEL25_SEL50_Field_14 => 14,
      SEL25_SEL50_Field_15 => 15,
      SEL25_SEL50_Field_16 => 16,
      SEL25_SEL50_Field_17 => 17,
      SEL25_SEL50_Field_18 => 18,
      SEL25_SEL50_Field_19 => 19,
      SEL25_SEL50_Field_29 => 29,
      SEL25_SEL50_Field_31 => 31,
      SEL25_SEL50_Field_33 => 33,
      SEL25_SEL50_Field_35 => 35,
      SEL25_SEL50_Field_36 => 36,
      SEL25_SEL50_Field_37 => 37,
      SEL25_SEL50_Field_38 => 38,
      SEL25_SEL50_Field_39 => 39,
      SEL25_SEL50_Field_40 => 40,
      SEL25_SEL50_Field_41 => 41,
      SEL25_SEL50_Field_42 => 42,
      SEL25_SEL50_Field_43 => 43,
      SEL25_SEL50_Field_45 => 45,
      SEL25_SEL50_Field_46 => 46,
      SEL25_SEL50_Field_47 => 47,
      SEL25_SEL50_Field_48 => 48,
      SEL25_SEL50_Field_49 => 49,
      SEL25_SEL50_Field_50 => 50,
      SEL25_SEL50_Field_51 => 51);

   subtype XBARA_SEL25_SEL51_Field is HAL.UInt6;

   --  Crossbar A Select Register 25
   type XBARA_SEL25_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT50 (refer to Functional
      --  Description section for input/output assignment)
      SEL50          : SEL25_SEL50_Field := NRF_SVD.XBARA.SEL25_SEL50_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT51 (refer to Functional
      --  Description section for input/output assignment)
      SEL51          : XBARA_SEL25_SEL51_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL25_Register use record
      SEL50          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL51          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT52 (refer to Functional
   --  Description section for input/output assignment)
   type SEL26_SEL52_Field is
     (
      --  Logic zero
      SEL26_SEL52_Field_0,
      --  Logic one
      SEL26_SEL52_Field_1,
      --  XBARIN2 input pin
      SEL26_SEL52_Field_2,
      --  XBARIN3 input pin
      SEL26_SEL52_Field_3,
      --  XBARIN4 input pin
      SEL26_SEL52_Field_4,
      --  XBARIN5 input pin
      SEL26_SEL52_Field_5,
      --  XBARIN6 input pin
      SEL26_SEL52_Field_6,
      --  XBARIN7 input pin
      SEL26_SEL52_Field_7,
      --  XBARIN8 input pin
      SEL26_SEL52_Field_8,
      --  XBARIN9 input pin
      SEL26_SEL52_Field_9,
      --  XBARIN10 input pin
      SEL26_SEL52_Field_10,
      --  XBARIN11 input pin
      SEL26_SEL52_Field_11,
      --  CMP0 Output
      SEL26_SEL52_Field_12,
      --  CMP1 Output
      SEL26_SEL52_Field_13,
      --  CMP2 Output
      SEL26_SEL52_Field_14,
      --  CMP3 Output
      SEL26_SEL52_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL26_SEL52_Field_16,
      --  FTM0 counter init trigger
      SEL26_SEL52_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL26_SEL52_Field_18,
      --  FTM3 counter init trigger
      SEL26_SEL52_Field_19,
      --  PDB0 channel 0 output trigger
      SEL26_SEL52_Field_29,
      --  PDB1 channel 0 output trigger
      SEL26_SEL52_Field_31,
      --  ADC converter A end of scan
      SEL26_SEL52_Field_33,
      --  ADC converter B end of scan
      SEL26_SEL52_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL26_SEL52_Field_36,
      --  FTM1 counter init trigger
      SEL26_SEL52_Field_37,
      --  DMA channel 0 done
      SEL26_SEL52_Field_38,
      --  DMA channel 1 done
      SEL26_SEL52_Field_39,
      --  DMA channel 6 done
      SEL26_SEL52_Field_40,
      --  DMA channel 7 done
      SEL26_SEL52_Field_41,
      --  PIT trigger 0
      SEL26_SEL52_Field_42,
      --  PIT trigger 1
      SEL26_SEL52_Field_43,
      --  ENC0 compare trigger and position match
      SEL26_SEL52_Field_45,
      --  AOI output 0
      SEL26_SEL52_Field_46,
      --  AOI output 1
      SEL26_SEL52_Field_47,
      --  AOI output 2
      SEL26_SEL52_Field_48,
      --  AOI output 3
      SEL26_SEL52_Field_49,
      --  PIT trigger 2
      SEL26_SEL52_Field_50,
      --  PIT trigger 3
      SEL26_SEL52_Field_51)
     with Size => 6;
   for SEL26_SEL52_Field use
     (SEL26_SEL52_Field_0 => 0,
      SEL26_SEL52_Field_1 => 1,
      SEL26_SEL52_Field_2 => 2,
      SEL26_SEL52_Field_3 => 3,
      SEL26_SEL52_Field_4 => 4,
      SEL26_SEL52_Field_5 => 5,
      SEL26_SEL52_Field_6 => 6,
      SEL26_SEL52_Field_7 => 7,
      SEL26_SEL52_Field_8 => 8,
      SEL26_SEL52_Field_9 => 9,
      SEL26_SEL52_Field_10 => 10,
      SEL26_SEL52_Field_11 => 11,
      SEL26_SEL52_Field_12 => 12,
      SEL26_SEL52_Field_13 => 13,
      SEL26_SEL52_Field_14 => 14,
      SEL26_SEL52_Field_15 => 15,
      SEL26_SEL52_Field_16 => 16,
      SEL26_SEL52_Field_17 => 17,
      SEL26_SEL52_Field_18 => 18,
      SEL26_SEL52_Field_19 => 19,
      SEL26_SEL52_Field_29 => 29,
      SEL26_SEL52_Field_31 => 31,
      SEL26_SEL52_Field_33 => 33,
      SEL26_SEL52_Field_35 => 35,
      SEL26_SEL52_Field_36 => 36,
      SEL26_SEL52_Field_37 => 37,
      SEL26_SEL52_Field_38 => 38,
      SEL26_SEL52_Field_39 => 39,
      SEL26_SEL52_Field_40 => 40,
      SEL26_SEL52_Field_41 => 41,
      SEL26_SEL52_Field_42 => 42,
      SEL26_SEL52_Field_43 => 43,
      SEL26_SEL52_Field_45 => 45,
      SEL26_SEL52_Field_46 => 46,
      SEL26_SEL52_Field_47 => 47,
      SEL26_SEL52_Field_48 => 48,
      SEL26_SEL52_Field_49 => 49,
      SEL26_SEL52_Field_50 => 50,
      SEL26_SEL52_Field_51 => 51);

   subtype XBARA_SEL26_SEL53_Field is HAL.UInt6;

   --  Crossbar A Select Register 26
   type XBARA_SEL26_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT52 (refer to Functional
      --  Description section for input/output assignment)
      SEL52          : SEL26_SEL52_Field := NRF_SVD.XBARA.SEL26_SEL52_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT53 (refer to Functional
      --  Description section for input/output assignment)
      SEL53          : XBARA_SEL26_SEL53_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL26_Register use record
      SEL52          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL53          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL27_SEL54_Field is HAL.UInt6;
   subtype XBARA_SEL27_SEL55_Field is HAL.UInt6;

   --  Crossbar A Select Register 27
   type XBARA_SEL27_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT54 (refer to Functional
      --  Description section for input/output assignment)
      SEL54          : XBARA_SEL27_SEL54_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT55 (refer to Functional
      --  Description section for input/output assignment)
      SEL55          : XBARA_SEL27_SEL55_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL27_Register use record
      SEL54          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL55          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARA_SEL28_SEL56_Field is HAL.UInt6;
   subtype XBARA_SEL28_SEL57_Field is HAL.UInt6;

   --  Crossbar A Select Register 28
   type XBARA_SEL28_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT56 (refer to Functional
      --  Description section for input/output assignment)
      SEL56          : XBARA_SEL28_SEL56_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT57 (refer to Functional
      --  Description section for input/output assignment)
      SEL57          : XBARA_SEL28_SEL57_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL28_Register use record
      SEL56          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL57          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  Input (XBARA_INn) to be muxed to XBARA_OUT58 (refer to Functional
   --  Description section for input/output assignment)
   type SEL29_SEL58_Field is
     (
      --  Logic zero
      SEL29_SEL58_Field_0,
      --  Logic one
      SEL29_SEL58_Field_1,
      --  XBARIN2 input pin
      SEL29_SEL58_Field_2,
      --  XBARIN3 input pin
      SEL29_SEL58_Field_3,
      --  XBARIN4 input pin
      SEL29_SEL58_Field_4,
      --  XBARIN5 input pin
      SEL29_SEL58_Field_5,
      --  XBARIN6 input pin
      SEL29_SEL58_Field_6,
      --  XBARIN7 input pin
      SEL29_SEL58_Field_7,
      --  XBARIN8 input pin
      SEL29_SEL58_Field_8,
      --  XBARIN9 input pin
      SEL29_SEL58_Field_9,
      --  XBARIN10 input pin
      SEL29_SEL58_Field_10,
      --  XBARIN11 input pin
      SEL29_SEL58_Field_11,
      --  CMP0 Output
      SEL29_SEL58_Field_12,
      --  CMP1 Output
      SEL29_SEL58_Field_13,
      --  CMP2 Output
      SEL29_SEL58_Field_14,
      --  CMP3 Output
      SEL29_SEL58_Field_15,
      --  FTM0 all channels match trigger ORed together
      SEL29_SEL58_Field_16,
      --  FTM0 counter init trigger
      SEL29_SEL58_Field_17,
      --  FTM3 all channels match trigger ORed together
      SEL29_SEL58_Field_18,
      --  FTM3 counter init trigger
      SEL29_SEL58_Field_19,
      --  PDB0 channel 0 output trigger
      SEL29_SEL58_Field_29,
      --  PDB1 channel 0 output trigger
      SEL29_SEL58_Field_31,
      --  ADC converter A end of scan
      SEL29_SEL58_Field_33,
      --  ADC converter B end of scan
      SEL29_SEL58_Field_35,
      --  FTM1 all channels match trigger ORed together
      SEL29_SEL58_Field_36,
      --  FTM1 counter init trigger
      SEL29_SEL58_Field_37,
      --  DMA channel 0 done
      SEL29_SEL58_Field_38,
      --  DMA channel 1 done
      SEL29_SEL58_Field_39,
      --  DMA channel 6 done
      SEL29_SEL58_Field_40,
      --  DMA channel 7 done
      SEL29_SEL58_Field_41,
      --  PIT trigger 0
      SEL29_SEL58_Field_42,
      --  PIT trigger 1
      SEL29_SEL58_Field_43,
      --  ENC0 compare trigger and position match
      SEL29_SEL58_Field_45,
      --  AOI output 0
      SEL29_SEL58_Field_46,
      --  AOI output 1
      SEL29_SEL58_Field_47,
      --  AOI output 2
      SEL29_SEL58_Field_48,
      --  AOI output 3
      SEL29_SEL58_Field_49,
      --  PIT trigger 2
      SEL29_SEL58_Field_50,
      --  PIT trigger 3
      SEL29_SEL58_Field_51)
     with Size => 6;
   for SEL29_SEL58_Field use
     (SEL29_SEL58_Field_0 => 0,
      SEL29_SEL58_Field_1 => 1,
      SEL29_SEL58_Field_2 => 2,
      SEL29_SEL58_Field_3 => 3,
      SEL29_SEL58_Field_4 => 4,
      SEL29_SEL58_Field_5 => 5,
      SEL29_SEL58_Field_6 => 6,
      SEL29_SEL58_Field_7 => 7,
      SEL29_SEL58_Field_8 => 8,
      SEL29_SEL58_Field_9 => 9,
      SEL29_SEL58_Field_10 => 10,
      SEL29_SEL58_Field_11 => 11,
      SEL29_SEL58_Field_12 => 12,
      SEL29_SEL58_Field_13 => 13,
      SEL29_SEL58_Field_14 => 14,
      SEL29_SEL58_Field_15 => 15,
      SEL29_SEL58_Field_16 => 16,
      SEL29_SEL58_Field_17 => 17,
      SEL29_SEL58_Field_18 => 18,
      SEL29_SEL58_Field_19 => 19,
      SEL29_SEL58_Field_29 => 29,
      SEL29_SEL58_Field_31 => 31,
      SEL29_SEL58_Field_33 => 33,
      SEL29_SEL58_Field_35 => 35,
      SEL29_SEL58_Field_36 => 36,
      SEL29_SEL58_Field_37 => 37,
      SEL29_SEL58_Field_38 => 38,
      SEL29_SEL58_Field_39 => 39,
      SEL29_SEL58_Field_40 => 40,
      SEL29_SEL58_Field_41 => 41,
      SEL29_SEL58_Field_42 => 42,
      SEL29_SEL58_Field_43 => 43,
      SEL29_SEL58_Field_45 => 45,
      SEL29_SEL58_Field_46 => 46,
      SEL29_SEL58_Field_47 => 47,
      SEL29_SEL58_Field_48 => 48,
      SEL29_SEL58_Field_49 => 49,
      SEL29_SEL58_Field_50 => 50,
      SEL29_SEL58_Field_51 => 51);

   --  Crossbar A Select Register 29
   type XBARA_SEL29_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT58 (refer to Functional
      --  Description section for input/output assignment)
      SEL58         : SEL29_SEL58_Field := NRF_SVD.XBARA.SEL29_SEL58_Field_0;
      --  unspecified
      Reserved_6_15 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_SEL29_Register use record
      SEL58         at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   --  DMA Enable for XBAR_OUT0
   type CTRL0_DEN0_Field is
     (
      --  DMA disabled
      CTRL0_DEN0_Field_0,
      --  DMA enabled
      CTRL0_DEN0_Field_1)
     with Size => 1;
   for CTRL0_DEN0_Field use
     (CTRL0_DEN0_Field_0 => 0,
      CTRL0_DEN0_Field_1 => 1);

   --  Interrupt Enable for XBAR_OUT0
   type CTRL0_IEN0_Field is
     (
      --  Interrupt disabled
      CTRL0_IEN0_Field_0,
      --  Interrupt enabled
      CTRL0_IEN0_Field_1)
     with Size => 1;
   for CTRL0_IEN0_Field use
     (CTRL0_IEN0_Field_0 => 0,
      CTRL0_IEN0_Field_1 => 1);

   --  Active edge for edge detection on XBAR_OUT0
   type CTRL0_EDGE0_Field is
     (
      --  STS0 never asserts
      CTRL0_EDGE0_Field_00,
      --  STS0 asserts on rising edges of XBAR_OUT0
      CTRL0_EDGE0_Field_01,
      --  STS0 asserts on falling edges of XBAR_OUT0
      CTRL0_EDGE0_Field_10,
      --  STS0 asserts on rising and falling edges of XBAR_OUT0
      CTRL0_EDGE0_Field_11)
     with Size => 2;
   for CTRL0_EDGE0_Field use
     (CTRL0_EDGE0_Field_00 => 0,
      CTRL0_EDGE0_Field_01 => 1,
      CTRL0_EDGE0_Field_10 => 2,
      CTRL0_EDGE0_Field_11 => 3);

   --  Edge detection status for XBAR_OUT0
   type CTRL0_STS0_Field is
     (
      --  Active edge not yet detected on XBAR_OUT0
      CTRL0_STS0_Field_0,
      --  Active edge detected on XBAR_OUT0
      CTRL0_STS0_Field_1)
     with Size => 1;
   for CTRL0_STS0_Field use
     (CTRL0_STS0_Field_0 => 0,
      CTRL0_STS0_Field_1 => 1);

   --  DMA Enable for XBAR_OUT1
   type CTRL0_DEN1_Field is
     (
      --  DMA disabled
      CTRL0_DEN1_Field_0,
      --  DMA enabled
      CTRL0_DEN1_Field_1)
     with Size => 1;
   for CTRL0_DEN1_Field use
     (CTRL0_DEN1_Field_0 => 0,
      CTRL0_DEN1_Field_1 => 1);

   --  Interrupt Enable for XBAR_OUT1
   type CTRL0_IEN1_Field is
     (
      --  Interrupt disabled
      CTRL0_IEN1_Field_0,
      --  Interrupt enabled
      CTRL0_IEN1_Field_1)
     with Size => 1;
   for CTRL0_IEN1_Field use
     (CTRL0_IEN1_Field_0 => 0,
      CTRL0_IEN1_Field_1 => 1);

   --  Active edge for edge detection on XBAR_OUT1
   type CTRL0_EDGE1_Field is
     (
      --  STS1 never asserts
      CTRL0_EDGE1_Field_00,
      --  STS1 asserts on rising edges of XBAR_OUT1
      CTRL0_EDGE1_Field_01,
      --  STS1 asserts on falling edges of XBAR_OUT1
      CTRL0_EDGE1_Field_10,
      --  STS1 asserts on rising and falling edges of XBAR_OUT1
      CTRL0_EDGE1_Field_11)
     with Size => 2;
   for CTRL0_EDGE1_Field use
     (CTRL0_EDGE1_Field_00 => 0,
      CTRL0_EDGE1_Field_01 => 1,
      CTRL0_EDGE1_Field_10 => 2,
      CTRL0_EDGE1_Field_11 => 3);

   --  Edge detection status for XBAR_OUT1
   type CTRL0_STS1_Field is
     (
      --  Active edge not yet detected on XBAR_OUT1
      CTRL0_STS1_Field_0,
      --  Active edge detected on XBAR_OUT1
      CTRL0_STS1_Field_1)
     with Size => 1;
   for CTRL0_STS1_Field use
     (CTRL0_STS1_Field_0 => 0,
      CTRL0_STS1_Field_1 => 1);

   --  Crossbar A Control Register 0
   type XBARA_CTRL0_Register is record
      --  DMA Enable for XBAR_OUT0
      DEN0           : CTRL0_DEN0_Field := NRF_SVD.XBARA.CTRL0_DEN0_Field_0;
      --  Interrupt Enable for XBAR_OUT0
      IEN0           : CTRL0_IEN0_Field := NRF_SVD.XBARA.CTRL0_IEN0_Field_0;
      --  Active edge for edge detection on XBAR_OUT0
      EDGE0          : CTRL0_EDGE0_Field :=
                        NRF_SVD.XBARA.CTRL0_EDGE0_Field_00;
      --  Edge detection status for XBAR_OUT0
      STS0           : CTRL0_STS0_Field := NRF_SVD.XBARA.CTRL0_STS0_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA Enable for XBAR_OUT1
      DEN1           : CTRL0_DEN1_Field := NRF_SVD.XBARA.CTRL0_DEN1_Field_0;
      --  Interrupt Enable for XBAR_OUT1
      IEN1           : CTRL0_IEN1_Field := NRF_SVD.XBARA.CTRL0_IEN1_Field_0;
      --  Active edge for edge detection on XBAR_OUT1
      EDGE1          : CTRL0_EDGE1_Field :=
                        NRF_SVD.XBARA.CTRL0_EDGE1_Field_00;
      --  Edge detection status for XBAR_OUT1
      STS1           : CTRL0_STS1_Field := NRF_SVD.XBARA.CTRL0_STS1_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_CTRL0_Register use record
      DEN0           at 0 range 0 .. 0;
      IEN0           at 0 range 1 .. 1;
      EDGE0          at 0 range 2 .. 3;
      STS0           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DEN1           at 0 range 8 .. 8;
      IEN1           at 0 range 9 .. 9;
      EDGE1          at 0 range 10 .. 11;
      STS1           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   --  DMA Enable for XBAR_OUT2
   type CTRL1_DEN2_Field is
     (
      --  DMA disabled
      CTRL1_DEN2_Field_0,
      --  DMA enabled
      CTRL1_DEN2_Field_1)
     with Size => 1;
   for CTRL1_DEN2_Field use
     (CTRL1_DEN2_Field_0 => 0,
      CTRL1_DEN2_Field_1 => 1);

   --  Interrupt Enable for XBAR_OUT2
   type CTRL1_IEN2_Field is
     (
      --  Interrupt disabled
      CTRL1_IEN2_Field_0,
      --  Interrupt enabled
      CTRL1_IEN2_Field_1)
     with Size => 1;
   for CTRL1_IEN2_Field use
     (CTRL1_IEN2_Field_0 => 0,
      CTRL1_IEN2_Field_1 => 1);

   --  Active edge for edge detection on XBAR_OUT2
   type CTRL1_EDGE2_Field is
     (
      --  STS2 never asserts
      CTRL1_EDGE2_Field_00,
      --  STS2 asserts on rising edges of XBAR_OUT2
      CTRL1_EDGE2_Field_01,
      --  STS2 asserts on falling edges of XBAR_OUT2
      CTRL1_EDGE2_Field_10,
      --  STS2 asserts on rising and falling edges of XBAR_OUT2
      CTRL1_EDGE2_Field_11)
     with Size => 2;
   for CTRL1_EDGE2_Field use
     (CTRL1_EDGE2_Field_00 => 0,
      CTRL1_EDGE2_Field_01 => 1,
      CTRL1_EDGE2_Field_10 => 2,
      CTRL1_EDGE2_Field_11 => 3);

   --  Edge detection status for XBAR_OUT2
   type CTRL1_STS2_Field is
     (
      --  Active edge not yet detected on XBAR_OUT2
      CTRL1_STS2_Field_0,
      --  Active edge detected on XBAR_OUT2
      CTRL1_STS2_Field_1)
     with Size => 1;
   for CTRL1_STS2_Field use
     (CTRL1_STS2_Field_0 => 0,
      CTRL1_STS2_Field_1 => 1);

   --  DMA Enable for XBAR_OUT3
   type CTRL1_DEN3_Field is
     (
      --  DMA disabled
      CTRL1_DEN3_Field_0,
      --  DMA enabled
      CTRL1_DEN3_Field_1)
     with Size => 1;
   for CTRL1_DEN3_Field use
     (CTRL1_DEN3_Field_0 => 0,
      CTRL1_DEN3_Field_1 => 1);

   --  Interrupt Enable for XBAR_OUT3
   type CTRL1_IEN3_Field is
     (
      --  Interrupt disabled
      CTRL1_IEN3_Field_0,
      --  Interrupt enabled
      CTRL1_IEN3_Field_1)
     with Size => 1;
   for CTRL1_IEN3_Field use
     (CTRL1_IEN3_Field_0 => 0,
      CTRL1_IEN3_Field_1 => 1);

   --  Active edge for edge detection on XBAR_OUT3
   type CTRL1_EDGE3_Field is
     (
      --  STS3 never asserts
      CTRL1_EDGE3_Field_00,
      --  STS3 asserts on rising edges of XBAR_OUT3
      CTRL1_EDGE3_Field_01,
      --  STS3 asserts on falling edges of XBAR_OUT3
      CTRL1_EDGE3_Field_10,
      --  STS3 asserts on rising and falling edges of XBAR_OUT3
      CTRL1_EDGE3_Field_11)
     with Size => 2;
   for CTRL1_EDGE3_Field use
     (CTRL1_EDGE3_Field_00 => 0,
      CTRL1_EDGE3_Field_01 => 1,
      CTRL1_EDGE3_Field_10 => 2,
      CTRL1_EDGE3_Field_11 => 3);

   --  Edge detection status for XBAR_OUT3
   type CTRL1_STS3_Field is
     (
      --  Active edge not yet detected on XBAR_OUT3
      CTRL1_STS3_Field_0,
      --  Active edge detected on XBAR_OUT3
      CTRL1_STS3_Field_1)
     with Size => 1;
   for CTRL1_STS3_Field use
     (CTRL1_STS3_Field_0 => 0,
      CTRL1_STS3_Field_1 => 1);

   --  Crossbar A Control Register 1
   type XBARA_CTRL1_Register is record
      --  DMA Enable for XBAR_OUT2
      DEN2           : CTRL1_DEN2_Field := NRF_SVD.XBARA.CTRL1_DEN2_Field_0;
      --  Interrupt Enable for XBAR_OUT2
      IEN2           : CTRL1_IEN2_Field := NRF_SVD.XBARA.CTRL1_IEN2_Field_0;
      --  Active edge for edge detection on XBAR_OUT2
      EDGE2          : CTRL1_EDGE2_Field :=
                        NRF_SVD.XBARA.CTRL1_EDGE2_Field_00;
      --  Edge detection status for XBAR_OUT2
      STS2           : CTRL1_STS2_Field := NRF_SVD.XBARA.CTRL1_STS2_Field_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA Enable for XBAR_OUT3
      DEN3           : CTRL1_DEN3_Field := NRF_SVD.XBARA.CTRL1_DEN3_Field_0;
      --  Interrupt Enable for XBAR_OUT3
      IEN3           : CTRL1_IEN3_Field := NRF_SVD.XBARA.CTRL1_IEN3_Field_0;
      --  Active edge for edge detection on XBAR_OUT3
      EDGE3          : CTRL1_EDGE3_Field :=
                        NRF_SVD.XBARA.CTRL1_EDGE3_Field_00;
      --  Edge detection status for XBAR_OUT3
      STS3           : CTRL1_STS3_Field := NRF_SVD.XBARA.CTRL1_STS3_Field_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA_CTRL1_Register use record
      DEN2           at 0 range 0 .. 0;
      IEN2           at 0 range 1 .. 1;
      EDGE2          at 0 range 2 .. 3;
      STS2           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DEN3           at 0 range 8 .. 8;
      IEN3           at 0 range 9 .. 9;
      EDGE3          at 0 range 10 .. 11;
      STS3           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Crossbar Switch
   type XBARA_Peripheral is record
      --  Crossbar A Select Register 0
      SEL0  : aliased XBARA_SEL0_Register;
      --  Crossbar A Select Register 1
      SEL1  : aliased XBARA_SEL1_Register;
      --  Crossbar A Select Register 2
      SEL2  : aliased XBARA_SEL2_Register;
      --  Crossbar A Select Register 3
      SEL3  : aliased XBARA_SEL3_Register;
      --  Crossbar A Select Register 4
      SEL4  : aliased XBARA_SEL4_Register;
      --  Crossbar A Select Register 5
      SEL5  : aliased XBARA_SEL5_Register;
      --  Crossbar A Select Register 6
      SEL6  : aliased XBARA_SEL6_Register;
      --  Crossbar A Select Register 7
      SEL7  : aliased XBARA_SEL7_Register;
      --  Crossbar A Select Register 8
      SEL8  : aliased XBARA_SEL8_Register;
      --  Crossbar A Select Register 9
      SEL9  : aliased XBARA_SEL9_Register;
      --  Crossbar A Select Register 10
      SEL10 : aliased XBARA_SEL10_Register;
      --  Crossbar A Select Register 11
      SEL11 : aliased XBARA_SEL11_Register;
      --  Crossbar A Select Register 12
      SEL12 : aliased XBARA_SEL12_Register;
      --  Crossbar A Select Register 13
      SEL13 : aliased XBARA_SEL13_Register;
      --  Crossbar A Select Register 14
      SEL14 : aliased XBARA_SEL14_Register;
      --  Crossbar A Select Register 15
      SEL15 : aliased XBARA_SEL15_Register;
      --  Crossbar A Select Register 16
      SEL16 : aliased XBARA_SEL16_Register;
      --  Crossbar A Select Register 17
      SEL17 : aliased XBARA_SEL17_Register;
      --  Crossbar A Select Register 18
      SEL18 : aliased XBARA_SEL18_Register;
      --  Crossbar A Select Register 19
      SEL19 : aliased XBARA_SEL19_Register;
      --  Crossbar A Select Register 20
      SEL20 : aliased XBARA_SEL20_Register;
      --  Crossbar A Select Register 21
      SEL21 : aliased XBARA_SEL21_Register;
      --  Crossbar A Select Register 22
      SEL22 : aliased XBARA_SEL22_Register;
      --  Crossbar A Select Register 23
      SEL23 : aliased XBARA_SEL23_Register;
      --  Crossbar A Select Register 24
      SEL24 : aliased XBARA_SEL24_Register;
      --  Crossbar A Select Register 25
      SEL25 : aliased XBARA_SEL25_Register;
      --  Crossbar A Select Register 26
      SEL26 : aliased XBARA_SEL26_Register;
      --  Crossbar A Select Register 27
      SEL27 : aliased XBARA_SEL27_Register;
      --  Crossbar A Select Register 28
      SEL28 : aliased XBARA_SEL28_Register;
      --  Crossbar A Select Register 29
      SEL29 : aliased XBARA_SEL29_Register;
      --  Crossbar A Control Register 0
      CTRL0 : aliased XBARA_CTRL0_Register;
      --  Crossbar A Control Register 1
      CTRL1 : aliased XBARA_CTRL1_Register;
   end record
     with Volatile;

   for XBARA_Peripheral use record
      SEL0  at 16#0# range 0 .. 15;
      SEL1  at 16#2# range 0 .. 15;
      SEL2  at 16#4# range 0 .. 15;
      SEL3  at 16#6# range 0 .. 15;
      SEL4  at 16#8# range 0 .. 15;
      SEL5  at 16#A# range 0 .. 15;
      SEL6  at 16#C# range 0 .. 15;
      SEL7  at 16#E# range 0 .. 15;
      SEL8  at 16#10# range 0 .. 15;
      SEL9  at 16#12# range 0 .. 15;
      SEL10 at 16#14# range 0 .. 15;
      SEL11 at 16#16# range 0 .. 15;
      SEL12 at 16#18# range 0 .. 15;
      SEL13 at 16#1A# range 0 .. 15;
      SEL14 at 16#1C# range 0 .. 15;
      SEL15 at 16#1E# range 0 .. 15;
      SEL16 at 16#20# range 0 .. 15;
      SEL17 at 16#22# range 0 .. 15;
      SEL18 at 16#24# range 0 .. 15;
      SEL19 at 16#26# range 0 .. 15;
      SEL20 at 16#28# range 0 .. 15;
      SEL21 at 16#2A# range 0 .. 15;
      SEL22 at 16#2C# range 0 .. 15;
      SEL23 at 16#2E# range 0 .. 15;
      SEL24 at 16#30# range 0 .. 15;
      SEL25 at 16#32# range 0 .. 15;
      SEL26 at 16#34# range 0 .. 15;
      SEL27 at 16#36# range 0 .. 15;
      SEL28 at 16#38# range 0 .. 15;
      SEL29 at 16#3A# range 0 .. 15;
      CTRL0 at 16#3C# range 0 .. 15;
      CTRL1 at 16#3E# range 0 .. 15;
   end record;

   --  Crossbar Switch
   XBARA_Periph : aliased XBARA_Peripheral
     with Import, Address => XBARA_Base;

end NRF_SVD.XBARA;
