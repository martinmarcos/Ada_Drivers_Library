--  Redistribution and use in source and binary forms, with or without modification,are permitted provided that the following conditions are met:1. Redistributions of source code must retain the above copyright notice, this list  of conditions and the following disclaimer.2. Redistributions in binary form must reproduce the above copyright notice, this  list of conditions and the following disclaimer in the documentation and/or  other materials provided with the distribution.3. Neither the name of the copyright holder nor the names of its  contributors may be used to endorse or promote products derived from this  software without specific prior written permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" ANDANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIEDWARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE AREDISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FORANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ONANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THISSOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  

--  This spec has been automatically generated from MIMXRT1052.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.ADC_ETC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_TRIG_ENABLE_Field is HAL.UInt8;
   subtype CTRL_EXT0_TRIG_PRIORITY_Field is HAL.UInt3;
   subtype CTRL_EXT1_TRIG_PRIORITY_Field is HAL.UInt3;
   subtype CTRL_PRE_DIVIDER_Field is HAL.UInt8;

   --  ADC_ETC Global Control Register
   type CTRL_Register is record
      --  TRIG enable register
      TRIG_ENABLE        : CTRL_TRIG_ENABLE_Field := 16#0#;
      --  TSC0 TRIG enable register. 1'b1: enable external TSC0 trigger. 1'b0:
      --  disable external TSC0 trigger.
      EXT0_TRIG_ENABLE   : Boolean := False;
      --  External TSC0 trigger priority, 7 is Highest, 0 is lowest .
      EXT0_TRIG_PRIORITY : CTRL_EXT0_TRIG_PRIORITY_Field := 16#0#;
      --  TSC1 TRIG enable register. 1'b1: enable external TSC1 trigger. 1'b0:
      --  disable external TSC1 trigger.
      EXT1_TRIG_ENABLE   : Boolean := False;
      --  External TSC1 trigger priority, 7 is Highest, 0 is lowest .
      EXT1_TRIG_PRIORITY : CTRL_EXT1_TRIG_PRIORITY_Field := 16#0#;
      --  Pre-divider for trig delay and interval .
      PRE_DIVIDER        : CTRL_PRE_DIVIDER_Field := 16#0#;
      --  unspecified
      Reserved_24_29     : HAL.UInt6 := 16#0#;
      --  1'b1: TSC is bypassed; 1'b0: TSC not bypassed;
      TSC_BYPASS         : Boolean := True;
      --  Software reset, high active. When write 1 ,all logical will be reset.
      SOFTRST            : Boolean := True;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      TRIG_ENABLE        at 0 range 0 .. 7;
      EXT0_TRIG_ENABLE   at 0 range 8 .. 8;
      EXT0_TRIG_PRIORITY at 0 range 9 .. 11;
      EXT1_TRIG_ENABLE   at 0 range 12 .. 12;
      EXT1_TRIG_PRIORITY at 0 range 13 .. 15;
      PRE_DIVIDER        at 0 range 16 .. 23;
      Reserved_24_29     at 0 range 24 .. 29;
      TSC_BYPASS         at 0 range 30 .. 30;
      SOFTRST            at 0 range 31 .. 31;
   end record;

   --  ETC DONE0 and DONE1 IRQ State Register
   type DONE0_1_IRQ_Register is record
      --  TRIG0 done0 interrupt detection
      TRIG0_DONE0    : Boolean := False;
      --  TRIG1 done0 interrupt detection
      TRIG1_DONE0    : Boolean := False;
      --  TRIG2 done0 interrupt detection
      TRIG2_DONE0    : Boolean := False;
      --  TRIG3 done0 interrupt detection
      TRIG3_DONE0    : Boolean := False;
      --  TRIG4 done0 interrupt detection
      TRIG4_DONE0    : Boolean := False;
      --  TRIG5 done0 interrupt detection
      TRIG5_DONE0    : Boolean := False;
      --  TRIG6 done0 interrupt detection
      TRIG6_DONE0    : Boolean := False;
      --  TRIG7 done0 interrupt detection
      TRIG7_DONE0    : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TRIG0 done1 interrupt detection
      TRIG0_DONE1    : Boolean := False;
      --  TRIG1 done1 interrupt detection
      TRIG1_DONE1    : Boolean := False;
      --  TRIG2 done1 interrupt detection
      TRIG2_DONE1    : Boolean := False;
      --  TRIG3 done1 interrupt detection
      TRIG3_DONE1    : Boolean := False;
      --  TRIG4 done1 interrupt detection
      TRIG4_DONE1    : Boolean := False;
      --  TRIG5 done1 interrupt detection
      TRIG5_DONE1    : Boolean := False;
      --  TRIG6 done1 interrupt detection
      TRIG6_DONE1    : Boolean := False;
      --  TRIG7 done1 interrupt detection
      TRIG7_DONE1    : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DONE0_1_IRQ_Register use record
      TRIG0_DONE0    at 0 range 0 .. 0;
      TRIG1_DONE0    at 0 range 1 .. 1;
      TRIG2_DONE0    at 0 range 2 .. 2;
      TRIG3_DONE0    at 0 range 3 .. 3;
      TRIG4_DONE0    at 0 range 4 .. 4;
      TRIG5_DONE0    at 0 range 5 .. 5;
      TRIG6_DONE0    at 0 range 6 .. 6;
      TRIG7_DONE0    at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TRIG0_DONE1    at 0 range 16 .. 16;
      TRIG1_DONE1    at 0 range 17 .. 17;
      TRIG2_DONE1    at 0 range 18 .. 18;
      TRIG3_DONE1    at 0 range 19 .. 19;
      TRIG4_DONE1    at 0 range 20 .. 20;
      TRIG5_DONE1    at 0 range 21 .. 21;
      TRIG6_DONE1    at 0 range 22 .. 22;
      TRIG7_DONE1    at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  ETC DONE_2 and DONE_ERR IRQ State Register
   type DONE2_ERR_IRQ_Register is record
      --  TRIG0 done2 interrupt detection
      TRIG0_DONE2    : Boolean := False;
      --  TRIG1 done2 interrupt detection
      TRIG1_DONE2    : Boolean := False;
      --  TRIG2 done2 interrupt detection
      TRIG2_DONE2    : Boolean := False;
      --  TRIG3 done2 interrupt detection
      TRIG3_DONE2    : Boolean := False;
      --  TRIG4 done2 interrupt detection
      TRIG4_DONE2    : Boolean := False;
      --  TRIG5 done2 interrupt detection
      TRIG5_DONE2    : Boolean := False;
      --  TRIG6 done2 interrupt detection
      TRIG6_DONE2    : Boolean := False;
      --  TRIG7 done2 interrupt detection
      TRIG7_DONE2    : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  TRIG0 error interrupt detection
      TRIG0_ERR      : Boolean := False;
      --  TRIG1 error interrupt detection
      TRIG1_ERR      : Boolean := False;
      --  TRIG2 error interrupt detection
      TRIG2_ERR      : Boolean := False;
      --  TRIG3 error interrupt detection
      TRIG3_ERR      : Boolean := False;
      --  TRIG4 error interrupt detection
      TRIG4_ERR      : Boolean := False;
      --  TRIG5 error interrupt detection
      TRIG5_ERR      : Boolean := False;
      --  TRIG6 error interrupt detection
      TRIG6_ERR      : Boolean := False;
      --  TRIG7 error interrupt detection
      TRIG7_ERR      : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DONE2_ERR_IRQ_Register use record
      TRIG0_DONE2    at 0 range 0 .. 0;
      TRIG1_DONE2    at 0 range 1 .. 1;
      TRIG2_DONE2    at 0 range 2 .. 2;
      TRIG3_DONE2    at 0 range 3 .. 3;
      TRIG4_DONE2    at 0 range 4 .. 4;
      TRIG5_DONE2    at 0 range 5 .. 5;
      TRIG6_DONE2    at 0 range 6 .. 6;
      TRIG7_DONE2    at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TRIG0_ERR      at 0 range 16 .. 16;
      TRIG1_ERR      at 0 range 17 .. 17;
      TRIG2_ERR      at 0 range 18 .. 18;
      TRIG3_ERR      at 0 range 19 .. 19;
      TRIG4_ERR      at 0 range 20 .. 20;
      TRIG5_ERR      at 0 range 21 .. 21;
      TRIG6_ERR      at 0 range 22 .. 22;
      TRIG7_ERR      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  ETC DMA control Register
   type DMA_CTRL_Register is record
      --  When TRIG0 done enable DMA request
      TRIG0_ENABLE   : Boolean := False;
      --  When TRIG1 done enable DMA request
      TRIG1_ENABLE   : Boolean := False;
      --  When TRIG2 done enable DMA request
      TRIG2_ENABLE   : Boolean := False;
      --  When TRIG3 done enable DMA request
      TRIG3_ENABLE   : Boolean := False;
      --  When TRIG4 done enable DMA request
      TRIG4_ENABLE   : Boolean := False;
      --  When TRIG5 done enable DMA request
      TRIG5_ENABLE   : Boolean := False;
      --  When TRIG6 done enable DMA request
      TRIG6_ENABLE   : Boolean := False;
      --  When TRIG7 done enable DMA request
      TRIG7_ENABLE   : Boolean := False;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  When TRIG0 done DMA request detection
      TRIG0_REQ      : Boolean := False;
      --  When TRIG1 done DMA request detection
      TRIG1_REQ      : Boolean := False;
      --  When TRIG2 done DMA request detection
      TRIG2_REQ      : Boolean := False;
      --  When TRIG3 done DMA request detection
      TRIG3_REQ      : Boolean := False;
      --  When TRIG4 done DMA request detection
      TRIG4_REQ      : Boolean := False;
      --  When TRIG5 done DMA request detection
      TRIG5_REQ      : Boolean := False;
      --  When TRIG6 done DMA request detection
      TRIG6_REQ      : Boolean := False;
      --  When TRIG7 done DMA request detection
      TRIG7_REQ      : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CTRL_Register use record
      TRIG0_ENABLE   at 0 range 0 .. 0;
      TRIG1_ENABLE   at 0 range 1 .. 1;
      TRIG2_ENABLE   at 0 range 2 .. 2;
      TRIG3_ENABLE   at 0 range 3 .. 3;
      TRIG4_ENABLE   at 0 range 4 .. 4;
      TRIG5_ENABLE   at 0 range 5 .. 5;
      TRIG6_ENABLE   at 0 range 6 .. 6;
      TRIG7_ENABLE   at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TRIG0_REQ      at 0 range 16 .. 16;
      TRIG1_REQ      at 0 range 17 .. 17;
      TRIG2_REQ      at 0 range 18 .. 18;
      TRIG3_REQ      at 0 range 19 .. 19;
      TRIG4_REQ      at 0 range 20 .. 20;
      TRIG5_REQ      at 0 range 21 .. 21;
      TRIG6_REQ      at 0 range 22 .. 22;
      TRIG7_REQ      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TRIG0_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG0_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG0 Control Register
   type TRIG0_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG0_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG0_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG0_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG0_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG0 Counter Register
   type TRIG0_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG0_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG0_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG0_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG0_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG0_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG0_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG0_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG0_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG0_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG0_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG0_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG0_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG0_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG0_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG0_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG0_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG0_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG0_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG0_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG0_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG0_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG0_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG0_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG0_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG0_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG0_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG0_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG0_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG0_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG0_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG0_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG0_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG0_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG0_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG0_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG0_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG0_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG0_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG0_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG0_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG0_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG0_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG0_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG0_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG0_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG0_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG0_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG0_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG0_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG0_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG0_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG0_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG0_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG0_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG0_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG0_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG0_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG0_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG0_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG0_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG0_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG1_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG1_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG1 Control Register
   type TRIG1_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG1_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG1_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG1_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG1_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG1 Counter Register
   type TRIG1_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG1_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG1_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG1_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG1_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG1_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG1_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG1_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG1_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG1_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG1_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG1_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG1_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG1_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG1_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG1_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG1_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG1_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG1_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG1_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG1_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG1_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG1_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG1_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG1_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG1_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG1_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG1_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG1_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG1_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG1_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG1_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG1_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG1_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG1_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG1_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG1_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG1_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG1_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG1_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG1_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG1_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG1_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG1_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG1_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG1_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG1_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG1_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG1_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG1_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG1_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG1_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG1_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG1_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG1_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG1_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG1_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG1_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG1_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG1_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG1_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG1_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG2_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG2_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG2 Control Register
   type TRIG2_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG2_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG2_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG2_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG2_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG2 Counter Register
   type TRIG2_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG2_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG2_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG2_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG2_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG2_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG2_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG2_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG2_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG2_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG2_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG2_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG2_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG2_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG2_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG2_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG2_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG2_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG2_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG2_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG2_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG2_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG2_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG2_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG2_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG2_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG2_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG2_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG2_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG2_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG2_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG2_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG2_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG2_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG2_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG2_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG2_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG2_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG2_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG2_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG2_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG2_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG2_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG2_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG2_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG2_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG2_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG2_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG2_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG2_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG2_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG2_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG2_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG2_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG2_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG2_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG2_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG2_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG2_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG2_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG2_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG2_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG3_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG3_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG3 Control Register
   type TRIG3_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG3_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG3_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG3_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG3_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG3 Counter Register
   type TRIG3_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG3_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG3_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG3_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG3_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG3_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG3_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG3_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG3_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG3_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG3_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG3_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG3_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG3_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG3_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG3_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG3_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG3_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG3_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG3_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG3_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG3_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG3_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG3_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG3_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG3_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG3_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG3_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG3_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG3_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG3_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG3_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG3_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG3_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG3_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG3_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG3_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG3_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG3_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG3_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG3_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG3_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG3_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG3_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG3_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG3_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG3_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG3_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG3_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG3_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG3_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG3_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG3_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG3_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG3_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG3_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG3_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG3_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG3_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG3_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG3_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG3_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG4_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG4_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG4 Control Register
   type TRIG4_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG4_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG4_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG4_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG4_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG4 Counter Register
   type TRIG4_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG4_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG4_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG4_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG4_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG4_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG4_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG4_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG4_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG4_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG4_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG4_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG4_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG4_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG4_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG4_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG4_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG4_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG4_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG4_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG4_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG4_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG4_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG4_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG4_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG4_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG4_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG4_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG4_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG4_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG4_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG4_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG4_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG4_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG4_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG4_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG4_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG4_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG4_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG4_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG4_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG4_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG4_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG4_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG4_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG4_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG4_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG4_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG4_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG4_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG4_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG4_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG4_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG4_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG4_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG4_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG4_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG4_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG4_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG4_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG4_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG4_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG5_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG5_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG5 Control Register
   type TRIG5_CTRL_Register is record
      --  Software write 1 as the TRIGGER
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG5_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG5_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG5_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG5_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG5 Counter Register
   type TRIG5_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG5_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG5_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG5_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG5_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG5_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG5_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG5_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG5_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG5_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG5_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG5_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG5_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG5_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG5_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG5_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG5_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG5_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG5_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG5_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG5_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG5_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG5_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG5_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG5_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG5_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG5_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG5_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG5_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG5_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG5_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG5_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG5_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG5_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG5_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG5_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG5_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG5_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG5_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG5_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG5_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG5_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG5_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG5_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG5_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG5_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG5_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG5_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG5_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG5_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG5_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG5_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG5_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG5_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG5_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG5_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG5_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG5_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG5_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG5_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG5_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG5_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG6_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG6_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG6 Control Register
   type TRIG6_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG6_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG6_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG6_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG6_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG6 Counter Register
   type TRIG6_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG6_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG6_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG6_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG6_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG6_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG6_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG6_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG6_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG6_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG6_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG6_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG6_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG6_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG6_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG6_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG6_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG6_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG6_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG6_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG6_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG6_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG6_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG6_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG6_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG6_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG6_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG6_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG6_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG6_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG6_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG6_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG6_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG6_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG6_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG6_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG6_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG6_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG6_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG6_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG6_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG6_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG6_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG6_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG6_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG6_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG6_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG6_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG6_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG6_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG6_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG6_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG6_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG6_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG6_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG6_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG6_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG6_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG6_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG6_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG6_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG6_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG7_CTRL_TRIG_CHAIN_Field is HAL.UInt3;
   subtype TRIG7_CTRL_TRIG_PRIORITY_Field is HAL.UInt3;

   --  ETC_TRIG7 Control Register
   type TRIG7_CTRL_Register is record
      --  Software write 1 as the TRIGGER. This register is self-clearing.
      SW_TRIG        : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  TRIG mode register. 1'b0: hardware trigger. 1'b1: software trigger.
      TRIG_MODE      : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  TRIG chain length to the ADC. 0: Trig length is 1; ... 7: Trig length
      --  is 8;
      TRIG_CHAIN     : TRIG7_CTRL_TRIG_CHAIN_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  External trigger priority, 7 is highest, 0 is lowest .
      TRIG_PRIORITY  : TRIG7_CTRL_TRIG_PRIORITY_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TRIG mode control . 1'b0: Disable sync mode; 1'b1: Enable sync mode
      SYNC_MODE      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_CTRL_Register use record
      SW_TRIG        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIG_MODE      at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TRIG_CHAIN     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      TRIG_PRIORITY  at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SYNC_MODE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TRIG7_COUNTER_INIT_DELAY_Field is HAL.UInt16;
   subtype TRIG7_COUNTER_SAMPLE_INTERVAL_Field is HAL.UInt16;

   --  ETC_TRIG7 Counter Register
   type TRIG7_COUNTER_Register is record
      --  TRIGGER initial delay counter
      INIT_DELAY      : TRIG7_COUNTER_INIT_DELAY_Field := 16#0#;
      --  TRIGGER sampling interval counter
      SAMPLE_INTERVAL : TRIG7_COUNTER_SAMPLE_INTERVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_COUNTER_Register use record
      INIT_DELAY      at 0 range 0 .. 15;
      SAMPLE_INTERVAL at 0 range 16 .. 31;
   end record;

   subtype TRIG7_CHAIN_1_0_CSEL0_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_1_0_HWTS0_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_1_0_IE0_Field is HAL.UInt2;
   subtype TRIG7_CHAIN_1_0_CSEL1_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_1_0_HWTS1_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_1_0_IE1_Field is HAL.UInt2;

   --  ETC_TRIG Chain 0/1 Register
   type TRIG7_CHAIN_1_0_Register is record
      --  CHAIN0 CSEL ADC channel selection
      CSEL0          : TRIG7_CHAIN_1_0_CSEL0_Field := 16#0#;
      --  CHAIN0 HWTS ADC hardware trigger selection
      HWTS0          : TRIG7_CHAIN_1_0_HWTS0_Field := 16#0#;
      --  CHAIN0 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B0           : Boolean := False;
      --  CHAIN0 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE0            : TRIG7_CHAIN_1_0_IE0_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN1 CSEL ADC channel selection
      CSEL1          : TRIG7_CHAIN_1_0_CSEL1_Field := 16#0#;
      --  CHAIN1 HWTS ADC hardware trigger selection
      HWTS1          : TRIG7_CHAIN_1_0_HWTS1_Field := 16#0#;
      --  CHAIN1 B2B 1'b0: Disable B2B, wait until interval is reached 1'b1:
      --  Enable B2B, back to back ADC trigger
      B2B1           : Boolean := False;
      --  CHAIN1 IE 2'b00: No interrupt when finished 2'b01: Finished Interrupt
      --  on Done0 2'b10: Finished Interrupt on Done1 2'b11: Finished Interrupt
      --  on Done2
      IE1            : TRIG7_CHAIN_1_0_IE1_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_CHAIN_1_0_Register use record
      CSEL0          at 0 range 0 .. 3;
      HWTS0          at 0 range 4 .. 11;
      B2B0           at 0 range 12 .. 12;
      IE0            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL1          at 0 range 16 .. 19;
      HWTS1          at 0 range 20 .. 27;
      B2B1           at 0 range 28 .. 28;
      IE1            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG7_CHAIN_3_2_CSEL2_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_3_2_HWTS2_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_3_2_IE2_Field is HAL.UInt2;
   subtype TRIG7_CHAIN_3_2_CSEL3_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_3_2_HWTS3_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_3_2_IE3_Field is HAL.UInt2;

   --  ETC_TRIG Chain 2/3 Register
   type TRIG7_CHAIN_3_2_Register is record
      --  CHAIN2 CSEL
      CSEL2          : TRIG7_CHAIN_3_2_CSEL2_Field := 16#0#;
      --  CHAIN2 HWTS
      HWTS2          : TRIG7_CHAIN_3_2_HWTS2_Field := 16#0#;
      --  CHAIN2 B2B
      B2B2           : Boolean := False;
      --  CHAIN2 IE
      IE2            : TRIG7_CHAIN_3_2_IE2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN3 CSEL
      CSEL3          : TRIG7_CHAIN_3_2_CSEL3_Field := 16#0#;
      --  CHAIN3 HWTS
      HWTS3          : TRIG7_CHAIN_3_2_HWTS3_Field := 16#0#;
      --  CHAIN3 B2B
      B2B3           : Boolean := False;
      --  CHAIN3 IE
      IE3            : TRIG7_CHAIN_3_2_IE3_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_CHAIN_3_2_Register use record
      CSEL2          at 0 range 0 .. 3;
      HWTS2          at 0 range 4 .. 11;
      B2B2           at 0 range 12 .. 12;
      IE2            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL3          at 0 range 16 .. 19;
      HWTS3          at 0 range 20 .. 27;
      B2B3           at 0 range 28 .. 28;
      IE3            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG7_CHAIN_5_4_CSEL4_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_5_4_HWTS4_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_5_4_IE4_Field is HAL.UInt2;
   subtype TRIG7_CHAIN_5_4_CSEL5_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_5_4_HWTS5_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_5_4_IE5_Field is HAL.UInt2;

   --  ETC_TRIG Chain 4/5 Register
   type TRIG7_CHAIN_5_4_Register is record
      --  CHAIN4 CSEL
      CSEL4          : TRIG7_CHAIN_5_4_CSEL4_Field := 16#0#;
      --  CHAIN4 HWTS
      HWTS4          : TRIG7_CHAIN_5_4_HWTS4_Field := 16#0#;
      --  CHAIN4 B2B
      B2B4           : Boolean := False;
      --  CHAIN4 IE
      IE4            : TRIG7_CHAIN_5_4_IE4_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN5 CSEL
      CSEL5          : TRIG7_CHAIN_5_4_CSEL5_Field := 16#0#;
      --  CHAIN5 HWTS
      HWTS5          : TRIG7_CHAIN_5_4_HWTS5_Field := 16#0#;
      --  CHAIN5 B2B
      B2B5           : Boolean := False;
      --  CHAIN5 IE
      IE5            : TRIG7_CHAIN_5_4_IE5_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_CHAIN_5_4_Register use record
      CSEL4          at 0 range 0 .. 3;
      HWTS4          at 0 range 4 .. 11;
      B2B4           at 0 range 12 .. 12;
      IE4            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL5          at 0 range 16 .. 19;
      HWTS5          at 0 range 20 .. 27;
      B2B5           at 0 range 28 .. 28;
      IE5            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG7_CHAIN_7_6_CSEL6_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_7_6_HWTS6_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_7_6_IE6_Field is HAL.UInt2;
   subtype TRIG7_CHAIN_7_6_CSEL7_Field is HAL.UInt4;
   subtype TRIG7_CHAIN_7_6_HWTS7_Field is HAL.UInt8;
   subtype TRIG7_CHAIN_7_6_IE7_Field is HAL.UInt2;

   --  ETC_TRIG Chain 6/7 Register
   type TRIG7_CHAIN_7_6_Register is record
      --  CHAIN6 CSEL
      CSEL6          : TRIG7_CHAIN_7_6_CSEL6_Field := 16#0#;
      --  CHAIN6 HWTS
      HWTS6          : TRIG7_CHAIN_7_6_HWTS6_Field := 16#0#;
      --  CHAIN6 B2B
      B2B6           : Boolean := False;
      --  CHAIN6 IE
      IE6            : TRIG7_CHAIN_7_6_IE6_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  CHAIN7 CSEL
      CSEL7          : TRIG7_CHAIN_7_6_CSEL7_Field := 16#0#;
      --  CHAIN7 HWTS
      HWTS7          : TRIG7_CHAIN_7_6_HWTS7_Field := 16#0#;
      --  CHAIN7 B2B
      B2B7           : Boolean := False;
      --  CHAIN7 IE
      IE7            : TRIG7_CHAIN_7_6_IE7_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_CHAIN_7_6_Register use record
      CSEL6          at 0 range 0 .. 3;
      HWTS6          at 0 range 4 .. 11;
      B2B6           at 0 range 12 .. 12;
      IE6            at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CSEL7          at 0 range 16 .. 19;
      HWTS7          at 0 range 20 .. 27;
      B2B7           at 0 range 28 .. 28;
      IE7            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TRIG7_RESULT_1_0_DATA0_Field is HAL.UInt12;
   subtype TRIG7_RESULT_1_0_DATA1_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 1/0 Register
   type TRIG7_RESULT_1_0_Register is record
      --  Read-only. Result DATA0
      DATA0          : TRIG7_RESULT_1_0_DATA0_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA1
      DATA1          : TRIG7_RESULT_1_0_DATA1_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_RESULT_1_0_Register use record
      DATA0          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA1          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG7_RESULT_3_2_DATA2_Field is HAL.UInt12;
   subtype TRIG7_RESULT_3_2_DATA3_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 3/2 Register
   type TRIG7_RESULT_3_2_Register is record
      --  Read-only. Result DATA2
      DATA2          : TRIG7_RESULT_3_2_DATA2_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA3
      DATA3          : TRIG7_RESULT_3_2_DATA3_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_RESULT_3_2_Register use record
      DATA2          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA3          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG7_RESULT_5_4_DATA4_Field is HAL.UInt12;
   subtype TRIG7_RESULT_5_4_DATA5_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 5/4 Register
   type TRIG7_RESULT_5_4_Register is record
      --  Read-only. Result DATA4
      DATA4          : TRIG7_RESULT_5_4_DATA4_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA5
      DATA5          : TRIG7_RESULT_5_4_DATA5_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_RESULT_5_4_Register use record
      DATA4          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA5          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TRIG7_RESULT_7_6_DATA6_Field is HAL.UInt12;
   subtype TRIG7_RESULT_7_6_DATA7_Field is HAL.UInt12;

   --  ETC_TRIG Result Data 7/6 Register
   type TRIG7_RESULT_7_6_Register is record
      --  Read-only. Result DATA6
      DATA6          : TRIG7_RESULT_7_6_DATA6_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Result DATA7
      DATA7          : TRIG7_RESULT_7_6_DATA7_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIG7_RESULT_7_6_Register use record
      DATA6          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DATA7          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC_ETC
   type ADC_ETC_Peripheral is record
      --  ADC_ETC Global Control Register
      CTRL             : aliased CTRL_Register;
      --  ETC DONE0 and DONE1 IRQ State Register
      DONE0_1_IRQ      : aliased DONE0_1_IRQ_Register;
      --  ETC DONE_2 and DONE_ERR IRQ State Register
      DONE2_ERR_IRQ    : aliased DONE2_ERR_IRQ_Register;
      --  ETC DMA control Register
      DMA_CTRL         : aliased DMA_CTRL_Register;
      --  ETC_TRIG0 Control Register
      TRIG0_CTRL       : aliased TRIG0_CTRL_Register;
      --  ETC_TRIG0 Counter Register
      TRIG0_COUNTER    : aliased TRIG0_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG0_CHAIN_1_0  : aliased TRIG0_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG0_CHAIN_3_2  : aliased TRIG0_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG0_CHAIN_5_4  : aliased TRIG0_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG0_CHAIN_7_6  : aliased TRIG0_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG0_RESULT_1_0 : aliased TRIG0_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG0_RESULT_3_2 : aliased TRIG0_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG0_RESULT_5_4 : aliased TRIG0_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG0_RESULT_7_6 : aliased TRIG0_RESULT_7_6_Register;
      --  ETC_TRIG1 Control Register
      TRIG1_CTRL       : aliased TRIG1_CTRL_Register;
      --  ETC_TRIG1 Counter Register
      TRIG1_COUNTER    : aliased TRIG1_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG1_CHAIN_1_0  : aliased TRIG1_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG1_CHAIN_3_2  : aliased TRIG1_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG1_CHAIN_5_4  : aliased TRIG1_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG1_CHAIN_7_6  : aliased TRIG1_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG1_RESULT_1_0 : aliased TRIG1_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG1_RESULT_3_2 : aliased TRIG1_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG1_RESULT_5_4 : aliased TRIG1_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG1_RESULT_7_6 : aliased TRIG1_RESULT_7_6_Register;
      --  ETC_TRIG2 Control Register
      TRIG2_CTRL       : aliased TRIG2_CTRL_Register;
      --  ETC_TRIG2 Counter Register
      TRIG2_COUNTER    : aliased TRIG2_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG2_CHAIN_1_0  : aliased TRIG2_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG2_CHAIN_3_2  : aliased TRIG2_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG2_CHAIN_5_4  : aliased TRIG2_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG2_CHAIN_7_6  : aliased TRIG2_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG2_RESULT_1_0 : aliased TRIG2_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG2_RESULT_3_2 : aliased TRIG2_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG2_RESULT_5_4 : aliased TRIG2_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG2_RESULT_7_6 : aliased TRIG2_RESULT_7_6_Register;
      --  ETC_TRIG3 Control Register
      TRIG3_CTRL       : aliased TRIG3_CTRL_Register;
      --  ETC_TRIG3 Counter Register
      TRIG3_COUNTER    : aliased TRIG3_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG3_CHAIN_1_0  : aliased TRIG3_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG3_CHAIN_3_2  : aliased TRIG3_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG3_CHAIN_5_4  : aliased TRIG3_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG3_CHAIN_7_6  : aliased TRIG3_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG3_RESULT_1_0 : aliased TRIG3_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG3_RESULT_3_2 : aliased TRIG3_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG3_RESULT_5_4 : aliased TRIG3_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG3_RESULT_7_6 : aliased TRIG3_RESULT_7_6_Register;
      --  ETC_TRIG4 Control Register
      TRIG4_CTRL       : aliased TRIG4_CTRL_Register;
      --  ETC_TRIG4 Counter Register
      TRIG4_COUNTER    : aliased TRIG4_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG4_CHAIN_1_0  : aliased TRIG4_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG4_CHAIN_3_2  : aliased TRIG4_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG4_CHAIN_5_4  : aliased TRIG4_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG4_CHAIN_7_6  : aliased TRIG4_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG4_RESULT_1_0 : aliased TRIG4_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG4_RESULT_3_2 : aliased TRIG4_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG4_RESULT_5_4 : aliased TRIG4_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG4_RESULT_7_6 : aliased TRIG4_RESULT_7_6_Register;
      --  ETC_TRIG5 Control Register
      TRIG5_CTRL       : aliased TRIG5_CTRL_Register;
      --  ETC_TRIG5 Counter Register
      TRIG5_COUNTER    : aliased TRIG5_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG5_CHAIN_1_0  : aliased TRIG5_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG5_CHAIN_3_2  : aliased TRIG5_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG5_CHAIN_5_4  : aliased TRIG5_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG5_CHAIN_7_6  : aliased TRIG5_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG5_RESULT_1_0 : aliased TRIG5_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG5_RESULT_3_2 : aliased TRIG5_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG5_RESULT_5_4 : aliased TRIG5_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG5_RESULT_7_6 : aliased TRIG5_RESULT_7_6_Register;
      --  ETC_TRIG6 Control Register
      TRIG6_CTRL       : aliased TRIG6_CTRL_Register;
      --  ETC_TRIG6 Counter Register
      TRIG6_COUNTER    : aliased TRIG6_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG6_CHAIN_1_0  : aliased TRIG6_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG6_CHAIN_3_2  : aliased TRIG6_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG6_CHAIN_5_4  : aliased TRIG6_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG6_CHAIN_7_6  : aliased TRIG6_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG6_RESULT_1_0 : aliased TRIG6_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG6_RESULT_3_2 : aliased TRIG6_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG6_RESULT_5_4 : aliased TRIG6_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG6_RESULT_7_6 : aliased TRIG6_RESULT_7_6_Register;
      --  ETC_TRIG7 Control Register
      TRIG7_CTRL       : aliased TRIG7_CTRL_Register;
      --  ETC_TRIG7 Counter Register
      TRIG7_COUNTER    : aliased TRIG7_COUNTER_Register;
      --  ETC_TRIG Chain 0/1 Register
      TRIG7_CHAIN_1_0  : aliased TRIG7_CHAIN_1_0_Register;
      --  ETC_TRIG Chain 2/3 Register
      TRIG7_CHAIN_3_2  : aliased TRIG7_CHAIN_3_2_Register;
      --  ETC_TRIG Chain 4/5 Register
      TRIG7_CHAIN_5_4  : aliased TRIG7_CHAIN_5_4_Register;
      --  ETC_TRIG Chain 6/7 Register
      TRIG7_CHAIN_7_6  : aliased TRIG7_CHAIN_7_6_Register;
      --  ETC_TRIG Result Data 1/0 Register
      TRIG7_RESULT_1_0 : aliased TRIG7_RESULT_1_0_Register;
      --  ETC_TRIG Result Data 3/2 Register
      TRIG7_RESULT_3_2 : aliased TRIG7_RESULT_3_2_Register;
      --  ETC_TRIG Result Data 5/4 Register
      TRIG7_RESULT_5_4 : aliased TRIG7_RESULT_5_4_Register;
      --  ETC_TRIG Result Data 7/6 Register
      TRIG7_RESULT_7_6 : aliased TRIG7_RESULT_7_6_Register;
   end record
     with Volatile;

   for ADC_ETC_Peripheral use record
      CTRL             at 16#0# range 0 .. 31;
      DONE0_1_IRQ      at 16#4# range 0 .. 31;
      DONE2_ERR_IRQ    at 16#8# range 0 .. 31;
      DMA_CTRL         at 16#C# range 0 .. 31;
      TRIG0_CTRL       at 16#10# range 0 .. 31;
      TRIG0_COUNTER    at 16#14# range 0 .. 31;
      TRIG0_CHAIN_1_0  at 16#18# range 0 .. 31;
      TRIG0_CHAIN_3_2  at 16#1C# range 0 .. 31;
      TRIG0_CHAIN_5_4  at 16#20# range 0 .. 31;
      TRIG0_CHAIN_7_6  at 16#24# range 0 .. 31;
      TRIG0_RESULT_1_0 at 16#28# range 0 .. 31;
      TRIG0_RESULT_3_2 at 16#2C# range 0 .. 31;
      TRIG0_RESULT_5_4 at 16#30# range 0 .. 31;
      TRIG0_RESULT_7_6 at 16#34# range 0 .. 31;
      TRIG1_CTRL       at 16#38# range 0 .. 31;
      TRIG1_COUNTER    at 16#3C# range 0 .. 31;
      TRIG1_CHAIN_1_0  at 16#40# range 0 .. 31;
      TRIG1_CHAIN_3_2  at 16#44# range 0 .. 31;
      TRIG1_CHAIN_5_4  at 16#48# range 0 .. 31;
      TRIG1_CHAIN_7_6  at 16#4C# range 0 .. 31;
      TRIG1_RESULT_1_0 at 16#50# range 0 .. 31;
      TRIG1_RESULT_3_2 at 16#54# range 0 .. 31;
      TRIG1_RESULT_5_4 at 16#58# range 0 .. 31;
      TRIG1_RESULT_7_6 at 16#5C# range 0 .. 31;
      TRIG2_CTRL       at 16#60# range 0 .. 31;
      TRIG2_COUNTER    at 16#64# range 0 .. 31;
      TRIG2_CHAIN_1_0  at 16#68# range 0 .. 31;
      TRIG2_CHAIN_3_2  at 16#6C# range 0 .. 31;
      TRIG2_CHAIN_5_4  at 16#70# range 0 .. 31;
      TRIG2_CHAIN_7_6  at 16#74# range 0 .. 31;
      TRIG2_RESULT_1_0 at 16#78# range 0 .. 31;
      TRIG2_RESULT_3_2 at 16#7C# range 0 .. 31;
      TRIG2_RESULT_5_4 at 16#80# range 0 .. 31;
      TRIG2_RESULT_7_6 at 16#84# range 0 .. 31;
      TRIG3_CTRL       at 16#88# range 0 .. 31;
      TRIG3_COUNTER    at 16#8C# range 0 .. 31;
      TRIG3_CHAIN_1_0  at 16#90# range 0 .. 31;
      TRIG3_CHAIN_3_2  at 16#94# range 0 .. 31;
      TRIG3_CHAIN_5_4  at 16#98# range 0 .. 31;
      TRIG3_CHAIN_7_6  at 16#9C# range 0 .. 31;
      TRIG3_RESULT_1_0 at 16#A0# range 0 .. 31;
      TRIG3_RESULT_3_2 at 16#A4# range 0 .. 31;
      TRIG3_RESULT_5_4 at 16#A8# range 0 .. 31;
      TRIG3_RESULT_7_6 at 16#AC# range 0 .. 31;
      TRIG4_CTRL       at 16#B0# range 0 .. 31;
      TRIG4_COUNTER    at 16#B4# range 0 .. 31;
      TRIG4_CHAIN_1_0  at 16#B8# range 0 .. 31;
      TRIG4_CHAIN_3_2  at 16#BC# range 0 .. 31;
      TRIG4_CHAIN_5_4  at 16#C0# range 0 .. 31;
      TRIG4_CHAIN_7_6  at 16#C4# range 0 .. 31;
      TRIG4_RESULT_1_0 at 16#C8# range 0 .. 31;
      TRIG4_RESULT_3_2 at 16#CC# range 0 .. 31;
      TRIG4_RESULT_5_4 at 16#D0# range 0 .. 31;
      TRIG4_RESULT_7_6 at 16#D4# range 0 .. 31;
      TRIG5_CTRL       at 16#D8# range 0 .. 31;
      TRIG5_COUNTER    at 16#DC# range 0 .. 31;
      TRIG5_CHAIN_1_0  at 16#E0# range 0 .. 31;
      TRIG5_CHAIN_3_2  at 16#E4# range 0 .. 31;
      TRIG5_CHAIN_5_4  at 16#E8# range 0 .. 31;
      TRIG5_CHAIN_7_6  at 16#EC# range 0 .. 31;
      TRIG5_RESULT_1_0 at 16#F0# range 0 .. 31;
      TRIG5_RESULT_3_2 at 16#F4# range 0 .. 31;
      TRIG5_RESULT_5_4 at 16#F8# range 0 .. 31;
      TRIG5_RESULT_7_6 at 16#FC# range 0 .. 31;
      TRIG6_CTRL       at 16#100# range 0 .. 31;
      TRIG6_COUNTER    at 16#104# range 0 .. 31;
      TRIG6_CHAIN_1_0  at 16#108# range 0 .. 31;
      TRIG6_CHAIN_3_2  at 16#10C# range 0 .. 31;
      TRIG6_CHAIN_5_4  at 16#110# range 0 .. 31;
      TRIG6_CHAIN_7_6  at 16#114# range 0 .. 31;
      TRIG6_RESULT_1_0 at 16#118# range 0 .. 31;
      TRIG6_RESULT_3_2 at 16#11C# range 0 .. 31;
      TRIG6_RESULT_5_4 at 16#120# range 0 .. 31;
      TRIG6_RESULT_7_6 at 16#124# range 0 .. 31;
      TRIG7_CTRL       at 16#128# range 0 .. 31;
      TRIG7_COUNTER    at 16#12C# range 0 .. 31;
      TRIG7_CHAIN_1_0  at 16#130# range 0 .. 31;
      TRIG7_CHAIN_3_2  at 16#134# range 0 .. 31;
      TRIG7_CHAIN_5_4  at 16#138# range 0 .. 31;
      TRIG7_CHAIN_7_6  at 16#13C# range 0 .. 31;
      TRIG7_RESULT_1_0 at 16#140# range 0 .. 31;
      TRIG7_RESULT_3_2 at 16#144# range 0 .. 31;
      TRIG7_RESULT_5_4 at 16#148# range 0 .. 31;
      TRIG7_RESULT_7_6 at 16#14C# range 0 .. 31;
   end record;

   --  ADC_ETC
   ADC_ETC_Periph : aliased ADC_ETC_Peripheral
     with Import, Address => System'To_Address (16#403B0000#);

end NRF_SVD.ADC_ETC;
