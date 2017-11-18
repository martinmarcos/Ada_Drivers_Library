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

--  This spec has been automatically generated from MKV56F24.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  DMA channel multiplexor
package NRF_SVD.DMAMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DMA Channel Source (Slot)
   type CHCFG_SOURCE_Field is
     (
      --  Disable_Signal
      CHCFG_SOURCE_Field_0,
      --  UART0_Rx_Signal
      CHCFG_SOURCE_Field_2,
      --  UART0_Tx_Signal
      CHCFG_SOURCE_Field_3,
      --  UART1_Rx_Signal
      CHCFG_SOURCE_Field_4,
      --  UART1_Tx_Signal
      CHCFG_SOURCE_Field_5,
      --  PWM0_WR0_Signal
      CHCFG_SOURCE_Field_6,
      --  PWM0_WR1_Signal
      CHCFG_SOURCE_Field_7,
      --  PWM0_WR2_Signal
      CHCFG_SOURCE_Field_8,
      --  PWM0_WR3_Signal
      CHCFG_SOURCE_Field_9,
      --  PWM0_CP0_Signal
      CHCFG_SOURCE_Field_10,
      --  PWM0_CP1_Signal
      CHCFG_SOURCE_Field_11,
      --  PWM0_CP2_Signal
      CHCFG_SOURCE_Field_12,
      --  PWM0_CP3_Signal
      CHCFG_SOURCE_Field_13,
      --  CAN0_Signal
      CHCFG_SOURCE_Field_14,
      --  CAN1_Signal
      CHCFG_SOURCE_Field_15,
      --  SPI0_Rx_Signal
      CHCFG_SOURCE_Field_16,
      --  SPI0_Tx_Signal
      CHCFG_SOURCE_Field_17,
      --  XBARA_OUT_0_Signal
      CHCFG_SOURCE_Field_18,
      --  XBARA_OUT_1_Signal
      CHCFG_SOURCE_Field_19,
      --  XBARA_OUT_2_Signal
      CHCFG_SOURCE_Field_20,
      --  XBARA_OUT_3_Signal
      CHCFG_SOURCE_Field_21,
      --  I2C0_Signal
      CHCFG_SOURCE_Field_22,
      --  FTM0_Channel0_Signal
      CHCFG_SOURCE_Field_24,
      --  FTM0_Channel1_Signal
      CHCFG_SOURCE_Field_25,
      --  FTM0_Channel2_Signal
      CHCFG_SOURCE_Field_26,
      --  FTM0_Channel3_Signal
      CHCFG_SOURCE_Field_27,
      --  FTM0_Channel4_Signal
      CHCFG_SOURCE_Field_28,
      --  FTM0_Channel5_Signal
      CHCFG_SOURCE_Field_29,
      --  FTM0_Channel6_Signal
      CHCFG_SOURCE_Field_30,
      --  FTM0_Channel7_Signal
      CHCFG_SOURCE_Field_31,
      --  FTM1_Channel0_Signal
      CHCFG_SOURCE_Field_32,
      --  FTM1_Channel1_Signal
      CHCFG_SOURCE_Field_33,
      --  CMP3_Signal
      CHCFG_SOURCE_Field_34,
      --  FTM3_Channel0_Signal
      CHCFG_SOURCE_Field_36,
      --  FTM3_Channel1_Signal
      CHCFG_SOURCE_Field_37,
      --  FTM3_Channel2_Signal
      CHCFG_SOURCE_Field_38,
      --  FTM3_Channel3_Signal
      CHCFG_SOURCE_Field_39,
      --  HSADC0A_Signal
      CHCFG_SOURCE_Field_40,
      --  HSADC0B_Signal
      CHCFG_SOURCE_Field_41,
      --  CMP0_Signal
      CHCFG_SOURCE_Field_42,
      --  CMP1_Signal
      CHCFG_SOURCE_Field_43,
      --  CMP2_Signal
      CHCFG_SOURCE_Field_44,
      --  DAC0_Signal
      CHCFG_SOURCE_Field_45,
      --  PDB1_Signal
      CHCFG_SOURCE_Field_47,
      --  PDB0_Signal
      CHCFG_SOURCE_Field_48,
      --  PortA_Signal
      CHCFG_SOURCE_Field_49,
      --  PortB_Signal
      CHCFG_SOURCE_Field_50,
      --  PortC_Signal
      CHCFG_SOURCE_Field_51,
      --  PortD_Signal
      CHCFG_SOURCE_Field_52,
      --  PortE_Signal
      CHCFG_SOURCE_Field_53,
      --  FTM3_Channel4_Signal
      CHCFG_SOURCE_Field_54,
      --  FTM3_Channel5_Signal
      CHCFG_SOURCE_Field_55,
      --  FTM3_Channel6_Signal
      CHCFG_SOURCE_Field_56,
      --  FTM3_Channel7_Signal
      CHCFG_SOURCE_Field_57,
      --  AlwaysOn60_Signal
      CHCFG_SOURCE_Field_60,
      --  AlwaysOn61_Signal
      CHCFG_SOURCE_Field_61,
      --  AlwaysOn62_Signal
      CHCFG_SOURCE_Field_62,
      --  AlwaysOn63_Signal
      CHCFG_SOURCE_Field_63)
     with Size => 6;
   for CHCFG_SOURCE_Field use
     (CHCFG_SOURCE_Field_0 => 0,
      CHCFG_SOURCE_Field_2 => 2,
      CHCFG_SOURCE_Field_3 => 3,
      CHCFG_SOURCE_Field_4 => 4,
      CHCFG_SOURCE_Field_5 => 5,
      CHCFG_SOURCE_Field_6 => 6,
      CHCFG_SOURCE_Field_7 => 7,
      CHCFG_SOURCE_Field_8 => 8,
      CHCFG_SOURCE_Field_9 => 9,
      CHCFG_SOURCE_Field_10 => 10,
      CHCFG_SOURCE_Field_11 => 11,
      CHCFG_SOURCE_Field_12 => 12,
      CHCFG_SOURCE_Field_13 => 13,
      CHCFG_SOURCE_Field_14 => 14,
      CHCFG_SOURCE_Field_15 => 15,
      CHCFG_SOURCE_Field_16 => 16,
      CHCFG_SOURCE_Field_17 => 17,
      CHCFG_SOURCE_Field_18 => 18,
      CHCFG_SOURCE_Field_19 => 19,
      CHCFG_SOURCE_Field_20 => 20,
      CHCFG_SOURCE_Field_21 => 21,
      CHCFG_SOURCE_Field_22 => 22,
      CHCFG_SOURCE_Field_24 => 24,
      CHCFG_SOURCE_Field_25 => 25,
      CHCFG_SOURCE_Field_26 => 26,
      CHCFG_SOURCE_Field_27 => 27,
      CHCFG_SOURCE_Field_28 => 28,
      CHCFG_SOURCE_Field_29 => 29,
      CHCFG_SOURCE_Field_30 => 30,
      CHCFG_SOURCE_Field_31 => 31,
      CHCFG_SOURCE_Field_32 => 32,
      CHCFG_SOURCE_Field_33 => 33,
      CHCFG_SOURCE_Field_34 => 34,
      CHCFG_SOURCE_Field_36 => 36,
      CHCFG_SOURCE_Field_37 => 37,
      CHCFG_SOURCE_Field_38 => 38,
      CHCFG_SOURCE_Field_39 => 39,
      CHCFG_SOURCE_Field_40 => 40,
      CHCFG_SOURCE_Field_41 => 41,
      CHCFG_SOURCE_Field_42 => 42,
      CHCFG_SOURCE_Field_43 => 43,
      CHCFG_SOURCE_Field_44 => 44,
      CHCFG_SOURCE_Field_45 => 45,
      CHCFG_SOURCE_Field_47 => 47,
      CHCFG_SOURCE_Field_48 => 48,
      CHCFG_SOURCE_Field_49 => 49,
      CHCFG_SOURCE_Field_50 => 50,
      CHCFG_SOURCE_Field_51 => 51,
      CHCFG_SOURCE_Field_52 => 52,
      CHCFG_SOURCE_Field_53 => 53,
      CHCFG_SOURCE_Field_54 => 54,
      CHCFG_SOURCE_Field_55 => 55,
      CHCFG_SOURCE_Field_56 => 56,
      CHCFG_SOURCE_Field_57 => 57,
      CHCFG_SOURCE_Field_60 => 60,
      CHCFG_SOURCE_Field_61 => 61,
      CHCFG_SOURCE_Field_62 => 62,
      CHCFG_SOURCE_Field_63 => 63);

   --  DMA Channel Trigger Enable
   type CHCFG_TRIG_Field is
     (
      --  Triggering is disabled. If triggering is disabled and ENBL is set,
      --  the DMA Channel will simply route the specified source to the DMA
      --  channel. (Normal mode)
      CHCFG_TRIG_Field_0,
      --  Triggering is enabled. If triggering is enabled and ENBL is set, the
      --  DMAMUX is in Periodic Trigger mode.
      CHCFG_TRIG_Field_1)
     with Size => 1;
   for CHCFG_TRIG_Field use
     (CHCFG_TRIG_Field_0 => 0,
      CHCFG_TRIG_Field_1 => 1);

   --  DMA Channel Enable
   type CHCFG_ENBL_Field is
     (
      --  DMA channel is disabled. This mode is primarily used during
      --  configuration of the DMAMux. The DMA has separate channel
      --  enables/disables, which should be used to disable or reconfigure a
      --  DMA channel.
      CHCFG_ENBL_Field_0,
      --  DMA channel is enabled
      CHCFG_ENBL_Field_1)
     with Size => 1;
   for CHCFG_ENBL_Field use
     (CHCFG_ENBL_Field_0 => 0,
      CHCFG_ENBL_Field_1 => 1);

   --  Channel Configuration register
   type DMAMUX_CHCFG_Register is record
      --  DMA Channel Source (Slot)
      SOURCE : CHCFG_SOURCE_Field := NRF_SVD.DMAMUX.CHCFG_SOURCE_Field_0;
      --  DMA Channel Trigger Enable
      TRIG   : CHCFG_TRIG_Field := NRF_SVD.DMAMUX.CHCFG_TRIG_Field_0;
      --  DMA Channel Enable
      ENBL   : CHCFG_ENBL_Field := NRF_SVD.DMAMUX.CHCFG_ENBL_Field_0;
   end record
     with Volatile_Full_Access, Size => 8, Bit_Order => System.Low_Order_First;

   for DMAMUX_CHCFG_Register use record
      SOURCE at 0 range 0 .. 5;
      TRIG   at 0 range 6 .. 6;
      ENBL   at 0 range 7 .. 7;
   end record;

   --  Channel Configuration register
   type DMAMUX_CHCFG_Registers is array (0 .. 31) of DMAMUX_CHCFG_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA channel multiplexor
   type DMAMUX_Peripheral is record
      --  Channel Configuration register
      CHCFG : aliased DMAMUX_CHCFG_Registers;
   end record
     with Volatile;

   for DMAMUX_Peripheral use record
      CHCFG at 0 range 0 .. 255;
   end record;

   --  DMA channel multiplexor
   DMAMUX_Periph : aliased DMAMUX_Peripheral
     with Import, Address => DMAMUX_Base;

end NRF_SVD.DMAMUX;
