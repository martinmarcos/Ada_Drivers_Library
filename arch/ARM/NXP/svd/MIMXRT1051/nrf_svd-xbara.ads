--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1051.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.XBARA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype XBARA1_SEL0_SEL0_Field is HAL.UInt7;
   subtype XBARA1_SEL0_SEL1_Field is HAL.UInt7;

   --  Crossbar A Select Register 0
   type XBARA1_SEL0_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT0 (refer to Functional
      --  Description section for input/output assignment)
      SEL0           : XBARA1_SEL0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT1 (refer to Functional
      --  Description section for input/output assignment)
      SEL1           : XBARA1_SEL0_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL0_Register use record
      SEL0           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL1           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL1_SEL2_Field is HAL.UInt7;
   subtype XBARA1_SEL1_SEL3_Field is HAL.UInt7;

   --  Crossbar A Select Register 1
   type XBARA1_SEL1_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT2 (refer to Functional
      --  Description section for input/output assignment)
      SEL2           : XBARA1_SEL1_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT3 (refer to Functional
      --  Description section for input/output assignment)
      SEL3           : XBARA1_SEL1_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL1_Register use record
      SEL2           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL3           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL2_SEL4_Field is HAL.UInt7;
   subtype XBARA1_SEL2_SEL5_Field is HAL.UInt7;

   --  Crossbar A Select Register 2
   type XBARA1_SEL2_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT4 (refer to Functional
      --  Description section for input/output assignment)
      SEL4           : XBARA1_SEL2_SEL4_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT5 (refer to Functional
      --  Description section for input/output assignment)
      SEL5           : XBARA1_SEL2_SEL5_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL2_Register use record
      SEL4           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL5           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL3_SEL6_Field is HAL.UInt7;
   subtype XBARA1_SEL3_SEL7_Field is HAL.UInt7;

   --  Crossbar A Select Register 3
   type XBARA1_SEL3_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT6 (refer to Functional
      --  Description section for input/output assignment)
      SEL6           : XBARA1_SEL3_SEL6_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT7 (refer to Functional
      --  Description section for input/output assignment)
      SEL7           : XBARA1_SEL3_SEL7_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL3_Register use record
      SEL6           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL7           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL4_SEL8_Field is HAL.UInt7;
   subtype XBARA1_SEL4_SEL9_Field is HAL.UInt7;

   --  Crossbar A Select Register 4
   type XBARA1_SEL4_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT8 (refer to Functional
      --  Description section for input/output assignment)
      SEL8           : XBARA1_SEL4_SEL8_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT9 (refer to Functional
      --  Description section for input/output assignment)
      SEL9           : XBARA1_SEL4_SEL9_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL4_Register use record
      SEL8           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL9           at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL5_SEL10_Field is HAL.UInt7;
   subtype XBARA1_SEL5_SEL11_Field is HAL.UInt7;

   --  Crossbar A Select Register 5
   type XBARA1_SEL5_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT10 (refer to Functional
      --  Description section for input/output assignment)
      SEL10          : XBARA1_SEL5_SEL10_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT11 (refer to Functional
      --  Description section for input/output assignment)
      SEL11          : XBARA1_SEL5_SEL11_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL5_Register use record
      SEL10          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL11          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL6_SEL12_Field is HAL.UInt7;
   subtype XBARA1_SEL6_SEL13_Field is HAL.UInt7;

   --  Crossbar A Select Register 6
   type XBARA1_SEL6_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT12 (refer to Functional
      --  Description section for input/output assignment)
      SEL12          : XBARA1_SEL6_SEL12_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT13 (refer to Functional
      --  Description section for input/output assignment)
      SEL13          : XBARA1_SEL6_SEL13_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL6_Register use record
      SEL12          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL13          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL7_SEL14_Field is HAL.UInt7;
   subtype XBARA1_SEL7_SEL15_Field is HAL.UInt7;

   --  Crossbar A Select Register 7
   type XBARA1_SEL7_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT14 (refer to Functional
      --  Description section for input/output assignment)
      SEL14          : XBARA1_SEL7_SEL14_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT15 (refer to Functional
      --  Description section for input/output assignment)
      SEL15          : XBARA1_SEL7_SEL15_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL7_Register use record
      SEL14          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL15          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL8_SEL16_Field is HAL.UInt7;
   subtype XBARA1_SEL8_SEL17_Field is HAL.UInt7;

   --  Crossbar A Select Register 8
   type XBARA1_SEL8_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT16 (refer to Functional
      --  Description section for input/output assignment)
      SEL16          : XBARA1_SEL8_SEL16_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT17 (refer to Functional
      --  Description section for input/output assignment)
      SEL17          : XBARA1_SEL8_SEL17_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL8_Register use record
      SEL16          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL17          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL9_SEL18_Field is HAL.UInt7;
   subtype XBARA1_SEL9_SEL19_Field is HAL.UInt7;

   --  Crossbar A Select Register 9
   type XBARA1_SEL9_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT18 (refer to Functional
      --  Description section for input/output assignment)
      SEL18          : XBARA1_SEL9_SEL18_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT19 (refer to Functional
      --  Description section for input/output assignment)
      SEL19          : XBARA1_SEL9_SEL19_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL9_Register use record
      SEL18          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL19          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL10_SEL20_Field is HAL.UInt7;
   subtype XBARA1_SEL10_SEL21_Field is HAL.UInt7;

   --  Crossbar A Select Register 10
   type XBARA1_SEL10_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT20 (refer to Functional
      --  Description section for input/output assignment)
      SEL20          : XBARA1_SEL10_SEL20_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT21 (refer to Functional
      --  Description section for input/output assignment)
      SEL21          : XBARA1_SEL10_SEL21_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL10_Register use record
      SEL20          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL21          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL11_SEL22_Field is HAL.UInt7;
   subtype XBARA1_SEL11_SEL23_Field is HAL.UInt7;

   --  Crossbar A Select Register 11
   type XBARA1_SEL11_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT22 (refer to Functional
      --  Description section for input/output assignment)
      SEL22          : XBARA1_SEL11_SEL22_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT23 (refer to Functional
      --  Description section for input/output assignment)
      SEL23          : XBARA1_SEL11_SEL23_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL11_Register use record
      SEL22          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL23          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL12_SEL24_Field is HAL.UInt7;
   subtype XBARA1_SEL12_SEL25_Field is HAL.UInt7;

   --  Crossbar A Select Register 12
   type XBARA1_SEL12_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT24 (refer to Functional
      --  Description section for input/output assignment)
      SEL24          : XBARA1_SEL12_SEL24_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT25 (refer to Functional
      --  Description section for input/output assignment)
      SEL25          : XBARA1_SEL12_SEL25_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL12_Register use record
      SEL24          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL25          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL13_SEL26_Field is HAL.UInt7;
   subtype XBARA1_SEL13_SEL27_Field is HAL.UInt7;

   --  Crossbar A Select Register 13
   type XBARA1_SEL13_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT26 (refer to Functional
      --  Description section for input/output assignment)
      SEL26          : XBARA1_SEL13_SEL26_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT27 (refer to Functional
      --  Description section for input/output assignment)
      SEL27          : XBARA1_SEL13_SEL27_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL13_Register use record
      SEL26          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL27          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL14_SEL28_Field is HAL.UInt7;
   subtype XBARA1_SEL14_SEL29_Field is HAL.UInt7;

   --  Crossbar A Select Register 14
   type XBARA1_SEL14_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT28 (refer to Functional
      --  Description section for input/output assignment)
      SEL28          : XBARA1_SEL14_SEL28_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT29 (refer to Functional
      --  Description section for input/output assignment)
      SEL29          : XBARA1_SEL14_SEL29_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL14_Register use record
      SEL28          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL29          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL15_SEL30_Field is HAL.UInt7;
   subtype XBARA1_SEL15_SEL31_Field is HAL.UInt7;

   --  Crossbar A Select Register 15
   type XBARA1_SEL15_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT30 (refer to Functional
      --  Description section for input/output assignment)
      SEL30          : XBARA1_SEL15_SEL30_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT31 (refer to Functional
      --  Description section for input/output assignment)
      SEL31          : XBARA1_SEL15_SEL31_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL15_Register use record
      SEL30          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL31          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL16_SEL32_Field is HAL.UInt7;
   subtype XBARA1_SEL16_SEL33_Field is HAL.UInt7;

   --  Crossbar A Select Register 16
   type XBARA1_SEL16_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT32 (refer to Functional
      --  Description section for input/output assignment)
      SEL32          : XBARA1_SEL16_SEL32_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT33 (refer to Functional
      --  Description section for input/output assignment)
      SEL33          : XBARA1_SEL16_SEL33_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL16_Register use record
      SEL32          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL33          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL17_SEL34_Field is HAL.UInt7;
   subtype XBARA1_SEL17_SEL35_Field is HAL.UInt7;

   --  Crossbar A Select Register 17
   type XBARA1_SEL17_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT34 (refer to Functional
      --  Description section for input/output assignment)
      SEL34          : XBARA1_SEL17_SEL34_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT35 (refer to Functional
      --  Description section for input/output assignment)
      SEL35          : XBARA1_SEL17_SEL35_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL17_Register use record
      SEL34          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL35          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL18_SEL36_Field is HAL.UInt7;
   subtype XBARA1_SEL18_SEL37_Field is HAL.UInt7;

   --  Crossbar A Select Register 18
   type XBARA1_SEL18_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT36 (refer to Functional
      --  Description section for input/output assignment)
      SEL36          : XBARA1_SEL18_SEL36_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT37 (refer to Functional
      --  Description section for input/output assignment)
      SEL37          : XBARA1_SEL18_SEL37_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL18_Register use record
      SEL36          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL37          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL19_SEL38_Field is HAL.UInt7;
   subtype XBARA1_SEL19_SEL39_Field is HAL.UInt7;

   --  Crossbar A Select Register 19
   type XBARA1_SEL19_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT38 (refer to Functional
      --  Description section for input/output assignment)
      SEL38          : XBARA1_SEL19_SEL38_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT39 (refer to Functional
      --  Description section for input/output assignment)
      SEL39          : XBARA1_SEL19_SEL39_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL19_Register use record
      SEL38          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL39          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL20_SEL40_Field is HAL.UInt7;
   subtype XBARA1_SEL20_SEL41_Field is HAL.UInt7;

   --  Crossbar A Select Register 20
   type XBARA1_SEL20_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT40 (refer to Functional
      --  Description section for input/output assignment)
      SEL40          : XBARA1_SEL20_SEL40_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT41 (refer to Functional
      --  Description section for input/output assignment)
      SEL41          : XBARA1_SEL20_SEL41_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL20_Register use record
      SEL40          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL41          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL21_SEL42_Field is HAL.UInt7;
   subtype XBARA1_SEL21_SEL43_Field is HAL.UInt7;

   --  Crossbar A Select Register 21
   type XBARA1_SEL21_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT42 (refer to Functional
      --  Description section for input/output assignment)
      SEL42          : XBARA1_SEL21_SEL42_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT43 (refer to Functional
      --  Description section for input/output assignment)
      SEL43          : XBARA1_SEL21_SEL43_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL21_Register use record
      SEL42          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL43          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL22_SEL44_Field is HAL.UInt7;
   subtype XBARA1_SEL22_SEL45_Field is HAL.UInt7;

   --  Crossbar A Select Register 22
   type XBARA1_SEL22_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT44 (refer to Functional
      --  Description section for input/output assignment)
      SEL44          : XBARA1_SEL22_SEL44_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT45 (refer to Functional
      --  Description section for input/output assignment)
      SEL45          : XBARA1_SEL22_SEL45_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL22_Register use record
      SEL44          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL45          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL23_SEL46_Field is HAL.UInt7;
   subtype XBARA1_SEL23_SEL47_Field is HAL.UInt7;

   --  Crossbar A Select Register 23
   type XBARA1_SEL23_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT46 (refer to Functional
      --  Description section for input/output assignment)
      SEL46          : XBARA1_SEL23_SEL46_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT47 (refer to Functional
      --  Description section for input/output assignment)
      SEL47          : XBARA1_SEL23_SEL47_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL23_Register use record
      SEL46          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL47          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL24_SEL48_Field is HAL.UInt7;
   subtype XBARA1_SEL24_SEL49_Field is HAL.UInt7;

   --  Crossbar A Select Register 24
   type XBARA1_SEL24_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT48 (refer to Functional
      --  Description section for input/output assignment)
      SEL48          : XBARA1_SEL24_SEL48_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT49 (refer to Functional
      --  Description section for input/output assignment)
      SEL49          : XBARA1_SEL24_SEL49_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL24_Register use record
      SEL48          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL49          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL25_SEL50_Field is HAL.UInt7;
   subtype XBARA1_SEL25_SEL51_Field is HAL.UInt7;

   --  Crossbar A Select Register 25
   type XBARA1_SEL25_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT50 (refer to Functional
      --  Description section for input/output assignment)
      SEL50          : XBARA1_SEL25_SEL50_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT51 (refer to Functional
      --  Description section for input/output assignment)
      SEL51          : XBARA1_SEL25_SEL51_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL25_Register use record
      SEL50          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL51          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL26_SEL52_Field is HAL.UInt7;
   subtype XBARA1_SEL26_SEL53_Field is HAL.UInt7;

   --  Crossbar A Select Register 26
   type XBARA1_SEL26_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT52 (refer to Functional
      --  Description section for input/output assignment)
      SEL52          : XBARA1_SEL26_SEL52_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT53 (refer to Functional
      --  Description section for input/output assignment)
      SEL53          : XBARA1_SEL26_SEL53_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL26_Register use record
      SEL52          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL53          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL27_SEL54_Field is HAL.UInt7;
   subtype XBARA1_SEL27_SEL55_Field is HAL.UInt7;

   --  Crossbar A Select Register 27
   type XBARA1_SEL27_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT54 (refer to Functional
      --  Description section for input/output assignment)
      SEL54          : XBARA1_SEL27_SEL54_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT55 (refer to Functional
      --  Description section for input/output assignment)
      SEL55          : XBARA1_SEL27_SEL55_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL27_Register use record
      SEL54          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL55          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL28_SEL56_Field is HAL.UInt7;
   subtype XBARA1_SEL28_SEL57_Field is HAL.UInt7;

   --  Crossbar A Select Register 28
   type XBARA1_SEL28_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT56 (refer to Functional
      --  Description section for input/output assignment)
      SEL56          : XBARA1_SEL28_SEL56_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT57 (refer to Functional
      --  Description section for input/output assignment)
      SEL57          : XBARA1_SEL28_SEL57_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL28_Register use record
      SEL56          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL57          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL29_SEL58_Field is HAL.UInt7;
   subtype XBARA1_SEL29_SEL59_Field is HAL.UInt7;

   --  Crossbar A Select Register 29
   type XBARA1_SEL29_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT58 (refer to Functional
      --  Description section for input/output assignment)
      SEL58          : XBARA1_SEL29_SEL58_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT59 (refer to Functional
      --  Description section for input/output assignment)
      SEL59          : XBARA1_SEL29_SEL59_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL29_Register use record
      SEL58          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL59          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL30_SEL60_Field is HAL.UInt7;
   subtype XBARA1_SEL30_SEL61_Field is HAL.UInt7;

   --  Crossbar A Select Register 30
   type XBARA1_SEL30_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT60 (refer to Functional
      --  Description section for input/output assignment)
      SEL60          : XBARA1_SEL30_SEL60_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT61 (refer to Functional
      --  Description section for input/output assignment)
      SEL61          : XBARA1_SEL30_SEL61_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL30_Register use record
      SEL60          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL61          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL31_SEL62_Field is HAL.UInt7;
   subtype XBARA1_SEL31_SEL63_Field is HAL.UInt7;

   --  Crossbar A Select Register 31
   type XBARA1_SEL31_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT62 (refer to Functional
      --  Description section for input/output assignment)
      SEL62          : XBARA1_SEL31_SEL62_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT63 (refer to Functional
      --  Description section for input/output assignment)
      SEL63          : XBARA1_SEL31_SEL63_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL31_Register use record
      SEL62          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL63          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL32_SEL64_Field is HAL.UInt7;
   subtype XBARA1_SEL32_SEL65_Field is HAL.UInt7;

   --  Crossbar A Select Register 32
   type XBARA1_SEL32_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT64 (refer to Functional
      --  Description section for input/output assignment)
      SEL64          : XBARA1_SEL32_SEL64_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT65 (refer to Functional
      --  Description section for input/output assignment)
      SEL65          : XBARA1_SEL32_SEL65_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL32_Register use record
      SEL64          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL65          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL33_SEL66_Field is HAL.UInt7;
   subtype XBARA1_SEL33_SEL67_Field is HAL.UInt7;

   --  Crossbar A Select Register 33
   type XBARA1_SEL33_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT66 (refer to Functional
      --  Description section for input/output assignment)
      SEL66          : XBARA1_SEL33_SEL66_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT67 (refer to Functional
      --  Description section for input/output assignment)
      SEL67          : XBARA1_SEL33_SEL67_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL33_Register use record
      SEL66          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL67          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL34_SEL68_Field is HAL.UInt7;
   subtype XBARA1_SEL34_SEL69_Field is HAL.UInt7;

   --  Crossbar A Select Register 34
   type XBARA1_SEL34_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT68 (refer to Functional
      --  Description section for input/output assignment)
      SEL68          : XBARA1_SEL34_SEL68_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT69 (refer to Functional
      --  Description section for input/output assignment)
      SEL69          : XBARA1_SEL34_SEL69_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL34_Register use record
      SEL68          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL69          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL35_SEL70_Field is HAL.UInt7;
   subtype XBARA1_SEL35_SEL71_Field is HAL.UInt7;

   --  Crossbar A Select Register 35
   type XBARA1_SEL35_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT70 (refer to Functional
      --  Description section for input/output assignment)
      SEL70          : XBARA1_SEL35_SEL70_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT71 (refer to Functional
      --  Description section for input/output assignment)
      SEL71          : XBARA1_SEL35_SEL71_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL35_Register use record
      SEL70          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL71          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL36_SEL72_Field is HAL.UInt7;
   subtype XBARA1_SEL36_SEL73_Field is HAL.UInt7;

   --  Crossbar A Select Register 36
   type XBARA1_SEL36_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT72 (refer to Functional
      --  Description section for input/output assignment)
      SEL72          : XBARA1_SEL36_SEL72_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT73 (refer to Functional
      --  Description section for input/output assignment)
      SEL73          : XBARA1_SEL36_SEL73_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL36_Register use record
      SEL72          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL73          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL37_SEL74_Field is HAL.UInt7;
   subtype XBARA1_SEL37_SEL75_Field is HAL.UInt7;

   --  Crossbar A Select Register 37
   type XBARA1_SEL37_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT74 (refer to Functional
      --  Description section for input/output assignment)
      SEL74          : XBARA1_SEL37_SEL74_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT75 (refer to Functional
      --  Description section for input/output assignment)
      SEL75          : XBARA1_SEL37_SEL75_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL37_Register use record
      SEL74          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL75          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL38_SEL76_Field is HAL.UInt7;
   subtype XBARA1_SEL38_SEL77_Field is HAL.UInt7;

   --  Crossbar A Select Register 38
   type XBARA1_SEL38_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT76 (refer to Functional
      --  Description section for input/output assignment)
      SEL76          : XBARA1_SEL38_SEL76_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT77 (refer to Functional
      --  Description section for input/output assignment)
      SEL77          : XBARA1_SEL38_SEL77_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL38_Register use record
      SEL76          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL77          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL39_SEL78_Field is HAL.UInt7;
   subtype XBARA1_SEL39_SEL79_Field is HAL.UInt7;

   --  Crossbar A Select Register 39
   type XBARA1_SEL39_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT78 (refer to Functional
      --  Description section for input/output assignment)
      SEL78          : XBARA1_SEL39_SEL78_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT79 (refer to Functional
      --  Description section for input/output assignment)
      SEL79          : XBARA1_SEL39_SEL79_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL39_Register use record
      SEL78          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL79          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL40_SEL80_Field is HAL.UInt7;
   subtype XBARA1_SEL40_SEL81_Field is HAL.UInt7;

   --  Crossbar A Select Register 40
   type XBARA1_SEL40_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT80 (refer to Functional
      --  Description section for input/output assignment)
      SEL80          : XBARA1_SEL40_SEL80_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT81 (refer to Functional
      --  Description section for input/output assignment)
      SEL81          : XBARA1_SEL40_SEL81_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL40_Register use record
      SEL80          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL81          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL41_SEL82_Field is HAL.UInt7;
   subtype XBARA1_SEL41_SEL83_Field is HAL.UInt7;

   --  Crossbar A Select Register 41
   type XBARA1_SEL41_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT82 (refer to Functional
      --  Description section for input/output assignment)
      SEL82          : XBARA1_SEL41_SEL82_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT83 (refer to Functional
      --  Description section for input/output assignment)
      SEL83          : XBARA1_SEL41_SEL83_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL41_Register use record
      SEL82          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL83          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL42_SEL84_Field is HAL.UInt7;
   subtype XBARA1_SEL42_SEL85_Field is HAL.UInt7;

   --  Crossbar A Select Register 42
   type XBARA1_SEL42_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT84 (refer to Functional
      --  Description section for input/output assignment)
      SEL84          : XBARA1_SEL42_SEL84_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT85 (refer to Functional
      --  Description section for input/output assignment)
      SEL85          : XBARA1_SEL42_SEL85_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL42_Register use record
      SEL84          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL85          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL43_SEL86_Field is HAL.UInt7;
   subtype XBARA1_SEL43_SEL87_Field is HAL.UInt7;

   --  Crossbar A Select Register 43
   type XBARA1_SEL43_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT86 (refer to Functional
      --  Description section for input/output assignment)
      SEL86          : XBARA1_SEL43_SEL86_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT87 (refer to Functional
      --  Description section for input/output assignment)
      SEL87          : XBARA1_SEL43_SEL87_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL43_Register use record
      SEL86          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL87          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL44_SEL88_Field is HAL.UInt7;
   subtype XBARA1_SEL44_SEL89_Field is HAL.UInt7;

   --  Crossbar A Select Register 44
   type XBARA1_SEL44_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT88 (refer to Functional
      --  Description section for input/output assignment)
      SEL88          : XBARA1_SEL44_SEL88_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT89 (refer to Functional
      --  Description section for input/output assignment)
      SEL89          : XBARA1_SEL44_SEL89_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL44_Register use record
      SEL88          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL89          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL45_SEL90_Field is HAL.UInt7;
   subtype XBARA1_SEL45_SEL91_Field is HAL.UInt7;

   --  Crossbar A Select Register 45
   type XBARA1_SEL45_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT90 (refer to Functional
      --  Description section for input/output assignment)
      SEL90          : XBARA1_SEL45_SEL90_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT91 (refer to Functional
      --  Description section for input/output assignment)
      SEL91          : XBARA1_SEL45_SEL91_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL45_Register use record
      SEL90          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL91          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL46_SEL92_Field is HAL.UInt7;
   subtype XBARA1_SEL46_SEL93_Field is HAL.UInt7;

   --  Crossbar A Select Register 46
   type XBARA1_SEL46_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT92 (refer to Functional
      --  Description section for input/output assignment)
      SEL92          : XBARA1_SEL46_SEL92_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT93 (refer to Functional
      --  Description section for input/output assignment)
      SEL93          : XBARA1_SEL46_SEL93_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL46_Register use record
      SEL92          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL93          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL47_SEL94_Field is HAL.UInt7;
   subtype XBARA1_SEL47_SEL95_Field is HAL.UInt7;

   --  Crossbar A Select Register 47
   type XBARA1_SEL47_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT94 (refer to Functional
      --  Description section for input/output assignment)
      SEL94          : XBARA1_SEL47_SEL94_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT95 (refer to Functional
      --  Description section for input/output assignment)
      SEL95          : XBARA1_SEL47_SEL95_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL47_Register use record
      SEL94          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL95          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL48_SEL96_Field is HAL.UInt7;
   subtype XBARA1_SEL48_SEL97_Field is HAL.UInt7;

   --  Crossbar A Select Register 48
   type XBARA1_SEL48_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT96 (refer to Functional
      --  Description section for input/output assignment)
      SEL96          : XBARA1_SEL48_SEL96_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT97 (refer to Functional
      --  Description section for input/output assignment)
      SEL97          : XBARA1_SEL48_SEL97_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL48_Register use record
      SEL96          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL97          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL49_SEL98_Field is HAL.UInt7;
   subtype XBARA1_SEL49_SEL99_Field is HAL.UInt7;

   --  Crossbar A Select Register 49
   type XBARA1_SEL49_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT98 (refer to Functional
      --  Description section for input/output assignment)
      SEL98          : XBARA1_SEL49_SEL98_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT99 (refer to Functional
      --  Description section for input/output assignment)
      SEL99          : XBARA1_SEL49_SEL99_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL49_Register use record
      SEL98          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL99          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL50_SEL100_Field is HAL.UInt7;
   subtype XBARA1_SEL50_SEL101_Field is HAL.UInt7;

   --  Crossbar A Select Register 50
   type XBARA1_SEL50_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT100 (refer to Functional
      --  Description section for input/output assignment)
      SEL100         : XBARA1_SEL50_SEL100_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT101 (refer to Functional
      --  Description section for input/output assignment)
      SEL101         : XBARA1_SEL50_SEL101_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL50_Register use record
      SEL100         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL101         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL51_SEL102_Field is HAL.UInt7;
   subtype XBARA1_SEL51_SEL103_Field is HAL.UInt7;

   --  Crossbar A Select Register 51
   type XBARA1_SEL51_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT102 (refer to Functional
      --  Description section for input/output assignment)
      SEL102         : XBARA1_SEL51_SEL102_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT103 (refer to Functional
      --  Description section for input/output assignment)
      SEL103         : XBARA1_SEL51_SEL103_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL51_Register use record
      SEL102         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL103         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL52_SEL104_Field is HAL.UInt7;
   subtype XBARA1_SEL52_SEL105_Field is HAL.UInt7;

   --  Crossbar A Select Register 52
   type XBARA1_SEL52_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT104 (refer to Functional
      --  Description section for input/output assignment)
      SEL104         : XBARA1_SEL52_SEL104_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT105 (refer to Functional
      --  Description section for input/output assignment)
      SEL105         : XBARA1_SEL52_SEL105_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL52_Register use record
      SEL104         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL105         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL53_SEL106_Field is HAL.UInt7;
   subtype XBARA1_SEL53_SEL107_Field is HAL.UInt7;

   --  Crossbar A Select Register 53
   type XBARA1_SEL53_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT106 (refer to Functional
      --  Description section for input/output assignment)
      SEL106         : XBARA1_SEL53_SEL106_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT107 (refer to Functional
      --  Description section for input/output assignment)
      SEL107         : XBARA1_SEL53_SEL107_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL53_Register use record
      SEL106         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL107         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL54_SEL108_Field is HAL.UInt7;
   subtype XBARA1_SEL54_SEL109_Field is HAL.UInt7;

   --  Crossbar A Select Register 54
   type XBARA1_SEL54_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT108 (refer to Functional
      --  Description section for input/output assignment)
      SEL108         : XBARA1_SEL54_SEL108_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT109 (refer to Functional
      --  Description section for input/output assignment)
      SEL109         : XBARA1_SEL54_SEL109_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL54_Register use record
      SEL108         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL109         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL55_SEL110_Field is HAL.UInt7;
   subtype XBARA1_SEL55_SEL111_Field is HAL.UInt7;

   --  Crossbar A Select Register 55
   type XBARA1_SEL55_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT110 (refer to Functional
      --  Description section for input/output assignment)
      SEL110         : XBARA1_SEL55_SEL110_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT111 (refer to Functional
      --  Description section for input/output assignment)
      SEL111         : XBARA1_SEL55_SEL111_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL55_Register use record
      SEL110         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL111         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL56_SEL112_Field is HAL.UInt7;
   subtype XBARA1_SEL56_SEL113_Field is HAL.UInt7;

   --  Crossbar A Select Register 56
   type XBARA1_SEL56_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT112 (refer to Functional
      --  Description section for input/output assignment)
      SEL112         : XBARA1_SEL56_SEL112_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT113 (refer to Functional
      --  Description section for input/output assignment)
      SEL113         : XBARA1_SEL56_SEL113_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL56_Register use record
      SEL112         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL113         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL57_SEL114_Field is HAL.UInt7;
   subtype XBARA1_SEL57_SEL115_Field is HAL.UInt7;

   --  Crossbar A Select Register 57
   type XBARA1_SEL57_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT114 (refer to Functional
      --  Description section for input/output assignment)
      SEL114         : XBARA1_SEL57_SEL114_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT115 (refer to Functional
      --  Description section for input/output assignment)
      SEL115         : XBARA1_SEL57_SEL115_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL57_Register use record
      SEL114         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL115         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL58_SEL116_Field is HAL.UInt7;
   subtype XBARA1_SEL58_SEL117_Field is HAL.UInt7;

   --  Crossbar A Select Register 58
   type XBARA1_SEL58_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT116 (refer to Functional
      --  Description section for input/output assignment)
      SEL116         : XBARA1_SEL58_SEL116_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT117 (refer to Functional
      --  Description section for input/output assignment)
      SEL117         : XBARA1_SEL58_SEL117_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL58_Register use record
      SEL116         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL117         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL59_SEL118_Field is HAL.UInt7;
   subtype XBARA1_SEL59_SEL119_Field is HAL.UInt7;

   --  Crossbar A Select Register 59
   type XBARA1_SEL59_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT118 (refer to Functional
      --  Description section for input/output assignment)
      SEL118         : XBARA1_SEL59_SEL118_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT119 (refer to Functional
      --  Description section for input/output assignment)
      SEL119         : XBARA1_SEL59_SEL119_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL59_Register use record
      SEL118         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL119         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL60_SEL120_Field is HAL.UInt7;
   subtype XBARA1_SEL60_SEL121_Field is HAL.UInt7;

   --  Crossbar A Select Register 60
   type XBARA1_SEL60_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT120 (refer to Functional
      --  Description section for input/output assignment)
      SEL120         : XBARA1_SEL60_SEL120_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT121 (refer to Functional
      --  Description section for input/output assignment)
      SEL121         : XBARA1_SEL60_SEL121_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL60_Register use record
      SEL120         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL121         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL61_SEL122_Field is HAL.UInt7;
   subtype XBARA1_SEL61_SEL123_Field is HAL.UInt7;

   --  Crossbar A Select Register 61
   type XBARA1_SEL61_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT122 (refer to Functional
      --  Description section for input/output assignment)
      SEL122         : XBARA1_SEL61_SEL122_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT123 (refer to Functional
      --  Description section for input/output assignment)
      SEL123         : XBARA1_SEL61_SEL123_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL61_Register use record
      SEL122         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL123         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL62_SEL124_Field is HAL.UInt7;
   subtype XBARA1_SEL62_SEL125_Field is HAL.UInt7;

   --  Crossbar A Select Register 62
   type XBARA1_SEL62_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT124 (refer to Functional
      --  Description section for input/output assignment)
      SEL124         : XBARA1_SEL62_SEL124_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT125 (refer to Functional
      --  Description section for input/output assignment)
      SEL125         : XBARA1_SEL62_SEL125_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL62_Register use record
      SEL124         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL125         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL63_SEL126_Field is HAL.UInt7;
   subtype XBARA1_SEL63_SEL127_Field is HAL.UInt7;

   --  Crossbar A Select Register 63
   type XBARA1_SEL63_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT126 (refer to Functional
      --  Description section for input/output assignment)
      SEL126         : XBARA1_SEL63_SEL126_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT127 (refer to Functional
      --  Description section for input/output assignment)
      SEL127         : XBARA1_SEL63_SEL127_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL63_Register use record
      SEL126         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL127         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL64_SEL128_Field is HAL.UInt7;
   subtype XBARA1_SEL64_SEL129_Field is HAL.UInt7;

   --  Crossbar A Select Register 64
   type XBARA1_SEL64_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT128 (refer to Functional
      --  Description section for input/output assignment)
      SEL128         : XBARA1_SEL64_SEL128_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT129 (refer to Functional
      --  Description section for input/output assignment)
      SEL129         : XBARA1_SEL64_SEL129_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL64_Register use record
      SEL128         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL129         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype XBARA1_SEL65_SEL130_Field is HAL.UInt7;
   subtype XBARA1_SEL65_SEL131_Field is HAL.UInt7;

   --  Crossbar A Select Register 65
   type XBARA1_SEL65_Register is record
      --  Input (XBARA_INn) to be muxed to XBARA_OUT130 (refer to Functional
      --  Description section for input/output assignment)
      SEL130         : XBARA1_SEL65_SEL130_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Input (XBARA_INn) to be muxed to XBARA_OUT131 (refer to Functional
      --  Description section for input/output assignment)
      SEL131         : XBARA1_SEL65_SEL131_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_SEL65_Register use record
      SEL130         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEL131         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  DMA Enable for XBAR_OUT0
   type CTRL0_DEN0_Field is
     (
      --  DMA disabled
      Den0_0,
      --  DMA enabled
      Den0_1)
     with Size => 1;
   for CTRL0_DEN0_Field use
     (Den0_0 => 0,
      Den0_1 => 1);

   --  Interrupt Enable for XBAR_OUT0
   type CTRL0_IEN0_Field is
     (
      --  Interrupt disabled
      Ien0_0,
      --  Interrupt enabled
      Ien0_1)
     with Size => 1;
   for CTRL0_IEN0_Field use
     (Ien0_0 => 0,
      Ien0_1 => 1);

   --  Active edge for edge detection on XBAR_OUT0
   type CTRL0_EDGE0_Field is
     (
      --  STS0 never asserts
      Edge0_0,
      --  STS0 asserts on rising edges of XBAR_OUT0
      Edge0_1,
      --  STS0 asserts on falling edges of XBAR_OUT0
      Edge0_2,
      --  STS0 asserts on rising and falling edges of XBAR_OUT0
      Edge0_3)
     with Size => 2;
   for CTRL0_EDGE0_Field use
     (Edge0_0 => 0,
      Edge0_1 => 1,
      Edge0_2 => 2,
      Edge0_3 => 3);

   --  Edge detection status for XBAR_OUT0
   type CTRL0_STS0_Field is
     (
      --  Active edge not yet detected on XBAR_OUT0
      Sts0_0,
      --  Active edge detected on XBAR_OUT0
      Sts0_1)
     with Size => 1;
   for CTRL0_STS0_Field use
     (Sts0_0 => 0,
      Sts0_1 => 1);

   --  DMA Enable for XBAR_OUT1
   type CTRL0_DEN1_Field is
     (
      --  DMA disabled
      Den1_0,
      --  DMA enabled
      Den1_1)
     with Size => 1;
   for CTRL0_DEN1_Field use
     (Den1_0 => 0,
      Den1_1 => 1);

   --  Interrupt Enable for XBAR_OUT1
   type CTRL0_IEN1_Field is
     (
      --  Interrupt disabled
      Ien1_0,
      --  Interrupt enabled
      Ien1_1)
     with Size => 1;
   for CTRL0_IEN1_Field use
     (Ien1_0 => 0,
      Ien1_1 => 1);

   --  Active edge for edge detection on XBAR_OUT1
   type CTRL0_EDGE1_Field is
     (
      --  STS1 never asserts
      Edge1_0,
      --  STS1 asserts on rising edges of XBAR_OUT1
      Edge1_1,
      --  STS1 asserts on falling edges of XBAR_OUT1
      Edge1_2,
      --  STS1 asserts on rising and falling edges of XBAR_OUT1
      Edge1_3)
     with Size => 2;
   for CTRL0_EDGE1_Field use
     (Edge1_0 => 0,
      Edge1_1 => 1,
      Edge1_2 => 2,
      Edge1_3 => 3);

   --  Edge detection status for XBAR_OUT1
   type CTRL0_STS1_Field is
     (
      --  Active edge not yet detected on XBAR_OUT1
      Sts1_0,
      --  Active edge detected on XBAR_OUT1
      Sts1_1)
     with Size => 1;
   for CTRL0_STS1_Field use
     (Sts1_0 => 0,
      Sts1_1 => 1);

   --  Crossbar A Control Register 0
   type XBARA1_CTRL0_Register is record
      --  DMA Enable for XBAR_OUT0
      DEN0           : CTRL0_DEN0_Field := NRF_SVD.XBARA.Den0_0;
      --  Interrupt Enable for XBAR_OUT0
      IEN0           : CTRL0_IEN0_Field := NRF_SVD.XBARA.Ien0_0;
      --  Active edge for edge detection on XBAR_OUT0
      EDGE0          : CTRL0_EDGE0_Field := NRF_SVD.XBARA.Edge0_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Edge detection status for XBAR_OUT0
      STS0           : CTRL0_STS0_Field := NRF_SVD.XBARA.Sts0_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA Enable for XBAR_OUT1
      DEN1           : CTRL0_DEN1_Field := NRF_SVD.XBARA.Den1_0;
      --  Interrupt Enable for XBAR_OUT1
      IEN1           : CTRL0_IEN1_Field := NRF_SVD.XBARA.Ien1_0;
      --  Active edge for edge detection on XBAR_OUT1
      EDGE1          : CTRL0_EDGE1_Field := NRF_SVD.XBARA.Edge1_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Edge detection status for XBAR_OUT1
      STS1           : CTRL0_STS1_Field := NRF_SVD.XBARA.Sts1_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_CTRL0_Register use record
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
      Den2_0,
      --  DMA enabled
      Den2_1)
     with Size => 1;
   for CTRL1_DEN2_Field use
     (Den2_0 => 0,
      Den2_1 => 1);

   --  Interrupt Enable for XBAR_OUT2
   type CTRL1_IEN2_Field is
     (
      --  Interrupt disabled
      Ien2_0,
      --  Interrupt enabled
      Ien2_1)
     with Size => 1;
   for CTRL1_IEN2_Field use
     (Ien2_0 => 0,
      Ien2_1 => 1);

   --  Active edge for edge detection on XBAR_OUT2
   type CTRL1_EDGE2_Field is
     (
      --  STS2 never asserts
      Edge2_0,
      --  STS2 asserts on rising edges of XBAR_OUT2
      Edge2_1,
      --  STS2 asserts on falling edges of XBAR_OUT2
      Edge2_2,
      --  STS2 asserts on rising and falling edges of XBAR_OUT2
      Edge2_3)
     with Size => 2;
   for CTRL1_EDGE2_Field use
     (Edge2_0 => 0,
      Edge2_1 => 1,
      Edge2_2 => 2,
      Edge2_3 => 3);

   --  Edge detection status for XBAR_OUT2
   type CTRL1_STS2_Field is
     (
      --  Active edge not yet detected on XBAR_OUT2
      Sts2_0,
      --  Active edge detected on XBAR_OUT2
      Sts2_1)
     with Size => 1;
   for CTRL1_STS2_Field use
     (Sts2_0 => 0,
      Sts2_1 => 1);

   --  DMA Enable for XBAR_OUT3
   type CTRL1_DEN3_Field is
     (
      --  DMA disabled
      Den3_0,
      --  DMA enabled
      Den3_1)
     with Size => 1;
   for CTRL1_DEN3_Field use
     (Den3_0 => 0,
      Den3_1 => 1);

   --  Interrupt Enable for XBAR_OUT3
   type CTRL1_IEN3_Field is
     (
      --  Interrupt disabled
      Ien3_0,
      --  Interrupt enabled
      Ien3_1)
     with Size => 1;
   for CTRL1_IEN3_Field use
     (Ien3_0 => 0,
      Ien3_1 => 1);

   --  Active edge for edge detection on XBAR_OUT3
   type CTRL1_EDGE3_Field is
     (
      --  STS3 never asserts
      Edge3_0,
      --  STS3 asserts on rising edges of XBAR_OUT3
      Edge3_1,
      --  STS3 asserts on falling edges of XBAR_OUT3
      Edge3_2,
      --  STS3 asserts on rising and falling edges of XBAR_OUT3
      Edge3_3)
     with Size => 2;
   for CTRL1_EDGE3_Field use
     (Edge3_0 => 0,
      Edge3_1 => 1,
      Edge3_2 => 2,
      Edge3_3 => 3);

   --  Edge detection status for XBAR_OUT3
   type CTRL1_STS3_Field is
     (
      --  Active edge not yet detected on XBAR_OUT3
      Sts3_0,
      --  Active edge detected on XBAR_OUT3
      Sts3_1)
     with Size => 1;
   for CTRL1_STS3_Field use
     (Sts3_0 => 0,
      Sts3_1 => 1);

   --  Crossbar A Control Register 1
   type XBARA1_CTRL1_Register is record
      --  DMA Enable for XBAR_OUT2
      DEN2           : CTRL1_DEN2_Field := NRF_SVD.XBARA.Den2_0;
      --  Interrupt Enable for XBAR_OUT2
      IEN2           : CTRL1_IEN2_Field := NRF_SVD.XBARA.Ien2_0;
      --  Active edge for edge detection on XBAR_OUT2
      EDGE2          : CTRL1_EDGE2_Field := NRF_SVD.XBARA.Edge2_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Edge detection status for XBAR_OUT2
      STS2           : CTRL1_STS2_Field := NRF_SVD.XBARA.Sts2_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  DMA Enable for XBAR_OUT3
      DEN3           : CTRL1_DEN3_Field := NRF_SVD.XBARA.Den3_0;
      --  Interrupt Enable for XBAR_OUT3
      IEN3           : CTRL1_IEN3_Field := NRF_SVD.XBARA.Ien3_0;
      --  Active edge for edge detection on XBAR_OUT3
      EDGE3          : CTRL1_EDGE3_Field := NRF_SVD.XBARA.Edge3_0;
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Edge detection status for XBAR_OUT3
      STS3           : CTRL1_STS3_Field := NRF_SVD.XBARA.Sts3_0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARA1_CTRL1_Register use record
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

   subtype XBARB2_SEL0_SEL0_Field is HAL.UInt6;
   subtype XBARB2_SEL0_SEL1_Field is HAL.UInt6;

   --  Crossbar B Select Register 0
   type XBARB2_SEL0_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT0 (refer to Functional
      --  Description section for input/output assignment)
      SEL0           : XBARB2_SEL0_SEL0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT1 (refer to Functional
      --  Description section for input/output assignment)
      SEL1           : XBARB2_SEL0_SEL1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL0_Register use record
      SEL0           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL1_SEL2_Field is HAL.UInt6;
   subtype XBARB2_SEL1_SEL3_Field is HAL.UInt6;

   --  Crossbar B Select Register 1
   type XBARB2_SEL1_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT2 (refer to Functional
      --  Description section for input/output assignment)
      SEL2           : XBARB2_SEL1_SEL2_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT3 (refer to Functional
      --  Description section for input/output assignment)
      SEL3           : XBARB2_SEL1_SEL3_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL1_Register use record
      SEL2           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL3           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL2_SEL4_Field is HAL.UInt6;
   subtype XBARB2_SEL2_SEL5_Field is HAL.UInt6;

   --  Crossbar B Select Register 2
   type XBARB2_SEL2_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT4 (refer to Functional
      --  Description section for input/output assignment)
      SEL4           : XBARB2_SEL2_SEL4_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT5 (refer to Functional
      --  Description section for input/output assignment)
      SEL5           : XBARB2_SEL2_SEL5_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL2_Register use record
      SEL4           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL5           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL3_SEL6_Field is HAL.UInt6;
   subtype XBARB2_SEL3_SEL7_Field is HAL.UInt6;

   --  Crossbar B Select Register 3
   type XBARB2_SEL3_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT6 (refer to Functional
      --  Description section for input/output assignment)
      SEL6           : XBARB2_SEL3_SEL6_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT7 (refer to Functional
      --  Description section for input/output assignment)
      SEL7           : XBARB2_SEL3_SEL7_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL3_Register use record
      SEL6           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL7           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL4_SEL8_Field is HAL.UInt6;
   subtype XBARB2_SEL4_SEL9_Field is HAL.UInt6;

   --  Crossbar B Select Register 4
   type XBARB2_SEL4_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT8 (refer to Functional
      --  Description section for input/output assignment)
      SEL8           : XBARB2_SEL4_SEL8_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT9 (refer to Functional
      --  Description section for input/output assignment)
      SEL9           : XBARB2_SEL4_SEL9_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL4_Register use record
      SEL8           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL9           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL5_SEL10_Field is HAL.UInt6;
   subtype XBARB2_SEL5_SEL11_Field is HAL.UInt6;

   --  Crossbar B Select Register 5
   type XBARB2_SEL5_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT10 (refer to Functional
      --  Description section for input/output assignment)
      SEL10          : XBARB2_SEL5_SEL10_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT11 (refer to Functional
      --  Description section for input/output assignment)
      SEL11          : XBARB2_SEL5_SEL11_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL5_Register use record
      SEL10          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL11          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL6_SEL12_Field is HAL.UInt6;
   subtype XBARB2_SEL6_SEL13_Field is HAL.UInt6;

   --  Crossbar B Select Register 6
   type XBARB2_SEL6_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT12 (refer to Functional
      --  Description section for input/output assignment)
      SEL12          : XBARB2_SEL6_SEL12_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT13 (refer to Functional
      --  Description section for input/output assignment)
      SEL13          : XBARB2_SEL6_SEL13_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL6_Register use record
      SEL12          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL13          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype XBARB2_SEL7_SEL14_Field is HAL.UInt6;
   subtype XBARB2_SEL7_SEL15_Field is HAL.UInt6;

   --  Crossbar B Select Register 7
   type XBARB2_SEL7_Register is record
      --  Input (XBARB_INn) to be muxed to XBARB_OUT14 (refer to Functional
      --  Description section for input/output assignment)
      SEL14          : XBARB2_SEL7_SEL14_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Input (XBARB_INn) to be muxed to XBARB_OUT15 (refer to Functional
      --  Description section for input/output assignment)
      SEL15          : XBARB2_SEL7_SEL15_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for XBARB2_SEL7_Register use record
      SEL14          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL15          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Crossbar Switch
   type XBARA1_Peripheral is record
      --  Crossbar A Select Register 0
      SEL0  : aliased XBARA1_SEL0_Register;
      --  Crossbar A Select Register 1
      SEL1  : aliased XBARA1_SEL1_Register;
      --  Crossbar A Select Register 2
      SEL2  : aliased XBARA1_SEL2_Register;
      --  Crossbar A Select Register 3
      SEL3  : aliased XBARA1_SEL3_Register;
      --  Crossbar A Select Register 4
      SEL4  : aliased XBARA1_SEL4_Register;
      --  Crossbar A Select Register 5
      SEL5  : aliased XBARA1_SEL5_Register;
      --  Crossbar A Select Register 6
      SEL6  : aliased XBARA1_SEL6_Register;
      --  Crossbar A Select Register 7
      SEL7  : aliased XBARA1_SEL7_Register;
      --  Crossbar A Select Register 8
      SEL8  : aliased XBARA1_SEL8_Register;
      --  Crossbar A Select Register 9
      SEL9  : aliased XBARA1_SEL9_Register;
      --  Crossbar A Select Register 10
      SEL10 : aliased XBARA1_SEL10_Register;
      --  Crossbar A Select Register 11
      SEL11 : aliased XBARA1_SEL11_Register;
      --  Crossbar A Select Register 12
      SEL12 : aliased XBARA1_SEL12_Register;
      --  Crossbar A Select Register 13
      SEL13 : aliased XBARA1_SEL13_Register;
      --  Crossbar A Select Register 14
      SEL14 : aliased XBARA1_SEL14_Register;
      --  Crossbar A Select Register 15
      SEL15 : aliased XBARA1_SEL15_Register;
      --  Crossbar A Select Register 16
      SEL16 : aliased XBARA1_SEL16_Register;
      --  Crossbar A Select Register 17
      SEL17 : aliased XBARA1_SEL17_Register;
      --  Crossbar A Select Register 18
      SEL18 : aliased XBARA1_SEL18_Register;
      --  Crossbar A Select Register 19
      SEL19 : aliased XBARA1_SEL19_Register;
      --  Crossbar A Select Register 20
      SEL20 : aliased XBARA1_SEL20_Register;
      --  Crossbar A Select Register 21
      SEL21 : aliased XBARA1_SEL21_Register;
      --  Crossbar A Select Register 22
      SEL22 : aliased XBARA1_SEL22_Register;
      --  Crossbar A Select Register 23
      SEL23 : aliased XBARA1_SEL23_Register;
      --  Crossbar A Select Register 24
      SEL24 : aliased XBARA1_SEL24_Register;
      --  Crossbar A Select Register 25
      SEL25 : aliased XBARA1_SEL25_Register;
      --  Crossbar A Select Register 26
      SEL26 : aliased XBARA1_SEL26_Register;
      --  Crossbar A Select Register 27
      SEL27 : aliased XBARA1_SEL27_Register;
      --  Crossbar A Select Register 28
      SEL28 : aliased XBARA1_SEL28_Register;
      --  Crossbar A Select Register 29
      SEL29 : aliased XBARA1_SEL29_Register;
      --  Crossbar A Select Register 30
      SEL30 : aliased XBARA1_SEL30_Register;
      --  Crossbar A Select Register 31
      SEL31 : aliased XBARA1_SEL31_Register;
      --  Crossbar A Select Register 32
      SEL32 : aliased XBARA1_SEL32_Register;
      --  Crossbar A Select Register 33
      SEL33 : aliased XBARA1_SEL33_Register;
      --  Crossbar A Select Register 34
      SEL34 : aliased XBARA1_SEL34_Register;
      --  Crossbar A Select Register 35
      SEL35 : aliased XBARA1_SEL35_Register;
      --  Crossbar A Select Register 36
      SEL36 : aliased XBARA1_SEL36_Register;
      --  Crossbar A Select Register 37
      SEL37 : aliased XBARA1_SEL37_Register;
      --  Crossbar A Select Register 38
      SEL38 : aliased XBARA1_SEL38_Register;
      --  Crossbar A Select Register 39
      SEL39 : aliased XBARA1_SEL39_Register;
      --  Crossbar A Select Register 40
      SEL40 : aliased XBARA1_SEL40_Register;
      --  Crossbar A Select Register 41
      SEL41 : aliased XBARA1_SEL41_Register;
      --  Crossbar A Select Register 42
      SEL42 : aliased XBARA1_SEL42_Register;
      --  Crossbar A Select Register 43
      SEL43 : aliased XBARA1_SEL43_Register;
      --  Crossbar A Select Register 44
      SEL44 : aliased XBARA1_SEL44_Register;
      --  Crossbar A Select Register 45
      SEL45 : aliased XBARA1_SEL45_Register;
      --  Crossbar A Select Register 46
      SEL46 : aliased XBARA1_SEL46_Register;
      --  Crossbar A Select Register 47
      SEL47 : aliased XBARA1_SEL47_Register;
      --  Crossbar A Select Register 48
      SEL48 : aliased XBARA1_SEL48_Register;
      --  Crossbar A Select Register 49
      SEL49 : aliased XBARA1_SEL49_Register;
      --  Crossbar A Select Register 50
      SEL50 : aliased XBARA1_SEL50_Register;
      --  Crossbar A Select Register 51
      SEL51 : aliased XBARA1_SEL51_Register;
      --  Crossbar A Select Register 52
      SEL52 : aliased XBARA1_SEL52_Register;
      --  Crossbar A Select Register 53
      SEL53 : aliased XBARA1_SEL53_Register;
      --  Crossbar A Select Register 54
      SEL54 : aliased XBARA1_SEL54_Register;
      --  Crossbar A Select Register 55
      SEL55 : aliased XBARA1_SEL55_Register;
      --  Crossbar A Select Register 56
      SEL56 : aliased XBARA1_SEL56_Register;
      --  Crossbar A Select Register 57
      SEL57 : aliased XBARA1_SEL57_Register;
      --  Crossbar A Select Register 58
      SEL58 : aliased XBARA1_SEL58_Register;
      --  Crossbar A Select Register 59
      SEL59 : aliased XBARA1_SEL59_Register;
      --  Crossbar A Select Register 60
      SEL60 : aliased XBARA1_SEL60_Register;
      --  Crossbar A Select Register 61
      SEL61 : aliased XBARA1_SEL61_Register;
      --  Crossbar A Select Register 62
      SEL62 : aliased XBARA1_SEL62_Register;
      --  Crossbar A Select Register 63
      SEL63 : aliased XBARA1_SEL63_Register;
      --  Crossbar A Select Register 64
      SEL64 : aliased XBARA1_SEL64_Register;
      --  Crossbar A Select Register 65
      SEL65 : aliased XBARA1_SEL65_Register;
      --  Crossbar A Control Register 0
      CTRL0 : aliased XBARA1_CTRL0_Register;
      --  Crossbar A Control Register 1
      CTRL1 : aliased XBARA1_CTRL1_Register;
   end record
     with Volatile;

   for XBARA1_Peripheral use record
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
      SEL30 at 16#3C# range 0 .. 15;
      SEL31 at 16#3E# range 0 .. 15;
      SEL32 at 16#40# range 0 .. 15;
      SEL33 at 16#42# range 0 .. 15;
      SEL34 at 16#44# range 0 .. 15;
      SEL35 at 16#46# range 0 .. 15;
      SEL36 at 16#48# range 0 .. 15;
      SEL37 at 16#4A# range 0 .. 15;
      SEL38 at 16#4C# range 0 .. 15;
      SEL39 at 16#4E# range 0 .. 15;
      SEL40 at 16#50# range 0 .. 15;
      SEL41 at 16#52# range 0 .. 15;
      SEL42 at 16#54# range 0 .. 15;
      SEL43 at 16#56# range 0 .. 15;
      SEL44 at 16#58# range 0 .. 15;
      SEL45 at 16#5A# range 0 .. 15;
      SEL46 at 16#5C# range 0 .. 15;
      SEL47 at 16#5E# range 0 .. 15;
      SEL48 at 16#60# range 0 .. 15;
      SEL49 at 16#62# range 0 .. 15;
      SEL50 at 16#64# range 0 .. 15;
      SEL51 at 16#66# range 0 .. 15;
      SEL52 at 16#68# range 0 .. 15;
      SEL53 at 16#6A# range 0 .. 15;
      SEL54 at 16#6C# range 0 .. 15;
      SEL55 at 16#6E# range 0 .. 15;
      SEL56 at 16#70# range 0 .. 15;
      SEL57 at 16#72# range 0 .. 15;
      SEL58 at 16#74# range 0 .. 15;
      SEL59 at 16#76# range 0 .. 15;
      SEL60 at 16#78# range 0 .. 15;
      SEL61 at 16#7A# range 0 .. 15;
      SEL62 at 16#7C# range 0 .. 15;
      SEL63 at 16#7E# range 0 .. 15;
      SEL64 at 16#80# range 0 .. 15;
      SEL65 at 16#82# range 0 .. 15;
      CTRL0 at 16#84# range 0 .. 15;
      CTRL1 at 16#86# range 0 .. 15;
   end record;

   --  Crossbar Switch
   XBARA1_Periph : aliased XBARA1_Peripheral
     with Import, Address => System'To_Address (16#403BC000#);

   --  Crossbar Switch
   type XBARA_Peripheral is record
      --  Crossbar B Select Register 0
      SEL0 : aliased XBARB2_SEL0_Register;
      --  Crossbar B Select Register 1
      SEL1 : aliased XBARB2_SEL1_Register;
      --  Crossbar B Select Register 2
      SEL2 : aliased XBARB2_SEL2_Register;
      --  Crossbar B Select Register 3
      SEL3 : aliased XBARB2_SEL3_Register;
      --  Crossbar B Select Register 4
      SEL4 : aliased XBARB2_SEL4_Register;
      --  Crossbar B Select Register 5
      SEL5 : aliased XBARB2_SEL5_Register;
      --  Crossbar B Select Register 6
      SEL6 : aliased XBARB2_SEL6_Register;
      --  Crossbar B Select Register 7
      SEL7 : aliased XBARB2_SEL7_Register;
   end record
     with Volatile;

   for XBARA_Peripheral use record
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
   XBARB2_Periph : aliased XBARA_Peripheral
     with Import, Address => System'To_Address (16#403C0000#);

   --  Crossbar Switch
   XBARB3_Periph : aliased XBARA_Peripheral
     with Import, Address => System'To_Address (16#403C4000#);

end NRF_SVD.XBARA;
