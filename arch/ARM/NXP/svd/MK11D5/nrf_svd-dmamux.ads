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

--  This spec has been automatically generated from MK11D5.xml

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
      --  UART2_Rx_Signal
      CHCFG_SOURCE_Field_6,
      --  UART2_Tx_Signal
      CHCFG_SOURCE_Field_7,
      --  UART3_Rx_Signal
      CHCFG_SOURCE_Field_8,
      --  UART3_Tx_Signal
      CHCFG_SOURCE_Field_9,
      --  I2S0_Rx_Signal
      CHCFG_SOURCE_Field_14,
      --  I2S0_Tx_Signal
      CHCFG_SOURCE_Field_15,
      --  SPI0_Rx_Signal
      CHCFG_SOURCE_Field_16,
      --  SPI0_Tx_Signal
      CHCFG_SOURCE_Field_17,
      --  SPI1_Rx_Signal
      CHCFG_SOURCE_Field_18,
      --  SPI1_Tx_Signal
      CHCFG_SOURCE_Field_19,
      --  I2C0_Signal
      CHCFG_SOURCE_Field_22,
      --  I2C1_Signal
      CHCFG_SOURCE_Field_23,
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
      --  FTM2_Channel0_Signal
      CHCFG_SOURCE_Field_34,
      --  FTM2_Channel1_Signal
      CHCFG_SOURCE_Field_35,
      --  ADC0_Signal
      CHCFG_SOURCE_Field_40,
      --  CMP0_Signal
      CHCFG_SOURCE_Field_42,
      --  CMP1_Signal
      CHCFG_SOURCE_Field_43,
      --  DAC0_Signal
      CHCFG_SOURCE_Field_45,
      --  CMT_Signal
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
      --  AlwaysOn54_Signal
      CHCFG_SOURCE_Field_54,
      --  AlwaysOn55_Signal
      CHCFG_SOURCE_Field_55,
      --  AlwaysOn56_Signal
      CHCFG_SOURCE_Field_56,
      --  AlwaysOn57_Signal
      CHCFG_SOURCE_Field_57,
      --  AlwaysOn58_Signal
      CHCFG_SOURCE_Field_58,
      --  AlwaysOn59_Signal
      CHCFG_SOURCE_Field_59,
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
      CHCFG_SOURCE_Field_14 => 14,
      CHCFG_SOURCE_Field_15 => 15,
      CHCFG_SOURCE_Field_16 => 16,
      CHCFG_SOURCE_Field_17 => 17,
      CHCFG_SOURCE_Field_18 => 18,
      CHCFG_SOURCE_Field_19 => 19,
      CHCFG_SOURCE_Field_22 => 22,
      CHCFG_SOURCE_Field_23 => 23,
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
      CHCFG_SOURCE_Field_35 => 35,
      CHCFG_SOURCE_Field_40 => 40,
      CHCFG_SOURCE_Field_42 => 42,
      CHCFG_SOURCE_Field_43 => 43,
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
      CHCFG_SOURCE_Field_58 => 58,
      CHCFG_SOURCE_Field_59 => 59,
      CHCFG_SOURCE_Field_60 => 60,
      CHCFG_SOURCE_Field_61 => 61,
      CHCFG_SOURCE_Field_62 => 62,
      CHCFG_SOURCE_Field_63 => 63);

   --  DMA Channel Trigger Enable
   type CHCFG_TRIG_Field is
     (
      --  Triggering is disabled. If triggering is disabled, and the ENBL bit
      --  is set, the DMA Channel will simply route the specified source to the
      --  DMA channel. (Normal mode)
      CHCFG_TRIG_Field_0,
      --  Triggering is enabled. If triggering is enabled, and the ENBL bit is
      --  set, the DMAMUX is in Periodic Trigger mode.
      CHCFG_TRIG_Field_1)
     with Size => 1;
   for CHCFG_TRIG_Field use
     (CHCFG_TRIG_Field_0 => 0,
      CHCFG_TRIG_Field_1 => 1);

   --  DMA Channel Enable
   type CHCFG_ENBL_Field is
     (
      --  DMA channel is disabled. This mode is primarily used during
      --  configuration of the DMA Mux. The DMA has separate channel
      --  enables/disables, which should be used to disable or re-configure a
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
   type DMAMUX_CHCFG_Registers is array (0 .. 15) of DMAMUX_CHCFG_Register
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
      CHCFG at 0 range 0 .. 127;
   end record;

   --  DMA channel multiplexor
   DMAMUX_Periph : aliased DMAMUX_Peripheral
     with Import, Address => DMAMUX_Base;

end NRF_SVD.DMAMUX;
