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

--  Nested Vectored Interrupt Controller
package NRF_SVD.NVIC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype NVICIP0_PRI0_Field is HAL.UInt4;

   --  Interrupt Priority Register 0
   type NVICIP0_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA0 interrupt 0
      PRI0         : NVICIP0_PRI0_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP0_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI0         at 0 range 4 .. 7;
   end record;

   subtype NVICIP1_PRI1_Field is HAL.UInt4;

   --  Interrupt Priority Register 1
   type NVICIP1_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA1 interrupt 1
      PRI1         : NVICIP1_PRI1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP1_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI1         at 0 range 4 .. 7;
   end record;

   subtype NVICIP2_PRI2_Field is HAL.UInt4;

   --  Interrupt Priority Register 2
   type NVICIP2_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA2 interrupt 2
      PRI2         : NVICIP2_PRI2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP2_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI2         at 0 range 4 .. 7;
   end record;

   subtype NVICIP3_PRI3_Field is HAL.UInt4;

   --  Interrupt Priority Register 3
   type NVICIP3_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA3 interrupt 3
      PRI3         : NVICIP3_PRI3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP3_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI3         at 0 range 4 .. 7;
   end record;

   subtype NVICIP4_PRI4_Field is HAL.UInt4;

   --  Interrupt Priority Register 4
   type NVICIP4_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA4 interrupt 4
      PRI4         : NVICIP4_PRI4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP4_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI4         at 0 range 4 .. 7;
   end record;

   subtype NVICIP5_PRI5_Field is HAL.UInt4;

   --  Interrupt Priority Register 5
   type NVICIP5_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA5 interrupt 5
      PRI5         : NVICIP5_PRI5_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP5_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI5         at 0 range 4 .. 7;
   end record;

   subtype NVICIP6_PRI6_Field is HAL.UInt4;

   --  Interrupt Priority Register 6
   type NVICIP6_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA6 interrupt 6
      PRI6         : NVICIP6_PRI6_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP6_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI6         at 0 range 4 .. 7;
   end record;

   subtype NVICIP7_PRI7_Field is HAL.UInt4;

   --  Interrupt Priority Register 7
   type NVICIP7_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA7 interrupt 7
      PRI7         : NVICIP7_PRI7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP7_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI7         at 0 range 4 .. 7;
   end record;

   subtype NVICIP8_PRI8_Field is HAL.UInt4;

   --  Interrupt Priority Register 8
   type NVICIP8_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA8 interrupt 8
      PRI8         : NVICIP8_PRI8_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP8_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI8         at 0 range 4 .. 7;
   end record;

   subtype NVICIP9_PRI9_Field is HAL.UInt4;

   --  Interrupt Priority Register 9
   type NVICIP9_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA9 interrupt 9
      PRI9         : NVICIP9_PRI9_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP9_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI9         at 0 range 4 .. 7;
   end record;

   subtype NVICIP10_PRI10_Field is HAL.UInt4;

   --  Interrupt Priority Register 10
   type NVICIP10_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA10 interrupt 10
      PRI10        : NVICIP10_PRI10_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP10_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI10        at 0 range 4 .. 7;
   end record;

   subtype NVICIP11_PRI11_Field is HAL.UInt4;

   --  Interrupt Priority Register 11
   type NVICIP11_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA11 interrupt 11
      PRI11        : NVICIP11_PRI11_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP11_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI11        at 0 range 4 .. 7;
   end record;

   subtype NVICIP12_PRI12_Field is HAL.UInt4;

   --  Interrupt Priority Register 12
   type NVICIP12_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA12 interrupt 12
      PRI12        : NVICIP12_PRI12_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP12_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI12        at 0 range 4 .. 7;
   end record;

   subtype NVICIP13_PRI13_Field is HAL.UInt4;

   --  Interrupt Priority Register 13
   type NVICIP13_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA13 interrupt 13
      PRI13        : NVICIP13_PRI13_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP13_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI13        at 0 range 4 .. 7;
   end record;

   subtype NVICIP14_PRI14_Field is HAL.UInt4;

   --  Interrupt Priority Register 14
   type NVICIP14_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA14 interrupt 14
      PRI14        : NVICIP14_PRI14_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP14_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI14        at 0 range 4 .. 7;
   end record;

   subtype NVICIP15_PRI15_Field is HAL.UInt4;

   --  Interrupt Priority Register 15
   type NVICIP15_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA15 interrupt 15
      PRI15        : NVICIP15_PRI15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP15_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI15        at 0 range 4 .. 7;
   end record;

   subtype NVICIP16_PRI16_Field is HAL.UInt4;

   --  Interrupt Priority Register 16
   type NVICIP16_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_DMA_Error interrupt 16
      PRI16        : NVICIP16_PRI16_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP16_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI16        at 0 range 4 .. 7;
   end record;

   subtype NVICIP17_PRI17_Field is HAL.UInt4;

   --  Interrupt Priority Register 17
   type NVICIP17_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_MCM interrupt 17
      PRI17        : NVICIP17_PRI17_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP17_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI17        at 0 range 4 .. 7;
   end record;

   subtype NVICIP18_PRI18_Field is HAL.UInt4;

   --  Interrupt Priority Register 18
   type NVICIP18_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_FTFA interrupt 18
      PRI18        : NVICIP18_PRI18_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP18_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI18        at 0 range 4 .. 7;
   end record;

   subtype NVICIP19_PRI19_Field is HAL.UInt4;

   --  Interrupt Priority Register 19
   type NVICIP19_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_FTFA_Collision interrupt 19
      PRI19        : NVICIP19_PRI19_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP19_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI19        at 0 range 4 .. 7;
   end record;

   subtype NVICIP20_PRI20_Field is HAL.UInt4;

   --  Interrupt Priority Register 20
   type NVICIP20_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PMC interrupt 20
      PRI20        : NVICIP20_PRI20_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP20_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI20        at 0 range 4 .. 7;
   end record;

   subtype NVICIP21_PRI21_Field is HAL.UInt4;

   --  Interrupt Priority Register 21
   type NVICIP21_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_LLWU interrupt 21
      PRI21        : NVICIP21_PRI21_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP21_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI21        at 0 range 4 .. 7;
   end record;

   subtype NVICIP22_PRI22_Field is HAL.UInt4;

   --  Interrupt Priority Register 22
   type NVICIP22_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_WDOG_EWM interrupt 22
      PRI22        : NVICIP22_PRI22_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP22_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI22        at 0 range 4 .. 7;
   end record;

   subtype NVICIP23_PRI23_Field is HAL.UInt4;

   --  Interrupt Priority Register 23
   type NVICIP23_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 23
      PRI23        : NVICIP23_PRI23_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP23_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI23        at 0 range 4 .. 7;
   end record;

   subtype NVICIP24_PRI24_Field is HAL.UInt4;

   --  Interrupt Priority Register 24
   type NVICIP24_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_I2C0 interrupt 24
      PRI24        : NVICIP24_PRI24_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP24_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI24        at 0 range 4 .. 7;
   end record;

   subtype NVICIP25_PRI25_Field is HAL.UInt4;

   --  Interrupt Priority Register 25
   type NVICIP25_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 25
      PRI25        : NVICIP25_PRI25_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP25_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI25        at 0 range 4 .. 7;
   end record;

   subtype NVICIP26_PRI26_Field is HAL.UInt4;

   --  Interrupt Priority Register 26
   type NVICIP26_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_SPI0 interrupt 26
      PRI26        : NVICIP26_PRI26_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP26_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI26        at 0 range 4 .. 7;
   end record;

   subtype NVICIP27_PRI27_Field is HAL.UInt4;

   --  Interrupt Priority Register 27
   type NVICIP27_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 27
      PRI27        : NVICIP27_PRI27_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP27_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI27        at 0 range 4 .. 7;
   end record;

   subtype NVICIP28_PRI28_Field is HAL.UInt4;

   --  Interrupt Priority Register 28
   type NVICIP28_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 28
      PRI28        : NVICIP28_PRI28_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP28_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI28        at 0 range 4 .. 7;
   end record;

   subtype NVICIP29_PRI29_Field is HAL.UInt4;

   --  Interrupt Priority Register 29
   type NVICIP29_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 29
      PRI29        : NVICIP29_PRI29_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP29_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI29        at 0 range 4 .. 7;
   end record;

   subtype NVICIP30_PRI30_Field is HAL.UInt4;

   --  Interrupt Priority Register 30
   type NVICIP30_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 30
      PRI30        : NVICIP30_PRI30_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP30_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI30        at 0 range 4 .. 7;
   end record;

   subtype NVICIP31_PRI31_Field is HAL.UInt4;

   --  Interrupt Priority Register 31
   type NVICIP31_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_UART0_RX_TX interrupt 31
      PRI31        : NVICIP31_PRI31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP31_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI31        at 0 range 4 .. 7;
   end record;

   subtype NVICIP32_PRI32_Field is HAL.UInt4;

   --  Interrupt Priority Register 32
   type NVICIP32_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_UART0_ERR interrupt 32
      PRI32        : NVICIP32_PRI32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP32_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI32        at 0 range 4 .. 7;
   end record;

   subtype NVICIP33_PRI33_Field is HAL.UInt4;

   --  Interrupt Priority Register 33
   type NVICIP33_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_UART1_RX_TX interrupt 33
      PRI33        : NVICIP33_PRI33_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP33_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI33        at 0 range 4 .. 7;
   end record;

   subtype NVICIP34_PRI34_Field is HAL.UInt4;

   --  Interrupt Priority Register 34
   type NVICIP34_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_UART1_ERR interrupt 34
      PRI34        : NVICIP34_PRI34_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP34_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI34        at 0 range 4 .. 7;
   end record;

   subtype NVICIP35_PRI35_Field is HAL.UInt4;

   --  Interrupt Priority Register 35
   type NVICIP35_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 35
      PRI35        : NVICIP35_PRI35_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP35_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI35        at 0 range 4 .. 7;
   end record;

   subtype NVICIP36_PRI36_Field is HAL.UInt4;

   --  Interrupt Priority Register 36
   type NVICIP36_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 36
      PRI36        : NVICIP36_PRI36_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP36_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI36        at 0 range 4 .. 7;
   end record;

   subtype NVICIP37_PRI37_Field is HAL.UInt4;

   --  Interrupt Priority Register 37
   type NVICIP37_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 37
      PRI37        : NVICIP37_PRI37_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP37_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI37        at 0 range 4 .. 7;
   end record;

   subtype NVICIP38_PRI38_Field is HAL.UInt4;

   --  Interrupt Priority Register 38
   type NVICIP38_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ADC_ERR interrupt 38
      PRI38        : NVICIP38_PRI38_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP38_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI38        at 0 range 4 .. 7;
   end record;

   subtype NVICIP39_PRI39_Field is HAL.UInt4;

   --  Interrupt Priority Register 39
   type NVICIP39_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ADCA interrupt 39
      PRI39        : NVICIP39_PRI39_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP39_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI39        at 0 range 4 .. 7;
   end record;

   subtype NVICIP40_PRI40_Field is HAL.UInt4;

   --  Interrupt Priority Register 40
   type NVICIP40_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CMP0 interrupt 40
      PRI40        : NVICIP40_PRI40_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP40_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI40        at 0 range 4 .. 7;
   end record;

   subtype NVICIP41_PRI41_Field is HAL.UInt4;

   --  Interrupt Priority Register 41
   type NVICIP41_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CMP1 interrupt 41
      PRI41        : NVICIP41_PRI41_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP41_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI41        at 0 range 4 .. 7;
   end record;

   subtype NVICIP42_PRI42_Field is HAL.UInt4;

   --  Interrupt Priority Register 42
   type NVICIP42_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_FTM0 interrupt 42
      PRI42        : NVICIP42_PRI42_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP42_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI42        at 0 range 4 .. 7;
   end record;

   subtype NVICIP43_PRI43_Field is HAL.UInt4;

   --  Interrupt Priority Register 43
   type NVICIP43_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_FTM1 interrupt 43
      PRI43        : NVICIP43_PRI43_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP43_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI43        at 0 range 4 .. 7;
   end record;

   subtype NVICIP44_PRI44_Field is HAL.UInt4;

   --  Interrupt Priority Register 44
   type NVICIP44_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 44
      PRI44        : NVICIP44_PRI44_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP44_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI44        at 0 range 4 .. 7;
   end record;

   subtype NVICIP45_PRI45_Field is HAL.UInt4;

   --  Interrupt Priority Register 45
   type NVICIP45_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 45
      PRI45        : NVICIP45_PRI45_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP45_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI45        at 0 range 4 .. 7;
   end record;

   subtype NVICIP46_PRI46_Field is HAL.UInt4;

   --  Interrupt Priority Register 46
   type NVICIP46_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 46
      PRI46        : NVICIP46_PRI46_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP46_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI46        at 0 range 4 .. 7;
   end record;

   subtype NVICIP47_PRI47_Field is HAL.UInt4;

   --  Interrupt Priority Register 47
   type NVICIP47_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 47
      PRI47        : NVICIP47_PRI47_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP47_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI47        at 0 range 4 .. 7;
   end record;

   subtype NVICIP48_PRI48_Field is HAL.UInt4;

   --  Interrupt Priority Register 48
   type NVICIP48_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PIT0 interrupt 48
      PRI48        : NVICIP48_PRI48_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP48_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI48        at 0 range 4 .. 7;
   end record;

   subtype NVICIP49_PRI49_Field is HAL.UInt4;

   --  Interrupt Priority Register 49
   type NVICIP49_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PIT1 interrupt 49
      PRI49        : NVICIP49_PRI49_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP49_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI49        at 0 range 4 .. 7;
   end record;

   subtype NVICIP50_PRI50_Field is HAL.UInt4;

   --  Interrupt Priority Register 50
   type NVICIP50_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PIT2 interrupt 50
      PRI50        : NVICIP50_PRI50_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP50_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI50        at 0 range 4 .. 7;
   end record;

   subtype NVICIP51_PRI51_Field is HAL.UInt4;

   --  Interrupt Priority Register 51
   type NVICIP51_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PIT3 interrupt 51
      PRI51        : NVICIP51_PRI51_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP51_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI51        at 0 range 4 .. 7;
   end record;

   subtype NVICIP52_PRI52_Field is HAL.UInt4;

   --  Interrupt Priority Register 52
   type NVICIP52_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PDB0 interrupt 52
      PRI52        : NVICIP52_PRI52_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP52_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI52        at 0 range 4 .. 7;
   end record;

   subtype NVICIP53_PRI53_Field is HAL.UInt4;

   --  Interrupt Priority Register 53
   type NVICIP53_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 53
      PRI53        : NVICIP53_PRI53_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP53_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI53        at 0 range 4 .. 7;
   end record;

   subtype NVICIP54_PRI54_Field is HAL.UInt4;

   --  Interrupt Priority Register 54
   type NVICIP54_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_XBARA interrupt 54
      PRI54        : NVICIP54_PRI54_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP54_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI54        at 0 range 4 .. 7;
   end record;

   subtype NVICIP55_PRI55_Field is HAL.UInt4;

   --  Interrupt Priority Register 55
   type NVICIP55_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PDB1 interrupt 55
      PRI55        : NVICIP55_PRI55_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP55_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI55        at 0 range 4 .. 7;
   end record;

   subtype NVICIP56_PRI56_Field is HAL.UInt4;

   --  Interrupt Priority Register 56
   type NVICIP56_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 56
      PRI56        : NVICIP56_PRI56_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP56_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI56        at 0 range 4 .. 7;
   end record;

   subtype NVICIP57_PRI57_Field is HAL.UInt4;

   --  Interrupt Priority Register 57
   type NVICIP57_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_MCG interrupt 57
      PRI57        : NVICIP57_PRI57_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP57_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI57        at 0 range 4 .. 7;
   end record;

   subtype NVICIP58_PRI58_Field is HAL.UInt4;

   --  Interrupt Priority Register 58
   type NVICIP58_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_LPTMR0 interrupt 58
      PRI58        : NVICIP58_PRI58_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP58_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI58        at 0 range 4 .. 7;
   end record;

   subtype NVICIP59_PRI59_Field is HAL.UInt4;

   --  Interrupt Priority Register 59
   type NVICIP59_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PORTA interrupt 59
      PRI59        : NVICIP59_PRI59_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP59_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI59        at 0 range 4 .. 7;
   end record;

   subtype NVICIP60_PRI60_Field is HAL.UInt4;

   --  Interrupt Priority Register 60
   type NVICIP60_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PORTB interrupt 60
      PRI60        : NVICIP60_PRI60_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP60_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI60        at 0 range 4 .. 7;
   end record;

   subtype NVICIP61_PRI61_Field is HAL.UInt4;

   --  Interrupt Priority Register 61
   type NVICIP61_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PORTC interrupt 61
      PRI61        : NVICIP61_PRI61_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP61_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI61        at 0 range 4 .. 7;
   end record;

   subtype NVICIP62_PRI62_Field is HAL.UInt4;

   --  Interrupt Priority Register 62
   type NVICIP62_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PORTD interrupt 62
      PRI62        : NVICIP62_PRI62_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP62_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI62        at 0 range 4 .. 7;
   end record;

   subtype NVICIP63_PRI63_Field is HAL.UInt4;

   --  Interrupt Priority Register 63
   type NVICIP63_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_PORTE interrupt 63
      PRI63        : NVICIP63_PRI63_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP63_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI63        at 0 range 4 .. 7;
   end record;

   subtype NVICIP64_PRI64_Field is HAL.UInt4;

   --  Interrupt Priority Register 64
   type NVICIP64_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_SWI interrupt 64
      PRI64        : NVICIP64_PRI64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP64_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI64        at 0 range 4 .. 7;
   end record;

   subtype NVICIP65_PRI65_Field is HAL.UInt4;

   --  Interrupt Priority Register 65
   type NVICIP65_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 65
      PRI65        : NVICIP65_PRI65_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP65_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI65        at 0 range 4 .. 7;
   end record;

   subtype NVICIP66_PRI66_Field is HAL.UInt4;

   --  Interrupt Priority Register 66
   type NVICIP66_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ENC0_COMPARE interrupt 66
      PRI66        : NVICIP66_PRI66_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP66_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI66        at 0 range 4 .. 7;
   end record;

   subtype NVICIP67_PRI67_Field is HAL.UInt4;

   --  Interrupt Priority Register 67
   type NVICIP67_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ENC0_HOME interrupt 67
      PRI67        : NVICIP67_PRI67_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP67_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI67        at 0 range 4 .. 7;
   end record;

   subtype NVICIP68_PRI68_Field is HAL.UInt4;

   --  Interrupt Priority Register 68
   type NVICIP68_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ENC0_WDOG_SAB interrupt 68
      PRI68        : NVICIP68_PRI68_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP68_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI68        at 0 range 4 .. 7;
   end record;

   subtype NVICIP69_PRI69_Field is HAL.UInt4;

   --  Interrupt Priority Register 69
   type NVICIP69_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ENC0_INDEX interrupt 69
      PRI69        : NVICIP69_PRI69_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP69_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI69        at 0 range 4 .. 7;
   end record;

   subtype NVICIP70_PRI70_Field is HAL.UInt4;

   --  Interrupt Priority Register 70
   type NVICIP70_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CMP2 interrupt 70
      PRI70        : NVICIP70_PRI70_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP70_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI70        at 0 range 4 .. 7;
   end record;

   subtype NVICIP71_PRI71_Field is HAL.UInt4;

   --  Interrupt Priority Register 71
   type NVICIP71_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_FTM3 interrupt 71
      PRI71        : NVICIP71_PRI71_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP71_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI71        at 0 range 4 .. 7;
   end record;

   subtype NVICIP72_PRI72_Field is HAL.UInt4;

   --  Interrupt Priority Register 72
   type NVICIP72_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 72
      PRI72        : NVICIP72_PRI72_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP72_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI72        at 0 range 4 .. 7;
   end record;

   subtype NVICIP73_PRI73_Field is HAL.UInt4;

   --  Interrupt Priority Register 73
   type NVICIP73_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_ADCB interrupt 73
      PRI73        : NVICIP73_PRI73_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP73_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI73        at 0 range 4 .. 7;
   end record;

   subtype NVICIP74_PRI74_Field is HAL.UInt4;

   --  Interrupt Priority Register 74
   type NVICIP74_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 74
      PRI74        : NVICIP74_PRI74_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP74_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI74        at 0 range 4 .. 7;
   end record;

   subtype NVICIP75_PRI75_Field is HAL.UInt4;

   --  Interrupt Priority Register 75
   type NVICIP75_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN0_ORed_Message_buffer interrupt 75
      PRI75        : NVICIP75_PRI75_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP75_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI75        at 0 range 4 .. 7;
   end record;

   subtype NVICIP76_PRI76_Field is HAL.UInt4;

   --  Interrupt Priority Register 76
   type NVICIP76_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN0_Bus_Off interrupt 76
      PRI76        : NVICIP76_PRI76_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP76_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI76        at 0 range 4 .. 7;
   end record;

   subtype NVICIP77_PRI77_Field is HAL.UInt4;

   --  Interrupt Priority Register 77
   type NVICIP77_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN0_Error interrupt 77
      PRI77        : NVICIP77_PRI77_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP77_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI77        at 0 range 4 .. 7;
   end record;

   subtype NVICIP78_PRI78_Field is HAL.UInt4;

   --  Interrupt Priority Register 78
   type NVICIP78_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN0_Tx_Warning interrupt 78
      PRI78        : NVICIP78_PRI78_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP78_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI78        at 0 range 4 .. 7;
   end record;

   subtype NVICIP79_PRI79_Field is HAL.UInt4;

   --  Interrupt Priority Register 79
   type NVICIP79_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN0_Rx_Warning interrupt 79
      PRI79        : NVICIP79_PRI79_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP79_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI79        at 0 range 4 .. 7;
   end record;

   subtype NVICIP80_PRI80_Field is HAL.UInt4;

   --  Interrupt Priority Register 80
   type NVICIP80_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN0_Wake_Up interrupt 80
      PRI80        : NVICIP80_PRI80_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP80_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI80        at 0 range 4 .. 7;
   end record;

   subtype NVICIP81_PRI81_Field is HAL.UInt4;

   --  Interrupt Priority Register 81
   type NVICIP81_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 81
      PRI81        : NVICIP81_PRI81_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP81_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI81        at 0 range 4 .. 7;
   end record;

   subtype NVICIP82_PRI82_Field is HAL.UInt4;

   --  Interrupt Priority Register 82
   type NVICIP82_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 82
      PRI82        : NVICIP82_PRI82_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP82_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI82        at 0 range 4 .. 7;
   end record;

   subtype NVICIP83_PRI83_Field is HAL.UInt4;

   --  Interrupt Priority Register 83
   type NVICIP83_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 83
      PRI83        : NVICIP83_PRI83_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP83_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI83        at 0 range 4 .. 7;
   end record;

   subtype NVICIP84_PRI84_Field is HAL.UInt4;

   --  Interrupt Priority Register 84
   type NVICIP84_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 84
      PRI84        : NVICIP84_PRI84_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP84_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI84        at 0 range 4 .. 7;
   end record;

   subtype NVICIP85_PRI85_Field is HAL.UInt4;

   --  Interrupt Priority Register 85
   type NVICIP85_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 85
      PRI85        : NVICIP85_PRI85_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP85_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI85        at 0 range 4 .. 7;
   end record;

   subtype NVICIP86_PRI86_Field is HAL.UInt4;

   --  Interrupt Priority Register 86
   type NVICIP86_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 86
      PRI86        : NVICIP86_PRI86_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP86_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI86        at 0 range 4 .. 7;
   end record;

   subtype NVICIP87_PRI87_Field is HAL.UInt4;

   --  Interrupt Priority Register 87
   type NVICIP87_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 87
      PRI87        : NVICIP87_PRI87_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP87_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI87        at 0 range 4 .. 7;
   end record;

   subtype NVICIP88_PRI88_Field is HAL.UInt4;

   --  Interrupt Priority Register 88
   type NVICIP88_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 88
      PRI88        : NVICIP88_PRI88_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP88_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI88        at 0 range 4 .. 7;
   end record;

   subtype NVICIP89_PRI89_Field is HAL.UInt4;

   --  Interrupt Priority Register 89
   type NVICIP89_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 89
      PRI89        : NVICIP89_PRI89_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP89_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI89        at 0 range 4 .. 7;
   end record;

   subtype NVICIP90_PRI90_Field is HAL.UInt4;

   --  Interrupt Priority Register 90
   type NVICIP90_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 90
      PRI90        : NVICIP90_PRI90_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP90_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI90        at 0 range 4 .. 7;
   end record;

   subtype NVICIP91_PRI91_Field is HAL.UInt4;

   --  Interrupt Priority Register 91
   type NVICIP91_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 91
      PRI91        : NVICIP91_PRI91_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP91_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI91        at 0 range 4 .. 7;
   end record;

   subtype NVICIP92_PRI92_Field is HAL.UInt4;

   --  Interrupt Priority Register 92
   type NVICIP92_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CMP3 interrupt 92
      PRI92        : NVICIP92_PRI92_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP92_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI92        at 0 range 4 .. 7;
   end record;

   subtype NVICIP93_PRI93_Field is HAL.UInt4;

   --  Interrupt Priority Register 93
   type NVICIP93_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of interrupt 93
      PRI93        : NVICIP93_PRI93_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP93_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI93        at 0 range 4 .. 7;
   end record;

   subtype NVICIP94_PRI94_Field is HAL.UInt4;

   --  Interrupt Priority Register 94
   type NVICIP94_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN1_ORed_Message_buffer interrupt 94
      PRI94        : NVICIP94_PRI94_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP94_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI94        at 0 range 4 .. 7;
   end record;

   subtype NVICIP95_PRI95_Field is HAL.UInt4;

   --  Interrupt Priority Register 95
   type NVICIP95_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN1_Bus_Off interrupt 95
      PRI95        : NVICIP95_PRI95_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP95_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI95        at 0 range 4 .. 7;
   end record;

   subtype NVICIP96_PRI96_Field is HAL.UInt4;

   --  Interrupt Priority Register 96
   type NVICIP96_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN1_Error interrupt 96
      PRI96        : NVICIP96_PRI96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP96_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI96        at 0 range 4 .. 7;
   end record;

   subtype NVICIP97_PRI97_Field is HAL.UInt4;

   --  Interrupt Priority Register 97
   type NVICIP97_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN1_Tx_Warning interrupt 97
      PRI97        : NVICIP97_PRI97_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP97_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI97        at 0 range 4 .. 7;
   end record;

   subtype NVICIP98_PRI98_Field is HAL.UInt4;

   --  Interrupt Priority Register 98
   type NVICIP98_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN1_Rx_Warning interrupt 98
      PRI98        : NVICIP98_PRI98_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP98_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI98        at 0 range 4 .. 7;
   end record;

   subtype NVICIP99_PRI99_Field is HAL.UInt4;

   --  Interrupt Priority Register 99
   type NVICIP99_Register is record
      --  unspecified
      Reserved_0_3 : HAL.UInt4 := 16#0#;
      --  Priority of the INT_CAN1_Wake_Up interrupt 99
      PRI99        : NVICIP99_PRI99_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for NVICIP99_Register use record
      Reserved_0_3 at 0 range 0 .. 3;
      PRI99        at 0 range 4 .. 7;
   end record;

   subtype NVICSTIR_INTID_Field is HAL.UInt9;

   --  Software Trigger Interrupt Register
   type NVICSTIR_Register is record
      --  Interrupt ID of the interrupt to trigger, in the range 0-239. For
      --  example, a value of 0x03 specifies interrupt IRQ3.
      INTID         : NVICSTIR_INTID_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICSTIR_Register use record
      INTID         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Nested Vectored Interrupt Controller
   type NVIC_Peripheral is record
      --  Interrupt Set Enable Register n
      NVICISER0 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER1 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER2 : aliased HAL.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER3 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER0 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER1 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER2 : aliased HAL.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER3 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR0 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR1 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR2 : aliased HAL.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR3 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR0 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR1 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR2 : aliased HAL.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR3 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR0 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR1 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR2 : aliased HAL.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR3 : aliased HAL.UInt32;
      --  Interrupt Priority Register 0
      NVICIP0   : aliased NVICIP0_Register;
      --  Interrupt Priority Register 1
      NVICIP1   : aliased NVICIP1_Register;
      --  Interrupt Priority Register 2
      NVICIP2   : aliased NVICIP2_Register;
      --  Interrupt Priority Register 3
      NVICIP3   : aliased NVICIP3_Register;
      --  Interrupt Priority Register 4
      NVICIP4   : aliased NVICIP4_Register;
      --  Interrupt Priority Register 5
      NVICIP5   : aliased NVICIP5_Register;
      --  Interrupt Priority Register 6
      NVICIP6   : aliased NVICIP6_Register;
      --  Interrupt Priority Register 7
      NVICIP7   : aliased NVICIP7_Register;
      --  Interrupt Priority Register 8
      NVICIP8   : aliased NVICIP8_Register;
      --  Interrupt Priority Register 9
      NVICIP9   : aliased NVICIP9_Register;
      --  Interrupt Priority Register 10
      NVICIP10  : aliased NVICIP10_Register;
      --  Interrupt Priority Register 11
      NVICIP11  : aliased NVICIP11_Register;
      --  Interrupt Priority Register 12
      NVICIP12  : aliased NVICIP12_Register;
      --  Interrupt Priority Register 13
      NVICIP13  : aliased NVICIP13_Register;
      --  Interrupt Priority Register 14
      NVICIP14  : aliased NVICIP14_Register;
      --  Interrupt Priority Register 15
      NVICIP15  : aliased NVICIP15_Register;
      --  Interrupt Priority Register 16
      NVICIP16  : aliased NVICIP16_Register;
      --  Interrupt Priority Register 17
      NVICIP17  : aliased NVICIP17_Register;
      --  Interrupt Priority Register 18
      NVICIP18  : aliased NVICIP18_Register;
      --  Interrupt Priority Register 19
      NVICIP19  : aliased NVICIP19_Register;
      --  Interrupt Priority Register 20
      NVICIP20  : aliased NVICIP20_Register;
      --  Interrupt Priority Register 21
      NVICIP21  : aliased NVICIP21_Register;
      --  Interrupt Priority Register 22
      NVICIP22  : aliased NVICIP22_Register;
      --  Interrupt Priority Register 23
      NVICIP23  : aliased NVICIP23_Register;
      --  Interrupt Priority Register 24
      NVICIP24  : aliased NVICIP24_Register;
      --  Interrupt Priority Register 25
      NVICIP25  : aliased NVICIP25_Register;
      --  Interrupt Priority Register 26
      NVICIP26  : aliased NVICIP26_Register;
      --  Interrupt Priority Register 27
      NVICIP27  : aliased NVICIP27_Register;
      --  Interrupt Priority Register 28
      NVICIP28  : aliased NVICIP28_Register;
      --  Interrupt Priority Register 29
      NVICIP29  : aliased NVICIP29_Register;
      --  Interrupt Priority Register 30
      NVICIP30  : aliased NVICIP30_Register;
      --  Interrupt Priority Register 31
      NVICIP31  : aliased NVICIP31_Register;
      --  Interrupt Priority Register 32
      NVICIP32  : aliased NVICIP32_Register;
      --  Interrupt Priority Register 33
      NVICIP33  : aliased NVICIP33_Register;
      --  Interrupt Priority Register 34
      NVICIP34  : aliased NVICIP34_Register;
      --  Interrupt Priority Register 35
      NVICIP35  : aliased NVICIP35_Register;
      --  Interrupt Priority Register 36
      NVICIP36  : aliased NVICIP36_Register;
      --  Interrupt Priority Register 37
      NVICIP37  : aliased NVICIP37_Register;
      --  Interrupt Priority Register 38
      NVICIP38  : aliased NVICIP38_Register;
      --  Interrupt Priority Register 39
      NVICIP39  : aliased NVICIP39_Register;
      --  Interrupt Priority Register 40
      NVICIP40  : aliased NVICIP40_Register;
      --  Interrupt Priority Register 41
      NVICIP41  : aliased NVICIP41_Register;
      --  Interrupt Priority Register 42
      NVICIP42  : aliased NVICIP42_Register;
      --  Interrupt Priority Register 43
      NVICIP43  : aliased NVICIP43_Register;
      --  Interrupt Priority Register 44
      NVICIP44  : aliased NVICIP44_Register;
      --  Interrupt Priority Register 45
      NVICIP45  : aliased NVICIP45_Register;
      --  Interrupt Priority Register 46
      NVICIP46  : aliased NVICIP46_Register;
      --  Interrupt Priority Register 47
      NVICIP47  : aliased NVICIP47_Register;
      --  Interrupt Priority Register 48
      NVICIP48  : aliased NVICIP48_Register;
      --  Interrupt Priority Register 49
      NVICIP49  : aliased NVICIP49_Register;
      --  Interrupt Priority Register 50
      NVICIP50  : aliased NVICIP50_Register;
      --  Interrupt Priority Register 51
      NVICIP51  : aliased NVICIP51_Register;
      --  Interrupt Priority Register 52
      NVICIP52  : aliased NVICIP52_Register;
      --  Interrupt Priority Register 53
      NVICIP53  : aliased NVICIP53_Register;
      --  Interrupt Priority Register 54
      NVICIP54  : aliased NVICIP54_Register;
      --  Interrupt Priority Register 55
      NVICIP55  : aliased NVICIP55_Register;
      --  Interrupt Priority Register 56
      NVICIP56  : aliased NVICIP56_Register;
      --  Interrupt Priority Register 57
      NVICIP57  : aliased NVICIP57_Register;
      --  Interrupt Priority Register 58
      NVICIP58  : aliased NVICIP58_Register;
      --  Interrupt Priority Register 59
      NVICIP59  : aliased NVICIP59_Register;
      --  Interrupt Priority Register 60
      NVICIP60  : aliased NVICIP60_Register;
      --  Interrupt Priority Register 61
      NVICIP61  : aliased NVICIP61_Register;
      --  Interrupt Priority Register 62
      NVICIP62  : aliased NVICIP62_Register;
      --  Interrupt Priority Register 63
      NVICIP63  : aliased NVICIP63_Register;
      --  Interrupt Priority Register 64
      NVICIP64  : aliased NVICIP64_Register;
      --  Interrupt Priority Register 65
      NVICIP65  : aliased NVICIP65_Register;
      --  Interrupt Priority Register 66
      NVICIP66  : aliased NVICIP66_Register;
      --  Interrupt Priority Register 67
      NVICIP67  : aliased NVICIP67_Register;
      --  Interrupt Priority Register 68
      NVICIP68  : aliased NVICIP68_Register;
      --  Interrupt Priority Register 69
      NVICIP69  : aliased NVICIP69_Register;
      --  Interrupt Priority Register 70
      NVICIP70  : aliased NVICIP70_Register;
      --  Interrupt Priority Register 71
      NVICIP71  : aliased NVICIP71_Register;
      --  Interrupt Priority Register 72
      NVICIP72  : aliased NVICIP72_Register;
      --  Interrupt Priority Register 73
      NVICIP73  : aliased NVICIP73_Register;
      --  Interrupt Priority Register 74
      NVICIP74  : aliased NVICIP74_Register;
      --  Interrupt Priority Register 75
      NVICIP75  : aliased NVICIP75_Register;
      --  Interrupt Priority Register 76
      NVICIP76  : aliased NVICIP76_Register;
      --  Interrupt Priority Register 77
      NVICIP77  : aliased NVICIP77_Register;
      --  Interrupt Priority Register 78
      NVICIP78  : aliased NVICIP78_Register;
      --  Interrupt Priority Register 79
      NVICIP79  : aliased NVICIP79_Register;
      --  Interrupt Priority Register 80
      NVICIP80  : aliased NVICIP80_Register;
      --  Interrupt Priority Register 81
      NVICIP81  : aliased NVICIP81_Register;
      --  Interrupt Priority Register 82
      NVICIP82  : aliased NVICIP82_Register;
      --  Interrupt Priority Register 83
      NVICIP83  : aliased NVICIP83_Register;
      --  Interrupt Priority Register 84
      NVICIP84  : aliased NVICIP84_Register;
      --  Interrupt Priority Register 85
      NVICIP85  : aliased NVICIP85_Register;
      --  Interrupt Priority Register 86
      NVICIP86  : aliased NVICIP86_Register;
      --  Interrupt Priority Register 87
      NVICIP87  : aliased NVICIP87_Register;
      --  Interrupt Priority Register 88
      NVICIP88  : aliased NVICIP88_Register;
      --  Interrupt Priority Register 89
      NVICIP89  : aliased NVICIP89_Register;
      --  Interrupt Priority Register 90
      NVICIP90  : aliased NVICIP90_Register;
      --  Interrupt Priority Register 91
      NVICIP91  : aliased NVICIP91_Register;
      --  Interrupt Priority Register 92
      NVICIP92  : aliased NVICIP92_Register;
      --  Interrupt Priority Register 93
      NVICIP93  : aliased NVICIP93_Register;
      --  Interrupt Priority Register 94
      NVICIP94  : aliased NVICIP94_Register;
      --  Interrupt Priority Register 95
      NVICIP95  : aliased NVICIP95_Register;
      --  Interrupt Priority Register 96
      NVICIP96  : aliased NVICIP96_Register;
      --  Interrupt Priority Register 97
      NVICIP97  : aliased NVICIP97_Register;
      --  Interrupt Priority Register 98
      NVICIP98  : aliased NVICIP98_Register;
      --  Interrupt Priority Register 99
      NVICIP99  : aliased NVICIP99_Register;
      --  Software Trigger Interrupt Register
      NVICSTIR  : aliased NVICSTIR_Register;
   end record
     with Volatile;

   for NVIC_Peripheral use record
      NVICISER0 at 16#0# range 0 .. 31;
      NVICISER1 at 16#4# range 0 .. 31;
      NVICISER2 at 16#8# range 0 .. 31;
      NVICISER3 at 16#C# range 0 .. 31;
      NVICICER0 at 16#80# range 0 .. 31;
      NVICICER1 at 16#84# range 0 .. 31;
      NVICICER2 at 16#88# range 0 .. 31;
      NVICICER3 at 16#8C# range 0 .. 31;
      NVICISPR0 at 16#100# range 0 .. 31;
      NVICISPR1 at 16#104# range 0 .. 31;
      NVICISPR2 at 16#108# range 0 .. 31;
      NVICISPR3 at 16#10C# range 0 .. 31;
      NVICICPR0 at 16#180# range 0 .. 31;
      NVICICPR1 at 16#184# range 0 .. 31;
      NVICICPR2 at 16#188# range 0 .. 31;
      NVICICPR3 at 16#18C# range 0 .. 31;
      NVICIABR0 at 16#200# range 0 .. 31;
      NVICIABR1 at 16#204# range 0 .. 31;
      NVICIABR2 at 16#208# range 0 .. 31;
      NVICIABR3 at 16#20C# range 0 .. 31;
      NVICIP0   at 16#300# range 0 .. 7;
      NVICIP1   at 16#301# range 0 .. 7;
      NVICIP2   at 16#302# range 0 .. 7;
      NVICIP3   at 16#303# range 0 .. 7;
      NVICIP4   at 16#304# range 0 .. 7;
      NVICIP5   at 16#305# range 0 .. 7;
      NVICIP6   at 16#306# range 0 .. 7;
      NVICIP7   at 16#307# range 0 .. 7;
      NVICIP8   at 16#308# range 0 .. 7;
      NVICIP9   at 16#309# range 0 .. 7;
      NVICIP10  at 16#30A# range 0 .. 7;
      NVICIP11  at 16#30B# range 0 .. 7;
      NVICIP12  at 16#30C# range 0 .. 7;
      NVICIP13  at 16#30D# range 0 .. 7;
      NVICIP14  at 16#30E# range 0 .. 7;
      NVICIP15  at 16#30F# range 0 .. 7;
      NVICIP16  at 16#310# range 0 .. 7;
      NVICIP17  at 16#311# range 0 .. 7;
      NVICIP18  at 16#312# range 0 .. 7;
      NVICIP19  at 16#313# range 0 .. 7;
      NVICIP20  at 16#314# range 0 .. 7;
      NVICIP21  at 16#315# range 0 .. 7;
      NVICIP22  at 16#316# range 0 .. 7;
      NVICIP23  at 16#317# range 0 .. 7;
      NVICIP24  at 16#318# range 0 .. 7;
      NVICIP25  at 16#319# range 0 .. 7;
      NVICIP26  at 16#31A# range 0 .. 7;
      NVICIP27  at 16#31B# range 0 .. 7;
      NVICIP28  at 16#31C# range 0 .. 7;
      NVICIP29  at 16#31D# range 0 .. 7;
      NVICIP30  at 16#31E# range 0 .. 7;
      NVICIP31  at 16#31F# range 0 .. 7;
      NVICIP32  at 16#320# range 0 .. 7;
      NVICIP33  at 16#321# range 0 .. 7;
      NVICIP34  at 16#322# range 0 .. 7;
      NVICIP35  at 16#323# range 0 .. 7;
      NVICIP36  at 16#324# range 0 .. 7;
      NVICIP37  at 16#325# range 0 .. 7;
      NVICIP38  at 16#326# range 0 .. 7;
      NVICIP39  at 16#327# range 0 .. 7;
      NVICIP40  at 16#328# range 0 .. 7;
      NVICIP41  at 16#329# range 0 .. 7;
      NVICIP42  at 16#32A# range 0 .. 7;
      NVICIP43  at 16#32B# range 0 .. 7;
      NVICIP44  at 16#32C# range 0 .. 7;
      NVICIP45  at 16#32D# range 0 .. 7;
      NVICIP46  at 16#32E# range 0 .. 7;
      NVICIP47  at 16#32F# range 0 .. 7;
      NVICIP48  at 16#330# range 0 .. 7;
      NVICIP49  at 16#331# range 0 .. 7;
      NVICIP50  at 16#332# range 0 .. 7;
      NVICIP51  at 16#333# range 0 .. 7;
      NVICIP52  at 16#334# range 0 .. 7;
      NVICIP53  at 16#335# range 0 .. 7;
      NVICIP54  at 16#336# range 0 .. 7;
      NVICIP55  at 16#337# range 0 .. 7;
      NVICIP56  at 16#338# range 0 .. 7;
      NVICIP57  at 16#339# range 0 .. 7;
      NVICIP58  at 16#33A# range 0 .. 7;
      NVICIP59  at 16#33B# range 0 .. 7;
      NVICIP60  at 16#33C# range 0 .. 7;
      NVICIP61  at 16#33D# range 0 .. 7;
      NVICIP62  at 16#33E# range 0 .. 7;
      NVICIP63  at 16#33F# range 0 .. 7;
      NVICIP64  at 16#340# range 0 .. 7;
      NVICIP65  at 16#341# range 0 .. 7;
      NVICIP66  at 16#342# range 0 .. 7;
      NVICIP67  at 16#343# range 0 .. 7;
      NVICIP68  at 16#344# range 0 .. 7;
      NVICIP69  at 16#345# range 0 .. 7;
      NVICIP70  at 16#346# range 0 .. 7;
      NVICIP71  at 16#347# range 0 .. 7;
      NVICIP72  at 16#348# range 0 .. 7;
      NVICIP73  at 16#349# range 0 .. 7;
      NVICIP74  at 16#34A# range 0 .. 7;
      NVICIP75  at 16#34B# range 0 .. 7;
      NVICIP76  at 16#34C# range 0 .. 7;
      NVICIP77  at 16#34D# range 0 .. 7;
      NVICIP78  at 16#34E# range 0 .. 7;
      NVICIP79  at 16#34F# range 0 .. 7;
      NVICIP80  at 16#350# range 0 .. 7;
      NVICIP81  at 16#351# range 0 .. 7;
      NVICIP82  at 16#352# range 0 .. 7;
      NVICIP83  at 16#353# range 0 .. 7;
      NVICIP84  at 16#354# range 0 .. 7;
      NVICIP85  at 16#355# range 0 .. 7;
      NVICIP86  at 16#356# range 0 .. 7;
      NVICIP87  at 16#357# range 0 .. 7;
      NVICIP88  at 16#358# range 0 .. 7;
      NVICIP89  at 16#359# range 0 .. 7;
      NVICIP90  at 16#35A# range 0 .. 7;
      NVICIP91  at 16#35B# range 0 .. 7;
      NVICIP92  at 16#35C# range 0 .. 7;
      NVICIP93  at 16#35D# range 0 .. 7;
      NVICIP94  at 16#35E# range 0 .. 7;
      NVICIP95  at 16#35F# range 0 .. 7;
      NVICIP96  at 16#360# range 0 .. 7;
      NVICIP97  at 16#361# range 0 .. 7;
      NVICIP98  at 16#362# range 0 .. 7;
      NVICIP99  at 16#363# range 0 .. 7;
      NVICSTIR  at 16#E00# range 0 .. 31;
   end record;

   --  Nested Vectored Interrupt Controller
   NVIC_Periph : aliased NVIC_Peripheral
     with Import, Address => NVIC_Base;

end NRF_SVD.NVIC;
