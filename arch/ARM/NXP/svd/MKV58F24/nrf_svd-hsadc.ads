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

--  This spec has been automatically generated from MKV58F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.HSADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  HSADC Scan Mode Control
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

   subtype HSADC0_CTRL1_CHNCFG_L_Field is HAL.UInt4;

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
   type CTRL1_EOSIEA_Field is
     (
      --  Interrupt disabled
      CTRL1_EOSIEA_Field_0,
      --  Interrupt enabled
      CTRL1_EOSIEA_Field_1)
     with Size => 1;
   for CTRL1_EOSIEA_Field use
     (CTRL1_EOSIEA_Field_0 => 0,
      CTRL1_EOSIEA_Field_1 => 1);

   --  SYNCA Enable
   type CTRL1_SYNCA_Field is
     (
      --  Scan is initiated by a write to CTRL1[STARTA] only
      CTRL1_SYNCA_Field_0,
      --  Use a SYNCA input pulse or CTRL1[STARTA] to initiate a scan
      CTRL1_SYNCA_Field_1)
     with Size => 1;
   for CTRL1_SYNCA_Field use
     (CTRL1_SYNCA_Field_0 => 0,
      CTRL1_SYNCA_Field_1 => 1);

   --  STARTA Conversion
   type CTRL1_STARTA_Field is
     (
      --  No action
      CTRL1_STARTA_Field_0,
      --  Start command is issued
      CTRL1_STARTA_Field_1)
     with Size => 1;
   for CTRL1_STARTA_Field use
     (CTRL1_STARTA_Field_0 => 0,
      CTRL1_STARTA_Field_1 => 1);

   --  Stop
   type CTRL1_STOPA_Field is
     (
      --  Normal operation
      CTRL1_STOPA_Field_0,
      --  Stop mode
      CTRL1_STOPA_Field_1)
     with Size => 1;
   for CTRL1_STOPA_Field use
     (CTRL1_STOPA_Field_0 => 0,
      CTRL1_STOPA_Field_1 => 1);

   --  DMA enable
   type CTRL1_DMAENA_Field is
     (
      --  DMA is not enabled.
      CTRL1_DMAENA_Field_0,
      --  DMA is enabled.
      CTRL1_DMAENA_Field_1)
     with Size => 1;
   for CTRL1_DMAENA_Field use
     (CTRL1_DMAENA_Field_0 => 0,
      CTRL1_DMAENA_Field_1 => 1);

   --  HSADC Control Register 1
   type HSADC0_CTRL1_Register is record
      --  HSADC Scan Mode Control
      SMODE        : CTRL1_SMODE_Field := NRF_SVD.HSADC.CTRL1_SMODE_Field_101;
      --  unspecified
      Reserved_3_3 : HAL.Bit := 16#0#;
      --  CHCNF (Channel Configure Low) bits
      CHNCFG_L     : HSADC0_CTRL1_CHNCFG_L_Field := 16#0#;
      --  High Limit Interrupt Enable
      HLMTIE       : CTRL1_HLMTIE_Field := NRF_SVD.HSADC.CTRL1_HLMTIE_Field_0;
      --  Low Limit Interrupt Enable
      LLMTIE       : CTRL1_LLMTIE_Field := NRF_SVD.HSADC.CTRL1_LLMTIE_Field_0;
      --  Zero Crossing Interrupt Enable
      ZCIE         : CTRL1_ZCIE_Field := NRF_SVD.HSADC.CTRL1_ZCIE_Field_0;
      --  End Of Scan Interrupt Enable
      EOSIEA       : CTRL1_EOSIEA_Field := NRF_SVD.HSADC.CTRL1_EOSIEA_Field_0;
      --  SYNCA Enable
      SYNCA        : CTRL1_SYNCA_Field := NRF_SVD.HSADC.CTRL1_SYNCA_Field_1;
      --  Write-only. STARTA Conversion
      STARTA       : CTRL1_STARTA_Field := NRF_SVD.HSADC.CTRL1_STARTA_Field_0;
      --  Stop
      STOPA        : CTRL1_STOPA_Field := NRF_SVD.HSADC.CTRL1_STOPA_Field_1;
      --  DMA enable
      DMAENA       : CTRL1_DMAENA_Field := NRF_SVD.HSADC.CTRL1_DMAENA_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CTRL1_Register use record
      SMODE        at 0 range 0 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      CHNCFG_L     at 0 range 4 .. 7;
      HLMTIE       at 0 range 8 .. 8;
      LLMTIE       at 0 range 9 .. 9;
      ZCIE         at 0 range 10 .. 10;
      EOSIEA       at 0 range 11 .. 11;
      SYNCA        at 0 range 12 .. 12;
      STARTA       at 0 range 13 .. 13;
      STOPA        at 0 range 14 .. 14;
      DMAENA       at 0 range 15 .. 15;
   end record;

   subtype HSADC0_CTRL2_DIVA_Field is HAL.UInt6;

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

   subtype HSADC0_CTRL2_CHNCFG_H_Field is HAL.UInt4;

   --  End Of Scan Interrupt Enable
   type CTRL2_EOSIEB_Field is
     (
      --  Interrupt disabled
      CTRL2_EOSIEB_Field_0,
      --  Interrupt enabled
      CTRL2_EOSIEB_Field_1)
     with Size => 1;
   for CTRL2_EOSIEB_Field use
     (CTRL2_EOSIEB_Field_0 => 0,
      CTRL2_EOSIEB_Field_1 => 1);

   --  SYNCB Enable
   type CTRL2_SYNCB_Field is
     (
      --  B converter parallel scan is initiated by a write to CTRL2[STARTB]
      --  only
      CTRL2_SYNCB_Field_0,
      --  Use a SYNCB input pulse or CTRL2[STARTB] to initiate a B converter
      --  parallel scan
      CTRL2_SYNCB_Field_1)
     with Size => 1;
   for CTRL2_SYNCB_Field use
     (CTRL2_SYNCB_Field_0 => 0,
      CTRL2_SYNCB_Field_1 => 1);

   --  STARTB Conversion
   type CTRL2_STARTB_Field is
     (
      --  No action
      CTRL2_STARTB_Field_0,
      --  Start command is issued
      CTRL2_STARTB_Field_1)
     with Size => 1;
   for CTRL2_STARTB_Field use
     (CTRL2_STARTB_Field_0 => 0,
      CTRL2_STARTB_Field_1 => 1);

   --  Stop
   type CTRL2_STOPB_Field is
     (
      --  Normal operation
      CTRL2_STOPB_Field_0,
      --  Stop mode
      CTRL2_STOPB_Field_1)
     with Size => 1;
   for CTRL2_STOPB_Field use
     (CTRL2_STOPB_Field_0 => 0,
      CTRL2_STOPB_Field_1 => 1);

   --  DMA enable
   type CTRL2_DMAENB_Field is
     (
      --  DMA is not enabled.
      CTRL2_DMAENB_Field_0,
      --  DMA is enabled.
      CTRL2_DMAENB_Field_1)
     with Size => 1;
   for CTRL2_DMAENB_Field use
     (CTRL2_DMAENB_Field_0 => 0,
      CTRL2_DMAENB_Field_1 => 1);

   --  HSADC Control Register 2
   type HSADC0_CTRL2_Register is record
      --  Clock Divisor Select
      DIVA     : HSADC0_CTRL2_DIVA_Field := 16#4#;
      --  Simultaneous mode
      SIMULT   : CTRL2_SIMULT_Field := NRF_SVD.HSADC.CTRL2_SIMULT_Field_1;
      --  CHNCFG_H (Channel Configure High) bits
      CHNCFG_H : HSADC0_CTRL2_CHNCFG_H_Field := 16#0#;
      --  End Of Scan Interrupt Enable
      EOSIEB   : CTRL2_EOSIEB_Field := NRF_SVD.HSADC.CTRL2_EOSIEB_Field_0;
      --  SYNCB Enable
      SYNCB    : CTRL2_SYNCB_Field := NRF_SVD.HSADC.CTRL2_SYNCB_Field_1;
      --  Write-only. STARTB Conversion
      STARTB   : CTRL2_STARTB_Field := NRF_SVD.HSADC.CTRL2_STARTB_Field_0;
      --  Stop
      STOPB    : CTRL2_STOPB_Field := NRF_SVD.HSADC.CTRL2_STOPB_Field_1;
      --  DMA enable
      DMAENB   : CTRL2_DMAENB_Field := NRF_SVD.HSADC.CTRL2_DMAENB_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CTRL2_Register use record
      DIVA     at 0 range 0 .. 5;
      SIMULT   at 0 range 6 .. 6;
      CHNCFG_H at 0 range 7 .. 10;
      EOSIEB   at 0 range 11 .. 11;
      SYNCB    at 0 range 12 .. 12;
      STARTB   at 0 range 13 .. 13;
      STOPB    at 0 range 14 .. 14;
      DMAENB   at 0 range 15 .. 15;
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

   --  HSADC0_ZXCTRL1_ZCE array
   type HSADC0_ZXCTRL1_ZCE_Field_Array is array (0 .. 7)
     of ZXCTRL1_ZCE0_Field
     with Component_Size => 2, Size => 16;

   --  HSADC Zero Crossing Control 1 Register
   type HSADC0_ZXCTRL1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ZCE as a value
            Val : HAL.UInt16;
         when True =>
            --  ZCE as an array
            Arr : HSADC0_ZXCTRL1_ZCE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HSADC0_ZXCTRL1_Register use record
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

   --  HSADC0_ZXCTRL2_ZCE array
   type HSADC0_ZXCTRL2_ZCE_Field_Array is array (8 .. 15)
     of ZXCTRL2_ZCE8_Field
     with Component_Size => 2, Size => 16;

   --  HSADC Zero Crossing Control 2 Register
   type HSADC0_ZXCTRL2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ZCE as a value
            Val : HAL.UInt16;
         when True =>
            --  ZCE as an array
            Arr : HSADC0_ZXCTRL2_ZCE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HSADC0_ZXCTRL2_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 0
   type CLIST1_SAMPLE0_Field is
     (
      --  Single Ended: ANA0, Differential: ANA0+, ANA1-
      CLIST1_SAMPLE0_Field_0000,
      --  Single Ended: ANA1, Differential: ANA0+, ANA1-
      CLIST1_SAMPLE0_Field_0001,
      --  Single Ended: ANA2, Differential: ANA2+, ANA3-
      CLIST1_SAMPLE0_Field_0010,
      --  Single Ended: ANA3, Differential: ANA2+, ANA3-
      CLIST1_SAMPLE0_Field_0011,
      --  Single Ended: ANA4, Differential: ANA4+, ANA5-
      CLIST1_SAMPLE0_Field_0100,
      --  Single Ended: ANA5, Differential: ANA4+, ANA5-
      CLIST1_SAMPLE0_Field_0101,
      --  Single Ended: ANA6, Differential: ANA6+, ANA7-
      CLIST1_SAMPLE0_Field_0110,
      --  Single Ended: ANA7, Differential: ANA6+, ANA7-
      CLIST1_SAMPLE0_Field_0111,
      --  Single Ended: ANB0, Differential: ANB0+, ANB1-
      CLIST1_SAMPLE0_Field_1000,
      --  Single Ended: ANB1, Differential: ANB0+, ANB1-
      CLIST1_SAMPLE0_Field_1001,
      --  Single Ended: ANB2, Differential: ANB2+, ANB3-
      CLIST1_SAMPLE0_Field_1010,
      --  Single Ended: ANB3, Differential: ANB2+, ANB3-
      CLIST1_SAMPLE0_Field_1011,
      --  Single Ended: ANB4, Differential: ANB4+, ANB5-
      CLIST1_SAMPLE0_Field_1100,
      --  Single Ended: ANB5, Differential: ANB4+, ANB5-
      CLIST1_SAMPLE0_Field_1101,
      --  Single Ended: ANB6, Differential: ANB6+, ANB7-
      CLIST1_SAMPLE0_Field_1110,
      --  Single Ended: ANB7, Differential: ANB6+, ANB7-
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

   --  HSADC0_CLIST1_SAMPLE array
   type HSADC0_CLIST1_SAMPLE_Field_Array is array (0 .. 3)
     of CLIST1_SAMPLE0_Field
     with Component_Size => 4, Size => 16;

   --  HSADC Channel List Register 1
   type HSADC0_CLIST1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : HSADC0_CLIST1_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CLIST1_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 4
   type CLIST2_SAMPLE4_Field is
     (
      --  Single Ended: ANA0, Differential: ANA0+, ANA1-
      CLIST2_SAMPLE4_Field_0000,
      --  Single Ended: ANA1, Differential: ANA0+, ANA1-
      CLIST2_SAMPLE4_Field_0001,
      --  Single Ended: ANA2, Differential: ANA2+, ANA3-
      CLIST2_SAMPLE4_Field_0010,
      --  Single Ended: ANA3, Differential: ANA2+, ANA3-
      CLIST2_SAMPLE4_Field_0011,
      --  Single Ended: ANA4, Differential: ANA4+, ANA5-
      CLIST2_SAMPLE4_Field_0100,
      --  Single Ended: ANA5, Differential: ANA4+, ANA5-
      CLIST2_SAMPLE4_Field_0101,
      --  Single Ended: ANA6, Differential: ANA6+, ANA7-
      CLIST2_SAMPLE4_Field_0110,
      --  Single Ended: ANA7, Differential: ANA6+, ANA7-
      CLIST2_SAMPLE4_Field_0111,
      --  Single Ended: ANB0, Differential: ANB0+, ANB1-
      CLIST2_SAMPLE4_Field_1000,
      --  Single Ended: ANB1, Differential: ANB0+, ANB1-
      CLIST2_SAMPLE4_Field_1001,
      --  Single Ended: ANB2, Differential: ANB2+, ANB3-
      CLIST2_SAMPLE4_Field_1010,
      --  Single Ended: ANB3, Differential: ANB2+, ANB3-
      CLIST2_SAMPLE4_Field_1011,
      --  Single Ended: ANB4, Differential: ANB4+, ANB5-
      CLIST2_SAMPLE4_Field_1100,
      --  Single Ended: ANB5, Differential: ANB4+, ANB5-
      CLIST2_SAMPLE4_Field_1101,
      --  Single Ended: ANB6, Differential: ANB6+, ANB7-
      CLIST2_SAMPLE4_Field_1110,
      --  Single Ended: ANB7, Differential: ANB6+, ANB7-
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

   --  HSADC0_CLIST2_SAMPLE array
   type HSADC0_CLIST2_SAMPLE_Field_Array is array (4 .. 7)
     of CLIST2_SAMPLE4_Field
     with Component_Size => 4, Size => 16;

   --  HSADC Channel List Register 2
   type HSADC0_CLIST2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : HSADC0_CLIST2_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CLIST2_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 8
   type CLIST3_SAMPLE8_Field is
     (
      --  Single Ended: ANA0, Differential: ANA0+, ANA1-
      CLIST3_SAMPLE8_Field_0000,
      --  Single Ended: ANA1, Differential: ANA0+, ANA1-
      CLIST3_SAMPLE8_Field_0001,
      --  Single Ended: ANA2, Differential: ANA2+, ANA3-
      CLIST3_SAMPLE8_Field_0010,
      --  Single Ended: ANA3, Differential: ANA2+, ANA3-
      CLIST3_SAMPLE8_Field_0011,
      --  Single Ended: ANA4, Differential: ANA4+, ANA5-
      CLIST3_SAMPLE8_Field_0100,
      --  Single Ended: ANA5, Differential: ANA4+, ANA5-
      CLIST3_SAMPLE8_Field_0101,
      --  Single Ended: ANA6, Differential: ANA6+, ANA7-
      CLIST3_SAMPLE8_Field_0110,
      --  Single Ended: ANA7, Differential: ANA6+, ANA7-
      CLIST3_SAMPLE8_Field_0111,
      --  Single Ended: ANB0, Differential: ANB0+, ANB1-
      CLIST3_SAMPLE8_Field_1000,
      --  Single Ended: ANB1, Differential: ANB0+, ANB1-
      CLIST3_SAMPLE8_Field_1001,
      --  Single Ended: ANB2, Differential: ANB2+, ANB3-
      CLIST3_SAMPLE8_Field_1010,
      --  Single Ended: ANB3, Differential: ANB2+, ANB3-
      CLIST3_SAMPLE8_Field_1011,
      --  Single Ended: ANB4, Differential: ANB4+, ANB5-
      CLIST3_SAMPLE8_Field_1100,
      --  Single Ended: ANB5, Differential: ANB4+, ANB5-
      CLIST3_SAMPLE8_Field_1101,
      --  Single Ended: ANB6, Differential: ANB6+, ANB7-
      CLIST3_SAMPLE8_Field_1110,
      --  Single Ended: ANB7, Differential: ANB6+, ANB7-
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

   --  HSADC0_CLIST3_SAMPLE array
   type HSADC0_CLIST3_SAMPLE_Field_Array is array (8 .. 11)
     of CLIST3_SAMPLE8_Field
     with Component_Size => 4, Size => 16;

   --  HSADC Channel List Register 3
   type HSADC0_CLIST3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt16;
         when True =>
            --  SAMPLE as an array
            Arr : HSADC0_CLIST3_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CLIST3_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Sample Field 12
   type CLIST4_SAMPLE12_Field is
     (
      --  Single Ended: ANA0, Differential: ANA0+, ANA1-
      CLIST4_SAMPLE12_Field_0000,
      --  Single Ended: ANA1, Differential: ANA0+, ANA1-
      CLIST4_SAMPLE12_Field_0001,
      --  Single Ended: ANA2, Differential: ANA2+, ANA3-
      CLIST4_SAMPLE12_Field_0010,
      --  Single Ended: ANA3, Differential: ANA2+, ANA3-
      CLIST4_SAMPLE12_Field_0011,
      --  Single Ended: ANA4, Differential: ANA4+, ANA5-
      CLIST4_SAMPLE12_Field_0100,
      --  Single Ended: ANA5, Differential: ANA4+, ANA5-
      CLIST4_SAMPLE12_Field_0101,
      --  Single Ended: ANA6, Differential: ANA6+, ANA7-
      CLIST4_SAMPLE12_Field_0110,
      --  Single Ended: ANA7, Differential: ANA6+, ANA7-
      CLIST4_SAMPLE12_Field_0111,
      --  Single Ended: ANB0, Differential: ANB0+, ANB1-
      CLIST4_SAMPLE12_Field_1000,
      --  Single Ended: ANB1, Differential: ANB0+, ANB1-
      CLIST4_SAMPLE12_Field_1001,
      --  Single Ended: ANB2, Differential: ANB2+, ANB3-
      CLIST4_SAMPLE12_Field_1010,
      --  Single Ended: ANB3, Differential: ANB2+, ANB3-
      CLIST4_SAMPLE12_Field_1011,
      --  Single Ended: ANB4, Differential: ANB4+, ANB5-
      CLIST4_SAMPLE12_Field_1100,
      --  Single Ended: ANB5, Differential: ANB4+, ANB5-
      CLIST4_SAMPLE12_Field_1101,
      --  Single Ended: ANB6, Differential: ANB6+, ANB7-
      CLIST4_SAMPLE12_Field_1110,
      --  Single Ended: ANB7, Differential: ANB6+, ANB7-
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

   --  HSADC0_CLIST4_SAMPLE array
   type HSADC0_CLIST4_SAMPLE_Field_Array is array (12 .. 14)
     of CLIST4_SAMPLE12_Field
     with Component_Size => 4, Size => 12;

   --  Type definition for HSADC0_CLIST4_SAMPLE
   type HSADC0_CLIST4_SAMPLE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SAMPLE as a value
            Val : HAL.UInt12;
         when True =>
            --  SAMPLE as an array
            Arr : HSADC0_CLIST4_SAMPLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for HSADC0_CLIST4_SAMPLE_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Sample Field 15
   type CLIST4_SAMPLE15_Field is
     (
      --  Single Ended: ANA0, Differential: ANA0+, ANA1-
      CLIST4_SAMPLE15_Field_0000,
      --  Single Ended: ANA1, Differential: ANA0+, ANA1-
      CLIST4_SAMPLE15_Field_0001,
      --  Single Ended: ANA2, Differential: ANA2+, ANA3-
      CLIST4_SAMPLE15_Field_0010,
      --  Single Ended: ANA3, Differential: ANA2+, ANA3-
      CLIST4_SAMPLE15_Field_0011,
      --  Single Ended: ANA4, Differential: ANA4+, ANA5-
      CLIST4_SAMPLE15_Field_0100,
      --  Single Ended: ANA5, Differential: ANA4+, ANA5-
      CLIST4_SAMPLE15_Field_0101,
      --  Single Ended: ANA6, Differential: ANA6+, ANA7-
      CLIST4_SAMPLE15_Field_0110,
      --  Single Ended: ANA7, Differential: ANA6+, ANA7-
      CLIST4_SAMPLE15_Field_0111,
      --  Single Ended: ANB0, Differential: ANB0+, ANB1-
      CLIST4_SAMPLE15_Field_1000,
      --  Single Ended: ANB1, Differential: ANB0+, ANB1-
      CLIST4_SAMPLE15_Field_1001,
      --  Single Ended: ANB2, Differential: ANB2+, ANB3-
      CLIST4_SAMPLE15_Field_1010,
      --  Single Ended: ANB3, Differential: ANB2+, ANB3-
      CLIST4_SAMPLE15_Field_1011,
      --  Single Ended: ANB4, Differential: ANB4+, ANB5-
      CLIST4_SAMPLE15_Field_1100,
      --  Single Ended: ANB5, Differential: ANB4+, ANB5-
      CLIST4_SAMPLE15_Field_1101,
      --  Single Ended: ANB6, Differential: ANB6+, ANB7-. See Input Multiplex
      --  Function section for more details.
      CLIST4_SAMPLE15_Field_1110,
      --  Single Ended: ANB7, Differential: ANB6+, ANB7-
      CLIST4_SAMPLE15_Field_1111)
     with Size => 4;
   for CLIST4_SAMPLE15_Field use
     (CLIST4_SAMPLE15_Field_0000 => 0,
      CLIST4_SAMPLE15_Field_0001 => 1,
      CLIST4_SAMPLE15_Field_0010 => 2,
      CLIST4_SAMPLE15_Field_0011 => 3,
      CLIST4_SAMPLE15_Field_0100 => 4,
      CLIST4_SAMPLE15_Field_0101 => 5,
      CLIST4_SAMPLE15_Field_0110 => 6,
      CLIST4_SAMPLE15_Field_0111 => 7,
      CLIST4_SAMPLE15_Field_1000 => 8,
      CLIST4_SAMPLE15_Field_1001 => 9,
      CLIST4_SAMPLE15_Field_1010 => 10,
      CLIST4_SAMPLE15_Field_1011 => 11,
      CLIST4_SAMPLE15_Field_1100 => 12,
      CLIST4_SAMPLE15_Field_1101 => 13,
      CLIST4_SAMPLE15_Field_1110 => 14,
      CLIST4_SAMPLE15_Field_1111 => 15);

   --  HSADC Channel List Register 4
   type HSADC0_CLIST4_Register is record
      --  Sample Field 12
      SAMPLE   : HSADC0_CLIST4_SAMPLE_Field :=
                  (As_Array => False, Val => 16#C#);
      --  Sample Field 15
      SAMPLE15 : CLIST4_SAMPLE15_Field :=
                  NRF_SVD.HSADC.CLIST4_SAMPLE15_Field_1111;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CLIST4_Register use record
      SAMPLE   at 0 range 0 .. 11;
      SAMPLE15 at 0 range 12 .. 15;
   end record;

   --  HSADCA Calibration execution status
   type STAT_CALONA_Field is
     (
      --  Calibration is not running
      STAT_CALONA_Field_0,
      --  ADCA is running calibration conversions
      STAT_CALONA_Field_1)
     with Size => 1;
   for STAT_CALONA_Field use
     (STAT_CALONA_Field_0 => 0,
      STAT_CALONA_Field_1 => 1);

   --  HSADCB Calibration execution status
   type STAT_CALONB_Field is
     (
      --  Calibration is not running
      STAT_CALONB_Field_0,
      --  ADCB is running calibration conversions
      STAT_CALONB_Field_1)
     with Size => 1;
   for STAT_CALONB_Field use
     (STAT_CALONB_Field_0 => 0,
      STAT_CALONB_Field_1 => 1);

   --  Dummy conversion running on HSADCA
   type STAT_DUMMYA_Field is
     (
      --  Dummy conversion is not running
      STAT_DUMMYA_Field_0,
      --  Dummy conversion is running on ADCA
      STAT_DUMMYA_Field_1)
     with Size => 1;
   for STAT_DUMMYA_Field use
     (STAT_DUMMYA_Field_0 => 0,
      STAT_DUMMYA_Field_1 => 1);

   --  Dummy conversion running on HSADCB
   type STAT_DUMMYB_Field is
     (
      --  Dummy conversion is not running
      STAT_DUMMYB_Field_0,
      --  Dummy conversion is running on ADCB
      STAT_DUMMYB_Field_1)
     with Size => 1;
   for STAT_DUMMYB_Field use
     (STAT_DUMMYB_Field_0 => 0,
      STAT_DUMMYB_Field_1 => 1);

   --  End of Calibration on ADCA Interrupt
   type STAT_EOCALIA_Field is
     (
      --  Calibration is not finished.
      STAT_EOCALIA_Field_0,
      --  Calibration is finished on ADCA. The IRQ occurs if CALIB[EOCALIEA] is
      --  asserted.
      STAT_EOCALIA_Field_1)
     with Size => 1;
   for STAT_EOCALIA_Field use
     (STAT_EOCALIA_Field_0 => 0,
      STAT_EOCALIA_Field_1 => 1);

   --  End of Calibration on ADCB Interrupt
   type STAT_EOCALIB_Field is
     (
      --  Calibration is not finished.
      STAT_EOCALIB_Field_0,
      --  Calibration is finished on ADCB. The IRQ occurs if CALIB[EOCALIEB] is
      --  asserted.
      STAT_EOCALIB_Field_1)
     with Size => 1;
   for STAT_EOCALIB_Field use
     (STAT_EOCALIB_Field_0 => 0,
      STAT_EOCALIB_Field_1 => 1);

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
   type STAT_EOSIA_Field is
     (
      --  A scan cycle has not been completed, no end of scan IRQ pending
      STAT_EOSIA_Field_0,
      --  A scan cycle has been completed, end of scan IRQ pending
      STAT_EOSIA_Field_1)
     with Size => 1;
   for STAT_EOSIA_Field use
     (STAT_EOSIA_Field_0 => 0,
      STAT_EOSIA_Field_1 => 1);

   --  End of Scan Interrupt
   type STAT_EOSIB_Field is
     (
      --  A scan cycle has not been completed, no end of scan IRQ pending
      STAT_EOSIB_Field_0,
      --  A scan cycle has been completed, end of scan IRQ pending
      STAT_EOSIB_Field_1)
     with Size => 1;
   for STAT_EOSIB_Field use
     (STAT_EOSIB_Field_0 => 0,
      STAT_EOSIB_Field_1 => 1);

   --  Conversion in Progress
   type STAT_CIPB_Field is
     (
      --  Idle state
      STAT_CIPB_Field_0,
      --  A scan cycle is in progress. The HSADC will ignore all sync pulses or
      --  start commands
      STAT_CIPB_Field_1)
     with Size => 1;
   for STAT_CIPB_Field use
     (STAT_CIPB_Field_0 => 0,
      STAT_CIPB_Field_1 => 1);

   --  Conversion in Progress
   type STAT_CIPA_Field is
     (
      --  Idle state
      STAT_CIPA_Field_0,
      --  A scan cycle is in progress. The HSADC will ignore all sync pulses or
      --  start commands
      STAT_CIPA_Field_1)
     with Size => 1;
   for STAT_CIPA_Field use
     (STAT_CIPA_Field_0 => 0,
      STAT_CIPA_Field_1 => 1);

   --  HSADC Status Register
   type HSADC0_STAT_Register is record
      --  Read-only. HSADCA Calibration execution status
      CALONA         : STAT_CALONA_Field := NRF_SVD.HSADC.STAT_CALONA_Field_0;
      --  Read-only. HSADCB Calibration execution status
      CALONB         : STAT_CALONB_Field := NRF_SVD.HSADC.STAT_CALONB_Field_0;
      --  Read-only. Dummy conversion running on HSADCA
      DUMMYA         : STAT_DUMMYA_Field := NRF_SVD.HSADC.STAT_DUMMYA_Field_0;
      --  Read-only. Dummy conversion running on HSADCB
      DUMMYB         : STAT_DUMMYB_Field := NRF_SVD.HSADC.STAT_DUMMYB_Field_0;
      --  End of Calibration on ADCA Interrupt
      EOCALIA        : STAT_EOCALIA_Field :=
                        NRF_SVD.HSADC.STAT_EOCALIA_Field_0;
      --  End of Calibration on ADCB Interrupt
      EOCALIB        : STAT_EOCALIB_Field :=
                        NRF_SVD.HSADC.STAT_EOCALIB_Field_0;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Read-only. High Limit Interrupt
      HLMTI          : STAT_HLMTI_Field := NRF_SVD.HSADC.STAT_HLMTI_Field_0;
      --  Read-only. Low Limit Interrupt
      LLMTI          : STAT_LLMTI_Field := NRF_SVD.HSADC.STAT_LLMTI_Field_0;
      --  Read-only. Zero Crossing Interrupt
      ZCI            : STAT_ZCI_Field := NRF_SVD.HSADC.STAT_ZCI_Field_0;
      --  End of Scan Interrupt
      EOSIA          : STAT_EOSIA_Field := NRF_SVD.HSADC.STAT_EOSIA_Field_0;
      --  End of Scan Interrupt
      EOSIB          : STAT_EOSIB_Field := NRF_SVD.HSADC.STAT_EOSIB_Field_0;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Read-only. Conversion in Progress
      CIPB           : STAT_CIPB_Field := NRF_SVD.HSADC.STAT_CIPB_Field_0;
      --  Read-only. Conversion in Progress
      CIPA           : STAT_CIPA_Field := NRF_SVD.HSADC.STAT_CIPA_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_STAT_Register use record
      CALONA         at 0 range 0 .. 0;
      CALONB         at 0 range 1 .. 1;
      DUMMYA         at 0 range 2 .. 2;
      DUMMYB         at 0 range 3 .. 3;
      EOCALIA        at 0 range 4 .. 4;
      EOCALIB        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      HLMTI          at 0 range 8 .. 8;
      LLMTI          at 0 range 9 .. 9;
      ZCI            at 0 range 10 .. 10;
      EOSIA          at 0 range 11 .. 11;
      EOSIB          at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CIPB           at 0 range 14 .. 14;
      CIPA           at 0 range 15 .. 15;
   end record;

   subtype HSADC0_RSLT_RSLT_Field is HAL.UInt12;

   --  HSADC Result Registers with sign extension
   type HSADC0_RSLT_Register is record
      --  unspecified
      Reserved_0_2 : HAL.UInt3 := 16#0#;
      --  Digital Result of the Conversion
      RSLT         : HSADC0_RSLT_RSLT_Field := 16#0#;
      --  Read-only. Sign Extend
      SEXT         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_RSLT_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      RSLT         at 0 range 3 .. 14;
      SEXT         at 0 range 15 .. 15;
   end record;

   --  HSADC Result Registers with sign extension
   type HSADC0_RSLT_Registers is array (0 .. 15) of HSADC0_RSLT_Register
     with Volatile;

   subtype HSADC0_LOLIM_LLMT_Field is HAL.UInt12;

   --  HSADC Low Limit Registers
   type HSADC0_LOLIM_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Low Limit Bits
      LLMT           : HSADC0_LOLIM_LLMT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_LOLIM_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      LLMT           at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  HSADC Low Limit Registers
   type HSADC0_LOLIM_Registers is array (0 .. 15) of HSADC0_LOLIM_Register
     with Volatile;

   subtype HSADC0_HILIM_HLMT_Field is HAL.UInt12;

   --  HSADC High Limit Registers
   type HSADC0_HILIM_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  High Limit Bits
      HLMT           : HSADC0_HILIM_HLMT_Field := 16#FFF#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_HILIM_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      HLMT           at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  HSADC High Limit Registers
   type HSADC0_HILIM_Registers is array (0 .. 15) of HSADC0_HILIM_Register
     with Volatile;

   subtype HSADC0_OFFST_OFFSET_Field is HAL.UInt12;

   --  HSADC Offset Register
   type HSADC0_OFFST_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  HSADC Offset Bits
      OFFSET         : HSADC0_OFFST_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_OFFST_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      OFFSET         at 0 range 3 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  HSADC Offset Register
   type HSADC0_OFFST_Registers is array (0 .. 15) of HSADC0_OFFST_Register
     with Volatile;

   --  Manual Power Down for Converter A
   type PWR_PDA_Field is
     (
      --  Power Up ADC converter A
      PWR_PDA_Field_0,
      --  Power Down ADC converter A
      PWR_PDA_Field_1)
     with Size => 1;
   for PWR_PDA_Field use
     (PWR_PDA_Field_0 => 0,
      PWR_PDA_Field_1 => 1);

   --  Manual Power Down for Converter B
   type PWR_PDB_Field is
     (
      --  Power Up ADC converter B
      PWR_PDB_Field_0,
      --  Power Down ADC converter B
      PWR_PDB_Field_1)
     with Size => 1;
   for PWR_PDB_Field use
     (PWR_PDB_Field_0 => 0,
      PWR_PDB_Field_1 => 1);

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

   subtype HSADC0_PWR_PUDELAY_Field is HAL.UInt6;

   --  ADC Converter A Power Status
   type PWR_PSTSA_Field is
     (
      --  ADC Converter A is currently powered up
      PWR_PSTSA_Field_0,
      --  ADC Converter A is currently powered down
      PWR_PSTSA_Field_1)
     with Size => 1;
   for PWR_PSTSA_Field use
     (PWR_PSTSA_Field_0 => 0,
      PWR_PSTSA_Field_1 => 1);

   --  ADC Converter B Power Status
   type PWR_PSTSB_Field is
     (
      --  ADC Converter B is currently powered up
      PWR_PSTSB_Field_0,
      --  ADC Converter B is currently powered down
      PWR_PSTSB_Field_1)
     with Size => 1;
   for PWR_PSTSB_Field use
     (PWR_PSTSB_Field_0 => 0,
      PWR_PSTSB_Field_1 => 1);

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

   --  HSADC Power Control Register
   type HSADC0_PWR_Register is record
      --  Manual Power Down for Converter A
      PDA            : PWR_PDA_Field := NRF_SVD.HSADC.PWR_PDA_Field_1;
      --  Manual Power Down for Converter B
      PDB            : PWR_PDB_Field := NRF_SVD.HSADC.PWR_PDB_Field_1;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#1#;
      --  Auto Powerdown
      APD            : PWR_APD_Field := NRF_SVD.HSADC.PWR_APD_Field_0;
      --  Power Up Delay
      PUDELAY        : HSADC0_PWR_PUDELAY_Field := 16#12#;
      --  Read-only. ADC Converter A Power Status
      PSTSA          : PWR_PSTSA_Field := NRF_SVD.HSADC.PWR_PSTSA_Field_1;
      --  Read-only. ADC Converter B Power Status
      PSTSB          : PWR_PSTSB_Field := NRF_SVD.HSADC.PWR_PSTSB_Field_1;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#1#;
      --  Auto Standby
      ASB            : PWR_ASB_Field := NRF_SVD.HSADC.PWR_ASB_Field_0;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_PWR_Register use record
      PDA            at 0 range 0 .. 0;
      PDB            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      APD            at 0 range 3 .. 3;
      PUDELAY        at 0 range 4 .. 9;
      PSTSA          at 0 range 10 .. 10;
      PSTSB          at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      ASB            at 0 range 15 .. 15;
   end record;

   subtype HSADC0_PWR2_DIVB_Field is HAL.UInt6;

   --  HSADC Power Control Register 2
   type HSADC0_PWR2_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Clock Divisor Select
      DIVB           : HSADC0_PWR2_DIVB_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_PWR2_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DIVB           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
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

   --  ADCA/B Conversion Resolution
   type CTRL3_ADCRES_Field is
     (
      --  6-bit mode
      CTRL3_ADCRES_Field_00,
      --  8-bit mode
      CTRL3_ADCRES_Field_01,
      --  10-bit mode
      CTRL3_ADCRES_Field_10,
      --  12-bit mode
      CTRL3_ADCRES_Field_11)
     with Size => 2;
   for CTRL3_ADCRES_Field use
     (CTRL3_ADCRES_Field_00 => 0,
      CTRL3_ADCRES_Field_01 => 1,
      CTRL3_ADCRES_Field_10 => 2,
      CTRL3_ADCRES_Field_11 => 3);

   --  HSADC Control Register 3
   type HSADC0_CTRL3_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  DMA Trigger Source
      DMASRC         : CTRL3_DMASRC_Field :=
                        NRF_SVD.HSADC.CTRL3_DMASRC_Field_0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ADCA/B Conversion Resolution
      ADCRES         : CTRL3_ADCRES_Field :=
                        NRF_SVD.HSADC.CTRL3_ADCRES_Field_11;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CTRL3_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      DMASRC         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ADCRES         at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   subtype HSADC0_SAMPTIM_SAMPT_A_Field is HAL.UInt8;
   subtype HSADC0_SAMPTIM_SAMPT_B_Field is HAL.UInt8;

   --  HSADC Sampling Time Configuration Register
   type HSADC0_SAMPTIM_Register is record
      --  Sampling Time for ADCA.
      SAMPT_A : HSADC0_SAMPTIM_SAMPT_A_Field := 16#0#;
      --  Sampling Time for ADCB.
      SAMPT_B : HSADC0_SAMPTIM_SAMPT_B_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_SAMPTIM_Register use record
      SAMPT_A at 0 range 0 .. 7;
      SAMPT_B at 0 range 8 .. 15;
   end record;

   --  ADCA Calibration request for single ended mode
   type CALIB_REQSINGA_Field is
     (
      --  Calibration value calculation is not requested to be run on ADCA.
      CALIB_REQSINGA_Field_0,
      --  Calibration value calculation for single-ended input mode is
      --  requested to be run on ADCA.
      CALIB_REQSINGA_Field_1)
     with Size => 1;
   for CALIB_REQSINGA_Field use
     (CALIB_REQSINGA_Field_0 => 0,
      CALIB_REQSINGA_Field_1 => 1);

   --  ADCA Calibration request for differential mode
   type CALIB_REQDIFA_Field is
     (
      --  Calibration value calculation is not requested to ADCA.
      CALIB_REQDIFA_Field_0,
      --  Calibration value calculation for differential input mode is
      --  requested to be run on ADCA.
      CALIB_REQDIFA_Field_1)
     with Size => 1;
   for CALIB_REQDIFA_Field use
     (CALIB_REQDIFA_Field_0 => 0,
      CALIB_REQDIFA_Field_1 => 1);

   --  ADCA calibration bypass
   type CALIB_BYPA_Field is
     (
      --  ADCA block uses the calibration values to obtain the final conversion
      --  result (differential or single-ended mode)
      CALIB_BYPA_Field_0,
      --  Calibration operation is bypassed on ADCA.
      CALIB_BYPA_Field_1)
     with Size => 1;
   for CALIB_BYPA_Field use
     (CALIB_BYPA_Field_0 => 0,
      CALIB_BYPA_Field_1 => 1);

   --  Calibration Request for ADCA
   type CALIB_CAL_REQA_Field is
     (
      --  None.
      CALIB_CAL_REQA_Field_0,
      --  Calibration request for ADCA.
      CALIB_CAL_REQA_Field_1)
     with Size => 1;
   for CALIB_CAL_REQA_Field use
     (CALIB_CAL_REQA_Field_0 => 0,
      CALIB_CAL_REQA_Field_1 => 1);

   --  ADCB Calibration request for single ended mode
   type CALIB_REQSINGB_Field is
     (
      --  Calibration value calculation is not requested to be run on ADCB.
      CALIB_REQSINGB_Field_0,
      --  Calibration value calculation for single-ended input mode is
      --  requested to be run on ADCB.
      CALIB_REQSINGB_Field_1)
     with Size => 1;
   for CALIB_REQSINGB_Field use
     (CALIB_REQSINGB_Field_0 => 0,
      CALIB_REQSINGB_Field_1 => 1);

   --  ADCB Calibration request for differential mode
   type CALIB_REQDIFB_Field is
     (
      --  Calibration value calculation is not requested to be run on ADCB.
      CALIB_REQDIFB_Field_0,
      --  Calibration value calculation for differential input mode is
      --  requested to be run onr ADCB
      CALIB_REQDIFB_Field_1)
     with Size => 1;
   for CALIB_REQDIFB_Field use
     (CALIB_REQDIFB_Field_0 => 0,
      CALIB_REQDIFB_Field_1 => 1);

   --  ADCB calibration bypass
   type CALIB_BYPB_Field is
     (
      --  ADCB block uses the calibration values to obtain the final conversion
      --  result (differential or single-ended mode)
      CALIB_BYPB_Field_0,
      --  Calibration operation is bypassed on ADCB.
      CALIB_BYPB_Field_1)
     with Size => 1;
   for CALIB_BYPB_Field use
     (CALIB_BYPB_Field_0 => 0,
      CALIB_BYPB_Field_1 => 1);

   --  Calibration Request for ADCB
   type CALIB_CAL_REQB_Field is
     (
      --  Calibration is not requested.
      CALIB_CAL_REQB_Field_0,
      --  Calibration is requested for ADCB.
      CALIB_CAL_REQB_Field_1)
     with Size => 1;
   for CALIB_CAL_REQB_Field use
     (CALIB_CAL_REQB_Field_0 => 0,
      CALIB_CAL_REQB_Field_1 => 1);

   --  Interrupt Enable for End of Calibration on ADCA
   type CALIB_EOCALIEA_Field is
     (
      --  Interrupt is not enabled.
      CALIB_EOCALIEA_Field_0,
      --  Interrupt is enabled.
      CALIB_EOCALIEA_Field_1)
     with Size => 1;
   for CALIB_EOCALIEA_Field use
     (CALIB_EOCALIEA_Field_0 => 0,
      CALIB_EOCALIEA_Field_1 => 1);

   --  Interrupt Enable for End of Calibration on ADCB
   type CALIB_EOCALIEB_Field is
     (
      --  Interrupt is not enabled.
      CALIB_EOCALIEB_Field_0,
      --  Interrupt is enabled.
      CALIB_EOCALIEB_Field_1)
     with Size => 1;
   for CALIB_EOCALIEB_Field use
     (CALIB_EOCALIEB_Field_0 => 0,
      CALIB_EOCALIEB_Field_1 => 1);

   --  HSADCs Calibration Configuration
   type HSADC0_CALIB_Register is record
      --  ADCA Calibration request for single ended mode
      REQSINGA       : CALIB_REQSINGA_Field :=
                        NRF_SVD.HSADC.CALIB_REQSINGA_Field_0;
      --  ADCA Calibration request for differential mode
      REQDIFA        : CALIB_REQDIFA_Field :=
                        NRF_SVD.HSADC.CALIB_REQDIFA_Field_0;
      --  ADCA calibration bypass
      BYPA           : CALIB_BYPA_Field := NRF_SVD.HSADC.CALIB_BYPA_Field_0;
      --  Write-only. Calibration Request for ADCA
      CAL_REQA       : CALIB_CAL_REQA_Field :=
                        NRF_SVD.HSADC.CALIB_CAL_REQA_Field_0;
      --  ADCB Calibration request for single ended mode
      REQSINGB       : CALIB_REQSINGB_Field :=
                        NRF_SVD.HSADC.CALIB_REQSINGB_Field_0;
      --  ADCB Calibration request for differential mode
      REQDIFB        : CALIB_REQDIFB_Field :=
                        NRF_SVD.HSADC.CALIB_REQDIFB_Field_0;
      --  ADCB calibration bypass
      BYPB           : CALIB_BYPB_Field := NRF_SVD.HSADC.CALIB_BYPB_Field_0;
      --  Write-only. Calibration Request for ADCB
      CAL_REQB       : CALIB_CAL_REQB_Field :=
                        NRF_SVD.HSADC.CALIB_CAL_REQB_Field_0;
      --  Interrupt Enable for End of Calibration on ADCA
      EOCALIEA       : CALIB_EOCALIEA_Field :=
                        NRF_SVD.HSADC.CALIB_EOCALIEA_Field_0;
      --  Interrupt Enable for End of Calibration on ADCB
      EOCALIEB       : CALIB_EOCALIEB_Field :=
                        NRF_SVD.HSADC.CALIB_EOCALIEB_Field_0;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CALIB_Register use record
      REQSINGA       at 0 range 0 .. 0;
      REQDIFA        at 0 range 1 .. 1;
      BYPA           at 0 range 2 .. 2;
      CAL_REQA       at 0 range 3 .. 3;
      REQSINGB       at 0 range 4 .. 4;
      REQDIFB        at 0 range 5 .. 5;
      BYPB           at 0 range 6 .. 6;
      CAL_REQB       at 0 range 7 .. 7;
      EOCALIEA       at 0 range 8 .. 8;
      EOCALIEB       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   subtype HSADC0_CALVAL_A_CALVSING_Field is HAL.UInt7;
   subtype HSADC0_CALVAL_A_CALVDIF_Field is HAL.UInt7;

   --  Calibration Values for ADCA Register
   type HSADC0_CALVAL_A_Register is record
      --  Single-ended mode calibration value for ADCA
      CALVSING       : HSADC0_CALVAL_A_CALVSING_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Differential mode calibration value for ADCA
      CALVDIF        : HSADC0_CALVAL_A_CALVDIF_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CALVAL_A_Register use record
      CALVSING       at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CALVDIF        at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype HSADC0_CALVAL_B_CALVSING_Field is HAL.UInt7;
   subtype HSADC0_CALVAL_B_CALVDIF_Field is HAL.UInt7;

   --  Calibration Values for ADCB Register
   type HSADC0_CALVAL_B_Register is record
      --  Single-ended mode calibration value
      CALVSING       : HSADC0_CALVAL_B_CALVSING_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Differential mode calibration value
      CALVDIF        : HSADC0_CALVAL_B_CALVDIF_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_CALVAL_B_Register use record
      CALVSING       at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CALVDIF        at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype HSADC0_MUX67_SEL_CH6_SELA_Field is HAL.UInt3;
   subtype HSADC0_MUX67_SEL_CH7_SELA_Field is HAL.UInt3;
   subtype HSADC0_MUX67_SEL_CH6_SELB_Field is HAL.UInt3;
   subtype HSADC0_MUX67_SEL_CH7_SELB_Field is HAL.UInt3;

   --  MUX6_7 Selection Controls Register
   type HSADC0_MUX67_SEL_Register is record
      --  ADCA Channel 6 additional MUX Selector
      CH6_SELA       : HSADC0_MUX67_SEL_CH6_SELA_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  ADCA Channel 7 additional MUX Selector
      CH7_SELA       : HSADC0_MUX67_SEL_CH7_SELA_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ADCB Channel 6 additional MUX Selector
      CH6_SELB       : HSADC0_MUX67_SEL_CH6_SELB_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  ADCB Channel 7 additional MUX Selector
      CH7_SELB       : HSADC0_MUX67_SEL_CH7_SELB_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 16,
          Bit_Order => System.Low_Order_First;

   for HSADC0_MUX67_SEL_Register use record
      CH6_SELA       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CH7_SELA       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CH6_SELB       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CH7_SELB       at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SAR Analog to digital converter
   type HSADC_Peripheral is record
      --  HSADC Control Register 1
      CTRL1     : aliased HSADC0_CTRL1_Register;
      --  HSADC Control Register 2
      CTRL2     : aliased HSADC0_CTRL2_Register;
      --  HSADC Zero Crossing Control 1 Register
      ZXCTRL1   : aliased HSADC0_ZXCTRL1_Register;
      --  HSADC Zero Crossing Control 2 Register
      ZXCTRL2   : aliased HSADC0_ZXCTRL2_Register;
      --  HSADC Channel List Register 1
      CLIST1    : aliased HSADC0_CLIST1_Register;
      --  HSADC Channel List Register 2
      CLIST2    : aliased HSADC0_CLIST2_Register;
      --  HSADC Channel List Register 3
      CLIST3    : aliased HSADC0_CLIST3_Register;
      --  HSADC Channel List Register 4
      CLIST4    : aliased HSADC0_CLIST4_Register;
      --  HSADC Sample Disable Register
      SDIS      : aliased HAL.UInt16;
      --  HSADC Status Register
      STAT      : aliased HSADC0_STAT_Register;
      --  HSADC Ready Register
      RDY       : aliased HAL.UInt16;
      --  HSADC Low Limit Status Register
      LOLIMSTAT : aliased HAL.UInt16;
      --  HSADC High Limit Status Register
      HILIMSTAT : aliased HAL.UInt16;
      --  HSADC Zero Crossing Status Register
      ZXSTAT    : aliased HAL.UInt16;
      --  HSADC Result Registers with sign extension
      RSLT      : aliased HSADC0_RSLT_Registers;
      --  HSADC Low Limit Registers
      LOLIM     : aliased HSADC0_LOLIM_Registers;
      --  HSADC High Limit Registers
      HILIM     : aliased HSADC0_HILIM_Registers;
      --  HSADC Offset Register
      OFFST     : aliased HSADC0_OFFST_Registers;
      --  HSADC Power Control Register
      PWR       : aliased HSADC0_PWR_Register;
      --  HSADC Scan Control Register
      SCTRL     : aliased HAL.UInt16;
      --  HSADC Power Control Register 2
      PWR2      : aliased HSADC0_PWR2_Register;
      --  HSADC Control Register 3
      CTRL3     : aliased HSADC0_CTRL3_Register;
      --  HSADC Scan Interrupt Enable Register
      SCINTEN   : aliased HAL.UInt16;
      --  HSADC Sampling Time Configuration Register
      SAMPTIM   : aliased HSADC0_SAMPTIM_Register;
      --  HSADCs Calibration Configuration
      CALIB     : aliased HSADC0_CALIB_Register;
      --  Calibration Values for ADCA Register
      CALVAL_A  : aliased HSADC0_CALVAL_A_Register;
      --  Calibration Values for ADCB Register
      CALVAL_B  : aliased HSADC0_CALVAL_B_Register;
      --  MUX6_7 Selection Controls Register
      MUX67_SEL : aliased HSADC0_MUX67_SEL_Register;
   end record
     with Volatile;

   for HSADC_Peripheral use record
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
      SCTRL     at 16#A4# range 0 .. 15;
      PWR2      at 16#A6# range 0 .. 15;
      CTRL3     at 16#A8# range 0 .. 15;
      SCINTEN   at 16#AA# range 0 .. 15;
      SAMPTIM   at 16#AC# range 0 .. 15;
      CALIB     at 16#AE# range 0 .. 15;
      CALVAL_A  at 16#B0# range 0 .. 15;
      CALVAL_B  at 16#B2# range 0 .. 15;
      MUX67_SEL at 16#BA# range 0 .. 15;
   end record;

   --  SAR Analog to digital converter
   HSADC0_Periph : aliased HSADC_Peripheral
     with Import, Address => System'To_Address (16#4005C000#);

   --  SAR Analog to digital converter
   HSADC1_Periph : aliased HSADC_Peripheral
     with Import, Address => System'To_Address (16#400DC000#);

end NRF_SVD.HSADC;
