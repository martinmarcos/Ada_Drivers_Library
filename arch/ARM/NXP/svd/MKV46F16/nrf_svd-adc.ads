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

--  This spec has been automatically generated from MKV46F16.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog to digital converter
package NRF_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADC Scan Mode Control
   type CTRL1_SMODE_Field is
     (
      --  Once (single) sequential
      CTRL1_SMODE_Field_000,
      --  Once parallel
      CTRL1_SMODE_Field_001,
      --  Loop sequential
      CTRL1_SMODE_Field_010,
      --  Loop parallel
      CTRL1_SMODE_Field_011,
      --  Triggered sequential
      CTRL1_SMODE_Field_100,
      --  Triggered parallel (default)
      CTRL1_SMODE_Field_101)
     with Size => 3;
   for CTRL1_SMODE_Field use
     (CTRL1_SMODE_Field_000 => 0,
      CTRL1_SMODE_Field_001 => 1,
      CTRL1_SMODE_Field_010 => 2,
      CTRL1_SMODE_Field_011 => 3,
      CTRL1_SMODE_Field_100 => 4,
      CTRL1_SMODE_Field_101 => 5);

   subtype ADC_CTRL1_CHNCFG_L_Field is HAL.UInt4;

   --  High Limit Interrupt Enable
   type CTRL1_HLMTIE_Field is
     (
      --  Interrupt disabled
      CTRL1_HLMTIE_Field_0,
      --  Interrupt enabled
      CTRL1_HLMTIE_Field_1)
     with Size => 1;
   for CTRL1_HLMTIE_Field use
     (CTRL1_HLMTIE_Field_0 => 0,
      CTRL1_HLMTIE_Field_1 => 1);

   --  Low Limit Interrupt Enable
   type CTRL1_LLMTIE_Field is
     (
      --  Interrupt disabled
      CTRL1_LLMTIE_Field_0,
      --  Interrupt enabled
      CTRL1_LLMTIE_Field_1)
     with Size => 1;
   for CTRL1_LLMTIE_Field use
     (CTRL1_LLMTIE_Field_0 => 0,
      CTRL1_LLMTIE_Field_1 => 1);

   --  Zero Crossing Interrupt Enable
   type CTRL1_ZCIE_Field is
     (
      --  Interrupt disabled
      CTRL1_ZCIE_Field_0,
      --  Interrupt enabled
      CTRL1_ZCIE_Field_1)
     with Size => 1;
   for CTRL1_ZCIE_Field use
     (CTRL1_ZCIE_Field_0 => 0,
      CTRL1_ZCIE_Field_1 => 1);

   --  End Of Scan Interrupt Enable
   type CTRL1_EOSIE0_Field is
     (
      --  Interrupt disabled
      CTRL1_EOSIE0_Field_0,
      --  Interrupt enabled
      CTRL1_EOSIE0_Field_1)
     with Size => 1;
   for CTRL1_EOSIE0_Field use
     (CTRL1_EOSIE0_Field_0 => 0,
      CTRL1_EOSIE0_Field_1 => 1);

   --  SYNC0 Enable
   type CTRL1_SYNC0_Field is
     (
      --  Scan is initiated by a write to CTRL1[START0] only
      CTRL1_SYNC0_Field_0,
      --  Use a SYNC0 input pulse or CTRL1[START0] to initiate a scan
      CTRL1_SYNC0_Field_1)
     with Size => 1;
   for CTRL1_SYNC0_Field use
     (CTRL1_SYNC0_Field_0 => 0,
      CTRL1_SYNC0_Field_1 => 1);

   --  START0 Conversion
   type CTRL1_START0_Field is
     (
      --  No action
      CTRL1_START0_Field_0,
      --  Start command is issued
      CTRL1_START0_Field_1)
     with Size => 1;
   for CTRL1_START0_Field use
     (CTRL1_START0_Field_0 => 0,
      CTRL1_START0_Field_1 => 1);

   --  Stop
   type CTRL1_STOP0_Field is
     (
      --  Normal operation
      CTRL1_STOP0_Field_0,
      --  Stop mode
      CTRL1_STOP0_Field_1)
     with Size => 1;
   for CTRL1_STOP0_Field use
     (CTRL1_STOP0_Field_0 => 0,
      CTRL1_STOP0_Field_1 => 1);

   --  DMA enable
   type CTRL1_DMAEN0_Field is
     (
      --  DMA is not enabled.
      CTRL1_DMAEN0_Field_0,
      --  DMA is enabled.
      CTRL1_DMAEN0_Field_1)
     with Size => 1;
   for CTRL1_DMAEN0_Field use
     (CTRL1_DMAEN0_Field_0 => 0,
      CTRL1_DMAEN0_Field_1 => 1);

   --  ADC Control Register 1
   type ADC_CTRL1_Register is record
      --  ADC Scan Mode Control
      SMODE        : CTRL1_SMODE_Field := NRF_SVD.ADC.CTRL1_SMODE_Field_101;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  CHCNF (Channel Configure Low) bits
      CHNCFG_L     : ADC_CTRL1_CHNCFG_L_Field := 16#0#;
      --  High Limit Interrupt Enable
      HLMTIE       : CTRL1_HLMTIE_Field := NRF_SVD.ADC.CTRL1_HLMTIE_Field_0;
      --  Low Limit Interrupt Enable
      LLMTIE       : CTRL1_LLMTIE_Field := NRF_SVD.ADC.CTRL1_LLMTIE_Field_0;
      --  Zero Crossing Interrupt Enable
      ZCIE         : CTRL1_ZCIE_Field := NRF_SVD.ADC.CTRL1_ZCIE_Field_0;
      --  End Of Scan Interrupt Enable
      EOSIE0       : CTRL1_EOSIE0_Field := NRF_SVD.ADC.CTRL1_EOSIE0_Field_0;
      --  SYNC0 Enable
      SYNC0        : CTRL1_SYNC0_Field := NRF_SVD.ADC.CTRL1_SYNC0_Field_1;
      --  Write-only. START0 Conversion
      START0       : CTRL1_START0_Field := NRF_SVD.ADC.CTRL1_START0_Field_0;
      --  Stop
      STOP0        : CTRL1_STOP0_Field := NRF_SVD.ADC.CTRL1_STOP0_Field_1;
      --  DMA enable
      DMAEN0       : CTRL1_DMAEN0_Field := NRF_SVD.ADC.CTRL1_DMAEN0_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CTRL1_Register use record
      SMODE        at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      CHNCFG_L     at 0 range 4 .. 7;
      HLMTIE       at 0 range 8 .. 8;
      LLMTIE       at 0 range 9 .. 9;
      ZCIE         at 0 range 10 .. 10;
      EOSIE0       at 0 range 11 .. 11;
      SYNC0        at 0 range 12 .. 12;
      START0       at 0 range 13 .. 13;
      STOP0        at 0 range 14 .. 14;
      DMAEN0       at 0 range 15 .. 15;
   end record;

   subtype ADC_CTRL2_DIV0_Field is HAL.UInt6;

   --  Simultaneous mode
   type CTRL2_SIMULT_Field is
     (
      --  Parallel scans done independently
      CTRL2_SIMULT_Field_0,
      --  Parallel scans done simultaneously (default)
      CTRL2_SIMULT_Field_1)
     with Size => 1;
   for CTRL2_SIMULT_Field use
     (CTRL2_SIMULT_Field_0 => 0,
      CTRL2_SIMULT_Field_1 => 1);

   subtype ADC_CTRL2_CHNCFG_H_Field is HAL.UInt4;

   --  End Of Scan Interrupt Enable
   type CTRL2_EOSIE1_Field is
     (
      --  Interrupt disabled
      CTRL2_EOSIE1_Field_0,
      --  Interrupt enabled
      CTRL2_EOSIE1_Field_1)
     with Size => 1;
   for CTRL2_EOSIE1_Field use
     (CTRL2_EOSIE1_Field_0 => 0,
      CTRL2_EOSIE1_Field_1 => 1);

   --  SYNC1 Enable
   type CTRL2_SYNC1_Field is
     (
      --  B converter parallel scan is initiated by a write to CTRL2[START1]
      --  bit only
      CTRL2_SYNC1_Field_0,
      --  Use a SYNC1 input pulse or CTRL2[START1] bit to initiate a B
      --  converter parallel scan
      CTRL2_SYNC1_Field_1)
     with Size => 1;
   for CTRL2_SYNC1_Field use
     (CTRL2_SYNC1_Field_0 => 0,
      CTRL2_SYNC1_Field_1 => 1);

   --  START1 Conversion
   type CTRL2_START1_Field is
     (
      --  No action
      CTRL2_START1_Field_0,
      --  Start command is issued
      CTRL2_START1_Field_1)
     with Size => 1;
   for CTRL2_START1_Field use
     (CTRL2_START1_Field_0 => 0,
      CTRL2_START1_Field_1 => 1);

   --  Stop
   type CTRL2_STOP1_Field is
     (
      --  Normal operation
      CTRL2_STOP1_Field_0,
      --  Stop mode
      CTRL2_STOP1_Field_1)
     with Size => 1;
   for CTRL2_STOP1_Field use
     (CTRL2_STOP1_Field_0 => 0,
      CTRL2_STOP1_Field_1 => 1);

   --  DMA enable
   type CTRL2_DMAEN1_Field is
     (
      --  DMA is not enabled.
      CTRL2_DMAEN1_Field_0,
      --  DMA is enabled.
      CTRL2_DMAEN1_Field_1)
     with Size => 1;
   for CTRL2_DMAEN1_Field use
     (CTRL2_DMAEN1_Field_0 => 0,
      CTRL2_DMAEN1_Field_1 => 1);

   --  ADC Control Register 2
   type ADC_CTRL2_Register is record
      --  Clock Divisor Select
      DIV0     : ADC_CTRL2_DIV0_Field := 16#4#;
      --  Simultaneous mode
      SIMULT   : CTRL2_SIMULT_Field := NRF_SVD.ADC.CTRL2_SIMULT_Field_1;
      --  CHCNF (Channel Configure High) bits
      CHNCFG_H : ADC_CTRL2_CHNCFG_H_Field := 16#0#;
      --  End Of Scan Interrupt Enable
      EOSIE1   : CTRL2_EOSIE1_Field := NRF_SVD.ADC.CTRL2_EOSIE1_Field_0;
      --  SYNC1 Enable
      SYNC1    : CTRL2_SYNC1_Field := NRF_SVD.ADC.CTRL2_SYNC1_Field_1;
      --  Write-only. START1 Conversion
      START1   : CTRL2_START1_Field := NRF_SVD.ADC.CTRL2_START1_Field_0;
      --  Stop
      STOP1    : CTRL2_STOP1_Field := NRF_SVD.ADC.CTRL2_STOP1_Field_1;
      --  DMA enable
      DMAEN1   : CTRL2_DMAEN1_Field := NRF_SVD.ADC.CTRL2_DMAEN1_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CTRL2_Register use record
      DIV0     at 0 range 0 .. 5;
      SIMULT   at 0 range 6 .. 6;
      CHNCFG_H at 0 range 7 .. 10;
      EOSIE1   at 0 range 11 .. 11;
      SYNC1    at 0 range 12 .. 12;
      START1   at 0 range 13 .. 13;
      STOP1    at 0 range 14 .. 14;
      DMAEN1   at 0 range 15 .. 15;
   end record;

   --  Zero crossing enable 0
   type ZXCTRL1_ZCE0_Field is
     (
      --  Zero Crossing disabled
      ZXCTRL1_ZCE0_Field_00,
      --  Zero Crossing enabled for positive to negative sign change
      ZXCTRL1_ZCE0_Field_01,
      --  Zero Crossing enabled for negative to positive sign change
      ZXCTRL1_ZCE0_Field_10,
      --  Zero Crossing enabled for any sign change
      ZXCTRL1_ZCE0_Field_11)
     with Size => 2;
   for ZXCTRL1_ZCE0_Field use
     (ZXCTRL1_ZCE0_Field_00 => 0,
      ZXCTRL1_ZCE0_Field_01 => 1,
      ZXCTRL1_ZCE0_Field_10 => 2,
      ZXCTRL1_ZCE0_Field_11 => 3);

   --  ADC_ZXCTRL1_ZCE array
   type ADC_ZXCTRL1_ZCE_Field_Array is array (0 .. 7) of ZXCTRL1_ZCE0_Field
     with Component_Size => 2, Size => 16;

   --  ADC Zero Crossing Control 1 Register
   type ADC_ZXCTRL1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ZCE as a value
            Val : HAL.UInt16;
         when True =>
            --  ZCE as an array
            Arr : ADC_ZXCTRL1_ZCE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_ZXCTRL1_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Zero crossing enable 8
   type ZXCTRL2_ZCE8_Field is
     (
      --  Zero Crossing disabled
      ZXCTRL2_ZCE8_Field_00,
      --  Zero Crossing enabled for positive to negative sign change
      ZXCTRL2_ZCE8_Field_01,
      --  Zero Crossing enabled for negative to positive sign change
      ZXCTRL2_ZCE8_Field_10,
      --  Zero Crossing enabled for any sign change
      ZXCTRL2_ZCE8_Field_11)
     with Size => 2;
   for ZXCTRL2_ZCE8_Field use
     (ZXCTRL2_ZCE8_Field_00 => 0,
      ZXCTRL2_ZCE8_Field_01 => 1,
      ZXCTRL2_ZCE8_Field_10 => 2,
      ZXCTRL2_ZCE8_Field_11 => 3);

   --  ADC_ZXCTRL2_ZCE array
   type ADC_ZXCTRL2_ZCE_Field_Array is array (8 .. 15) of ZXCTRL2_ZCE8_Field
     with Component_Size => 2, Size => 16;

   --  ADC Zero Crossing Control 2 Register
   type ADC_ZXCTRL2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ZCE as a value
            Val : HAL.UInt16;
         when True =>
            --  ZCE as an array
            Arr : ADC_ZXCTRL2_ZCE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_ZXCTRL2_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 0
   type CLIST1_SAMPLE0_Field is
     (
      --  Single Ended: ADCA_CH0, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST1_SAMPLE0_Field_0000,
      --  Single Ended: ADCA_CH1, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST1_SAMPLE0_Field_0001,
      --  Single Ended: ADCA_CH2, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST1_SAMPLE0_Field_0010,
      --  Single Ended: ADCA_CH3, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST1_SAMPLE0_Field_0011,
      --  Single Ended: ADCA_CH4, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST1_SAMPLE0_Field_0100,
      --  Single Ended: ADCA_CH5, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST1_SAMPLE0_Field_0101,
      --  Single Ended: ADCA_CH6, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST1_SAMPLE0_Field_0110,
      --  Single Ended: ADCA_CH7, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST1_SAMPLE0_Field_0111,
      --  Single Ended: ADCB_CH0, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST1_SAMPLE0_Field_1000,
      --  Single Ended: ADCB_CH1, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST1_SAMPLE0_Field_1001,
      --  Single Ended: ADCB_CH2, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST1_SAMPLE0_Field_1010,
      --  Single Ended: ADCB_CH3, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST1_SAMPLE0_Field_1011,
      --  Single Ended: ADCB_CH4, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST1_SAMPLE0_Field_1100,
      --  Single Ended: ADCB_CH5, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST1_SAMPLE0_Field_1101,
      --  Single Ended: ADCB_CH6, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST1_SAMPLE0_Field_1110,
      --  Single Ended: ADCB_CH7, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST1_SAMPLE0_Field_1111)
     with Size => 4;
   for CLIST1_SAMPLE0_Field use
     (CLIST1_SAMPLE0_Field_0000 => 0,
      CLIST1_SAMPLE0_Field_0001 => 1,
      CLIST1_SAMPLE0_Field_0010 => 2,
      CLIST1_SAMPLE0_Field_0011 => 3,
      CLIST1_SAMPLE0_Field_0100 => 4,
      CLIST1_SAMPLE0_Field_0101 => 5,
      CLIST1_SAMPLE0_Field_0110 => 6,
      CLIST1_SAMPLE0_Field_0111 => 7,
      CLIST1_SAMPLE0_Field_1000 => 8,
      CLIST1_SAMPLE0_Field_1001 => 9,
      CLIST1_SAMPLE0_Field_1010 => 10,
      CLIST1_SAMPLE0_Field_1011 => 11,
      CLIST1_SAMPLE0_Field_1100 => 12,
      CLIST1_SAMPLE0_Field_1101 => 13,
      CLIST1_SAMPLE0_Field_1110 => 14,
      CLIST1_SAMPLE0_Field_1111 => 15);

   --  ADC_CLIST1_SAMPLE array
   type ADC_CLIST1_SAMPLE_Field_Array is array (0 .. 3)
     of CLIST1_SAMPLE0_Field
     with Component_Size => 4, Size => 16;

   --  ADC Channel List Register 1
   type ADC_CLIST1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : ADC_CLIST1_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_CLIST1_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 4
   type CLIST2_SAMPLE4_Field is
     (
      --  Single Ended: ADCA_CH0, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST2_SAMPLE4_Field_0000,
      --  Single Ended: ADCA_CH1, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST2_SAMPLE4_Field_0001,
      --  Single Ended: ADCA_CH2, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST2_SAMPLE4_Field_0010,
      --  Single Ended: ADCA_CH3, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST2_SAMPLE4_Field_0011,
      --  Single Ended: ADCA_CH4, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST2_SAMPLE4_Field_0100,
      --  Single Ended: ADCA_CH5, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST2_SAMPLE4_Field_0101,
      --  Single Ended: ADCA_CH6, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST2_SAMPLE4_Field_0110,
      --  Single Ended: ADCA_CH7, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST2_SAMPLE4_Field_0111,
      --  Single Ended: ADCB_CH0, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST2_SAMPLE4_Field_1000,
      --  Single Ended: ADCB_CH1, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST2_SAMPLE4_Field_1001,
      --  Single Ended: ADCB_CH2, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST2_SAMPLE4_Field_1010,
      --  Single Ended: ADCB_CH3, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST2_SAMPLE4_Field_1011,
      --  Single Ended: ADCB_CH4, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST2_SAMPLE4_Field_1100,
      --  Single Ended: ADCB_CH5, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST2_SAMPLE4_Field_1101,
      --  Single Ended: ADCB_CH6, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST2_SAMPLE4_Field_1110,
      --  Single Ended: ADCB_CH7, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST2_SAMPLE4_Field_1111)
     with Size => 4;
   for CLIST2_SAMPLE4_Field use
     (CLIST2_SAMPLE4_Field_0000 => 0,
      CLIST2_SAMPLE4_Field_0001 => 1,
      CLIST2_SAMPLE4_Field_0010 => 2,
      CLIST2_SAMPLE4_Field_0011 => 3,
      CLIST2_SAMPLE4_Field_0100 => 4,
      CLIST2_SAMPLE4_Field_0101 => 5,
      CLIST2_SAMPLE4_Field_0110 => 6,
      CLIST2_SAMPLE4_Field_0111 => 7,
      CLIST2_SAMPLE4_Field_1000 => 8,
      CLIST2_SAMPLE4_Field_1001 => 9,
      CLIST2_SAMPLE4_Field_1010 => 10,
      CLIST2_SAMPLE4_Field_1011 => 11,
      CLIST2_SAMPLE4_Field_1100 => 12,
      CLIST2_SAMPLE4_Field_1101 => 13,
      CLIST2_SAMPLE4_Field_1110 => 14,
      CLIST2_SAMPLE4_Field_1111 => 15);

   --  ADC_CLIST2_SAMPLE array
   type ADC_CLIST2_SAMPLE_Field_Array is array (4 .. 7)
     of CLIST2_SAMPLE4_Field
     with Component_Size => 4, Size => 16;

   --  ADC Channel List Register 2
   type ADC_CLIST2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : ADC_CLIST2_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_CLIST2_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 8
   type CLIST3_SAMPLE8_Field is
     (
      --  Single Ended: ADCA_CH0, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST3_SAMPLE8_Field_0000,
      --  Single Ended: ADCA_CH1, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST3_SAMPLE8_Field_0001,
      --  Single Ended: ADCA_CH2, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST3_SAMPLE8_Field_0010,
      --  Single Ended: ADCA_CH3, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST3_SAMPLE8_Field_0011,
      --  Single Ended: ADCA_CH4, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST3_SAMPLE8_Field_0100,
      --  Single Ended: ADCA_CH5, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST3_SAMPLE8_Field_0101,
      --  Single Ended: ADCA_CH6, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST3_SAMPLE8_Field_0110,
      --  Single Ended: ADCA_CH7, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST3_SAMPLE8_Field_0111,
      --  Single Ended: ADCB_CH0, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST3_SAMPLE8_Field_1000,
      --  Single Ended: ADCB_CH1, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST3_SAMPLE8_Field_1001,
      --  Single Ended: ADCB_CH2, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST3_SAMPLE8_Field_1010,
      --  Single Ended: ADCB_CH3, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST3_SAMPLE8_Field_1011,
      --  Single Ended: ADCB_CH4, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST3_SAMPLE8_Field_1100,
      --  Single Ended: ADCB_CH5, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST3_SAMPLE8_Field_1101,
      --  Single Ended: ADCB_CH6, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST3_SAMPLE8_Field_1110,
      --  Single Ended: ADCB_CH7, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST3_SAMPLE8_Field_1111)
     with Size => 4;
   for CLIST3_SAMPLE8_Field use
     (CLIST3_SAMPLE8_Field_0000 => 0,
      CLIST3_SAMPLE8_Field_0001 => 1,
      CLIST3_SAMPLE8_Field_0010 => 2,
      CLIST3_SAMPLE8_Field_0011 => 3,
      CLIST3_SAMPLE8_Field_0100 => 4,
      CLIST3_SAMPLE8_Field_0101 => 5,
      CLIST3_SAMPLE8_Field_0110 => 6,
      CLIST3_SAMPLE8_Field_0111 => 7,
      CLIST3_SAMPLE8_Field_1000 => 8,
      CLIST3_SAMPLE8_Field_1001 => 9,
      CLIST3_SAMPLE8_Field_1010 => 10,
      CLIST3_SAMPLE8_Field_1011 => 11,
      CLIST3_SAMPLE8_Field_1100 => 12,
      CLIST3_SAMPLE8_Field_1101 => 13,
      CLIST3_SAMPLE8_Field_1110 => 14,
      CLIST3_SAMPLE8_Field_1111 => 15);

   --  ADC_CLIST3_SAMPLE array
   type ADC_CLIST3_SAMPLE_Field_Array is array (8 .. 11)
     of CLIST3_SAMPLE8_Field
     with Component_Size => 4, Size => 16;

   --  ADC Channel List Register 3
   type ADC_CLIST3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : ADC_CLIST3_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_CLIST3_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 12
   type CLIST4_SAMPLE12_Field is
     (
      --  Single Ended: ADCA_CH0, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST4_SAMPLE12_Field_0000,
      --  Single Ended: ADCA_CH1, Differential: ADCA_CH0+, ADCA_CH1-
      CLIST4_SAMPLE12_Field_0001,
      --  Single Ended: ADCA_CH2, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST4_SAMPLE12_Field_0010,
      --  Single Ended: ADCA_CH3, Differential: ADCA_CH2+, ADCA_CH3-
      CLIST4_SAMPLE12_Field_0011,
      --  Single Ended: ADCA_CH4, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST4_SAMPLE12_Field_0100,
      --  Single Ended: ADCA_CH5, Differential: ADCA_CH4+, ADCA_CH5-
      CLIST4_SAMPLE12_Field_0101,
      --  Single Ended: ADCA_CH6, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST4_SAMPLE12_Field_0110,
      --  Single Ended: ADCA_CH7, Differential: ADCA_CH6+, ADCA_CH7-
      CLIST4_SAMPLE12_Field_0111,
      --  Single Ended: ADCB_CH0, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST4_SAMPLE12_Field_1000,
      --  Single Ended: ADCB_CH1, Differential: ADCB_CH0+, ADCB_CH1-
      CLIST4_SAMPLE12_Field_1001,
      --  Single Ended: ADCB_CH2, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST4_SAMPLE12_Field_1010,
      --  Single Ended: ADCB_CH3, Differential: ADCB_CH2+, ADCB_CH3-
      CLIST4_SAMPLE12_Field_1011,
      --  Single Ended: ADCB_CH4, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST4_SAMPLE12_Field_1100,
      --  Single Ended: ADCB_CH5, Differential: ADCB_CH4+, ADCB_CH5-
      CLIST4_SAMPLE12_Field_1101,
      --  Single Ended: ADCB_CH6, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST4_SAMPLE12_Field_1110,
      --  Single Ended: ADCB_CH7, Differential: ADCB_CH6+, ADCB_CH7-
      CLIST4_SAMPLE12_Field_1111)
     with Size => 4;
   for CLIST4_SAMPLE12_Field use
     (CLIST4_SAMPLE12_Field_0000 => 0,
      CLIST4_SAMPLE12_Field_0001 => 1,
      CLIST4_SAMPLE12_Field_0010 => 2,
      CLIST4_SAMPLE12_Field_0011 => 3,
      CLIST4_SAMPLE12_Field_0100 => 4,
      CLIST4_SAMPLE12_Field_0101 => 5,
      CLIST4_SAMPLE12_Field_0110 => 6,
      CLIST4_SAMPLE12_Field_0111 => 7,
      CLIST4_SAMPLE12_Field_1000 => 8,
      CLIST4_SAMPLE12_Field_1001 => 9,
      CLIST4_SAMPLE12_Field_1010 => 10,
      CLIST4_SAMPLE12_Field_1011 => 11,
      CLIST4_SAMPLE12_Field_1100 => 12,
      CLIST4_SAMPLE12_Field_1101 => 13,
      CLIST4_SAMPLE12_Field_1110 => 14,
      CLIST4_SAMPLE12_Field_1111 => 15);

   --  ADC_CLIST4_SAMPLE array
   type ADC_CLIST4_SAMPLE_Field_Array is array (12 .. 15)
     of CLIST4_SAMPLE12_Field
     with Component_Size => 4, Size => 16;

   --  ADC Channel List Register 4
   type ADC_CLIST4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : ADC_CLIST4_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_CLIST4_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype ADC_STAT_UNDEFINED_Field is HAL.UInt8;

   --  High Limit Interrupt
   type STAT_HLMTI_Field is
     (
      --  No high limit interrupt request
      STAT_HLMTI_Field_0,
      --  High limit exceeded, IRQ pending if CTRL1[HLMTIE] is set
      STAT_HLMTI_Field_1)
     with Size => 1;
   for STAT_HLMTI_Field use
     (STAT_HLMTI_Field_0 => 0,
      STAT_HLMTI_Field_1 => 1);

   --  Low Limit Interrupt
   type STAT_LLMTI_Field is
     (
      --  No low limit interrupt request
      STAT_LLMTI_Field_0,
      --  Low limit exceeded, IRQ pending if CTRL1[LLMTIE] is set
      STAT_LLMTI_Field_1)
     with Size => 1;
   for STAT_LLMTI_Field use
     (STAT_LLMTI_Field_0 => 0,
      STAT_LLMTI_Field_1 => 1);

   --  Zero Crossing Interrupt
   type STAT_ZCI_Field is
     (
      --  No zero crossing interrupt request
      STAT_ZCI_Field_0,
      --  Zero crossing encountered, IRQ pending if CTRL1[ZCIE] is set
      STAT_ZCI_Field_1)
     with Size => 1;
   for STAT_ZCI_Field use
     (STAT_ZCI_Field_0 => 0,
      STAT_ZCI_Field_1 => 1);

   --  End of Scan Interrupt
   type STAT_EOSI0_Field is
     (
      --  A scan cycle has not been completed, no end of scan IRQ pending
      STAT_EOSI0_Field_0,
      --  A scan cycle has been completed, end of scan IRQ pending
      STAT_EOSI0_Field_1)
     with Size => 1;
   for STAT_EOSI0_Field use
     (STAT_EOSI0_Field_0 => 0,
      STAT_EOSI0_Field_1 => 1);

   --  ADC_STAT_EOSI array
   type ADC_STAT_EOSI_Field_Array is array (0 .. 1) of STAT_EOSI0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for ADC_STAT_EOSI
   type ADC_STAT_EOSI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EOSI as a value
            Val : HAL.UInt2;
         when True =>
            --  EOSI as an array
            Arr : ADC_STAT_EOSI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ADC_STAT_EOSI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Conversion in Progress
   type STAT_CIP1_Field is
     (
      --  Idle state
      STAT_CIP1_Field_0,
      --  A scan cycle is in progress. The ADC will ignore all sync pulses or
      --  start commands
      STAT_CIP1_Field_1)
     with Size => 1;
   for STAT_CIP1_Field use
     (STAT_CIP1_Field_0 => 0,
      STAT_CIP1_Field_1 => 1);

   --  Conversion in Progress
   type STAT_CIP0_Field is
     (
      --  Idle state
      STAT_CIP0_Field_0,
      --  A scan cycle is in progress. The ADC will ignore all sync pulses or
      --  start commands
      STAT_CIP0_Field_1)
     with Size => 1;
   for STAT_CIP0_Field use
     (STAT_CIP0_Field_0 => 0,
      STAT_CIP0_Field_1 => 1);

   --  ADC Status Register
   type ADC_STAT_Register is record
      --  Read-only. This read-only bitfield is undefined and will always
      --  contain random data.
      UNDEFINED      : ADC_STAT_UNDEFINED_Field := 16#0#;
      --  Read-only. High Limit Interrupt
      HLMTI          : STAT_HLMTI_Field := NRF_SVD.ADC.STAT_HLMTI_Field_0;
      --  Read-only. Low Limit Interrupt
      LLMTI          : STAT_LLMTI_Field := NRF_SVD.ADC.STAT_LLMTI_Field_0;
      --  Read-only. Zero Crossing Interrupt
      ZCI            : STAT_ZCI_Field := NRF_SVD.ADC.STAT_ZCI_Field_0;
      --  End of Scan Interrupt
      EOSI           : ADC_STAT_EOSI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Read-only. Conversion in Progress
      CIP1           : STAT_CIP1_Field := NRF_SVD.ADC.STAT_CIP1_Field_0;
      --  Read-only. Conversion in Progress
      CIP0           : STAT_CIP0_Field := NRF_SVD.ADC.STAT_CIP0_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_STAT_Register use record
      UNDEFINED      at 0 range 0 .. 7;
      HLMTI          at 0 range 8 .. 8;
      LLMTI          at 0 range 9 .. 9;
      ZCI            at 0 range 10 .. 10;
      EOSI           at 0 range 11 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CIP1           at 0 range 14 .. 14;
      CIP0           at 0 range 15 .. 15;
   end record;

   subtype ADC_RSLT_RSLT_Field is HAL.UInt12;

   --  ADC Result Registers with sign extension
   type ADC_RSLT_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  Digital Result of the Conversion
      RSLT         : ADC_RSLT_RSLT_Field := 16#0#;
      --  Read-only. Sign Extend
      SEXT         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_RSLT_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      RSLT         at 0 range 3 .. 14;
      SEXT         at 0 range 15 .. 15;
   end record;

   --  ADC Result Registers with sign extension
   type ADC_RSLT_Registers is array (0 .. 15) of ADC_RSLT_Register
     with Volatile;

   subtype ADC_LOLIM_LLMT_Field is HAL.UInt12;

   --  ADC Low Limit Registers
   type ADC_LOLIM_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Low Limit Bits
      LLMT           : ADC_LOLIM_LLMT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_LOLIM_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      LLMT           at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  ADC Low Limit Registers
   type ADC_LOLIM_Registers is array (0 .. 15) of ADC_LOLIM_Register
     with Volatile;

   subtype ADC_HILIM_HLMT_Field is HAL.UInt12;

   --  ADC High Limit Registers
   type ADC_HILIM_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  High Limit Bits
      HLMT           : ADC_HILIM_HLMT_Field := 16#FFF#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_HILIM_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      HLMT           at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  ADC High Limit Registers
   type ADC_HILIM_Registers is array (0 .. 15) of ADC_HILIM_Register
     with Volatile;

   subtype ADC_OFFST_OFFSET_Field is HAL.UInt12;

   --  ADC Offset Registers
   type ADC_OFFST_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  ADC Offset Bits
      OFFSET         : ADC_OFFST_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_OFFST_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      OFFSET         at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  ADC Offset Registers
   type ADC_OFFST_Registers is array (0 .. 15) of ADC_OFFST_Register
     with Volatile;

   --  Manual Power Down for Converter A
   type PWR_PD0_Field is
     (
      --  Power Up ADC converter A
      PWR_PD0_Field_0,
      --  Power Down ADC converter A
      PWR_PD0_Field_1)
     with Size => 1;
   for PWR_PD0_Field use
     (PWR_PD0_Field_0 => 0,
      PWR_PD0_Field_1 => 1);

   --  Manual Power Down for Converter B
   type PWR_PD1_Field is
     (
      --  Power Up ADC converter B
      PWR_PD1_Field_0,
      --  Power Down ADC converter B
      PWR_PD1_Field_1)
     with Size => 1;
   for PWR_PD1_Field use
     (PWR_PD1_Field_0 => 0,
      PWR_PD1_Field_1 => 1);

   --  Auto Powerdown
   type PWR_APD_Field is
     (
      --  Auto Powerdown Mode is not active
      PWR_APD_Field_0,
      --  Auto Powerdown Mode is active
      PWR_APD_Field_1)
     with Size => 1;
   for PWR_APD_Field use
     (PWR_APD_Field_0 => 0,
      PWR_APD_Field_1 => 1);

   subtype ADC_PWR_PUDELAY_Field is HAL.UInt6;

   --  ADC Converter A Power Status
   type PWR_PSTS0_Field is
     (
      --  ADC Converter A is currently powered up
      PWR_PSTS0_Field_0,
      --  ADC Converter A is currently powered down
      PWR_PSTS0_Field_1)
     with Size => 1;
   for PWR_PSTS0_Field use
     (PWR_PSTS0_Field_0 => 0,
      PWR_PSTS0_Field_1 => 1);

   --  ADC Converter B Power Status
   type PWR_PSTS1_Field is
     (
      --  ADC Converter B is currently powered up
      PWR_PSTS1_Field_0,
      --  ADC Converter B is currently powered down
      PWR_PSTS1_Field_1)
     with Size => 1;
   for PWR_PSTS1_Field use
     (PWR_PSTS1_Field_0 => 0,
      PWR_PSTS1_Field_1 => 1);

   --  Auto Standby
   type PWR_ASB_Field is
     (
      --  Auto standby mode disabled
      PWR_ASB_Field_0,
      --  Auto standby mode enabled
      PWR_ASB_Field_1)
     with Size => 1;
   for PWR_ASB_Field use
     (PWR_ASB_Field_0 => 0,
      PWR_ASB_Field_1 => 1);

   --  ADC Power Control Register
   type ADC_PWR_Register is record
      --  Manual Power Down for Converter A
      PD0            : PWR_PD0_Field := NRF_SVD.ADC.PWR_PD0_Field_1;
      --  Manual Power Down for Converter B
      PD1            : PWR_PD1_Field := NRF_SVD.ADC.PWR_PD1_Field_1;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#1#;
      --  Auto Powerdown
      APD            : PWR_APD_Field := NRF_SVD.ADC.PWR_APD_Field_0;
      --  Power Up Delay
      PUDELAY        : ADC_PWR_PUDELAY_Field := 16#1A#;
      --  Read-only. ADC Converter A Power Status
      PSTS0          : PWR_PSTS0_Field := NRF_SVD.ADC.PWR_PSTS0_Field_1;
      --  Read-only. ADC Converter B Power Status
      PSTS1          : PWR_PSTS1_Field := NRF_SVD.ADC.PWR_PSTS1_Field_1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#1#;
      --  Auto Standby
      ASB            : PWR_ASB_Field := NRF_SVD.ADC.PWR_ASB_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_PWR_Register use record
      PD0            at 0 range 0 .. 0;
      PD1            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      APD            at 0 range 3 .. 3;
      PUDELAY        at 0 range 4 .. 9;
      PSTS0          at 0 range 10 .. 10;
      PSTS1          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      ASB            at 0 range 15 .. 15;
   end record;

   --  Select V REFLO Source
   type CAL_SEL_VREFLO_A_Field is
     (
      --  VREFL pad
      CAL_SEL_VREFLO_A_Field_0,
      --  ADCA_CH3
      CAL_SEL_VREFLO_A_Field_1)
     with Size => 1;
   for CAL_SEL_VREFLO_A_Field use
     (CAL_SEL_VREFLO_A_Field_0 => 0,
      CAL_SEL_VREFLO_A_Field_1 => 1);

   --  Select V REFH Source
   type CAL_SEL_VREFH_A_Field is
     (
      --  VREFH pad
      CAL_SEL_VREFH_A_Field_0,
      --  ADCA_CH2
      CAL_SEL_VREFH_A_Field_1)
     with Size => 1;
   for CAL_SEL_VREFH_A_Field use
     (CAL_SEL_VREFH_A_Field_0 => 0,
      CAL_SEL_VREFH_A_Field_1 => 1);

   --  Select V REFLO Source
   type CAL_SEL_VREFLO_B_Field is
     (
      --  VREFL pad
      CAL_SEL_VREFLO_B_Field_0,
      --  ADCB_CH3
      CAL_SEL_VREFLO_B_Field_1)
     with Size => 1;
   for CAL_SEL_VREFLO_B_Field use
     (CAL_SEL_VREFLO_B_Field_0 => 0,
      CAL_SEL_VREFLO_B_Field_1 => 1);

   --  Select V REFH Source
   type CAL_SEL_VREFH_B_Field is
     (
      --  VREFH pad
      CAL_SEL_VREFH_B_Field_0,
      --  ADCB_CH2
      CAL_SEL_VREFH_B_Field_1)
     with Size => 1;
   for CAL_SEL_VREFH_B_Field use
     (CAL_SEL_VREFH_B_Field_0 => 0,
      CAL_SEL_VREFH_B_Field_1 => 1);

   --  ADC Calibration Register
   type ADC_CAL_Register is record
      --  unspecified
      Reserved_0_11 : HAL.UInt12 := 16#0#;
      --  Select V REFLO Source
      SEL_VREFLO_A  : CAL_SEL_VREFLO_A_Field :=
                       NRF_SVD.ADC.CAL_SEL_VREFLO_A_Field_0;
      --  Select V REFH Source
      SEL_VREFH_A   : CAL_SEL_VREFH_A_Field :=
                       NRF_SVD.ADC.CAL_SEL_VREFH_A_Field_0;
      --  Select V REFLO Source
      SEL_VREFLO_B  : CAL_SEL_VREFLO_B_Field :=
                       NRF_SVD.ADC.CAL_SEL_VREFLO_B_Field_0;
      --  Select V REFH Source
      SEL_VREFH_B   : CAL_SEL_VREFH_B_Field :=
                       NRF_SVD.ADC.CAL_SEL_VREFH_B_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CAL_Register use record
      Reserved_0_11 at 0 range 0 .. 11;
      SEL_VREFLO_A  at 0 range 12 .. 12;
      SEL_VREFH_A   at 0 range 13 .. 13;
      SEL_VREFLO_B  at 0 range 14 .. 14;
      SEL_VREFH_B   at 0 range 15 .. 15;
   end record;

   --  Gain Control Bit 0
   type GC1_GAIN0_Field is
     (
      --  x1 amplification
      GC1_GAIN0_Field_00,
      --  x2 amplification
      GC1_GAIN0_Field_01,
      --  x4 amplification
      GC1_GAIN0_Field_10)
     with Size => 2;
   for GC1_GAIN0_Field use
     (GC1_GAIN0_Field_00 => 0,
      GC1_GAIN0_Field_01 => 1,
      GC1_GAIN0_Field_10 => 2);

   --  ADC_GC1_GAIN array
   type ADC_GC1_GAIN_Field_Array is array (0 .. 7) of GC1_GAIN0_Field
     with Component_Size => 2, Size => 16;

   --  Gain Control 1 Register
   type ADC_GC1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GAIN as a value
            Val : HAL.UInt16;
         when True =>
            --  GAIN as an array
            Arr : ADC_GC1_GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_GC1_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Gain Control Bit 8
   type GC2_GAIN8_Field is
     (
      --  x1 amplification
      GC2_GAIN8_Field_00,
      --  x2 amplification
      GC2_GAIN8_Field_01,
      --  x4 amplification
      GC2_GAIN8_Field_10)
     with Size => 2;
   for GC2_GAIN8_Field use
     (GC2_GAIN8_Field_00 => 0,
      GC2_GAIN8_Field_01 => 1,
      GC2_GAIN8_Field_10 => 2);

   --  ADC_GC2_GAIN array
   type ADC_GC2_GAIN_Field_Array is array (8 .. 15) of GC2_GAIN8_Field
     with Component_Size => 2, Size => 16;

   --  Gain Control 2 Register
   type ADC_GC2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GAIN as a value
            Val : HAL.UInt16;
         when True =>
            --  GAIN as an array
            Arr : ADC_GC2_GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for ADC_GC2_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ADCA Speed Control Bits
   type PWR2_SPEEDA_Field is
     (
      --  Conversion clock frequency <= 6.25 MHz; current consumption per
      --  converter = 6 mA
      PWR2_SPEEDA_Field_00,
      --  Conversion clock frequency <= 12.5 MHz; current consumption per
      --  converter = 10.8 mA
      PWR2_SPEEDA_Field_01,
      --  Conversion clock frequency <= 18.75 MHz; current consumption per
      --  converter = 18 mA
      PWR2_SPEEDA_Field_10,
      --  Conversion clock frequency <= 25 MHz; current consumption per
      --  converter = 25.2 mA
      PWR2_SPEEDA_Field_11)
     with Size => 2;
   for PWR2_SPEEDA_Field use
     (PWR2_SPEEDA_Field_00 => 0,
      PWR2_SPEEDA_Field_01 => 1,
      PWR2_SPEEDA_Field_10 => 2,
      PWR2_SPEEDA_Field_11 => 3);

   --  ADCB Speed Control Bits
   type PWR2_SPEEDB_Field is
     (
      --  Conversion clock frequency <= 6.25 MHz; current consumption per
      --  converter = 6 mA
      PWR2_SPEEDB_Field_00,
      --  Conversion clock frequency <= 12.5 MHz; current consumption per
      --  converter = 10.8 mA
      PWR2_SPEEDB_Field_01,
      --  Conversion clock frequency <= 18.75 MHz; current consumption per
      --  converter = 18 mA
      PWR2_SPEEDB_Field_10,
      --  Conversion clock frequency <= 25 MHz; current consumption per
      --  converter = 25.2 mA
      PWR2_SPEEDB_Field_11)
     with Size => 2;
   for PWR2_SPEEDB_Field use
     (PWR2_SPEEDB_Field_00 => 0,
      PWR2_SPEEDB_Field_01 => 1,
      PWR2_SPEEDB_Field_10 => 2,
      PWR2_SPEEDB_Field_11 => 3);

   subtype ADC_PWR2_DIV1_Field is HAL.UInt6;

   --  ADC Power Control Register
   type ADC_PWR2_Register is record
      --  ADCA Speed Control Bits
      SPEEDA         : PWR2_SPEEDA_Field := NRF_SVD.ADC.PWR2_SPEEDA_Field_00;
      --  ADCB Speed Control Bits
      SPEEDB         : PWR2_SPEEDB_Field := NRF_SVD.ADC.PWR2_SPEEDB_Field_00;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Clock Divisor Select
      DIV1           : ADC_PWR2_DIV1_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_PWR2_Register use record
      SPEEDA         at 0 range 0 .. 1;
      SPEEDB         at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DIV1           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   --  ADC_CTRL3_SCNT array element
   subtype ADC_CTRL3_SCNT_Element is HAL.UInt3;

   --  ADC_CTRL3_SCNT array
   type ADC_CTRL3_SCNT_Field_Array is array (0 .. 1)
     of ADC_CTRL3_SCNT_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for ADC_CTRL3_SCNT
   type ADC_CTRL3_SCNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SCNT as a value
            Val : HAL.UInt6;
         when True =>
            --  SCNT as an array
            Arr : ADC_CTRL3_SCNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for ADC_CTRL3_SCNT_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  DMA Trigger Source
   type CTRL3_DMASRC_Field is
     (
      --  DMA trigger source is end of scan interrupt
      CTRL3_DMASRC_Field_0,
      --  DMA trigger source is RDY bits
      CTRL3_DMASRC_Field_1)
     with Size => 1;
   for CTRL3_DMASRC_Field use
     (CTRL3_DMASRC_Field_0 => 0,
      CTRL3_DMASRC_Field_1 => 1);

   --  ADC Control Register 3
   type ADC_CTRL3_Register is record
      --  Sample Window Count 0
      SCNT          : ADC_CTRL3_SCNT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  DMA Trigger Source
      DMASRC        : CTRL3_DMASRC_Field := NRF_SVD.ADC.CTRL3_DMASRC_Field_0;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for ADC_CTRL3_Register use record
      SCNT          at 0 range 0 .. 5;
      DMASRC        at 0 range 6 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog to digital converter
   type ADC_Peripheral is record
      --  ADC Control Register 1
      CTRL1     : aliased ADC_CTRL1_Register;
      --  ADC Control Register 2
      CTRL2     : aliased ADC_CTRL2_Register;
      --  ADC Zero Crossing Control 1 Register
      ZXCTRL1   : aliased ADC_ZXCTRL1_Register;
      --  ADC Zero Crossing Control 2 Register
      ZXCTRL2   : aliased ADC_ZXCTRL2_Register;
      --  ADC Channel List Register 1
      CLIST1    : aliased ADC_CLIST1_Register;
      --  ADC Channel List Register 2
      CLIST2    : aliased ADC_CLIST2_Register;
      --  ADC Channel List Register 3
      CLIST3    : aliased ADC_CLIST3_Register;
      --  ADC Channel List Register 4
      CLIST4    : aliased ADC_CLIST4_Register;
      --  ADC Sample Disable Register
      SDIS      : aliased HAL.UInt16;
      --  ADC Status Register
      STAT      : aliased ADC_STAT_Register;
      --  ADC Ready Register
      RDY       : aliased HAL.UInt16;
      --  ADC Low Limit Status Register
      LOLIMSTAT : aliased HAL.UInt16;
      --  ADC High Limit Status Register
      HILIMSTAT : aliased HAL.UInt16;
      --  ADC Zero Crossing Status Register
      ZXSTAT    : aliased HAL.UInt16;
      --  ADC Result Registers with sign extension
      RSLT      : aliased ADC_RSLT_Registers;
      --  ADC Low Limit Registers
      LOLIM     : aliased ADC_LOLIM_Registers;
      --  ADC High Limit Registers
      HILIM     : aliased ADC_HILIM_Registers;
      --  ADC Offset Registers
      OFFST     : aliased ADC_OFFST_Registers;
      --  ADC Power Control Register
      PWR       : aliased ADC_PWR_Register;
      --  ADC Calibration Register
      CAL       : aliased ADC_CAL_Register;
      --  Gain Control 1 Register
      GC1       : aliased ADC_GC1_Register;
      --  Gain Control 2 Register
      GC2       : aliased ADC_GC2_Register;
      --  ADC Scan Control Register
      SCTRL     : aliased HAL.UInt16;
      --  ADC Power Control Register
      PWR2      : aliased ADC_PWR2_Register;
      --  ADC Control Register 3
      CTRL3     : aliased ADC_CTRL3_Register;
      --  ADC Scan Interrupt Enable Register
      SCHLTEN   : aliased HAL.UInt16;
   end record
     with Volatile;

   for ADC_Peripheral use record
      CTRL1     at 16#0# range 0 .. 15;
      CTRL2     at 16#2# range 0 .. 15;
      ZXCTRL1   at 16#4# range 0 .. 15;
      ZXCTRL2   at 16#6# range 0 .. 15;
      CLIST1    at 16#8# range 0 .. 15;
      CLIST2    at 16#A# range 0 .. 15;
      CLIST3    at 16#C# range 0 .. 15;
      CLIST4    at 16#E# range 0 .. 15;
      SDIS      at 16#10# range 0 .. 15;
      STAT      at 16#12# range 0 .. 15;
      RDY       at 16#14# range 0 .. 15;
      LOLIMSTAT at 16#16# range 0 .. 15;
      HILIMSTAT at 16#18# range 0 .. 15;
      ZXSTAT    at 16#1A# range 0 .. 15;
      RSLT      at 16#1C# range 0 .. 255;
      LOLIM     at 16#3C# range 0 .. 255;
      HILIM     at 16#5C# range 0 .. 255;
      OFFST     at 16#7C# range 0 .. 255;
      PWR       at 16#9C# range 0 .. 15;
      CAL       at 16#9E# range 0 .. 15;
      GC1       at 16#A0# range 0 .. 15;
      GC2       at 16#A2# range 0 .. 15;
      SCTRL     at 16#A4# range 0 .. 15;
      PWR2      at 16#A6# range 0 .. 15;
      CTRL3     at 16#A8# range 0 .. 15;
      SCHLTEN   at 16#AA# range 0 .. 15;
   end record;

   --  Analog to digital converter
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end NRF_SVD.ADC;
